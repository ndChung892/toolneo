package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.ButtonTree;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.Property;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.NumericStepper;
   import mx.controls.TextArea;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetHandbook extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _677709750petName:Label;
      
      private var _692413227classImg:Image;
      
      private var _1753050362petHiddenProp2:Label;
      
      public var _PetHandbook_Image1:Image;
      
      public var _PetHandbook_LinkButton1:LinkButton;
      
      public var _PetHandbook_LinkButton2:LinkButton;
      
      private var _247885319statusPet4:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _661045344petEvolutionBtn:DelayButton;
      
      private var _1026941175petAptStamina:Label;
      
      private var _464115109petLevel:Label;
      
      private var _677294173progressActiveNum6:Property;
      
      private var b:Boolean = false;
      
      private var _979804988prop12:Label;
      
      private var _SERIE:int = 0;
      
      private var _core:Core = Core.getInstance();
      
      private var _677847407petImg5:Image;
      
      private var _770866455progressTotal:Property;
      
      private var playType:int = 0;
      
      private var _1596220963skillSlot2:ItemSlot;
      
      private var _104723017petMapLive:Label;
      
      private var _106940726prop9:Label;
      
      private var _176118958seriePropAdd4:Label;
      
      private var _handbookId:Number = 0;
      
      private var _1695470783petAptIntelligenceMax:Label;
      
      private var _888262899petAptAgilityMin:Label;
      
      private var _106940720prop3:Label;
      
      private var _677294171progressActiveNum8:Property;
      
      private var _552417655petAptStaminaMin:Label;
      
      private var _174671760petActiveNormalBtn:DelayButton;
      
      private var load:Loader;
      
      private var _247885320statusPet5:Label;
      
      private var _186958625petAptAgility:Label;
      
      private var _762725793petActiveMoneyBtn:DelayButton;
      
      private var _677847403petImg9:Image;
      
      private var _141601409serieTypeName:Label;
      
      private var _677294178progressActiveNum1:Property;
      
      private var _helpAlert:Alert;
      
      private var _979804987prop13:Label;
      
      private var _247885323statusPet8:Label;
      
      private var _192442979petDescText:TextArea;
      
      private var _575917863elementImg:Image;
      
      private var _1983701820petAptEnergyMin:Label;
      
      private var _677847408petImg4:Image;
      
      private var _677847410petImg2:Image;
      
      private var _1062648537oneSerieProcess:Canvas;
      
      private var _106940721prop4:Label;
      
      private var _484087665progressActiveTotal:Property;
      
      private var _247885318statusPet3:Label;
      
      private var _145245136container1:UIComponent;
      
      private var _483746560petNatureNum:Label;
      
      private var mc:MovieClip;
      
      private var _1072417325serieEffect:Label;
      
      private var _677294176progressActiveNum3:Property;
      
      private var _CREATURE:int = 1;
      
      private var _379017676allSerieEffect:Label;
      
      private var _995543379panel1:Canvas;
      
      private var _144113051petAptIntelligence:Label;
      
      private var _1356615745petActiveNum:Label;
      
      public var _PetHandbook_Label2:Label;
      
      public var _PetHandbook_Label3:Label;
      
      public var _PetHandbook_Label4:Label;
      
      public var _PetHandbook_Label6:Label;
      
      public var _PetHandbook_Label7:Label;
      
      public var _PetHandbook_Label8:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PetHandbook_Label5:Label;
      
      private var _1596220962skillSlot1:ItemSlot;
      
      public var _PetHandbook_Label9:Label;
      
      private var _979804986prop14:Label;
      
      private var _1577614078npActiveNum:NumericStepper;
      
      private var _1695471021petAptIntelligenceMin:Label;
      
      private var _677847404petImg8:Image;
      
      private var _478717010progressActiveNum10:Property;
      
      private var _1753050361petHiddenProp3:Label;
      
      private var _888262661petAptAgilityMax:Label;
      
      private var _176118960seriePropAdd2:Label;
      
      private var _1596220965skillSlot4:ItemSlot;
      
      private var _1753050359petHiddenProp5:Label;
      
      private var _1983702058petAptEnergyMax:Label;
      
      private var _106940722prop5:Label;
      
      private var _677294174progressActiveNum5:Property;
      
      private var _activedNum:Number = 0;
      
      private var _534882346seridState:Image;
      
      private var _677847409petImg3:Image;
      
      private var _176118959seriePropAdd3:Label;
      
      private var _677847411petImg1:Image;
      
      private var _677514915petTree:ButtonTree;
      
      private var _kindType:Object = {
         1:1,
         2:2,
         3:3,
         4:4,
         5:5,
         6:6,
         7:7,
         8:8,
         9:9,
         10:10
      };
      
      private var _1356532594petActivated:Label;
      
      private var _1704142595petAptStrengthMax:Label;
      
      private var _677846419petInfo:Canvas;
      
      private var _1290955033petAptStrength:Label;
      
      private var _247885322statusPet7:Label;
      
      private var _1753050363petHiddenProp1:Label;
      
      private var _106940718prop1:Label;
      
      private var _677294172progressActiveNum7:Property;
      
      private var _979804985prop15:Label;
      
      private var _106940723prop6:Label;
      
      private var _1711403170petGiftSkill:Label;
      
      private var _247885317statusPet2:Label;
      
      private var _677847405petImg7:Image;
      
      private var _goldRate:Number = 5;
      
      private var _31193047allSeriesProcess:Canvas;
      
      private var _905489748statusPet10:Label;
      
      public var _PetHandbook_Label10:Label;
      
      public var _PetHandbook_Label11:Label;
      
      public var _PetHandbook_Label12:Label;
      
      public var _PetHandbook_Label13:Label;
      
      public var _PetHandbook_Label14:Label;
      
      private var _974219530petActiveEffect:Label;
      
      private var _461566787petImg10:Image;
      
      private var _677294170progressActiveNum9:Property;
      
      private var _1500310190petAptEnergy:Label;
      
      private var _106940719prop2:Label;
      
      public var _PetHandbook_Label35:Label;
      
      public var _PetHandbook_Label37:Label;
      
      private var _979804990prop10:Label;
      
      public var _PetHandbook_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1596220964skillSlot3:ItemSlot;
      
      private var _106940724prop7:Label;
      
      private var _677294177progressActiveNum2:Property;
      
      private var _909209476petEvolutionBtnTotal:DelayButton;
      
      private var _176118961seriePropAdd1:Label;
      
      private var _677847406petImg6:Image;
      
      private var _979804989prop11:Label;
      
      private var _247885321statusPet6:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _1874945609petCatchDifficulty:Label;
      
      public var _PetHandbook_Label73:Label;
      
      private var _1753050360petHiddenProp4:Label;
      
      private var _1114801243serieEffect2:Label;
      
      private var _881404598tabPet:ViewStack;
      
      private var _relateId:Number = 0;
      
      private var _1704142357petAptStrengthMin:Label;
      
      private var _677294175progressActiveNum4:Property;
      
      private var _247885324statusPet9:Label;
      
      private var _552417893petAptStaminaMax:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _401544427_selectedURL:CharactorShowCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":756,
               "height":510,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetHandbook_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "40";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":160,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ButtonTree,
                           "id":"petTree",
                           "events":{"itemClick":"__petTree_itemClick"},
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":151,
                                 "x":6,
                                 "percentHeight":100,
                                 "y":6
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "180";
                     this.top = "40";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":555,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_PetHandbook_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {"width":555};
                           }
                        }),new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"container1",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "-14";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"panel1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "visible":false,
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"seridState",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "75";
                                       this.top = "40";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"tabPet",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "50";
                                       this.bottom = "40";
                                       this.right = "83";
                                       this.left = "83";
                                       this.color = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "creationPolicy":"all",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"allSeriesProcess",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"allSerieEffect",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "20";
                                                         this.top = "10";
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"visible":false};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "10";
                                                         this.color = 0;
                                                         this.fontSize = 14;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "40";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveTotal",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "70";
                                                         this.top = "40";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":240,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "60";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "70";
                                                         this.top = "60";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "80";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "70";
                                                         this.top = "80";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "100";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "70";
                                                         this.top = "100";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "120";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "70";
                                                         this.top = "120";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "200";
                                                         this.top = "60";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "260";
                                                         this.top = "60";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "200";
                                                         this.top = "80";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "260";
                                                         this.top = "80";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label10",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "200";
                                                         this.top = "100";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "260";
                                                         this.top = "100";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label11",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "200";
                                                         this.top = "120";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "260";
                                                         this.top = "120";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label12",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "140";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "70";
                                                         this.top = "140";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label13",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "200";
                                                         this.top = "140";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Property,
                                                      "id":"progressActiveNum10",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "260";
                                                         this.top = "140";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":13,
                                                            "width":100,
                                                            "styleName":"ProgressExp",
                                                            "color":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label14",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "165";
                                                         this.color = 0;
                                                         this.fontSize = 14;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "0";
                                                         this.top = "170";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":150,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop1",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "30";
                                                                  this.top = "10";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop2",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "150";
                                                                  this.top = "10";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop3",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "270";
                                                                  this.top = "10";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop4",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "30";
                                                                  this.top = "40";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop5",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "150";
                                                                  this.top = "40";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop6",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "270";
                                                                  this.top = "40";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop7",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "30";
                                                                  this.top = "70";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop8",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "150";
                                                                  this.top = "70";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop9",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "270";
                                                                  this.top = "70";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop10",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "30";
                                                                  this.top = "100";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop11",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "150";
                                                                  this.top = "100";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop12",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "270";
                                                                  this.top = "100";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop13",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "30";
                                                                  this.top = "130";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop14",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "150";
                                                                  this.top = "130";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"prop15",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "270";
                                                                  this.top = "130";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"petEvolutionBtnTotal",
                                                      "events":{"click":"__petEvolutionBtnTotal_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.bottom = "5";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "width":70,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":LinkButton,
                                                      "id":"_PetHandbook_LinkButton1",
                                                      "events":{"click":"___PetHandbook_LinkButton1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textDecoration = "underline";
                                                         this.bottom = "5";
                                                         this.right = "10";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"height":17};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"petInfo",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":SimpleCanvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":5,
                                                            "y":5,
                                                            "height":165,
                                                            "width":180,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":CharactorShowCanvas,
                                                               "id":"_selectedURL",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.borderStyle = "none";
                                                                  this.horizontalCenter = "0";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "height":10,
                                                                     "width":10,
                                                                     "y":133
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"classImg",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":7,
                                                                     "y":6,
                                                                     "width":16,
                                                                     "height":16
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"elementImg",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":24.35,
                                                                     "y":6,
                                                                     "width":16,
                                                                     "height":16
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petLevel",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.right = "4";
                                                                  this.textAlign = "right";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"y":5};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DelayButton,
                                                      "id":"petEvolutionBtn",
                                                      "events":{"click":"__petEvolutionBtn_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":55,
                                                            "y":145,
                                                            "styleName":"BtnStdRed",
                                                            "labelPlacement":"bottom",
                                                            "width":70,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SimpleCanvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":175,
                                                            "height":75,
                                                            "width":180,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":TextArea,
                                                               "id":"petDescText",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "10";
                                                                  this.top = "10";
                                                                  this.right = "10";
                                                                  this.bottom = "10";
                                                                  this.color = 0;
                                                                  this.borderStyle = "none";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"CSSBorder",
                                                                     "editable":false
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SimpleCanvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":190,
                                                            "y":20,
                                                            "height":130,
                                                            "width":240,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petName",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "5";
                                                                  this.color = 0;
                                                                  this.fontSize = 14;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petActivated",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "120";
                                                                  this.top = "5";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petActiveEffect",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "25";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petActiveNum",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "45";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "visible":false,
                                                                     "width":200
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Property,
                                                               "id":"progressTotal",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "55";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "height":13,
                                                                     "width":180,
                                                                     "styleName":"ProgressExp",
                                                                     "color":0
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"_PetHandbook_Label35",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "80";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":130};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petNatureNum",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "120";
                                                                  this.top = "80";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":130};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"_PetHandbook_Label37",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "105";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":170};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":NumericStepper,
                                                               "id":"npActiveNum",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "100";
                                                                  this.top = "105";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "minimum":1,
                                                                     "value":1
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":DelayButton,
                                                               "id":"petActiveNormalBtn",
                                                               "events":{"click":"__petActiveNormalBtn_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.top = "130";
                                                                  this.left = "60";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnStdRed",
                                                                     "labelPlacement":"bottom",
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":DelayButton,
                                                               "id":"petActiveMoneyBtn",
                                                               "events":{"click":"__petActiveMoneyBtn_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.top = "130";
                                                                  this.left = "130";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "styleName":"BtnStdRed",
                                                                     "labelPlacement":"bottom",
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petCatchDifficulty",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "150";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":170};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petMapLive",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "170";
                                                                  this.color = 0;
                                                                  this.fontWeight = "normal|bold";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":200};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petGiftSkill",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "190";
                                                                  this.color = 0;
                                                                  this.fontWeight = "normal|bold";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":170};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"skillSlot1",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.top = "210";
                                                                  this.borderStyle = "none";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":30,
                                                                     "movable":false
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"skillSlot2",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.top = "210";
                                                                  this.borderStyle = "none";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":68,
                                                                     "movable":false
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"skillSlot3",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.top = "210";
                                                                  this.borderStyle = "none";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":106,
                                                                     "movable":false
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"skillSlot4",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.top = "210";
                                                                  this.borderStyle = "none";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":144,
                                                                     "movable":false
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":SimpleCanvas,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.top = "260";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":5,
                                                            "height":100,
                                                            "width":440,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptStrength",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "5";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":70};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptAgility",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "24";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":70};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptStamina",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "43";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":70};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptIntelligence",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "62";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":70};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptEnergy",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "5";
                                                                  this.top = "81";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":70};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptStrengthMin",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "85";
                                                                  this.top = "5";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptAgilityMin",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "85";
                                                                  this.top = "24";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptStaminaMin",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "85";
                                                                  this.top = "43";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptIntelligenceMin",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "85";
                                                                  this.top = "62";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptEnergyMin",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "85";
                                                                  this.top = "81";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptStrengthMax",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "190";
                                                                  this.top = "5";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptAgilityMax",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "190";
                                                                  this.top = "24";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptStaminaMax",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "190";
                                                                  this.top = "43";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptIntelligenceMax",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "190";
                                                                  this.top = "62";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petAptEnergyMax",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "190";
                                                                  this.top = "81";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":90};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petHiddenProp1",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "280";
                                                                  this.top = "5";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":130};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petHiddenProp2",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "280";
                                                                  this.top = "24";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":130};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petHiddenProp3",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "280";
                                                                  this.top = "43";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":130};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petHiddenProp4",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "280";
                                                                  this.top = "62";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":130};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"petHiddenProp5",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "280";
                                                                  this.top = "81";
                                                                  this.fontSize = 12;
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":130};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"oneSerieProcess",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"serieTypeName",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "10";
                                                         this.color = 0;
                                                         this.fontSize = 14;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"text":""};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"serieEffect",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.right = "20";
                                                         this.top = "10";
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.top = "40";
                                                         this.left = "40";
                                                         this.right = "40";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":180,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg1",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":10,
                                                                     "y":10,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet1",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":10,
                                                                     "y":60,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg2",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":70,
                                                                     "y":10,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet2",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":70,
                                                                     "y":60,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg3",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":130,
                                                                     "y":10,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet3",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":130,
                                                                     "y":60,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg4",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":190,
                                                                     "y":10,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet4",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":190,
                                                                     "y":60,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg5",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":250,
                                                                     "y":10,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet5",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":250,
                                                                     "y":60,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg6",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":10,
                                                                     "y":90,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet6",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":10,
                                                                     "y":150,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg7",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":70,
                                                                     "y":90,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet7",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":70,
                                                                     "y":150,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg8",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":130,
                                                                     "y":90,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet8",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":130,
                                                                     "y":150,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg9",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":190,
                                                                     "y":90,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet9",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":190,
                                                                     "y":150,
                                                                     "width":50
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"petImg10",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":250,
                                                                     "y":90,
                                                                     "width":50,
                                                                     "height":50,
                                                                     "source":""
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"statusPet10",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":250,
                                                                     "y":150,
                                                                     "width":50
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetHandbook_Label73",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "220";
                                                         this.color = 0;
                                                         this.fontSize = 14;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"serieEffect2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "20";
                                                         this.top = "250";
                                                         this.fontSize = 12;
                                                         this.textAlign = "center";
                                                         this.fontStyle = "normal";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.top = "270";
                                                         this.left = "10";
                                                         this.right = "10";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "height":70,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"seriePropAdd1",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "10";
                                                                  this.top = "10";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":180};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"seriePropAdd2",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "200";
                                                                  this.top = "10";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":180};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"seriePropAdd3",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "10";
                                                                  this.top = "40";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":180};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"seriePropAdd4",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.left = "200";
                                                                  this.top = "40";
                                                                  this.color = 0;
                                                                  this.fontSize = 12;
                                                                  this.textAlign = "center";
                                                                  this.fontStyle = "normal";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"width":180};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":LinkButton,
                                                      "id":"_PetHandbook_LinkButton2",
                                                      "events":{"click":"___PetHandbook_LinkButton2_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textDecoration = "underline";
                                                         this.bottom = "5";
                                                         this.right = "10";
                                                         this.color = 0;
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"height":17};
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
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _106940725prop8:Label;
      
      private var _247885316statusPet1:Label;
      
      public function PetHandbook()
      {
         super();
         mx_internal::_document = this;
         this.width = 756;
         this.height = 510;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___PetHandbook_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetHandbook._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptAgilityMax() : Label
      {
         return this._888262661petAptAgilityMax;
      }
      
      public function set statusPet1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885316statusPet1;
         if(_loc2_ !== param1)
         {
            this._247885316statusPet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet1",_loc2_,param1));
         }
      }
      
      public function set petAptAgilityMax(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._888262661petAptAgilityMax;
         if(_loc2_ !== param1)
         {
            this._888262661petAptAgilityMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptAgilityMax",_loc2_,param1));
         }
      }
      
      public function set statusPet3(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885318statusPet3;
         if(_loc2_ !== param1)
         {
            this._247885318statusPet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet3",_loc2_,param1));
         }
      }
      
      public function set statusPet4(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885319statusPet4;
         if(_loc2_ !== param1)
         {
            this._247885319statusPet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet4",_loc2_,param1));
         }
      }
      
      public function set statusPet5(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885320statusPet5;
         if(_loc2_ !== param1)
         {
            this._247885320statusPet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet5",_loc2_,param1));
         }
      }
      
      public function set statusPet2(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885317statusPet2;
         if(_loc2_ !== param1)
         {
            this._247885317statusPet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet2",_loc2_,param1));
         }
      }
      
      public function set statusPet6(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885321statusPet6;
         if(_loc2_ !== param1)
         {
            this._247885321statusPet6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet6",_loc2_,param1));
         }
      }
      
      public function set statusPet7(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885322statusPet7;
         if(_loc2_ !== param1)
         {
            this._247885322statusPet7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet7",_loc2_,param1));
         }
      }
      
      private function enterFrameHandler(param1:Event) : void
      {
         var _loc3_:Sprite = null;
         var _loc4_:UIComponent = null;
         if(!panel1.mask)
         {
            _loc3_ = new Sprite();
            panel1.mask = _loc3_;
            _loc4_ = new UIComponent();
            _loc4_.addChild(_loc3_);
            panel1.parent.addChild(_loc4_);
         }
         var _loc2_:Sprite = panel1.mask as Sprite;
         _loc2_.x = mc.x - mc.width * (mc.currentFrame / mc.totalFrames) / 2 + 10;
         _loc2_.graphics.clear();
         _loc2_.graphics.beginFill(65280,0.5);
         _loc2_.graphics.drawRect(0,0,mc.width * (mc.currentFrame / mc.totalFrames) - 10,mc.height);
         _loc2_.graphics.endFill();
         panel1.mask = _loc2_;
         panel1.x += 0.000001 * (b ? 1 : -1);
         b = !b;
         if(!panel1.visible)
         {
            panel1.visible = true;
         }
         if(playType == 1 && mc.currentFrame < mc.totalFrames)
         {
            mc.gotoAndPlay(mc.currentFrame + 3);
         }
         if(mc.totalFrames == mc.currentFrame)
         {
            mc.removeEventListener(Event.ENTER_FRAME,enterFrameHandler);
            mc.gotoAndStop(mc.totalFrames);
            panel1.x = 0.0001;
         }
      }
      
      public function set statusPet8(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885323statusPet8;
         if(_loc2_ !== param1)
         {
            this._247885323statusPet8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet8",_loc2_,param1));
         }
      }
      
      public function set statusPet9(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._247885324statusPet9;
         if(_loc2_ !== param1)
         {
            this._247885324statusPet9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petActiveNum() : Label
      {
         return this._1356615745petActiveNum;
      }
      
      public function set skillSlot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1596220962skillSlot1;
         if(_loc2_ !== param1)
         {
            this._1596220962skillSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot1",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc2_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("juanzhou_mc") as Class;
         mc = new _loc2_();
         container1.addChild(mc);
         mc.x = mc.width >> 1;
         mc.y = mc.height >> 1;
         mc.gotoAndStop(1);
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         showPanel();
      }
      
      public function set skillSlot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1596220964skillSlot3;
         if(_loc2_ !== param1)
         {
            this._1596220964skillSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot3",_loc2_,param1));
         }
      }
      
      public function __petEvolutionBtn_click(param1:MouseEvent) : void
      {
         showPetEvolutionPanel();
      }
      
      public function set skillSlot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1596220963skillSlot2;
         if(_loc2_ !== param1)
         {
            this._1596220963skillSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petName() : Label
      {
         return this._677709750petName;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum10() : Property
      {
         return this._478717010progressActiveNum10;
      }
      
      public function set skillSlot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1596220965skillSlot4;
         if(_loc2_ !== param1)
         {
            this._1596220965skillSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot4",_loc2_,param1));
         }
      }
      
      public function set serieEffect(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1072417325serieEffect;
         if(_loc2_ !== param1)
         {
            this._1072417325serieEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serieEffect",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petActiveNormalBtn() : DelayButton
      {
         return this._174671760petActiveNormalBtn;
      }
      
      private function activeGold() : void
      {
         var _activeObj:*;
         var func:Function;
         var creatureData:*;
         var requireNum:Number = NaN;
         var type:* = undefined;
         if(!_core.player.pmLevel || ToolKit.isSmallOrEqual(_core.player.pmLevel,0))
         {
            _core.sysMidNote(Language.PET_HANDBOOK_PANEL_U[115]);
            return;
         }
         _activeObj = _core.player.activePetObject;
         if(Boolean(_activeObj) && Boolean(_activeObj[_handbookId]) && Boolean(_activeObj[_handbookId].actived))
         {
            _core.sysMsg(Language.PET_HANDBOOK_PANEL_U[95]);
         }
         requireNum = _getActiveGold();
         if(requireNum < 0)
         {
            _core.sysMsg(Language.PET_HANDBOOK_PANEL_U[102]);
         }
         creatureData = _core.data.gameData[GamePredef.TBL_CREATURE][_relateId];
         if(!creatureData)
         {
            return;
         }
         type = "gold";
         if(creatureData.classIds != 10)
         {
            type = "gold";
         }
         func = function(param1:CloseEvent):void
         {
            var _loc2_:Object = {};
            _loc2_.num = requireNum;
            _loc2_.pid = _handbookId;
            _loc2_.moneyType = type;
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("activePetGold",new Responder(setActiveInfo),_loc2_);
            }
         };
         if(type == "gold" && requireNum > 0)
         {
            Alert.show(Language.PET_HANDBOOK_PANEL_U[100].toString().replace("{num}",requireNum),"",Alert.YES | Alert.NO,null,func);
         }
         else if(type == "goldBind" && requireNum > 0)
         {
            Alert.show(Language.PET_HANDBOOK_PANEL_U[101].toString().replace("{num}",requireNum),"",Alert.YES | Alert.NO,null,func);
         }
      }
      
      public function set petActiveNum(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1356615745petActiveNum;
         if(_loc2_ !== param1)
         {
            this._1356615745petActiveNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petActiveNum",_loc2_,param1));
         }
      }
      
      public function set petMapLive(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._104723017petMapLive;
         if(_loc2_ !== param1)
         {
            this._104723017petMapLive = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petMapLive",_loc2_,param1));
         }
      }
      
      public function set petName(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677709750petName;
         if(_loc2_ !== param1)
         {
            this._677709750petName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petGiftSkill() : Label
      {
         return this._1711403170petGiftSkill;
      }
      
      public function set progressActiveNum10(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._478717010progressActiveNum10;
         if(_loc2_ !== param1)
         {
            this._478717010progressActiveNum10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum10",_loc2_,param1));
         }
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.PET_HANDBOOK_PANEL_U[98].toString();
         _helpAlert = Alert.show(_loc1_,Language.PET_HANDBOOK_PANEL_U[99].toString(),Alert.YES,null,null);
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" load Error ");
      }
      
      [Bindable(event="propertyChange")]
      public function get prop11() : Label
      {
         return this._979804989prop11;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop13() : Label
      {
         return this._979804987prop13;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptIntelligenceMax() : Label
      {
         return this._1695470783petAptIntelligenceMax;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop15() : Label
      {
         return this._979804985prop15;
      }
      
      private function _PetHandbook_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_BasicTitleCanvas1.text = param1;
         },"_PetHandbook_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000214);
         },function(param1:Object):void
         {
            _PetHandbook_Image1.source = param1;
         },"_PetHandbook_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[96];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            allSerieEffect.htmlText = param1;
         },"allSerieEffect.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label2.text = param1;
         },"_PetHandbook_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label3.text = param1;
         },"_PetHandbook_Label3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label4.text = param1;
         },"_PetHandbook_Label4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label5.text = param1;
         },"_PetHandbook_Label5.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label6.text = param1;
         },"_PetHandbook_Label6.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label7.text = param1;
         },"_PetHandbook_Label7.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label8.text = param1;
         },"_PetHandbook_Label8.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label9.text = param1;
         },"_PetHandbook_Label9.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label10.text = param1;
         },"_PetHandbook_Label10.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[110];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label11.text = param1;
         },"_PetHandbook_Label11.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[118];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label12.text = param1;
         },"_PetHandbook_Label12.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[120];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label13.text = param1;
         },"_PetHandbook_Label13.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label14.text = param1;
         },"_PetHandbook_Label14.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop1.htmlText = param1;
         },"prop1.htmlText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop2.htmlText = param1;
         },"prop2.htmlText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop3.htmlText = param1;
         },"prop3.htmlText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop4.htmlText = param1;
         },"prop4.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop5.htmlText = param1;
         },"prop5.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop6.htmlText = param1;
         },"prop6.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop7.htmlText = param1;
         },"prop7.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop8.htmlText = param1;
         },"prop8.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop9.htmlText = param1;
         },"prop9.htmlText");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop10.htmlText = param1;
         },"prop10.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop11.htmlText = param1;
         },"prop11.htmlText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop12.htmlText = param1;
         },"prop12.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop13.htmlText = param1;
         },"prop13.htmlText");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop14.htmlText = param1;
         },"prop14.htmlText");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            prop15.htmlText = param1;
         },"prop15.htmlText");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_EVOLUTION_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEvolutionBtnTotal.label = param1;
         },"petEvolutionBtnTotal.label");
         result[31] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetHandbook_LinkButton1.setStyle("overSkin",param1);
         },"_PetHandbook_LinkButton1.overSkin");
         result[32] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetHandbook_LinkButton1.setStyle("upSkin",param1);
         },"_PetHandbook_LinkButton1.upSkin");
         result[33] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetHandbook_LinkButton1.setStyle("downSkin",param1);
         },"_PetHandbook_LinkButton1.downSkin");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ASTROLOGIC_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_LinkButton1.label = param1;
         },"_PetHandbook_LinkButton1.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEvolutionBtn.label = param1;
         },"petEvolutionBtn.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petDescText.text = param1;
         },"petDescText.text");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petName.text = param1;
         },"petName.text");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petActivated.htmlText = param1;
         },"petActivated.htmlText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[86];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petActiveEffect.htmlText = param1;
         },"petActiveEffect.htmlText");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petActiveNum.text = param1;
         },"petActiveNum.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label35.text = param1;
         },"_PetHandbook_Label35.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.npPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petNatureNum.text = param1;
         },"petNatureNum.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label37.text = param1;
         },"_PetHandbook_Label37.text");
         result[44] = binding;
         binding = new Binding(this,function():Number
         {
            return _core.player.npPnt;
         },function(param1:Number):void
         {
            npActiveNum.maximum = param1;
         },"npActiveNum.maximum");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_HANDBOOK_PANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petActiveNormalBtn.label = param1;
         },"petActiveNormalBtn.label");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petActiveMoneyBtn.label = param1;
         },"petActiveMoneyBtn.label");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petCatchDifficulty.htmlText = param1;
         },"petCatchDifficulty.htmlText");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petMapLive.htmlText = param1;
         },"petMapLive.htmlText");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petGiftSkill.text = param1;
         },"petGiftSkill.text");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptStrength.htmlText = param1;
         },"petAptStrength.htmlText");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptAgility.htmlText = param1;
         },"petAptAgility.htmlText");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptStamina.htmlText = param1;
         },"petAptStamina.htmlText");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptIntelligence.htmlText = param1;
         },"petAptIntelligence.htmlText");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptEnergy.htmlText = param1;
         },"petAptEnergy.htmlText");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptStrengthMin.htmlText = param1;
         },"petAptStrengthMin.htmlText");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptAgilityMin.htmlText = param1;
         },"petAptAgilityMin.htmlText");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptStaminaMin.htmlText = param1;
         },"petAptStaminaMin.htmlText");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptIntelligenceMin.htmlText = param1;
         },"petAptIntelligenceMin.htmlText");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptEnergyMin.htmlText = param1;
         },"petAptEnergyMin.htmlText");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptStrengthMax.htmlText = param1;
         },"petAptStrengthMax.htmlText");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptAgilityMax.htmlText = param1;
         },"petAptAgilityMax.htmlText");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptStaminaMax.htmlText = param1;
         },"petAptStaminaMax.htmlText");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptIntelligenceMax.htmlText = param1;
         },"petAptIntelligenceMax.htmlText");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petAptEnergyMax.htmlText = param1;
         },"petAptEnergyMax.htmlText");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petHiddenProp1.htmlText = param1;
         },"petHiddenProp1.htmlText");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petHiddenProp2.htmlText = param1;
         },"petHiddenProp2.htmlText");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petHiddenProp3.htmlText = param1;
         },"petHiddenProp3.htmlText");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petHiddenProp4.htmlText = param1;
         },"petHiddenProp4.htmlText");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petHiddenProp5.htmlText = param1;
         },"petHiddenProp5.htmlText");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[96];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            serieEffect.htmlText = param1;
         },"serieEffect.htmlText");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet1.htmlText = param1;
         },"statusPet1.htmlText");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet2.htmlText = param1;
         },"statusPet2.htmlText");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet3.htmlText = param1;
         },"statusPet3.htmlText");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet4.htmlText = param1;
         },"statusPet4.htmlText");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet5.htmlText = param1;
         },"statusPet5.htmlText");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet6.htmlText = param1;
         },"statusPet6.htmlText");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet7.htmlText = param1;
         },"statusPet7.htmlText");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet8.htmlText = param1;
         },"statusPet8.htmlText");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet9.htmlText = param1;
         },"statusPet9.htmlText");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            statusPet10.htmlText = param1;
         },"statusPet10.htmlText");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_Label73.text = param1;
         },"_PetHandbook_Label73.text");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            /*
             * Decompilation error
             * Code may be obfuscated
             * Tip: You can try enabling "Deobfuscate code" option in Settings
             * Error type: OutOfMemoryError (Java heap space)
             */
            throw new flash.errors.IllegalOperationError("Not decompiled due to error");
         },function(param1:String):void
         {
            serieEffect2.htmlText = param1;
         },"serieEffect2.htmlText");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            seriePropAdd1.htmlText = param1;
         },"seriePropAdd1.htmlText");
         result[84] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            seriePropAdd2.htmlText = param1;
         },"seriePropAdd2.htmlText");
         result[85] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            seriePropAdd3.htmlText = param1;
         },"seriePropAdd3.htmlText");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            seriePropAdd4.htmlText = param1;
         },"seriePropAdd4.htmlText");
         result[87] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetHandbook_LinkButton2.setStyle("overSkin",param1);
         },"_PetHandbook_LinkButton2.overSkin");
         result[88] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetHandbook_LinkButton2.setStyle("upSkin",param1);
         },"_PetHandbook_LinkButton2.upSkin");
         result[89] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _PetHandbook_LinkButton2.setStyle("downSkin",param1);
         },"_PetHandbook_LinkButton2.downSkin");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.ASTROLOGIC_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetHandbook_LinkButton2.label = param1;
         },"_PetHandbook_LinkButton2.label");
         result[91] = binding;
         return result;
      }
      
      public function set petAptIntelligence(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._144113051petAptIntelligence;
         if(_loc2_ !== param1)
         {
            this._144113051petAptIntelligence = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptIntelligence",_loc2_,param1));
         }
      }
      
      private function showPetEvolutionPanel() : void
      {
         if(_core.player.level < 120)
         {
            _core.sysMsg(Language.PET_HANDBOOK_PANEL_U[112]);
            return;
         }
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PET_EVOLUTION);
         if(_loc1_)
         {
            _loc1_.open(_relateId);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop14() : Label
      {
         return this._979804986prop14;
      }
      
      private function initTree() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:ArrayCollection = null;
         var _loc5_:int = 0;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc1_:Object = {};
         var _loc2_:ArrayCollection = new ArrayCollection();
         _loc2_.addItem({"label":Language.PET_HANDBOOK_PANEL_U[11]});
         for(_loc3_ in _kindType)
         {
            _loc1_[_loc3_] = new ArrayCollection();
            _loc6_ = _core.data.gameDataIndex[GamePredef.TBL_CREATURE_HANDBOOK][_loc3_];
            for(_loc7_ in _loc6_)
            {
               _loc1_[_loc3_].addItem({
                  "label":_loc6_[_loc7_].name.split("【")[0],
                  "kind":_loc3_,
                  "type":_CREATURE,
                  "id":_loc6_[_loc7_].id,
                  "relateId":_loc6_[_loc7_].relateId
               });
            }
            _loc2_.addItem({
               "label":GamePredef.PET_KIND_NAME[_loc3_],
               "kind":_loc3_,
               "children":_loc1_[_loc3_]
            });
         }
         _loc4_ = new ArrayCollection();
         _loc5_ = 0;
         while(_loc5_ < _loc2_.length)
         {
            _loc4_.addItem(_loc2_.getItemAt(_loc5_));
            _loc5_++;
         }
         petTree.dataProvider = _loc4_;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop10() : Label
      {
         return this._979804990prop10;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptEnergyMin() : Label
      {
         return this._1983701820petAptEnergyMin;
      }
      
      public function __petActiveNormalBtn_click(param1:MouseEvent) : void
      {
         activeNormal();
      }
      
      [Bindable(event="propertyChange")]
      public function get prop12() : Label
      {
         return this._979804988prop12;
      }
      
      public function set petActiveNormalBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._174671760petActiveNormalBtn;
         if(_loc2_ !== param1)
         {
            this._174671760petActiveNormalBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petActiveNormalBtn",_loc2_,param1));
         }
      }
      
      public function __petEvolutionBtnTotal_click(param1:MouseEvent) : void
      {
         showPetEvolutionPanel();
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptAgility() : Label
      {
         return this._186958625petAptAgility;
      }
      
      public function ___PetHandbook_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptAgilityMin() : Label
      {
         return this._888262899petAptAgilityMin;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptStrengthMax() : Label
      {
         return this._1704142595petAptStrengthMax;
      }
      
      public function showPanel() : void
      {
         if(!load && !mc)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2060090400040)));
            return;
         }
         playType = 0;
         playMC();
         this.visible = true;
         _handbookId = 0;
         _relateId = 0;
         tabPet.selectedIndex = 0;
         closeAllNodes();
         showAllSeriesActiveData();
         getAllSeriesProp();
      }
      
      public function set serieTypeName(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._141601409serieTypeName;
         if(_loc2_ !== param1)
         {
            this._141601409serieTypeName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serieTypeName",_loc2_,param1));
         }
      }
      
      public function set petInfo(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677846419petInfo;
         if(_loc2_ !== param1)
         {
            this._677846419petInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressTotal() : Property
      {
         return this._770866455progressTotal;
      }
      
      public function set petAptStaminaMin(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._552417655petAptStaminaMin;
         if(_loc2_ !== param1)
         {
            this._552417655petAptStaminaMin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptStaminaMin",_loc2_,param1));
         }
      }
      
      public function set petImg3(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847409petImg3;
         if(_loc2_ !== param1)
         {
            this._677847409petImg3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg3",_loc2_,param1));
         }
      }
      
      public function set petImg5(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847407petImg5;
         if(_loc2_ !== param1)
         {
            this._677847407petImg5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg5",_loc2_,param1));
         }
      }
      
      public function set petImg6(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847406petImg6;
         if(_loc2_ !== param1)
         {
            this._677847406petImg6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg6",_loc2_,param1));
         }
      }
      
      public function set petImg7(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847405petImg7;
         if(_loc2_ !== param1)
         {
            this._677847405petImg7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg7",_loc2_,param1));
         }
      }
      
      public function set petImg4(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847408petImg4;
         if(_loc2_ !== param1)
         {
            this._677847408petImg4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg4",_loc2_,param1));
         }
      }
      
      public function set petImg8(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847404petImg8;
         if(_loc2_ !== param1)
         {
            this._677847404petImg8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg8",_loc2_,param1));
         }
      }
      
      private function showCreatureInfo() : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:int = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc19_:int = 0;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:String = null;
         var _loc23_:String = null;
         var _loc24_:* = undefined;
         if(!_core.player.pmLevel || ToolKit.isSmallOrEqual(_core.player.pmLevel,0))
         {
            petActiveMoneyBtn.visible = false;
         }
         else
         {
            petActiveMoneyBtn.visible = true;
         }
         if(_handbookId == 27)
         {
            _selectedURL.y = 157;
         }
         else if(_handbookId == 72)
         {
            _selectedURL.y = 83;
         }
         else
         {
            _selectedURL.y = 133;
         }
         var _loc1_:* = _core.data.gameData[GamePredef.TBL_CREATURE][_relateId];
         var _loc2_:* = _core.data.gameDataIndex2[GamePredef.TBL_CREATURE_HANDBOOK][_handbookId];
         var _loc3_:* = _core.player.activePetObject;
         progressTotal.m = _loc2_[_handbookId].activeNum1;
         if(!_loc2_[_handbookId].evolutionId)
         {
            petEvolutionBtn.visible = false;
         }
         else
         {
            petEvolutionBtn.visible = true;
         }
         if(!_loc2_[_handbookId] || !_loc2_[_handbookId].propType || !_loc2_[_handbookId].propNum)
         {
            petActiveEffect.visible = false;
         }
         else
         {
            if(Number(_loc2_[_handbookId].percentFlag) == 1)
            {
               petActiveEffect.htmlText = Language.PET_HANDBOOK_PANEL_U[84].toString().replace("{type}",Language.PROP_NAME_U[int(_loc2_[_handbookId].propType)]).replace("{num}",_loc2_[_handbookId].propNum);
            }
            else
            {
               petActiveEffect.htmlText = Language.PET_HANDBOOK_PANEL_U[86].toString().replace("{type}",Language.PROP_NAME_U[int(_loc2_[_handbookId].propType)]).replace("{num}",_loc2_[_handbookId].propNum);
            }
            petActiveEffect.visible = true;
         }
         if(!_loc3_ || !_loc3_[_handbookId] || !_loc3_[_handbookId].actived)
         {
            petActiveEffect.htmlText = petActiveEffect.htmlText.toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[114]);
            petActivated.htmlText = Language.PET_HANDBOOK_PANEL_U[33];
            petEvolutionBtn.enabled = false;
            if(Boolean(_loc3_) && Boolean(_loc3_[_handbookId]) && Boolean(_loc3_[_handbookId].activedNum))
            {
               progressTotal.v = _loc3_[_handbookId].activedNum;
               progressTotal.label = _loc3_[_handbookId].activedNum + "/" + _loc2_[_handbookId].activeNum1;
               petActiveNum.text = Language.PET_HANDBOOK_PANEL_U[45].toString().replace("{num}",_loc3_[_handbookId].activedNum).replace("{total}",_loc2_[_handbookId].activeNum1);
            }
            else
            {
               progressTotal.v = 0;
               progressTotal.label = 0 + "/" + _loc2_[_handbookId].activeNum1;
               petActiveNum.text = Language.PET_HANDBOOK_PANEL_U[45].toString().replace("{num}",0).replace("{total}",_loc2_[_handbookId].activeNum1);
            }
            _selectedURL.url = "";
            classImg.source = "";
            classImg.toolTip = "";
            elementImg.source = "";
            elementImg.toolTip = "";
            petLevel.text = "";
            petAptStrengthMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptStrengthMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptAgilityMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptAgilityMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptStaminaMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptStaminaMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptIntelligenceMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptIntelligenceMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptEnergyMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            petAptEnergyMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            _loc4_ = 1;
            while(_loc4_ < 5)
            {
               this["skillSlot" + _loc4_].clean();
               _loc4_++;
            }
            petMapLive.htmlText = Language.PET_HANDBOOK_PANEL_U[50].toString().replace("{name}",Language.PET_HANDBOOK_PANEL_U[55]);
            petCatchDifficulty.htmlText = Language.PET_HANDBOOK_PANEL_U[48].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
            _loc5_ = 1;
            _loc6_ = GamePredef.PET_HIDDEN_PROP;
            for(_loc7_ in _loc6_)
            {
               _loc8_ = GamePredef.PET_HIDDEN_PROP[_loc7_].data;
               _loc9_ = _loc1_[_loc8_] ? _loc1_[_loc8_] : "0";
               _loc10_ = GamePredef.PET_HIDDEN_PROP[_loc7_].name;
               this["petHiddenProp" + _loc5_].text = Language.PET_HANDBOOK_PANEL_U[87].toString().replace("{prop}",_loc10_).replace("{num}",Language.PET_HANDBOOK_PANEL_U[55]);
               _loc5_++;
            }
            petDescText.text = Language.PET_HANDBOOK_PANEL_U[108].toString().replace("{disc}",Language.PET_HANDBOOK_PANEL_U[54]);
         }
         else
         {
            petActiveEffect.htmlText = petActiveEffect.htmlText.toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]);
            petActivated.htmlText = Language.PET_HANDBOOK_PANEL_U[32];
            petEvolutionBtn.enabled = true;
            progressTotal.v = _loc3_[_handbookId].activedNum;
            progressTotal.label = _loc3_[_handbookId].activedNum + "/" + _loc2_[_handbookId].activeNum1;
            petActiveNum.text = Language.PET_HANDBOOK_PANEL_U[45].toString().replace("{num}",_loc3_[_handbookId].activedNum).replace("{total}",_loc2_[_handbookId].activeNum1);
            _selectedURL.url = ResManager.getResUrl(_loc1_.resCode);
            classImg.source = ResManager.CREATURE_CLASS[_loc1_.classId];
            classImg.toolTip = GamePredef.CREATURE_QLEVEL[_loc1_.qLevel] + GamePredef.CREATURE_CLASS_INFO[_loc1_.classId];
            elementImg.source = ResManager.ELEMENT_KIND[_loc1_.element];
            elementImg.toolTip = GamePredef.ELEMENT_INFO[_loc1_.element];
            petLevel.text = Language.TIPCRE_S[11].toString().replace("{vo.useLv}",_loc1_.useLv);
            _loc11_ = Math.round(_loc1_.aptStrength * 0.8);
            _loc12_ = Math.round(_loc1_.aptStrength * 1.2);
            petAptStrengthMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",_loc11_);
            petAptStrengthMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",_loc12_);
            _loc13_ = Math.round(_loc1_.aptAgility * 0.8);
            _loc14_ = Math.round(_loc1_.aptAgility * 1.2);
            petAptAgilityMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",_loc13_);
            petAptAgilityMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",_loc14_);
            _loc15_ = Math.round(_loc1_.aptStamina * 0.8);
            _loc16_ = Math.round(_loc1_.aptStamina * 1.2);
            petAptStaminaMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",_loc15_);
            petAptStaminaMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",_loc16_);
            _loc17_ = Math.round(_loc1_.aptIntelligence * 0.8);
            _loc18_ = Math.round(_loc1_.aptIntelligence * 1.2);
            petAptIntelligenceMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",_loc17_);
            petAptIntelligenceMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",_loc18_);
            _loc19_ = Math.round(_loc1_.aptEnergy * 0.8);
            _loc20_ = Math.round(_loc1_.aptEnergy * 1.2);
            petAptEnergyMin.text = Language.PET_HANDBOOK_PANEL_U[53].toString().replace("{num}",_loc19_);
            petAptEnergyMax.text = Language.PET_HANDBOOK_PANEL_U[52].toString().replace("{num}",_loc20_);
            _loc21_ = 1;
            _loc4_ = 1;
            while(_loc4_ < 5)
            {
               this["skillSlot" + _loc4_].clean();
               if(_loc2_[_handbookId]["skillId" + _loc4_])
               {
                  this["skillSlot" + _loc4_].giid = _loc2_[_handbookId]["skillId" + _loc4_];
                  this["skillSlot" + _loc4_].type = GamePredef.TBL_SKILL;
                  if(_core.data.hasData(GamePredef.TBL_SKILL,_loc2_[_handbookId]["skillId" + _loc4_]))
                  {
                     _loc24_ = _core.data.getGameData(GamePredef.TBL_SKILL,_loc2_[_handbookId]["skillId" + _loc4_]);
                     this["skillSlot" + _loc4_].slotData = _loc24_;
                  }
               }
               _loc4_++;
            }
            _loc22_ = Language.PET_HANDBOOK_PANEL_U[88].toString();
            _loc23_ = Language.PET_HANDBOOK_PANEL_U[49].toString();
            if(_loc2_[_handbookId].mid)
            {
               _loc22_ = Language.PET_HANDBOOK_PANEL_U[89].toString().replace("{data}",_core.data.getGameData(GamePredef.TBL_MAP,_loc2_[_handbookId].mid).name);
            }
            if(Boolean(_loc1_.catchable) || _loc1_.catchable != "0")
            {
               _loc23_ = Language.PET_HANDBOOK_PANEL_U[89].toString().replace("{data}",_loc1_.catchable);
            }
            petMapLive.htmlText = Language.PET_HANDBOOK_PANEL_U[50].toString().replace("{name}",_loc22_);
            if(_loc1_.catchable == "0")
            {
               petCatchDifficulty.htmlText = Language.PET_HANDBOOK_PANEL_U[48].toString().replace("{num}",Language.PET_HANDBOOK_PANEL_U[109]);
            }
            else
            {
               petCatchDifficulty.htmlText = Language.PET_HANDBOOK_PANEL_U[48].toString().replace("{num}",_loc23_);
            }
            _loc5_ = 1;
            _loc6_ = GamePredef.PET_HIDDEN_PROP;
            for(_loc7_ in _loc6_)
            {
               _loc8_ = GamePredef.PET_HIDDEN_PROP[_loc7_].data;
               _loc9_ = _loc1_[_loc8_] ? _loc1_[_loc8_] : "0";
               _loc10_ = GamePredef.PET_HIDDEN_PROP[_loc7_].name;
               this["petHiddenProp" + _loc5_].text = Language.PET_HANDBOOK_PANEL_U[87].toString().replace("{prop}",_loc10_).replace("{num}",_loc9_);
               _loc5_++;
            }
            petDescText.text = Language.PET_HANDBOOK_PANEL_U[108].toString().replace("{disc}",_loc2_[_handbookId].discription);
         }
      }
      
      public function set petImg2(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847410petImg2;
         if(_loc2_ !== param1)
         {
            this._677847410petImg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop1() : Label
      {
         return this._106940718prop1;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop2() : Label
      {
         return this._106940719prop2;
      }
      
      public function set petImg1(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847411petImg1;
         if(_loc2_ !== param1)
         {
            this._677847411petImg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop6() : Label
      {
         return this._106940723prop6;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop8() : Label
      {
         return this._106940725prop8;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop9() : Label
      {
         return this._106940726prop9;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop3() : Label
      {
         return this._106940720prop3;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop4() : Label
      {
         return this._106940721prop4;
      }
      
      public function set petImg9(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677847403petImg9;
         if(_loc2_ !== param1)
         {
            this._677847403petImg9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get prop7() : Label
      {
         return this._106940724prop7;
      }
      
      [Bindable(event="propertyChange")]
      public function get prop5() : Label
      {
         return this._106940722prop5;
      }
      
      public function set petGiftSkill(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1711403170petGiftSkill;
         if(_loc2_ !== param1)
         {
            this._1711403170petGiftSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petGiftSkill",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabPet() : ViewStack
      {
         return this._881404598tabPet;
      }
      
      public function set panel1(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._995543379panel1;
         if(_loc2_ !== param1)
         {
            this._995543379panel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panel1",_loc2_,param1));
         }
      }
      
      public function set petAptEnergy(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1500310190petAptEnergy;
         if(_loc2_ !== param1)
         {
            this._1500310190petAptEnergy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptEnergy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petTree() : ButtonTree
      {
         return this._677514915petTree;
      }
      
      public function set statusPet10(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._905489748statusPet10;
         if(_loc2_ !== param1)
         {
            this._905489748statusPet10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusPet10",_loc2_,param1));
         }
      }
      
      public function ___PetHandbook_LinkButton2_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      public function set petAptEnergyMin(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1983701820petAptEnergyMin;
         if(_loc2_ !== param1)
         {
            this._1983701820petAptEnergyMin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptEnergyMin",_loc2_,param1));
         }
      }
      
      public function __petActiveMoneyBtn_click(param1:MouseEvent) : void
      {
         activeGold();
      }
      
      public function set prop10(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._979804990prop10;
         if(_loc2_ !== param1)
         {
            this._979804990prop10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop10",_loc2_,param1));
         }
      }
      
      public function set prop14(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._979804986prop14;
         if(_loc2_ !== param1)
         {
            this._979804986prop14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop14",_loc2_,param1));
         }
      }
      
      public function set petAptIntelligenceMax(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1695470783petAptIntelligenceMax;
         if(_loc2_ !== param1)
         {
            this._1695470783petAptIntelligenceMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptIntelligenceMax",_loc2_,param1));
         }
      }
      
      public function set prop15(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._979804985prop15;
         if(_loc2_ !== param1)
         {
            this._979804985prop15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop15",_loc2_,param1));
         }
      }
      
      public function set prop12(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._979804988prop12;
         if(_loc2_ !== param1)
         {
            this._979804988prop12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop12",_loc2_,param1));
         }
      }
      
      public function set prop13(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._979804987prop13;
         if(_loc2_ !== param1)
         {
            this._979804987prop13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop13",_loc2_,param1));
         }
      }
      
      public function set prop11(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._979804989prop11;
         if(_loc2_ !== param1)
         {
            this._979804989prop11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptStaminaMax() : Label
      {
         return this._552417893petAptStaminaMax;
      }
      
      [Bindable(event="propertyChange")]
      public function get petDescText() : TextArea
      {
         return this._192442979petDescText;
      }
      
      [Bindable(event="propertyChange")]
      public function get petLevel() : Label
      {
         return this._464115109petLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get petActiveMoneyBtn() : DelayButton
      {
         return this._762725793petActiveMoneyBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptIntelligenceMin() : Label
      {
         return this._1695471021petAptIntelligenceMin;
      }
      
      private function showSerieActiveData(param1:Number) : void
      {
         var _loc10_:* = undefined;
         var _loc11_:* = undefined;
         seridState.visible = true;
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_CREATURE_HANDBOOK][param1];
         var _loc3_:* = GamePredef.PET_SERIE_PROP[param1];
         var _loc4_:String = Language.PET_HANDBOOK_PANEL_U[104];
         var _loc5_:String = Language.PET_HANDBOOK_PANEL_U[104];
         var _loc6_:int = 1;
         var _loc7_:* = _core.player.activePetObject;
         var _loc8_:int = 1;
         while(_loc6_ <= 10)
         {
            this["statusPet" + _loc6_].visible = false;
            this["petImg" + _loc6_].visible = false;
            if(_loc8_ <= 4)
            {
               this["seriePropAdd" + _loc8_].visible = false;
            }
            _loc8_++;
            _loc6_++;
         }
         _loc6_ = 1;
         _loc8_ = 1;
         var _loc9_:Boolean = true;
         for(_loc10_ in _loc2_)
         {
            if(_loc6_ > 10)
            {
               return;
            }
            _loc11_ = _core.data.gameData[GamePredef.TBL_CREATURE][_loc2_[_loc10_].relateId];
            if(_loc11_)
            {
               this["petImg" + _loc6_].source = ResManager.getIconUrl(_loc11_.iconCode);
               this["petImg" + _loc6_].toolTip = _loc11_.name.split("【")[0];
               if(Boolean(_loc7_) && Boolean(_loc7_[_loc2_[_loc10_].id]) && Boolean(_loc7_[_loc2_[_loc10_].id].actived))
               {
                  this["statusPet" + _loc6_].htmlText = Language.PET_HANDBOOK_PANEL_U[32];
                  if(Boolean(_loc2_[_loc10_].propType) && _loc8_ <= 4)
                  {
                     if(Number(_loc2_[_loc10_].percentFlag) == 1)
                     {
                        this["seriePropAdd" + _loc8_].htmlText = Language.PET_HANDBOOK_PANEL_U[106].toString().replace("{name}",_loc11_.name.split("【")[0]).replace("{type}",Language.PROP_NAME_U[_loc2_[_loc10_].propType]).replace("{num}",_loc2_[_loc10_].propNum);
                     }
                     else
                     {
                        this["seriePropAdd" + _loc8_].htmlText = Language.PET_HANDBOOK_PANEL_U[105].toString().replace("{name}",_loc11_.name.split("【")[0]).replace("{type}",Language.PROP_NAME_U[_loc2_[_loc10_].propType]).replace("{num}",_loc2_[_loc10_].propNum);
                     }
                     this["seriePropAdd" + _loc8_].visible = true;
                     _loc8_++;
                  }
               }
               else
               {
                  this["petImg" + _loc6_].source = ResManager.PET_DEFAULT_ICON;
                  this["statusPet" + _loc6_].htmlText = Language.PET_HANDBOOK_PANEL_U[33];
                  _loc9_ = false;
               }
               this["statusPet" + _loc6_].visible = true;
               this["petImg" + _loc6_].visible = true;
               _loc6_++;
            }
         }
         if(!_loc9_)
         {
            if(_loc3_)
            {
               _loc4_ = _loc4_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]);
               _loc5_ = _loc5_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]);
               for(_loc10_ in _loc3_)
               {
                  if(Number(_loc3_[_loc10_].percentFlag) == 0)
                  {
                     _loc4_ += Language.PET_HANDBOOK_PANEL_U[96].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                     _loc5_ += Language.PET_HANDBOOK_PANEL_U[96].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                  }
                  else
                  {
                     _loc4_ += Language.PET_HANDBOOK_PANEL_U[97].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                     _loc5_ += Language.PET_HANDBOOK_PANEL_U[97].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                  }
               }
            }
            serieEffect.htmlText = _loc4_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]);
            serieEffect2.htmlText = _loc5_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]);
            serieEffect2.visible = false;
            seridState.source = ResManager.getIconUrl(4130220000220);
         }
         else
         {
            if(_loc3_)
            {
               _loc4_ = _loc4_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]);
               _loc5_ = _loc5_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]);
               for(_loc10_ in _loc3_)
               {
                  if(Number(_loc3_[_loc10_].percentFlag) == 0)
                  {
                     _loc4_ += Language.PET_HANDBOOK_PANEL_U[96].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                     _loc5_ += Language.PET_HANDBOOK_PANEL_U[96].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                  }
                  else
                  {
                     _loc4_ += Language.PET_HANDBOOK_PANEL_U[97].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                     _loc5_ += Language.PET_HANDBOOK_PANEL_U[97].toString().replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]).replace("{type}",Language.PROP_NAME_U[_loc3_[_loc10_].propType]).replace("{num}",_loc3_[_loc10_].propNum);
                  }
               }
            }
            serieEffect.htmlText = _loc4_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]);
            serieEffect2.htmlText = _loc5_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[117]);
            serieEffect2.visible = true;
            seridState.source = ResManager.getIconUrl(4130220000221);
         }
      }
      
      public function set oneSerieProcess(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1062648537oneSerieProcess;
         if(_loc2_ !== param1)
         {
            this._1062648537oneSerieProcess = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneSerieProcess",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petCatchDifficulty() : Label
      {
         return this._1874945609petCatchDifficulty;
      }
      
      public function set petAptAgility(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._186958625petAptAgility;
         if(_loc2_ !== param1)
         {
            this._186958625petAptAgility = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptAgility",_loc2_,param1));
         }
      }
      
      public function set petAptStrength(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1290955033petAptStrength;
         if(_loc2_ !== param1)
         {
            this._1290955033petAptStrength = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptStrength",_loc2_,param1));
         }
      }
      
      private function _getActiveNum() : Number
      {
         var _loc1_:Object = _core.player.activePetObject;
         var _loc2_:* = _core.data.gameDataIndex2[GamePredef.TBL_CREATURE_HANDBOOK][_handbookId];
         if(!_loc2_)
         {
            return -1;
         }
         var _loc3_:Number = Number(_loc2_[_handbookId].activeNum1);
         var _loc4_:Number = 0;
         if(Boolean(_loc1_) && Boolean(_loc1_[_handbookId]) && Boolean(_loc1_[_handbookId].activedNum))
         {
            _loc4_ = Number(_loc1_[_handbookId].activedNum);
         }
         return _loc3_ - _loc4_;
      }
      
      [Bindable(event="propertyChange")]
      public function get allSerieEffect() : Label
      {
         return this._379017676allSerieEffect;
      }
      
      public function set petAptAgilityMin(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._888262899petAptAgilityMin;
         if(_loc2_ !== param1)
         {
            this._888262899petAptAgilityMin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptAgilityMin",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptStrengthMin() : Label
      {
         return this._1704142357petAptStrengthMin;
      }
      
      public function set petActiveEffect(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._974219530petActiveEffect;
         if(_loc2_ !== param1)
         {
            this._974219530petActiveEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petActiveEffect",_loc2_,param1));
         }
      }
      
      public function __petTree_itemClick(param1:ListEvent) : void
      {
         petTreeClick(param1);
      }
      
      public function set petAptStrengthMax(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1704142595petAptStrengthMax;
         if(_loc2_ !== param1)
         {
            this._1704142595petAptStrengthMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptStrengthMax",_loc2_,param1));
         }
      }
      
      public function set petNatureNum(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._483746560petNatureNum;
         if(_loc2_ !== param1)
         {
            this._483746560petNatureNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petNatureNum",_loc2_,param1));
         }
      }
      
      public function set npActiveNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1577614078npActiveNum;
         if(_loc2_ !== param1)
         {
            this._1577614078npActiveNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"npActiveNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet2() : Label
      {
         return this._247885317statusPet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet4() : Label
      {
         return this._247885319statusPet4;
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet5() : Label
      {
         return this._247885320statusPet5;
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet6() : Label
      {
         return this._247885321statusPet6;
      }
      
      public function set petHiddenProp1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1753050363petHiddenProp1;
         if(_loc2_ !== param1)
         {
            this._1753050363petHiddenProp1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petHiddenProp1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet1() : Label
      {
         return this._247885316statusPet1;
      }
      
      public function set petHiddenProp2(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1753050362petHiddenProp2;
         if(_loc2_ !== param1)
         {
            this._1753050362petHiddenProp2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petHiddenProp2",_loc2_,param1));
         }
      }
      
      public function set petHiddenProp4(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1753050360petHiddenProp4;
         if(_loc2_ !== param1)
         {
            this._1753050360petHiddenProp4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petHiddenProp4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet7() : Label
      {
         return this._247885322statusPet7;
      }
      
      public function set petAptStamina(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1026941175petAptStamina;
         if(_loc2_ !== param1)
         {
            this._1026941175petAptStamina = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptStamina",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet9() : Label
      {
         return this._247885324statusPet9;
      }
      
      public function set petHiddenProp3(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1753050361petHiddenProp3;
         if(_loc2_ !== param1)
         {
            this._1753050361petHiddenProp3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petHiddenProp3",_loc2_,param1));
         }
      }
      
      public function set petHiddenProp5(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1753050359petHiddenProp5;
         if(_loc2_ !== param1)
         {
            this._1753050359petHiddenProp5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petHiddenProp5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet3() : Label
      {
         return this._247885318statusPet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot1() : ItemSlot
      {
         return this._1596220962skillSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot2() : ItemSlot
      {
         return this._1596220963skillSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot3() : ItemSlot
      {
         return this._1596220964skillSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot4() : ItemSlot
      {
         return this._1596220965skillSlot4;
      }
      
      public function set _selectedURL(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._401544427_selectedURL;
         if(_loc2_ !== param1)
         {
            this._401544427_selectedURL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_selectedURL",_loc2_,param1));
         }
      }
      
      private function petTreeClick(param1:Event) : void
      {
         var _loc3_:Boolean = false;
         seridState.visible = false;
         var _loc2_:Object = petTree.selectedItem;
         if(_loc2_.label == Language.PET_HANDBOOK_PANEL_U[11])
         {
            _handbookId = 0;
            _relateId = 0;
            tabPet.selectedIndex = 0;
            closeAllNodes();
            showAllSeriesActiveData();
            getAllSeriesProp();
         }
         else if(Boolean(_loc2_.kind) && Boolean(_loc2_.kind > 0) && _loc2_.hasOwnProperty("children"))
         {
            _handbookId = 0;
            _relateId = 0;
            tabPet.selectedIndex = 2;
            _loc3_ = petTree.isItemOpen(petTree.selectedItem);
            closeAllNodes();
            if(!_loc3_)
            {
               petTree.expandItem(petTree.selectedItem,!petTree.isItemOpen(petTree.selectedItem));
            }
            showSerieActiveData(_loc2_.kind);
         }
         else if(_loc2_.id)
         {
            tabPet.selectedIndex = 1;
            _handbookId = _loc2_.id;
            _relateId = _loc2_.relateId;
            showCreatureInfo();
         }
         playType = 1;
         panel1.visible = false;
         playMC();
      }
      
      [Bindable(event="propertyChange")]
      public function get serieEffect() : Label
      {
         return this._1072417325serieEffect;
      }
      
      public function set progressTotal(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._770866455progressTotal;
         if(_loc2_ !== param1)
         {
            this._770866455progressTotal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressTotal",_loc2_,param1));
         }
      }
      
      public function ___PetHandbook_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet8() : Label
      {
         return this._247885323statusPet8;
      }
      
      private function _PetHandbook_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[0];
         _loc1_ = ResManager.getIconUrl(4130220000214);
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[96];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[19];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[20];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[12];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[13];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[14];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[15];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[16];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[17];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[18];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[110];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[118];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[120];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[21];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_EVOLUTION_PANEL_U[0];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.ASTROLOGIC_PANEL_U[38];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[42];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[19];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[19];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[86];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[45];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[46];
         _loc1_ = _core.player.npPnt;
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[47];
         _loc1_ = _core.player.npPnt;
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[43];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[44];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[48];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[50];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[51];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[1];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[2];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[3];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[4];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[5];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[53];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[52];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[87];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[96];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[33];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[21];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[96];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
         _loc1_ = Language.PET_HANDBOOK_PANEL_U[85];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.ASTROLOGIC_PANEL_U[38];
      }
      
      [Bindable(event="propertyChange")]
      public function get petMapLive() : Label
      {
         return this._104723017petMapLive;
      }
      
      public function set classImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._692413227classImg;
         if(_loc2_ !== param1)
         {
            this._692413227classImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classImg",_loc2_,param1));
         }
      }
      
      public function set prop1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940718prop1;
         if(_loc2_ !== param1)
         {
            this._106940718prop1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop1",_loc2_,param1));
         }
      }
      
      public function set elementImg(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._575917863elementImg;
         if(_loc2_ !== param1)
         {
            this._575917863elementImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementImg",_loc2_,param1));
         }
      }
      
      public function set prop3(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940720prop3;
         if(_loc2_ !== param1)
         {
            this._106940720prop3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop3",_loc2_,param1));
         }
      }
      
      public function set prop6(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940723prop6;
         if(_loc2_ !== param1)
         {
            this._106940723prop6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop6",_loc2_,param1));
         }
      }
      
      public function set prop7(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940724prop7;
         if(_loc2_ !== param1)
         {
            this._106940724prop7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop7",_loc2_,param1));
         }
      }
      
      public function set prop8(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940725prop8;
         if(_loc2_ !== param1)
         {
            this._106940725prop8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop8",_loc2_,param1));
         }
      }
      
      public function set prop5(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940722prop5;
         if(_loc2_ !== param1)
         {
            this._106940722prop5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptIntelligence() : Label
      {
         return this._144113051petAptIntelligence;
      }
      
      public function set prop4(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940721prop4;
         if(_loc2_ !== param1)
         {
            this._106940721prop4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop4",_loc2_,param1));
         }
      }
      
      public function set prop9(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940726prop9;
         if(_loc2_ !== param1)
         {
            this._106940726prop9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petInfo() : Canvas
      {
         return this._677846419petInfo;
      }
      
      public function set prop2(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._106940719prop2;
         if(_loc2_ !== param1)
         {
            this._106940719prop2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prop2",_loc2_,param1));
         }
      }
      
      private function _getActiveGold() : Number
      {
         var _loc1_:Number = _getActiveNum();
         if(_loc1_ < 0)
         {
            return _loc1_;
         }
         return Math.ceil(_loc1_ / _goldRate);
      }
      
      [Bindable(event="propertyChange")]
      public function get serieTypeName() : Label
      {
         return this._141601409serieTypeName;
      }
      
      public function set petImg10(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._461566787petImg10;
         if(_loc2_ !== param1)
         {
            this._461566787petImg10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petImg10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptStaminaMin() : Label
      {
         return this._552417655petAptStaminaMin;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg2() : Image
      {
         return this._677847410petImg2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg3() : Image
      {
         return this._677847409petImg3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg5() : Image
      {
         return this._677847407petImg5;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg6() : Image
      {
         return this._677847406petImg6;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg7() : Image
      {
         return this._677847405petImg7;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg1() : Image
      {
         return this._677847411petImg1;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg9() : Image
      {
         return this._677847403petImg9;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg4() : Image
      {
         return this._677847408petImg4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg8() : Image
      {
         return this._677847404petImg8;
      }
      
      public function set seriePropAdd1(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._176118961seriePropAdd1;
         if(_loc2_ !== param1)
         {
            this._176118961seriePropAdd1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seriePropAdd1",_loc2_,param1));
         }
      }
      
      public function set seriePropAdd2(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._176118960seriePropAdd2;
         if(_loc2_ !== param1)
         {
            this._176118960seriePropAdd2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seriePropAdd2",_loc2_,param1));
         }
      }
      
      public function set seriePropAdd3(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._176118959seriePropAdd3;
         if(_loc2_ !== param1)
         {
            this._176118959seriePropAdd3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seriePropAdd3",_loc2_,param1));
         }
      }
      
      public function set tabPet(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._881404598tabPet;
         if(_loc2_ !== param1)
         {
            this._881404598tabPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabPet",_loc2_,param1));
         }
      }
      
      public function set seriePropAdd4(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._176118958seriePropAdd4;
         if(_loc2_ !== param1)
         {
            this._176118958seriePropAdd4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seriePropAdd4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get statusPet10() : Label
      {
         return this._905489748statusPet10;
      }
      
      [Bindable(event="propertyChange")]
      public function get panel1() : Canvas
      {
         return this._995543379panel1;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptEnergy() : Label
      {
         return this._1500310190petAptEnergy;
      }
      
      public function set petTree(param1:ButtonTree) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677514915petTree;
         if(_loc2_ !== param1)
         {
            this._677514915petTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petTree",_loc2_,param1));
         }
      }
      
      private function setActiveInfo(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!param1.pid && param1.pid != _handbookId)
         {
            return;
         }
         if(param1.actived)
         {
            petActivated.htmlText = Language.PET_HANDBOOK_PANEL_U[32];
            petEvolutionBtn.enabled = true;
         }
         else
         {
            petActivated.htmlText = Language.PET_HANDBOOK_PANEL_U[33];
            petEvolutionBtn.enabled = false;
         }
         var _loc2_:* = _core.data.gameDataIndex2[GamePredef.TBL_CREATURE_HANDBOOK][_handbookId];
         petActiveNum.text = Language.PET_HANDBOOK_PANEL_U[45].toString().replace("{num}",param1.activedNum).replace("{total}",_loc2_[_handbookId].activeNum1);
         progressTotal.v = Number(param1.activedNum);
         progressTotal.m = _loc2_[_handbookId].activeNum1;
         progressTotal.label = Number(param1.activedNum) + "/" + _loc2_[_handbookId].activeNum1;
         npActiveNum.value = 0;
         showCreatureInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get oneSerieProcess() : Canvas
      {
         return this._1062648537oneSerieProcess;
      }
      
      public function set progressActiveTotal(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._484087665progressActiveTotal;
         if(_loc2_ !== param1)
         {
            this._484087665progressActiveTotal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveTotal",_loc2_,param1));
         }
      }
      
      public function set petActivated(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1356532594petActivated;
         if(_loc2_ !== param1)
         {
            this._1356532594petActivated = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petActivated",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petActiveEffect() : Label
      {
         return this._974219530petActiveEffect;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptStrength() : Label
      {
         return this._1290955033petAptStrength;
      }
      
      [Bindable(event="propertyChange")]
      public function get petNatureNum() : Label
      {
         return this._483746560petNatureNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get npActiveNum() : NumericStepper
      {
         return this._1577614078npActiveNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get petHiddenProp2() : Label
      {
         return this._1753050362petHiddenProp2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptStamina() : Label
      {
         return this._1026941175petAptStamina;
      }
      
      [Bindable(event="propertyChange")]
      public function get petHiddenProp3() : Label
      {
         return this._1753050361petHiddenProp3;
      }
      
      public function set petEvolutionBtnTotal(param1:DelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._909209476petEvolutionBtnTotal;
         if(_loc2_ !== param1)
         {
            this._909209476petEvolutionBtnTotal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEvolutionBtnTotal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petHiddenProp5() : Label
      {
         return this._1753050359petHiddenProp5;
      }
      
      [Bindable(event="propertyChange")]
      public function get _selectedURL() : CharactorShowCanvas
      {
         return this._401544427_selectedURL;
      }
      
      [Bindable(event="propertyChange")]
      public function get petHiddenProp4() : Label
      {
         return this._1753050360petHiddenProp4;
      }
      
      [Bindable(event="propertyChange")]
      public function get petHiddenProp1() : Label
      {
         return this._1753050363petHiddenProp1;
      }
      
      private function showAllSeriesActiveData() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc1_:* = _core.player.activePetObject;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         for(_loc4_ in _kindType)
         {
            _loc5_ = 0;
            _loc6_ = 0;
            _loc7_ = _core.data.gameDataIndex[GamePredef.TBL_CREATURE_HANDBOOK][_loc4_];
            for(_loc8_ in _loc7_)
            {
               _loc9_ = _loc7_[_loc8_];
               if(Boolean(_loc1_) && Boolean(_loc1_[_loc9_.id]) && Boolean(_loc1_[_loc9_.id].actived))
               {
                  _loc6_++;
                  _loc3_++;
               }
               _loc5_++;
               _loc2_++;
            }
            this["progressActiveNum" + _loc4_].m = _loc5_;
            this["progressActiveNum" + _loc4_].v = _loc6_;
            this["progressActiveNum" + _loc4_].label = _loc6_ + "/" + _loc5_;
         }
         progressActiveTotal.m = _loc2_;
         progressActiveTotal.v = _loc3_;
         progressActiveTotal.label = _loc3_ + "/" + _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get elementImg() : Image
      {
         return this._575917863elementImg;
      }
      
      public function set petAptStaminaMax(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._552417893petAptStaminaMax;
         if(_loc2_ !== param1)
         {
            this._552417893petAptStaminaMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptStaminaMax",_loc2_,param1));
         }
      }
      
      public function set petEvolutionBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._661045344petEvolutionBtn;
         if(_loc2_ !== param1)
         {
            this._661045344petEvolutionBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEvolutionBtn",_loc2_,param1));
         }
      }
      
      public function set petDescText(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._192442979petDescText;
         if(_loc2_ !== param1)
         {
            this._192442979petDescText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petDescText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petImg10() : Image
      {
         return this._461566787petImg10;
      }
      
      public function set progressActiveNum5(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294174progressActiveNum5;
         if(_loc2_ !== param1)
         {
            this._677294174progressActiveNum5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum5",_loc2_,param1));
         }
      }
      
      public function set progressActiveNum6(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294173progressActiveNum6;
         if(_loc2_ !== param1)
         {
            this._677294173progressActiveNum6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum6",_loc2_,param1));
         }
      }
      
      public function set progressActiveNum3(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294176progressActiveNum3;
         if(_loc2_ !== param1)
         {
            this._677294176progressActiveNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum3",_loc2_,param1));
         }
      }
      
      public function set petActiveMoneyBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._762725793petActiveMoneyBtn;
         if(_loc2_ !== param1)
         {
            this._762725793petActiveMoneyBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petActiveMoneyBtn",_loc2_,param1));
         }
      }
      
      public function set petLevel(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._464115109petLevel;
         if(_loc2_ !== param1)
         {
            this._464115109petLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petLevel",_loc2_,param1));
         }
      }
      
      private function getAllSeriesProp() : void
      {
         var _loc1_:Object = null;
         var _loc7_:* = undefined;
         var _loc9_:Boolean = false;
         var _loc10_:Object = null;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         _loc1_ = GamePredef.PET_SERIE_PROP[0];
         var _loc2_:String = Language.PET_HANDBOOK_PANEL_U[111];
         if(_loc1_)
         {
            for(_loc7_ in _loc1_)
            {
               if(Number(_loc1_[_loc7_].percentFlag) == 0)
               {
                  _loc2_ += Language.PET_HANDBOOK_PANEL_U[96].toString().replace("{type}",Language.PROP_NAME_U[_loc1_[_loc7_].propType]).replace("{num}",_loc1_[_loc7_].propNum);
               }
               else
               {
                  _loc2_ += Language.PET_HANDBOOK_PANEL_U[97].toString().replace("{type}",Language.PROP_NAME_U[_loc1_[_loc7_].propType]).replace("{num}",_loc1_[_loc7_].propNum);
               }
            }
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 15)
         {
            this["prop" + _loc3_].visible = false;
            _loc3_++;
         }
         var _loc4_:Object = _core.player.activePetObject;
         var _loc5_:Array = new Array();
         var _loc6_:Boolean = true;
         for(_loc7_ in _kindType)
         {
            _loc9_ = true;
            _loc10_ = _core.data.gameDataIndex[GamePredef.TBL_CREATURE_HANDBOOK][_loc7_];
            for(_loc11_ in _loc10_)
            {
               _loc12_ = _loc10_[_loc11_];
               if(Boolean(_loc4_) && Boolean(_loc4_[_loc12_.id]) && Boolean(_loc4_[_loc12_.id].actived) && Boolean(_loc12_.propType) && Boolean(GamePredef.PET_ALLSERIE_PROP_INDEX[_loc12_.propType]))
               {
                  if(!_loc5_[_loc12_.propType])
                  {
                     _loc5_[_loc12_.propType] = Number(0);
                  }
                  _loc5_[_loc12_.propType] += Number(_loc12_.propNum);
               }
               else if(!_loc4_ || !_loc4_[_loc12_.id] || !_loc4_[_loc12_.id].actived)
               {
                  _loc9_ = false;
                  _loc6_ = false;
               }
            }
            if(_loc9_)
            {
               _loc1_ = GamePredef.PET_SERIE_PROP[_loc7_];
               for(_loc11_ in _loc1_)
               {
                  if(!_loc5_[_loc1_[_loc11_].propType])
                  {
                     _loc5_[_loc1_[_loc11_].propType] = Number(0);
                  }
                  _loc5_[_loc1_[_loc11_].propType] += Number(_loc1_[_loc11_].propNum);
               }
            }
         }
         if(_loc6_)
         {
            _loc1_ = GamePredef.PET_SERIE_PROP[0];
            for(_loc11_ in _loc1_)
            {
               if(!_loc5_[_loc1_[_loc11_].propType])
               {
                  _loc5_[_loc1_[_loc11_].propType] = Number(0);
               }
               _loc5_[_loc1_[_loc11_].propType] += Number(_loc1_[_loc11_].propNum);
            }
            allSerieEffect.htmlText = _loc2_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]);
         }
         else
         {
            allSerieEffect.htmlText = _loc2_.replace("{color}",Language.PET_HANDBOOK_PANEL_U[116]);
         }
         var _loc8_:* = 1;
         for(_loc7_ in _loc5_)
         {
            if(GamePredef.PET_ALLSERIE_PROP[GamePredef.PET_ALLSERIE_PROP_INDEX[_loc7_]].percentFlag)
            {
               this["prop" + _loc8_].htmlText = Language.PET_HANDBOOK_PANEL_U[107].toString().replace("{prop}",Language.PROP_NAME_U[_loc7_]).replace("{num}",_loc5_[_loc7_]);
            }
            else
            {
               this["prop" + _loc8_].htmlText = Language.PET_HANDBOOK_PANEL_U[87].toString().replace("{prop}",Language.PROP_NAME_U[_loc7_]).replace("{num}",_loc5_[_loc7_]);
            }
            this["prop" + _loc8_].visible = true;
            _loc8_++;
         }
         checkBtnTotal();
      }
      
      [Bindable(event="propertyChange")]
      public function get classImg() : Image
      {
         return this._692413227classImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get seriePropAdd2() : Label
      {
         return this._176118960seriePropAdd2;
      }
      
      public function set progressActiveNum4(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294175progressActiveNum4;
         if(_loc2_ !== param1)
         {
            this._677294175progressActiveNum4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum4",_loc2_,param1));
         }
      }
      
      public function set progressActiveNum9(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294170progressActiveNum9;
         if(_loc2_ !== param1)
         {
            this._677294170progressActiveNum9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum9",_loc2_,param1));
         }
      }
      
      public function set progressActiveNum1(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294178progressActiveNum1;
         if(_loc2_ !== param1)
         {
            this._677294178progressActiveNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum1",_loc2_,param1));
         }
      }
      
      public function set progressActiveNum2(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294177progressActiveNum2;
         if(_loc2_ !== param1)
         {
            this._677294177progressActiveNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum2",_loc2_,param1));
         }
      }
      
      public function set progressActiveNum7(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294172progressActiveNum7;
         if(_loc2_ !== param1)
         {
            this._677294172progressActiveNum7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum7",_loc2_,param1));
         }
      }
      
      public function set progressActiveNum8(param1:Property) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._677294171progressActiveNum8;
         if(_loc2_ !== param1)
         {
            this._677294171progressActiveNum8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressActiveNum8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seriePropAdd1() : Label
      {
         return this._176118961seriePropAdd1;
      }
      
      public function set serieEffect2(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1114801243serieEffect2;
         if(_loc2_ !== param1)
         {
            this._1114801243serieEffect2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serieEffect2",_loc2_,param1));
         }
      }
      
      public function set petAptIntelligenceMin(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1695471021petAptIntelligenceMin;
         if(_loc2_ !== param1)
         {
            this._1695471021petAptIntelligenceMin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptIntelligenceMin",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seriePropAdd4() : Label
      {
         return this._176118958seriePropAdd4;
      }
      
      public function set petCatchDifficulty(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1874945609petCatchDifficulty;
         if(_loc2_ !== param1)
         {
            this._1874945609petCatchDifficulty = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petCatchDifficulty",_loc2_,param1));
         }
      }
      
      private function checkBtnTotal() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc1_:Object = _core.player.activePetObject;
         for(_loc2_ in _loc1_)
         {
            if(_loc1_[_loc2_].actived)
            {
               _loc3_ = GameData.d[GamePredef.TBL_CREATURE_HANDBOOK][_loc2_];
               if(Boolean(_loc3_) && Boolean(_loc3_.evolutionId))
               {
                  petEvolutionBtnTotal.visible = true;
                  return;
               }
            }
         }
         petEvolutionBtnTotal.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveTotal() : Property
      {
         return this._484087665progressActiveTotal;
      }
      
      [Bindable(event="propertyChange")]
      public function get petActivated() : Label
      {
         return this._1356532594petActivated;
      }
      
      [Bindable(event="propertyChange")]
      public function get seriePropAdd3() : Label
      {
         return this._176118959seriePropAdd3;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEvolutionBtnTotal() : DelayButton
      {
         return this._909209476petEvolutionBtnTotal;
      }
      
      private function activeNormal() : void
      {
         var func:Function;
         var num:Number = NaN;
         var _activeObj:* = _core.player.activePetObject;
         if(Boolean(_activeObj) && Boolean(_activeObj[_handbookId]) && Boolean(_activeObj[_handbookId].actived))
         {
            _core.sysMsg(Language.PET_HANDBOOK_PANEL_U[95]);
         }
         num = Number(npActiveNum.value);
         func = function(param1:CloseEvent):void
         {
            var _loc2_:Object = null;
            if(param1.detail == Alert.YES)
            {
               _loc2_ = {};
               _loc2_.num = num;
               _loc2_.pid = _handbookId;
               _core.remote.call("activePet",new Responder(setActiveInfo),_loc2_);
            }
         };
         Alert.show(Language.PET_HANDBOOK_PANEL_U[103].toString().replace("{num}",num),"",Alert.YES | Alert.NO,null,func);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetHandbook = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetHandbook_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetHandbookWatcherSetupUtil");
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
      
      public function set allSerieEffect(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._379017676allSerieEffect;
         if(_loc2_ !== param1)
         {
            this._379017676allSerieEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allSerieEffect",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum1() : Property
      {
         return this._677294178progressActiveNum1;
      }
      
      public function set container1(param1:UIComponent) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._145245136container1;
         if(_loc2_ !== param1)
         {
            this._145245136container1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum4() : Property
      {
         return this._677294175progressActiveNum4;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum5() : Property
      {
         return this._677294174progressActiveNum5;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum7() : Property
      {
         return this._677294172progressActiveNum7;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum6() : Property
      {
         return this._677294173progressActiveNum6;
      }
      
      public function set petAptEnergyMax(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1983702058petAptEnergyMax;
         if(_loc2_ !== param1)
         {
            this._1983702058petAptEnergyMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptEnergyMax",_loc2_,param1));
         }
      }
      
      private function closeAllNodes() : void
      {
         var _loc1_:* = undefined;
         for each(_loc1_ in petTree.openItems)
         {
            petTree.expandItem(_loc1_,false);
         }
      }
      
      public function set allSeriesProcess(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._31193047allSeriesProcess;
         if(_loc2_ !== param1)
         {
            this._31193047allSeriesProcess = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allSeriesProcess",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum2() : Property
      {
         return this._677294177progressActiveNum2;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEvolutionBtn() : DelayButton
      {
         return this._661045344petEvolutionBtn;
      }
      
      public function set seridState(param1:Image) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._534882346seridState;
         if(_loc2_ !== param1)
         {
            this._534882346seridState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seridState",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum8() : Property
      {
         return this._677294171progressActiveNum8;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum9() : Property
      {
         return this._677294170progressActiveNum9;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressActiveNum3() : Property
      {
         return this._677294176progressActiveNum3;
      }
      
      [Bindable(event="propertyChange")]
      public function get serieEffect2() : Label
      {
         return this._1114801243serieEffect2;
      }
      
      private function playMC() : void
      {
         if(mc)
         {
            load = null;
            mc.addEventListener(Event.ENTER_FRAME,enterFrameHandler);
            mc.gotoAndPlay(1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container1() : UIComponent
      {
         return this._145245136container1;
      }
      
      override public function initView() : void
      {
         initTree();
      }
      
      public function set petAptStrengthMin(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1704142357petAptStrengthMin;
         if(_loc2_ !== param1)
         {
            this._1704142357petAptStrengthMin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petAptStrengthMin",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allSeriesProcess() : Canvas
      {
         return this._31193047allSeriesProcess;
      }
      
      [Bindable(event="propertyChange")]
      public function get petAptEnergyMax() : Label
      {
         return this._1983702058petAptEnergyMax;
      }
      
      [Bindable(event="propertyChange")]
      public function get seridState() : Image
      {
         return this._534882346seridState;
      }
   }
}

