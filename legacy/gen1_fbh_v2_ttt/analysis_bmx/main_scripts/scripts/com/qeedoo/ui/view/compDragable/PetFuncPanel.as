package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DescriptionLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FilterButton;
   import com.qeedoo.ui.view.comp.FuncBag;
   import com.qeedoo.ui.view.comp.HtmlComboItemRenderer;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotCreBook;
   import com.qeedoo.ui.view.comp.ItemSlotPet;
   import com.qeedoo.ui.view.comp.ItemSlotPetFunc;
   import com.qeedoo.ui.view.comp.RoundedButton;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.controls.TextArea;
   import mx.core.ClassFactory;
   import mx.core.DragSource;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.StringUtil;
   
   use namespace mx_internal;
   
   public class PetFuncPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1781400170xsdText:TextArea;
      
      private var _1185484712xsdMaxText:TextArea;
      
      private var _629176687pzxsdButton:BasicGlowButton;
      
      private var petBagAdded:Boolean = false;
      
      private var _1401872577joinPet4:ItemSlotPet;
      
      private var _1401872580joinPet1:ItemSlotPet;
      
      private var _113881747xdPet:ItemSlotPet;
      
      private var _956127762costPet:ItemSlotPet;
      
      private var _1554141552tabBtn7:FilterButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _PetFuncPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton8:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton9:BasicTxtButton;
      
      private var _1781714052xsdItem:ItemSlotPetFunc;
      
      private var _114581tab:ViewStack;
      
      private var _core:Core = Core.getInstance();
      
      private var _764513735xdText:TextArea;
      
      private var _831007910mainPet:ItemSlotPet;
      
      private var _1822648700seniorPetJoinEnable:Boolean = false;
      
      private var _1554141557tabBtn2:FilterButton;
      
      private var _1738198546eatCostText:TextArea;
      
      private var _298431510bookButton1:BasicGlowButton;
      
      public var _PetFuncPanel_RoundedButton1:RoundedButton;
      
      private var _2072290848pzxsdPet:ItemSlotPet;
      
      private var _1995978421joinButton1:BasicGlowButton;
      
      private var _510455317luckNum:NumericStepper;
      
      private var _575911215elementBox:ComboBox;
      
      private var _1554141553tabBtn6:FilterButton;
      
      public var _PetFuncPanel_BasicGlowButton9:BasicGlowButton;
      
      private var _2004323740bookItem:ItemSlotCreBook;
      
      private var _1315536005starItem:ItemSlotPetFunc;
      
      private var _750205034xsdPet:ItemSlotPet;
      
      public var _PetFuncPanel_DescriptionLabel1:DescriptionLabel;
      
      public var _PetFuncPanel_DescriptionLabel2:DescriptionLabel;
      
      public var _PetFuncPanel_DescriptionLabel3:DescriptionLabel;
      
      public var _PetFuncPanel_DescriptionLabel4:DescriptionLabel;
      
      private var _1554141558tabBtn1:FilterButton;
      
      public var _PetFuncPanel_Canvas11:Canvas;
      
      public var _PetFuncPanel_Canvas12:Canvas;
      
      public var _PetFuncPanel_Canvas1:Canvas;
      
      public var _PetFuncPanel_Canvas3:Canvas;
      
      public var _PetFuncPanel_Canvas5:Canvas;
      
      public var _PetFuncPanel_Canvas7:Canvas;
      
      public var _PetFuncPanel_Canvas9:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1355904412luckItem:ItemSlotPetFunc;
      
      private var _1554141554tabBtn5:FilterButton;
      
      private var _1310692388starButton:BasicGlowButton;
      
      public var _PetFuncPanel_IntroText1:IntroText;
      
      public var _PetFuncPanel_IntroText2:IntroText;
      
      public var _PetFuncPanel_IntroText3:IntroText;
      
      public var _PetFuncPanel_IntroText4:IntroText;
      
      public var _PetFuncPanel_IntroText5:IntroText;
      
      public var _PetFuncPanel_IntroText6:IntroText;
      
      public var _PetFuncPanel_IntroText7:IntroText;
      
      public var _PetFuncPanel_IntroText8:IntroText;
      
      private var _1401872579joinPet2:ItemSlotPet;
      
      private var _64661878bookPet:ItemSlotPet;
      
      public var _PetFuncPanel_Image1:Image;
      
      public var _PetFuncPanel_Image2:Image;
      
      public var _PetFuncPanel_Image3:Image;
      
      public var _PetFuncPanel_Image4:Image;
      
      public var _PetFuncPanel_Image5:Image;
      
      public var _PetFuncPanel_Image6:Image;
      
      public var _PetFuncPanel_Image7:Image;
      
      private var _790240513aptType:ComboBox;
      
      private var _1554141559tabBtn0:FilterButton;
      
      private var petList:Object;
      
      public var petBag:Object = {};
      
      private var _1897219731starPet:ItemSlotPet;
      
      private var _1265723739xsdButton:BasicGlowButton;
      
      public var autoMatchSlots:Array;
      
      private var firstTimeFlag:int = 0;
      
      private var _1007683640pTitle:BasicTitleCanvas;
      
      private var _758955714xdButton:BasicGlowButton;
      
      private var _1791424045starClearButton:BasicGlowButton;
      
      private var _1554141555tabBtn4:FilterButton;
      
      private var _183687630pzxsdItem:ItemSlotPetFunc;
      
      private var _1709333476joinMainPet:ItemSlotPet;
      
      private var _1315530272starInfo:Label;
      
      private var _1402072840joinInfo:Label;
      
      private var _2140516866eatMainText:TextArea;
      
      private var _1401872578joinPet3:ItemSlotPet;
      
      private var _764833350xdInfo:Label;
      
      private var _1034217724joinButton:BasicGlowButton;
      
      private var _2067262411showBag:BasicGlowButton;
      
      private var _1781719785xsdInfo:Label;
      
      private var _673408233elementCost:Label;
      
      private var _575924355elementPet:ItemSlotPet;
      
      public var _PetFuncPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton12:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton13:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton14:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton15:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton16:BasicTxtButton;
      
      public var _PetFuncPanel_BasicTxtButton17:BasicTxtButton;
      
      private var _1710110426eatRateInfo:Label;
      
      private var _764827617xdItem:ItemSlotPetFunc;
      
      private var _183693363pzxsdInfo:Label;
      
      private var _273016654starSafeItem:ItemSlotPetFunc;
      
      private var _1810742139bookButton:DelayButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _itemList:Object = {
         "val":new Number(-1),
         "type":new Number(-1),
         "idList":new Array()
      };
      
      private var _183373748pzxsdText:TextArea;
      
      public var _PetFuncPanel_Label7:Label;
      
      public var _PetFuncPanel_Label8:Label;
      
      private var _1554141556tabBtn3:FilterButton;
      
      private var starNum:int;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":459,
               "height":343,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"pTitle"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tab",
                  "events":{"mouseDown":"__tab_mouseDown"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "tabEnabled":false,
                        "creationPolicy":"all",
                        "x":0,
                        "y":60,
                        "height":283,
                        "width":454,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_PetFuncPanel_Canvas1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetFuncPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":127,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "width":432,
                                          "height":266,
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":102,
                                                   "y":7,
                                                   "width":412,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"starPet",
                                             "events":{"click":"__starPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":155,
                                                   "movable":false,
                                                   "x":93.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"starButton",
                                             "events":{"click":"__starButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":226.2,
                                                   "styleName":"BtnStdRed",
                                                   "x":141,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"starClearButton",
                                             "events":{"click":"__starClearButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":226.2,
                                                   "styleName":"BtnStdRed",
                                                   "x":202,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPetFunc,
                                             "id":"starItem",
                                             "events":{"click":"__starItem_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":155,
                                                   "movable":false,
                                                   "x":267.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPetFunc,
                                             "id":"starSafeItem",
                                             "events":{"click":"__starSafeItem_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":155,
                                                   "movable":false,
                                                   "x":180
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"starInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":194.5,
                                                   "text":"",
                                                   "x":128
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton1",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":163,
                                                   "y":123,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton2",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":123,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton3",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":252,
                                                   "y":123,
                                                   "width":66,
                                                   "height":18
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
                           "id":"_PetFuncPanel_Canvas3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetFuncPanel_Image2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":138,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":432,
                                          "height":266,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":108,
                                                   "y":7,
                                                   "width":412,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"joinMainPet",
                                             "events":{"click":"__joinMainPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":161.5,
                                                   "movable":false,
                                                   "x":191.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"joinButton",
                                             "events":{"click":"__joinButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":231,
                                                   "styleName":"BtnStdRed",
                                                   "x":181,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"joinButton1",
                                             "events":{"click":"__joinButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":231,
                                                   "styleName":"CrystalYellowButton",
                                                   "width":80
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"joinInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-4";
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":205.7};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"joinPet1",
                                             "events":{"click":"__joinPet1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":146.5,
                                                   "movable":false,
                                                   "x":102.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"joinPet2",
                                             "events":{"click":"__joinPet2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":186.5,
                                                   "movable":false,
                                                   "x":102.5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"joinPet3",
                                             "events":{"click":"__joinPet3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":146.5,
                                                   "movable":false,
                                                   "x":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"joinPet4",
                                             "events":{"click":"__joinPet4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":186.5,
                                                   "movable":false,
                                                   "x":278
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton4",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":103,
                                                   "y":123,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton5",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":188,
                                                   "y":123,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton6",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":275,
                                                   "y":123,
                                                   "width":38,
                                                   "height":18
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
                           "id":"_PetFuncPanel_Canvas5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetFuncPanel_Image3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":146,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":432,
                                          "height":266,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":97,
                                                   "y":7,
                                                   "width":412,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"xsdPet",
                                             "events":{"click":"__xsdPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":159,
                                                   "movable":false,
                                                   "x":112
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"xsdButton",
                                             "events":{"click":"__xsdButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":226.5,
                                                   "styleName":"BtnStdRed",
                                                   "x":189,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPetFunc,
                                             "id":"xsdItem",
                                             "events":{"click":"__xsdItem_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":159,
                                                   "movable":false,
                                                   "x":286
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"xsdInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":203,
                                                   "x":189
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"xsdText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":115,
                                                   "height":90,
                                                   "width":105,
                                                   "x":162,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"xsdMaxText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.backgroundAlpha = 0;
                                                this.color = 16711680;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":115,
                                                   "height":90,
                                                   "width":105,
                                                   "x":10,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton7",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":112,
                                                   "y":127,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton8",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "y":127,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DescriptionLabel,
                                             "id":"_PetFuncPanel_DescriptionLabel1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":89,
                                                   "y":201
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
                           "id":"_PetFuncPanel_Canvas7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetFuncPanel_Image4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":146,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":432,
                                          "height":266,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":104,
                                                   "y":7,
                                                   "width":412,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"pzxsdPet",
                                             "events":{"click":"__pzxsdPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":161,
                                                   "movable":false,
                                                   "x":115
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"pzxsdButton",
                                             "events":{"click":"__pzxsdButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":228.5,
                                                   "styleName":"BtnStdRed",
                                                   "x":192,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPetFunc,
                                             "id":"pzxsdItem",
                                             "events":{"click":"__pzxsdItem_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":161,
                                                   "movable":false,
                                                   "x":289
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"pzxsdInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":205,
                                                   "x":192
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"pzxsdText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":117,
                                                   "height":90,
                                                   "width":105,
                                                   "editable":false,
                                                   "x":165
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton9",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":115,
                                                   "y":129,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton10",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":283,
                                                   "y":129,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DescriptionLabel,
                                             "id":"_PetFuncPanel_DescriptionLabel2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":92,
                                                   "y":203
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
                           "id":"_PetFuncPanel_Canvas9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetFuncPanel_Image5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":432,
                                          "height":266,
                                          "styleName":"CanvasBorder",
                                          "x":12,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":102,
                                                   "y":7,
                                                   "width":412,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"xdPet",
                                             "events":{"click":"__xdPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":164,
                                                   "movable":false,
                                                   "x":114
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"xdButton",
                                             "events":{"click":"__xdButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":231.5,
                                                   "styleName":"BtnStdRed",
                                                   "x":191,
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedButton,
                                             "id":"_PetFuncPanel_RoundedButton1",
                                             "events":{"click":"___PetFuncPanel_RoundedButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "0";
                                                this.bottom = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnRed",
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPetFunc,
                                             "id":"xdItem",
                                             "events":{"click":"__xdItem_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":164,
                                                   "movable":false,
                                                   "x":288
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"xdInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 14026246;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":208,
                                                   "x":191
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"xdText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":120,
                                                   "height":90,
                                                   "width":105,
                                                   "editable":false,
                                                   "x":164
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton11",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":114,
                                                   "y":132,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton12",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":283,
                                                   "y":132,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DescriptionLabel,
                                             "id":"_PetFuncPanel_DescriptionLabel3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":91,
                                                   "y":206
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
                           "id":"_PetFuncPanel_Canvas11",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetFuncPanel_Image6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SimpleCanvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "width":432,
                                          "height":266,
                                          "x":12,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":110,
                                                   "y":7,
                                                   "width":412,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"bookPet",
                                             "events":{"click":"__bookPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":113,
                                                   "y":161
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotCreBook,
                                             "id":"bookItem",
                                             "events":{"click":"__bookItem_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "movable":false,
                                                   "x":287,
                                                   "y":161
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DelayButton,
                                             "id":"bookButton",
                                             "events":{"click":"__bookButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":228.5,
                                                   "enabled":false,
                                                   "styleName":"BtnStdRed",
                                                   "x":189,
                                                   "width":51,
                                                   "clickDelay":2000
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton13",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":113,
                                                   "y":128,
                                                   "width":66,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton14",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "y":128,
                                                   "width":66,
                                                   "height":18
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
                           "id":"_PetFuncPanel_Canvas12",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetFuncPanel_Image7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":148,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SimpleCanvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "width":432,
                                          "height":266,
                                          "x":12,
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "height":108,
                                                   "y":7,
                                                   "width":412,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"mainPet",
                                             "events":{"click":"__mainPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":144,
                                                   "y":159,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"costPet",
                                             "events":{"click":"__costPet_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":258,
                                                   "y":159,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPetFunc,
                                             "id":"luckItem",
                                             "events":{"click":"__luckItem_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":159,
                                                   "movable":false,
                                                   "x":200
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":NumericStepper,
                                             "id":"luckNum",
                                             "events":{"change":"__luckNum_change"},
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":195,
                                                   "minimum":0,
                                                   "maximum":5,
                                                   "width":40,
                                                   "x":198,
                                                   "value":5,
                                                   "visible":false,
                                                   "height":20
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton15",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":138,
                                                   "y":127,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton16",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":258,
                                                   "y":127,
                                                   "width":38,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_PetFuncPanel_BasicTxtButton17",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":190.5,
                                                   "y":127,
                                                   "width":50,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"eatRateInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 1961723;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":249,
                                                   "y":232.5,
                                                   "text":""
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"eatMainText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":116,
                                                   "height":90,
                                                   "width":110,
                                                   "x":41,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"eatCostText",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.backgroundAlpha = 0;
                                                this.color = 1961723;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":116,
                                                   "height":90,
                                                   "width":95,
                                                   "x":298,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":DescriptionLabel,
                                             "id":"_PetFuncPanel_DescriptionLabel4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":109,
                                                   "y":201
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"bookButton1",
                                             "events":{"click":"__bookButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":190,
                                                   "y":226.5,
                                                   "enabled":true,
                                                   "styleName":"BtnStdRed",
                                                   "width":51
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ComboBox,
                                             "id":"aptType",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":68,
                                                   "y":226.5,
                                                   "width":120,
                                                   "rowCount":6
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
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":13,
                                          "width":430,
                                          "height":265,
                                          "styleName":"CanvasBorder",
                                          "mouseEnabled":false,
                                          "clipContent":false,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":IntroText,
                                             "id":"_PetFuncPanel_IntroText8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":410,
                                                   "height":100,
                                                   "x":10,
                                                   "y":8
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PetFuncPanel_Label7",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.horizontalCenter = "0";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":115};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotPet,
                                             "id":"elementPet",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":137,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalGap = 0;
                                                this.verticalAlign = "middle";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":180,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PetFuncPanel_Label8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ComboBox,
                                                      "id":"elementBox",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":95,
                                                            "rowCount":4,
                                                            "itemRenderer":_PetFuncPanel_ClassFactory1_c()
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"elementCost",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 65535;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":205};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_PetFuncPanel_BasicGlowButton9",
                                             "events":{"click":"___PetFuncPanel_BasicGlowButton9_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":50,
                                                   "height":23,
                                                   "y":227
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
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":41,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20,
                                 "selected":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn3",
                           "events":{"click":"__tabBtn3_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn4",
                           "events":{"click":"__tabBtn4_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn5",
                           "events":{"click":"__tabBtn5_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn6",
                           "events":{"click":"__tabBtn6_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":FilterButton,
                           "id":"tabBtn7",
                           "events":{"click":"__tabBtn7_click"},
                           "stylesFactory":function():void
                           {
                              this.paddingLeft = 1;
                              this.paddingRight = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":50,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"showBag",
                  "events":{"click":"__showBag_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":444,
                        "y":100,
                        "height":155,
                        "width":12,
                        "styleName":"EquipBagRight"
                     };
                  }
               })]
            };
         }
      });
      
      public function PetFuncPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 459;
         this.height = 343;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetFuncPanel._watcherSetupUtil = param1;
      }
      
      private function petStar() : void
      {
         var pet:Object;
         var func:Function = null;
         if(!starPet.slotData)
         {
            return;
         }
         pet = petList[starPet.slotData.id];
         if(!starSafeItem.slotData && pet.upgradeNum >= 8)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  surePetStar();
               }
            };
            Alert.show(Language.PETFUNCPANEL_S[55],"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            surePetStar();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bookButton1() : BasicGlowButton
      {
         return this._298431510bookButton1;
      }
      
      [Bindable(event="propertyChange")]
      public function get xdItem() : ItemSlotPetFunc
      {
         return this._764827617xdItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinMainPet() : ItemSlotPet
      {
         return this._1709333476joinMainPet;
      }
      
      public function set luckNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._510455317luckNum;
         if(_loc2_ !== param1)
         {
            this._510455317luckNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"luckNum",_loc2_,param1));
         }
      }
      
      public function set costPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._956127762costPet;
         if(_loc2_ !== param1)
         {
            this._956127762costPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costPet",_loc2_,param1));
         }
      }
      
      public function set bookButton1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._298431510bookButton1;
         if(_loc2_ !== param1)
         {
            this._298431510bookButton1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bookButton1",_loc2_,param1));
         }
      }
      
      public function __showBag_click(param1:MouseEvent) : void
      {
         changeBagVis();
      }
      
      public function set xdItem(param1:ItemSlotPetFunc) : void
      {
         var _loc2_:Object = this._764827617xdItem;
         if(_loc2_ !== param1)
         {
            this._764827617xdItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xdItem",_loc2_,param1));
         }
      }
      
      public function __bookButton1_click(param1:MouseEvent) : void
      {
         petEat();
      }
      
      public function set pzxsdPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._2072290848pzxsdPet;
         if(_loc2_ !== param1)
         {
            this._2072290848pzxsdPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pzxsdPet",_loc2_,param1));
         }
      }
      
      public function set eatCostText(param1:TextArea) : void
      {
         var _loc2_:Object = this._1738198546eatCostText;
         if(_loc2_ !== param1)
         {
            this._1738198546eatCostText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eatCostText",_loc2_,param1));
         }
      }
      
      public function set joinMainPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._1709333476joinMainPet;
         if(_loc2_ !== param1)
         {
            this._1709333476joinMainPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinMainPet",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pzxsdText() : TextArea
      {
         return this._183373748pzxsdText;
      }
      
      private function dataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.index,dataLoaded);
         _core.view.getUI(ViewManager.PANEL_PETMANAGER).updateView(param1.data.index);
         _core.view.getUI(ViewManager.PANEL_BAG).petInit();
         joinMainPet.setStyleName(_core.basic.colorByGrowRate(_core.data.getGameData(GamePredef.TBL_PET,param1.data.index).growRate));
      }
      
      public function set starButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1310692388starButton;
         if(_loc2_ !== param1)
         {
            this._1310692388starButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starButton",_loc2_,param1));
         }
      }
      
      public function set starInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1315530272starInfo;
         if(_loc2_ !== param1)
         {
            this._1315530272starInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starInfo",_loc2_,param1));
         }
      }
      
      public function set starClearButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1791424045starClearButton;
         if(_loc2_ !== param1)
         {
            this._1791424045starClearButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starClearButton",_loc2_,param1));
         }
      }
      
      public function __starPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(starPet);
      }
      
      public function __joinPet4_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(joinPet4);
      }
      
      private function onPetEat(param1:Object = null) : void
      {
         var petData:Object = null;
         var aptType:int = 0;
         var propName:String = null;
         var prop:String = null;
         var propEx:String = null;
         var newValue:Number = NaN;
         var oldValue:Number = NaN;
         var color:String = null;
         var popStr:String = null;
         var yesAlert:String = null;
         var noAlert:String = null;
         var ensureFunc:Function = null;
         var alert:Alert = null;
         var tf:IUITextField = null;
         var result:Object = param1;
         if(!result)
         {
            return;
         }
         eatRateInfo.htmlText = result.msg;
         aptType.selectedIndex = 0;
         if(result.costItem)
         {
            luckItem.stackNum -= result.costItem;
            if(luckItem.stackNum <= 0)
            {
               luckItem.clean();
               luckNum.visible = false;
            }
         }
         if(result.costPet)
         {
            costPet.clean();
            eatCostText.htmlText = "";
         }
         if(result.succ)
         {
            if(mainPet.slotData)
            {
               mainPet.slotData[result.propName] = result.value;
               _refreshMainPetText();
            }
         }
         if(result.hasOwnProperty("isHint") && Boolean(result.isHint))
         {
            if(Boolean(mainPet.slotData) && mainPet.slotData.id == result.petId)
            {
               petData = mainPet.slotData;
               aptType = int(result.aptType);
               propName = Language.PETFUNCPANEL_S[62][aptType];
               prop = Language.PETFUNCPANEL_S[61][aptType];
               propEx = prop + Language.PETFUNCPANEL_S[63];
               newValue = Number(result.value);
               oldValue = Number(petData[propEx]);
               color = newValue >= oldValue ? "#00FF00" : "#FF0000";
               popStr = "<b>" + Language.PETFUNCPANEL_S[60] + "</b>\n\n";
               popStr += LanguageUtil.replace(Language.PETFUNCPANEL_S[64],{
                  "propName":propName,
                  "prop":petData[prop],
                  "oldValue":oldValue,
                  "color":color,
                  "newValue":newValue
               });
               yesAlert = Alert.yesLabel;
               noAlert = Alert.noLabel;
               ensureFunc = function(param1:CloseEvent):void
               {
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("ensurePetEat",new Responder(onPetEat),petData.id);
                  }
               };
               Alert.yesLabel = Language.PETFUNCPANEL_S[65];
               Alert.noLabel = Language.PETFUNCPANEL_S[66];
               alert = Alert.show(LanguageUtil.html2PlainText(popStr),Language.PETFUNCPANEL_S[60],3,null,ensureFunc);
               tf = alert.mx_internal::alertForm.mx_internal::textField;
               tf.filters = GamePredef.FILTER_TEXT1;
               tf.htmlText = popStr;
            }
         }
      }
      
      private function petXd() : void
      {
         if(Boolean(xdPet.slotData) && Boolean(xdItem.slotData))
         {
            _core.remote.call("petXd",new Responder(onXd),xdPet.slotData.id,xdItem.slotData.id);
            xdButton.enabled = false;
         }
      }
      
      private function starViewClear() : void
      {
         starPet.clean();
         starItem.clean();
         starSafeItem.clean();
         starInfo.htmlText = "";
      }
      
      private function petPzXsd() : void
      {
         if(Boolean(pzxsdPet.slotData) && Boolean(pzxsdItem.slotData))
         {
            _core.remote.call("petPzXsd",new Responder(onPzXsd),pzxsdPet.slotData.id,pzxsdItem.slotData.id);
            pzxsdButton.enabled = false;
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get elementPet() : ItemSlotPet
      {
         return this._575924355elementPet;
      }
      
      [Bindable(event="propertyChange")]
      public function get starItem() : ItemSlotPetFunc
      {
         return this._1315536005starItem;
      }
      
      public function set pzxsdItem(param1:ItemSlotPetFunc) : void
      {
         var _loc2_:Object = this._183687630pzxsdItem;
         if(_loc2_ !== param1)
         {
            this._183687630pzxsdItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pzxsdItem",_loc2_,param1));
         }
      }
      
      public function __joinButton_click(param1:MouseEvent) : void
      {
         petJoin();
      }
      
      private function _showAlertMsg(param1:String, param2:String, param3:String, param4:String) : String
      {
         var _loc7_:String = null;
         var _loc5_:String = "<b  >" + param1 + "</b>";
         var _loc6_:String = "";
         if(Number(param4) > Number(param3))
         {
            _loc7_ = "<font color=\'#00ff00\'>";
            _loc6_ = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
         }
         else if(Number(param4) < Number(param3))
         {
            _loc7_ = "<font color=\'#ff0000\'>";
            _loc6_ = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
         }
         else
         {
            _loc7_ = "<font color=\'#00ff00\'>";
            _loc6_ = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
         }
         _loc5_ += param2 + param3 + Language.EQUIPTFUNCPANEL_S[129] + _loc7_ + param4 + "</font>";
         return _loc5_ + _loc6_;
      }
      
      public function ___PetFuncPanel_RoundedButton1_click(param1:MouseEvent) : void
      {
         buyItem(GamePredef.SHOP_TAB_PET);
      }
      
      public function set xdText(param1:TextArea) : void
      {
         var _loc2_:Object = this._764513735xdText;
         if(_loc2_ !== param1)
         {
            this._764513735xdText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xdText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starButton() : BasicGlowButton
      {
         return this._1310692388starButton;
      }
      
      public function set pzxsdText(param1:TextArea) : void
      {
         var _loc2_:Object = this._183373748pzxsdText;
         if(_loc2_ !== param1)
         {
            this._183373748pzxsdText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pzxsdText",_loc2_,param1));
         }
      }
      
      private function joinViewClear() : void
      {
         joinMainPet.clean();
         var _loc1_:int = 1;
         while(_loc1_ <= 4)
         {
            this["joinPet" + _loc1_].clean();
            _loc1_++;
         }
         joinInfo.htmlText = "";
      }
      
      private function setStarInfo(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc2_:String = "";
         if(starPet.slotData)
         {
            _loc3_ = petList[starPet.slotData.id];
            if(_loc3_)
            {
               if(ToolKit.isBigOrEqual(_loc3_.upgradeNum,GamePredef.PET_STAR_MAX))
               {
                  _loc2_ = Language.PETFUNCPANEL_S[0];
                  starInfo.htmlText = _loc2_.replace("{upgradeNum}",_loc3_.upgradeNum);
                  starButton.enabled = false;
               }
               else
               {
                  _loc4_ = int(GamePredef.PET_STAR_SUCCESS[ToolKit.add(_loc3_.upgradeNum,1)]);
                  if(_core.MC_BIRTH_FLAG[3])
                  {
                     _loc4_ = int(GamePredef.MC_BIRTH_CONFIG[3][ToolKit.add(_loc3_.upgradeNum,1)]);
                  }
                  _loc5_ = _core.view.getUI(ViewManager.MAIN_LONGBUFF);
                  if((Boolean(_loc5_)) && Boolean(_loc5_.isBuffOn(3262)))
                  {
                     _loc4_ = int(GamePredef.PET_STAR_SUCCESS_BUFF[ToolKit.add(_loc3_.upgradeNum,1)]);
                  }
                  _loc2_ = Language.PETFUNCPANEL_S[2];
                  _loc2_ = _loc2_.replace("{upgradeNum}",_loc3_.upgradeNum);
                  starInfo.htmlText = _loc2_.replace("{per}",_loc4_);
                  if(Boolean(starItem.slotData) && Boolean(ToolKit.isBigOrEqual(starItem.stackNum,1)) && _core.getTemplateData(starItem.type,starItem.giid).propType == GamePredef.ITEM_TYPE_PETFUNC_TYPE[3])
                  {
                     starButton.enabled = true;
                  }
                  else
                  {
                     starButton.enabled = false;
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainPet() : ItemSlotPet
      {
         return this._831007910mainPet;
      }
      
      private function petBook() : void
      {
         if(Boolean(bookPet.slotData) && Boolean(bookItem.slotData))
         {
            _core.remote.call("petBook",new Responder(onBook),bookPet.slotData.id,bookItem.slotData.id);
            return;
         }
      }
      
      private function elementHandler(param1:Event) : *
      {
         var onElementPet:Function;
         var selectItem:Object;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(!elementPet || !elementPet.slotData)
         {
            _core.sysMidNote(Language.PETFUNCPANEL_S[58]);
            return;
         }
         selectItem = elementBox ? elementBox.selectedItem : null;
         if(!selectItem || selectItem.element < 0)
         {
            _core.sysMidNote(Language.PETFUNCPANEL_S[59]);
            return;
         }
         onElementPet = function(param1:Object = null):void
         {
            if(!param1)
            {
               return;
            }
            updatePet(param1.petId,"element",param1.element);
            param1.petId == elementPet.slotData.id && elementPetChange();
         };
         _core.remote.call("elementPet",new Responder(onElementPet),elementPet.slotData.id,selectItem.element);
      }
      
      private function elementClear() : void
      {
         elementPet && elementPet.clean();
         elementBox.dataProvider = new ArrayCollection(Language.PETFUNCPANEL_U[46]);
         elementCost.text = Language.PETFUNCPANEL_U[44];
      }
      
      [Bindable(event="propertyChange")]
      public function get starSafeItem() : ItemSlotPetFunc
      {
         return this._273016654starSafeItem;
      }
      
      public function __tabBtn5_click(param1:MouseEvent) : void
      {
         tabBtnClick(5);
      }
      
      private function petStarClear() : void
      {
         var onStarClear:Function = function(param1:Object):void
         {
            if(Boolean(param1) && Boolean(param1.msg))
            {
               _core.sysMidNote(param1.msg);
            }
            if(Boolean(param1) && Boolean(param1.flag))
            {
               updatePet(param1.petId,"upgradeNum",param1.starNum);
               updatePet(param1.petId,"growRateAdd",param1.growRateAdd);
               if(ToolKit.isEqual(param1.petId,starPet.slotData.id) && ToolKit.isEqual(param1.starSlotId,starItem.slotData.id))
               {
                  if(ToolKit.isBigThan(param1.num,0))
                  {
                     starItem.stackNum = param1.num;
                  }
                  else
                  {
                     starItem.clean();
                  }
                  setStarInfo(null);
               }
            }
         };
         if(Boolean(starPet.slotData) && Boolean(starItem.slotData))
         {
            _core.remote.call("petStarClear",new Responder(onStarClear),starPet.slotData.id,starItem.slotData.id);
         }
      }
      
      private function resetItemList() : void
      {
         _itemList.val = -1;
         _itemList.type = -1;
         _itemList.idList = [];
      }
      
      private function setXdInfo(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         if(xdPet.slotData)
         {
            _loc2_ = petList[xdPet.slotData.id];
            if(_loc2_)
            {
               if(GameData.d[GamePredef.TBL_CREATURE][_loc2_["tid"]])
               {
                  _loc3_ = uint(GameData.d[GamePredef.TBL_CREATURE][_loc2_["tid"]].classIds);
                  if(_loc3_ != 10)
                  {
                     _core.sysMidNote(Language.PETFUNCPANEL_S[35]);
                     xdPet.clean();
                  }
                  else
                  {
                     _loc4_ = Language.PETFUNCPANEL_S[36].toString();
                     _loc4_ = _loc4_.replace("{finalStrength}",_loc2_.property.finalStrength.toString());
                     _loc4_ = _loc4_.replace("{finalAgility}",_loc2_.property.finalAgility.toString());
                     _loc4_ = _loc4_.replace("{finalStamina}",_loc2_.property.finalStamina.toString());
                     _loc4_ = _loc4_.replace("{finalIntelligence}",_loc2_.property.finalIntelligence.toString());
                     _loc4_ = _loc4_.replace("{finalEnergy}",_loc2_.property.finalEnergy.toString());
                     _loc4_ = _loc4_.replace("{lastPoint}",_loc2_.property.lastPoint.toString());
                     xdText.htmlText = _loc4_;
                  }
               }
               if(Boolean(xdItem.slotData) && ToolKit.isBigOrEqual(xdItem.stackNum,1))
               {
                  xdButton.enabled = true;
               }
               else
               {
                  xdButton.enabled = false;
               }
            }
         }
      }
      
      public function __mainPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(mainPet);
      }
      
      override public function update() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,updateLater);
            return;
         }
         pzxsdItem.petFuncType = [GamePredef.ITEM_TYPE_PETFUNC_TYPE[4]];
         starItem.petFuncType = [GamePredef.ITEM_TYPE_PETFUNC_TYPE[3],GamePredef.ITEM_TYPE_PETFUNC_TYPE[5]];
         xsdItem.petFuncType = [GamePredef.ITEM_TYPE_PETFUNC_TYPE[2]];
         xdItem.petFuncType = [GamePredef.ITEM_TYPE_PETFUNC_TYPE[1]];
         starSafeItem.petFuncType = [GamePredef.ITEM_TYPE_PETFUNC_TYPE[6]];
         luckItem.petFuncType = [GamePredef.ITEM_TYPE_PETFUNC_TYPE[7]];
         if(visible)
         {
            starPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setStarInfo);
            starItem.addEventListener(GameEvent.SLOT_NUM_CHANGE,setStarInfo);
            joinMainPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet1.addEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet2.addEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet3.addEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet4.addEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            bookPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setBookInfo);
            bookItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,setBookInfo);
            xsdPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setXsdInfo);
            xsdItem.addEventListener(GameEvent.SLOT_NUM_CHANGE,setXsdInfo);
            pzxsdPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setPzXsdInfo);
            pzxsdItem.addEventListener(GameEvent.SLOT_NUM_CHANGE,setPzXsdInfo);
            xdPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setXdInfo);
            xdItem.addEventListener(GameEvent.SLOT_NUM_CHANGE,setXdInfo);
            mainPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setEatInfo);
            costPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,setEatInfo);
            luckItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,setEatInfo);
            luckItem.addEventListener(GameEvent.SLOT_NUM_CHANGE,setEatInfo);
            elementPet.addEventListener(GameEvent.SLOT_GIID_CHANGE,elementPetChange);
            upPetRefresh();
         }
         else
         {
            starPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setStarInfo);
            starItem.removeEventListener(GameEvent.SLOT_NUM_CHANGE,setStarInfo);
            starViewClear();
            joinMainPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet1.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet2.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet3.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinPet4.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setJoinInfo);
            joinViewClear();
            bookPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setBookInfo);
            bookItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setBookInfo);
            bookViewClear();
            xsdPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setXsdInfo);
            xsdItem.removeEventListener(GameEvent.SLOT_NUM_CHANGE,setXsdInfo);
            xsdViewClear();
            pzxsdPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setPzXsdInfo);
            pzxsdItem.removeEventListener(GameEvent.SLOT_NUM_CHANGE,setPzXsdInfo);
            pzXsdViewClear();
            xdPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setXdInfo);
            xdItem.removeEventListener(GameEvent.SLOT_NUM_CHANGE,setXdInfo);
            xdViewClear();
            mainPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setEatInfo);
            costPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setEatInfo);
            luckItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,setEatInfo);
            luckItem.removeEventListener(GameEvent.SLOT_NUM_CHANGE,setEatInfo);
            eatViewClear();
            elementPet.removeEventListener(GameEvent.SLOT_GIID_CHANGE,elementPetChange);
            elementClear();
         }
      }
      
      public function set luckItem(param1:ItemSlotPetFunc) : void
      {
         var _loc2_:Object = this._1355904412luckItem;
         if(_loc2_ !== param1)
         {
            this._1355904412luckItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"luckItem",_loc2_,param1));
         }
      }
      
      public function onStar(param1:Object) : void
      {
         starButton.enabled = true;
         var _loc2_:String = "";
         if(param1)
         {
            updatePet(param1.petId,"upgradeNum",param1.starNum);
            updatePet(param1.petId,"growRateAdd",param1.growRateAdd);
            if(ToolKit.isEqual(param1.petId,starPet.slotData.id) && ToolKit.isEqual(param1.starSlotId,starItem.slotData.id))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  starItem.stackNum = param1.num;
               }
               else
               {
                  starItem.clean();
               }
               if(Boolean(param1.starSafeNum) && ToolKit.isBigThan(param1.starSafeNum,0))
               {
                  starSafeItem.stackNum = param1.starSafeNum;
               }
               else
               {
                  starSafeItem.clean();
               }
               setStarInfo(null);
            }
            if(param1.flag)
            {
               _loc2_ = Language.PETFUNCPANEL_S[4];
               _loc2_ = _loc2_.replace("{starNum}",param1.starNum);
               _core.sysMidNote(_loc2_);
            }
            else
            {
               _core.sysMidNote(Language.PETFUNCPANEL_S[6]);
            }
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(firstTimeFlag == 0)
            {
               initView();
               firstTimeFlag = 1;
               tabBtnClick(0);
            }
         }
         update();
      }
      
      [Bindable(event="propertyChange")]
      public function get elementCost() : Label
      {
         return this._673408233elementCost;
      }
      
      public function __luckNum_change(param1:NumericStepperEvent) : void
      {
         setEatInfo(null);
      }
      
      [Bindable(event="propertyChange")]
      public function get joinInfo() : Label
      {
         return this._1402072840joinInfo;
      }
      
      public function __xdPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(xdPet);
      }
      
      private function _PetFuncPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = HtmlComboItemRenderer;
         return _loc1_;
      }
      
      public function __bookItem_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(bookItem);
      }
      
      public function set elementPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._575924355elementPet;
         if(_loc2_ !== param1)
         {
            this._575924355elementPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementPet",_loc2_,param1));
         }
      }
      
      public function set starItem(param1:ItemSlotPetFunc) : void
      {
         var _loc2_:Object = this._1315536005starItem;
         if(_loc2_ !== param1)
         {
            this._1315536005starItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinButton() : BasicGlowButton
      {
         return this._1034217724joinButton;
      }
      
      public function set tabBtn0(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function __starClearButton_click(param1:MouseEvent) : void
      {
         petStarClear();
      }
      
      [Bindable(event="propertyChange")]
      public function get xsdInfo() : Label
      {
         return this._1781719785xsdInfo;
      }
      
      public function set tabBtn3(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      public function autoClick(param1:String) : void
      {
         var _loc2_:int = Number(param1.charAt(0) + param1.charAt(1));
         tabBtnClick(_loc2_ - 1);
      }
      
      public function set tabBtn4(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      public function set tabBtn2(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function set tabBtn6(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141553tabBtn6;
         if(_loc2_ !== param1)
         {
            this._1554141553tabBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn6",_loc2_,param1));
         }
      }
      
      private function xdViewClear() : void
      {
         xdPet.clean();
         xdItem.clean();
         xdInfo.htmlText = "";
         xdText.htmlText = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get eatRateInfo() : Label
      {
         return this._1710110426eatRateInfo;
      }
      
      public function __joinPet3_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(joinPet3);
      }
      
      public function set pzxsdButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._629176687pzxsdButton;
         if(_loc2_ !== param1)
         {
            this._629176687pzxsdButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pzxsdButton",_loc2_,param1));
         }
      }
      
      public function set xdPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._113881747xdPet;
         if(_loc2_ !== param1)
         {
            this._113881747xdPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xdPet",_loc2_,param1));
         }
      }
      
      public function __starItem_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(starItem);
      }
      
      [Bindable(event="propertyChange")]
      public function get elementBox() : ComboBox
      {
         return this._575911215elementBox;
      }
      
      public function set tabBtn5(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141554tabBtn5;
         if(_loc2_ !== param1)
         {
            this._1554141554tabBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn5",_loc2_,param1));
         }
      }
      
      public function set tabBtn7(param1:FilterButton) : void
      {
         var _loc2_:Object = this._1554141552tabBtn7;
         if(_loc2_ !== param1)
         {
            this._1554141552tabBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn7",_loc2_,param1));
         }
      }
      
      public function onXd(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         xdButton.enabled = true;
         if(param1)
         {
            if(Boolean(param1.f) && Boolean(param1.pet))
            {
               xdPet.clean();
               xdItem.clean();
               xdInfo.text = Language.PETFUNCPANEL_S[37];
               _loc2_ = param1.pet;
               _loc3_ = Language.PETFUNCPANEL_S[36].toString();
               _loc3_ = _loc3_.replace("{finalStrength}",_loc2_.attStrength);
               _loc3_ = _loc3_.replace("{finalAgility}",_loc2_.attAgility);
               _loc3_ = _loc3_.replace("{finalStamina}",_loc2_.attStamina);
               _loc3_ = _loc3_.replace("{finalIntelligence}",_loc2_.attIntelligence);
               _loc3_ = _loc3_.replace("{finalEnergy}",_loc2_.attEnergy);
               _loc3_ = _loc3_.replace("{lastPoint}",_loc2_.attLastPoint);
               xdText.htmlText = _loc3_;
            }
            else
            {
               xdInfo.text = Language.PETFUNCPANEL_S[24];
            }
         }
      }
      
      public function __costPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(costPet);
      }
      
      [Bindable(event="propertyChange")]
      public function get xdButton() : BasicGlowButton
      {
         return this._758955714xdButton;
      }
      
      public function __xdItem_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(xdItem);
      }
      
      public function set mainPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._831007910mainPet;
         if(_loc2_ !== param1)
         {
            this._831007910mainPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainPet",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         firstTimeFlag = 0;
      }
      
      public function ___PetFuncPanel_BasicGlowButton9_click(param1:MouseEvent) : void
      {
         elementHandler(param1);
      }
      
      public function __pzxsdItem_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(pzxsdItem);
      }
      
      public function putPetAuto(param1:ItemSlot) : void
      {
         putPet(param1,tab.selectedIndex);
      }
      
      [Bindable(event="propertyChange")]
      public function get xsdButton() : BasicGlowButton
      {
         return this._1265723739xsdButton;
      }
      
      private function setEatInfo(param1:Event) : void
      {
         var mainPetData:Object = null;
         var costPetData:Object = null;
         var mainColorLevel:Number = NaN;
         var costColorLevel:Number = NaN;
         var addRate:Number = NaN;
         var totalRate:Number = NaN;
         var resultRate:Number = NaN;
         var strengthFeather:int = 0;
         var agilityFeather:int = 0;
         var staminaFeather:int = 0;
         var intelligenceFeather:int = 0;
         var energyFeather:int = 0;
         var e:Event = param1;
         var getSingleRate:Function = function(param1:*):Number
         {
            var _loc2_:Number = Number(param1 && param1.creatureData && param1.creatureData.classIds);
            var _loc3_:Number = Number(param1 && _core.basic.colorByGrowRate(param1.growRate));
            var _loc4_:Number = _loc2_ == 10 ? 1 : 2;
            var _loc5_:Object = {
               301:0.15,
               302:0.1,
               401:0.3,
               402:0.15
            };
            if(_core.MC_BIRTH_FLAG[7])
            {
               _loc5_ = GamePredef.MC_BIRTH_CONFIG[7];
            }
            return Number(Number(_loc5_[_loc3_ * 100 + _loc4_]) || 0);
         };
         var getBaseRate:Function = function(param1:*, param2:*):Number
         {
            var _loc3_:Number = getSingleRate(param1) + getSingleRate(param2);
            if(param1.creatureData.classId == param2.creatureData.classId)
            {
               _loc3_ += 0.2;
            }
            else
            {
               _loc3_ /= 2;
            }
            return _loc3_ * 100;
         };
         luckNum.visible = luckItem.slotData;
         if(Boolean(luckItem.slotData) && luckNum.value > luckItem.slotData.stackNum)
         {
            luckNum.value = luckItem.slotData.stackNum;
         }
         if(Boolean(mainPet.slotData) && Boolean(costPet.slotData))
         {
            mainPetData = petList[mainPet.slotData.id];
            costPetData = petList[costPet.slotData.id];
            if(Boolean(mainPetData) && Boolean(costPetData))
            {
               mainColorLevel = Number(_core.basic.colorByGrowRate(mainPetData.growRate));
               costColorLevel = Number(_core.basic.colorByGrowRate(costPetData.growRate));
               if(mainColorLevel >= 3 && costColorLevel >= 3)
               {
                  addRate = Number((Number(luckNum.visible) || 0) && luckNum.value * 20);
                  totalRate = addRate + getBaseRate(mainPetData,costPetData);
                  while(totalRate >= 120)
                  {
                     --luckNum.value;
                     totalRate -= 20;
                  }
                  resultRate = totalRate > 100 ? 100 : Math.round(totalRate * 10) / 10;
                  eatRateInfo.htmlText = Language.PETFUNCPANEL_S[8] + resultRate + "%";
               }
               else
               {
                  eatRateInfo.htmlText = Language.PETFUNCPANEL_S[24];
               }
            }
         }
         _refreshMainPetText();
         if(costPet.slotData)
         {
            strengthFeather = 0;
            agilityFeather = 0;
            staminaFeather = 0;
            intelligenceFeather = 0;
            energyFeather = 0;
            if(costPet.slotData.property)
            {
               strengthFeather = int(costPet.slotData.property.aptStrengthEvolution);
               agilityFeather = int(costPet.slotData.property.aptAgilityEvolution);
               staminaFeather = int(costPet.slotData.property.aptStaminaEvolution);
               intelligenceFeather = int(costPet.slotData.property.aptIntelligenceEvolution);
               energyFeather = int(costPet.slotData.property.aptEnergyEvolution);
            }
            eatCostText.htmlText = Language.PETFUNCPANEL_S[18] + (Number(costPet.slotData.aptStrength) + strengthFeather) + Language.PETFUNCPANEL_S[19] + (Number(costPet.slotData.aptAgility) + agilityFeather) + Language.PETFUNCPANEL_S[20] + (Number(costPet.slotData.aptStamina) + staminaFeather) + Language.PETFUNCPANEL_S[21] + (Number(costPet.slotData.aptIntelligence) + intelligenceFeather) + Language.PETFUNCPANEL_S[22] + (Number(costPet.slotData.aptEnergy) + energyFeather);
         }
      }
      
      public function funcBagClickHandler(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:ItemSlot = null;
         var _loc2_:Object = param1.currentTarget.slotData;
         if(!_loc2_)
         {
            return;
         }
         if(ToolKit.isEqual(param1.currentTarget.type,GamePredef.TBL_PET))
         {
            _loc3_ = _core.getTemplateData(GamePredef.TBL_CREATURE,_loc2_.tid);
         }
         else
         {
            _loc4_ = Number(_loc2_.sid);
            _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.itemId);
         }
         if(_loc3_)
         {
            for(_loc5_ in autoMatchSlots)
            {
               _loc6_ = autoMatchSlots[_loc5_];
               _loc7_ = _loc6_.slot;
               if(tab.selectedIndex == 1 || tab.selectedIndex == 6)
               {
                  if(_loc7_.giid > 0 || checkRepeatPets(autoMatchSlots,param1.currentTarget.giid))
                  {
                     continue;
                  }
               }
               if(!(Boolean(_loc6_.id) && !ToolKit.isEqual(_loc3_.id,_loc6_.id)))
               {
                  if(!(Boolean(_loc6_.itemType) && !ToolKit.isEqual(_loc6_.itemType,_loc2_.type || param1.currentTarget.type)))
                  {
                     if(!(Boolean(_loc6_.propType) && !ToolKit.isEqual(_loc6_.propType,_loc3_.propType)))
                     {
                        if(!(Boolean(_loc6_.type) && !ToolKit.isEqual(_loc6_.type,_loc3_.type)))
                        {
                           resetPetBagSlot(_loc7_,param1.currentTarget);
                           return;
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function onBook(param1:Object) : void
      {
         if(param1)
         {
            switch(param1.f)
            {
               case 1:
                  if(!param1.rf)
                  {
                     _core.sysMsg(Language.PETFUNCPANEL_S[15]);
                  }
                  break;
               case 2:
                  _core.sysMsg(Language.PETFUNCPANEL_S[16]);
                  break;
               case 3:
                  _core.sysMsg(Language.PETFUNCPANEL_S[17]);
            }
            if(ToolKit.isBigThan(param1.n,0))
            {
               bookItem.stackNum = param1.n;
            }
            else
            {
               bookItem.clean();
            }
         }
      }
      
      public function set joinButton1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1995978421joinButton1;
         if(_loc2_ !== param1)
         {
            this._1995978421joinButton1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinButton1",_loc2_,param1));
         }
      }
      
      private function setPzXsdInfo(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(pzxsdPet.slotData)
         {
            _loc2_ = petList[pzxsdPet.slotData.id];
            if(_loc2_)
            {
               pzxsdText.htmlText = Language.PETFUNCPANEL_S[43].toString().replace("{growRate}",_loc2_.growRate);
               if(Boolean(pzxsdItem.slotData) && ToolKit.isBigOrEqual(pzxsdItem.stackNum,1))
               {
                  pzxsdButton.enabled = true;
               }
               else
               {
                  pzxsdButton.enabled = false;
               }
               if(_loc2_.growRate == GamePredef.PET_GROWRATE_NUM[1] || _loc2_.growRate == GamePredef.PET_GROWRATE_NUM[2] || _loc2_.growRate == GamePredef.PET_GROWRATE_NUM[3] || _loc2_.growRate == GamePredef.PET_GROWRATE_NUM[4])
               {
                  pzxsdButton.enabled = false;
               }
               else
               {
                  pzxsdButton.enabled = true;
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starPet() : ItemSlotPet
      {
         return this._1897219731starPet;
      }
      
      public function set starSafeItem(param1:ItemSlotPetFunc) : void
      {
         var _loc2_:Object = this._273016654starSafeItem;
         if(_loc2_ !== param1)
         {
            this._273016654starSafeItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starSafeItem",_loc2_,param1));
         }
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabBtnClick(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get seniorPetJoinEnable() : Boolean
      {
         return this._1822648700seniorPetJoinEnable;
      }
      
      [Bindable(event="propertyChange")]
      public function get bookPet() : ItemSlotPet
      {
         return this._64661878bookPet;
      }
      
      public function __starButton_click(param1:MouseEvent) : void
      {
         petStar();
      }
      
      [Bindable(event="propertyChange")]
      public function get xsdText() : TextArea
      {
         return this._1781400170xsdText;
      }
      
      [Bindable(event="propertyChange")]
      public function get bookItem() : ItemSlotCreBook
      {
         return this._2004323740bookItem;
      }
      
      public function __bookPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(bookPet);
      }
      
      private function setBookInfo(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(Boolean(bookPet.slotData) && Boolean(bookItem.slotData))
         {
            _loc2_ = _core.getTemplateData(bookItem.type,bookItem.giid);
            _loc3_ = _core.getTemplateData(bookPet.type,bookPet.giid);
            if(Boolean(_loc2_) && Boolean(_loc3_))
            {
               if(_loc2_.reqClass.indexOf("|" + _loc3_.classId + "|") >= 0)
               {
                  if(ToolKit.isBigOrEqual(_loc3_.qLevel,_loc2_.proplNum))
                  {
                     bookButton.enabled = true;
                     return;
                  }
               }
            }
         }
         bookButton.enabled = false;
      }
      
      private function bookViewClear() : void
      {
         bookButton.enabled = false;
         bookPet.clean();
         bookItem.clean();
      }
      
      [Bindable(event="propertyChange")]
      public function get xdInfo() : Label
      {
         return this._764833350xdInfo;
      }
      
      public function __xsdButton_click(param1:MouseEvent) : void
      {
         petXsd();
      }
      
      private function upPetRefresh() : void
      {
         var _loc1_:Object = {
            "up":{},
            "down":{}
         };
         switch(tab.selectedIndex)
         {
            case 0:
               _loc1_.up = {"pets":true};
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":{507:true},
                  "propType":{
                     3:true,
                     5:true,
                     6:true
                  }
               };
               _loc1_.sysShop = true;
               break;
            case 1:
               _loc1_.up = {"pets":true};
               _loc1_.down = {"nth":true};
               break;
            case 2:
               _loc1_.up = {"pets":true};
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":{507:true},
                  "propType":{2:true}
               };
               _loc1_.sysShop = true;
               break;
            case 3:
               _loc1_.up = {"pets":true};
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":{507:true},
                  "propType":{4:true}
               };
               _loc1_.sysShop = true;
               break;
            case 4:
               _loc1_.up = {
                  "pets":true,
                  "classIds":{10:true}
               };
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":{507:true},
                  "propType":{1:true}
               };
               _loc1_.sysShop = true;
               break;
            case 5:
               _loc1_.up = {"pets":true};
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":{506:true}
               };
               _loc1_.sysShop = true;
               break;
            case 6:
               _loc1_.up = {"pets":true};
               _loc1_.down = {
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":{507:true},
                  "propType":{7:true}
               };
               _loc1_.sysShop = true;
               break;
            case 7:
               _loc1_.up = {"pets":true};
         }
         petBag.condition = _loc1_;
      }
      
      private function petEat() : void
      {
         var _petEat:Function = null;
         var func:Function = null;
         var petColor:Number = NaN;
         var popStr:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         if(Boolean(mainPet.slotData) && Boolean(costPet.slotData) && aptType.selectedItem.type > 0)
         {
            _petEat = function(param1:String):void
            {
               var _loc2_:String = null;
               if(param1)
               {
                  _loc2_ = MD5.hash(param1);
                  _core.remote.call("petEat",new Responder(onPetEat),mainPet.slotData.id,costPet.slotData.id,luckItem.slotData && luckItem.slotData.id,luckNum.value,aptType.selectedItem.type,_loc2_);
               }
            };
            func = function(param1:CloseEvent):void
            {
               if(param1.detail != Alert.YES)
               {
                  return;
               }
               if(_core.delPass)
               {
                  _core.remote.call("petEat",new Responder(onPetEat),mainPet.slotData.id,costPet.slotData.id,luckItem.slotData && luckItem.slotData.id,luckNum.value,aptType.selectedItem.type,_core.delPass);
               }
               else
               {
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.PETFUNCPANEL_U[26],_petEat);
               }
            };
            petColor = Number(GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(costPet.slotData.growRate)]);
            popStr = LanguageUtil.replace(Language.PETFUNCPANEL_U[30],{
               "petColor":petColor,
               "petName":costPet.slotData.petName
            });
            _alert = Alert.show(LanguageUtil.html2PlainText(popStr),"",3,this,func);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = popStr;
         }
         else if(aptType.selectedItem.type == -1)
         {
            aptType.open();
         }
      }
      
      public function set elementCost(param1:Label) : void
      {
         var _loc2_:Object = this._673408233elementCost;
         if(_loc2_ !== param1)
         {
            this._673408233elementCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementCost",_loc2_,param1));
         }
      }
      
      public function __joinPet2_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(joinPet2);
      }
      
      public function set joinInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1402072840joinInfo;
         if(_loc2_ !== param1)
         {
            this._1402072840joinInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinInfo",_loc2_,param1));
         }
      }
      
      public function set joinButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1034217724joinButton;
         if(_loc2_ !== param1)
         {
            this._1034217724joinButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get eatMainText() : TextArea
      {
         return this._2140516866eatMainText;
      }
      
      public function set aptType(param1:ComboBox) : void
      {
         var _loc2_:Object = this._790240513aptType;
         if(_loc2_ !== param1)
         {
            this._790240513aptType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aptType",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costPet() : ItemSlotPet
      {
         return this._956127762costPet;
      }
      
      private function elementPetChange(param1:Event = null) : void
      {
         var _loc10_:Object = null;
         if(!elementPet || !elementPet.slotData)
         {
            return;
         }
         var _loc2_:Object = petList[elementPet.slotData.id];
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:int = _loc2_.hasOwnProperty("element") ? int(_loc2_.element) : 0;
         var _loc4_:Array = [];
         var _loc5_:Array = Language.EQUIPTFUNCPANEL_U[265];
         var _loc6_:int = int(_loc5_.length);
         var _loc7_:int = 0;
         while(_loc7_ < _loc6_)
         {
            _loc10_ = _loc5_[_loc7_];
            if(_loc3_ == 0 || _loc10_.element != _loc3_)
            {
               _loc4_.push(_loc10_);
            }
            _loc7_++;
         }
         elementBox.dataProvider = new ArrayCollection(_loc4_);
         var _loc8_:int = PetLogic.expToLv(_loc2_.exp);
         var _loc9_:Number = Math.round(GamePredef.BASIC_GET_MONEY[_loc8_] * 0.1);
         elementCost.text = Language.PETFUNCPANEL_U[44] + _loc9_;
      }
      
      [Bindable(event="propertyChange")]
      public function get luckNum() : NumericStepper
      {
         return this._510455317luckNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get pzxsdPet() : ItemSlotPet
      {
         return this._2072290848pzxsdPet;
      }
      
      [Bindable(event="propertyChange")]
      public function get eatCostText() : TextArea
      {
         return this._1738198546eatCostText;
      }
      
      private function checkPetsData(param1:Object) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:String = null;
         var _loc5_:int = 0;
         var _loc6_:* = undefined;
         if(param1)
         {
            for(_loc2_ in param1)
            {
               for(_loc4_ in param1)
               {
                  if(Boolean(param1[_loc2_] && param1[_loc4_]) && Boolean(_loc2_ != _loc4_) && param1[_loc2_].id == param1[_loc4_].id)
                  {
                     _core.sysMidNote(Language.PETFUNCPANEL_S[9]);
                     return false;
                  }
               }
            }
            if(!param1.main)
            {
               _core.sysMidNote(Language.PETFUNCPANEL_S[10]);
               return false;
            }
            _loc3_ = 1;
            while(_loc3_ <= 4)
            {
               if(param1["pet" + _loc3_])
               {
                  _loc5_ = 1;
                  while(_loc5_ <= 8)
                  {
                     if(ToolKit.isBigThan(param1["pet" + _loc3_]["equ" + _loc5_],0))
                     {
                        joinViewClear();
                        Alert.show(Language.PETFUNCPANEL_S[56],"",Alert.YES,null,null);
                        return false;
                     }
                     _loc5_++;
                  }
                  if(Boolean(param1["pet" + _loc3_]["soulInfo"]) && Boolean(param1["pet" + _loc3_]["soulInfo"]["data"]))
                  {
                     for(_loc6_ in param1["pet" + _loc3_]["soulInfo"]["data"])
                     {
                        if(param1["pet" + _loc3_]["soulInfo"]["data"][_loc6_])
                        {
                           Alert.show(Language.PET_SOUL_S[51],"",Alert.YES,null,null);
                           joinViewClear();
                           return false;
                        }
                     }
                  }
                  if(_core.basic.colorByGrowRate(param1.main.growRate) != _core.basic.colorByGrowRate(param1["pet" + _loc3_].growRate))
                  {
                     _core.sysMidNote(Language.PETFUNCPANEL_S[11]);
                     return false;
                  }
                  if(param1.main.tid != param1["pet" + _loc3_].tid)
                  {
                     _core.sysMidNote(Language.PETFUNCPANEL_S[12]);
                     return false;
                  }
               }
               _loc3_++;
            }
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get starInfo() : Label
      {
         return this._1315530272starInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get starClearButton() : BasicGlowButton
      {
         return this._1791424045starClearButton;
      }
      
      public function set xsdInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1781719785xsdInfo;
         if(_loc2_ !== param1)
         {
            this._1781719785xsdInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xsdInfo",_loc2_,param1));
         }
      }
      
      private function tabBtnUpdate() : void
      {
         var _loc1_:int = tab ? tab.selectedIndex : 0;
         resetItemList();
         autoMatchSlots = new Array();
         switch(_loc1_)
         {
            case 0:
               autoMatchSlots.push({
                  "slot":starPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":starItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_PETFUNC,
                  "propType":GamePredef.ITEM_TYPE_PETFUNC_TYPE[3]
               });
               autoMatchSlots.push({
                  "slot":starSafeItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_PETFUNC,
                  "propType":GamePredef.ITEM_TYPE_PETFUNC_TYPE[6]
               });
               break;
            case 1:
               autoMatchSlots.push({
                  "slot":joinMainPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":joinPet1,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":joinPet2,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":joinPet3,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":joinPet4,
                  "itemType":GamePredef.TBL_PET
               });
               break;
            case 2:
               autoMatchSlots.push({
                  "slot":xsdPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":xsdItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_PETFUNC,
                  "propType":GamePredef.ITEM_TYPE_PETFUNC_TYPE[2]
               });
               break;
            case 3:
               autoMatchSlots.push({
                  "slot":pzxsdPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":pzxsdItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_PETFUNC,
                  "propType":GamePredef.ITEM_TYPE_PETFUNC_TYPE[4]
               });
               break;
            case 4:
               autoMatchSlots.push({
                  "slot":xdPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":xdItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_PETFUNC,
                  "propType":GamePredef.ITEM_TYPE_PETFUNC_TYPE[1]
               });
               break;
            case 5:
               autoMatchSlots.push({
                  "slot":bookPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":bookItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_CREBOOK
               });
               break;
            case 6:
               autoMatchSlots.push({
                  "slot":mainPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":costPet,
                  "itemType":GamePredef.TBL_PET
               });
               autoMatchSlots.push({
                  "slot":luckItem,
                  "itemType":GamePredef.TBL_ITEM_INSTANCE,
                  "type":GamePredef.ITEM_TYPE_PETFUNC,
                  "propType":GamePredef.ITEM_TYPE_PETFUNC_TYPE[7]
               });
               break;
            case 7:
               autoMatchSlots.push({
                  "slot":elementPet,
                  "itemType":GamePredef.TBL_PET
               });
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pzxsdItem() : ItemSlotPetFunc
      {
         return this._183687630pzxsdItem;
      }
      
      public function surePetStar() : void
      {
         var _loc1_:* = undefined;
         if(Boolean(starPet.slotData) && Boolean(starItem.slotData))
         {
            _loc1_ = starSafeItem.slotData ? starSafeItem.slotData.id : null;
            _core.remote.call("petStar",new Responder(onStar),starPet.slotData.id,starItem.slotData.id,_loc1_);
            starButton.enabled = false;
         }
      }
      
      private function _PetFuncPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PETFUNCPANEL_U[11];
         _loc1_ = Language.PETFUNCPANEL_U[0];
         _loc1_ = ResManager.TOTEM_PET_FUNC2;
         _loc1_ = Language.PETFUNCPANEL_S[25];
         _loc1_ = Language.PETFUNCPANEL_U[6];
         _loc1_ = Language.PETFUNCPANEL_U[23];
         _loc1_ = Language.PETFUNCPANEL_U[24];
         _loc1_ = Language.PETFUNCPANEL_U[12];
         _loc1_ = Language.PETFUNCPANEL_U[13];
         _loc1_ = Language.PETFUNCPANEL_U[1];
         _loc1_ = ResManager.TOTEM_PET_FUNC1;
         _loc1_ = Language.PETFUNCPANEL_S[28];
         _loc1_ = Language.PETFUNCPANEL_U[7];
         _loc1_ = Language.PETFUNCPANEL_U[40];
         _loc1_ = seniorPetJoinEnable;
         _loc1_ = Language.PETFUNCPANEL_U[14];
         _loc1_ = Language.PETFUNCPANEL_U[15];
         _loc1_ = Language.PETFUNCPANEL_U[14];
         _loc1_ = Language.PETFUNCPANEL_U[2];
         _loc1_ = ResManager.TOTEM_PET_FUNC2;
         _loc1_ = Language.PETFUNCPANEL_S[30];
         _loc1_ = Language.PETFUNCPANEL_U[8];
         _loc1_ = Language.PETFUNCPANEL_U[16];
         _loc1_ = Language.PETFUNCPANEL_U[17];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.PETFUNCPANEL_S[32];
         _loc1_ = ResManager.TOTEM_PET_FUNC2;
         _loc1_ = Language.PETFUNCPANEL_S[42];
         _loc1_ = Language.PETFUNCPANEL_U[21];
         _loc1_ = Language.PETFUNCPANEL_U[16];
         _loc1_ = Language.PETFUNCPANEL_U[22];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.PETFUNCPANEL_S[33];
         _loc1_ = ResManager.TOTEM_PET_FUNC2;
         _loc1_ = Language.PETFUNCPANEL_S[39];
         _loc1_ = Language.PETFUNCPANEL_U[9];
         _loc1_ = Language.PETFUNCPANEL_S[38];
         _loc1_ = Language.PETFUNCPANEL_U[16];
         _loc1_ = Language.PETFUNCPANEL_U[19];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.PETFUNCPANEL_U[10];
         _loc1_ = ResManager.TOTEM_PET_FUNC2;
         _loc1_ = Language.PETFUNCPANEL_S[34];
         _loc1_ = Language.PETFUNCPANEL_U[10];
         _loc1_ = Language.PETFUNCPANEL_U[16];
         _loc1_ = Language.PETFUNCPANEL_U[20];
         _loc1_ = Language.PETFUNCPANEL_U[25];
         _loc1_ = ResManager.TOTEM_PET_FUNC2;
         _loc1_ = Language.PETFUNCPANEL_S[46];
         _loc1_ = Language.PETFUNCPANEL_U[15];
         _loc1_ = Language.PETFUNCPANEL_U[14];
         _loc1_ = Language.PETFUNCPANEL_U[27];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.PETFUNCPANEL_U[25];
         _loc1_ = Language.PETFUNCPANEL_S[57];
         _loc1_ = Language.PETFUNCPANEL_U[42];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[43];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = new ArrayCollection(Language.PETFUNCPANEL_U[46]);
         _loc1_ = Language.PETFUNCPANEL_U[44];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[45];
         _loc1_ = Language.PETFUNCPANEL_U[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[1];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[2];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[3];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[4];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[5];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[26];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PETFUNCPANEL_U[41];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.EQUIPTFUNCPANEL_S[97];
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabBtnClick(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get xdText() : TextArea
      {
         return this._764513735xdText;
      }
      
      private function eatViewClear() : void
      {
         mainPet.clean();
         costPet.clean();
         luckItem.clean();
         eatRateInfo.htmlText = "";
         eatMainText.htmlText = "";
         eatCostText.htmlText = "";
         luckNum.visible = false;
         aptType.close();
         aptType.selectedIndex = 0;
      }
      
      public function set eatRateInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1710110426eatRateInfo;
         if(_loc2_ !== param1)
         {
            this._1710110426eatRateInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eatRateInfo",_loc2_,param1));
         }
      }
      
      private function setXsdInfo(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(xsdPet.slotData)
         {
            _loc2_ = petList[xsdPet.slotData.id];
            if(_loc2_)
            {
               xsdText.htmlText = Language.PETFUNCPANEL_S[18] + _loc2_.aptStrength + Language.PETFUNCPANEL_S[19] + _loc2_.aptAgility + Language.PETFUNCPANEL_S[20] + _loc2_.aptStamina + Language.PETFUNCPANEL_S[21] + _loc2_.aptIntelligence + Language.PETFUNCPANEL_S[22] + _loc2_.aptEnergy;
               getMaxAptitudes(_loc2_);
               if(Boolean(xsdItem.slotData) && ToolKit.isBigOrEqual(xsdItem.stackNum,1))
               {
                  xsdButton.enabled = true;
               }
               else
               {
                  xsdButton.enabled = false;
               }
            }
         }
      }
      
      public function set elementBox(param1:ComboBox) : void
      {
         var _loc2_:Object = this._575911215elementBox;
         if(_loc2_ !== param1)
         {
            this._575911215elementBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elementBox",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get luckItem() : ItemSlotPetFunc
      {
         return this._1355904412luckItem;
      }
      
      public function onXsd(param1:Object) : void
      {
         var yesAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:* = undefined;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var data:Object = param1;
         if(data)
         {
            updatePet(data.p,data.t,data.num);
            if(ToolKit.isEqual(data.i,xsdItem.slotData.id))
            {
               if(ToolKit.isBigThan(data.n,0))
               {
                  xsdItem.stackNum = data.n;
               }
               else
               {
                  xsdItem.clean();
               }
            }
            setXsdInfo(null);
            if(data.f)
            {
               xsdButton.enabled = false;
               if(data.aptHigh)
               {
                  xsdInfo.text = Language.PETFUNCPANEL_S[23];
                  xsdButton.enabled = true;
               }
               else
               {
                  yesAlert = Alert.yesLabel;
                  func = function(param1:CloseEvent):void
                  {
                     Alert.yesLabel = yesAlert;
                     if(param1.detail == Alert.YES)
                     {
                        if(data.before < data.after)
                        {
                           xsdInfo.text = Language.PETFUNCPANEL_S[23];
                        }
                        else
                        {
                           xsdInfo.text = "";
                        }
                        xsdButton.enabled = true;
                     }
                  };
                  title = "";
                  if(StringUtil.trim(data.type) == "aptStrength")
                  {
                     title = Language.PETFUNCPANEL_S[49];
                  }
                  else if(StringUtil.trim(data.type) == "aptAgility")
                  {
                     title = Language.PETFUNCPANEL_S[19];
                  }
                  else if(StringUtil.trim(data.type) == "aptStamina")
                  {
                     title = Language.PETFUNCPANEL_S[20];
                  }
                  else if(StringUtil.trim(data.type) == "aptIntelligence")
                  {
                     title = Language.PETFUNCPANEL_S[21];
                  }
                  else if(StringUtil.trim(data.type) == "aptEnergy")
                  {
                     title = Language.PETFUNCPANEL_S[22];
                  }
                  contentMsg = _showAlertMsg(Language.PETFUNCPANEL_S[52],title,data.before,data.after);
                  msg = contentMsg.replace(/<font(.*?)>/g,"");
                  msg = msg.replace(/<\/font>/g,"");
                  msg = msg.replace(/<b>/g,"");
                  msg = msg.replace(/<\/b>/g,"");
                  if(data.before < data.after)
                  {
                     Alert.yesLabel = Language.PETFUNCPANEL_S[50];
                  }
                  else
                  {
                     Alert.yesLabel = Language.PETFUNCPANEL_S[51];
                  }
                  _alert = Alert.show(msg,"",Alert.YES,null,func);
                  Alert.yesLabel = yesAlert;
                  tf = _alert.mx_internal::alertForm.mx_internal::textField;
                  tf.htmlText = contentMsg;
                  tf.filters = GamePredef.FILTER_TEXT1;
               }
            }
            else
            {
               xsdInfo.text = Language.PETFUNCPANEL_S[24];
               xsdButton.enabled = true;
            }
         }
         else
         {
            xsdButton.enabled = true;
         }
      }
      
      public function __pzxsdButton_click(param1:MouseEvent) : void
      {
         petPzXsd();
      }
      
      public function set joinPet3(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._1401872578joinPet3;
         if(_loc2_ !== param1)
         {
            this._1401872578joinPet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinPet3",_loc2_,param1));
         }
      }
      
      public function set joinPet4(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._1401872577joinPet4;
         if(_loc2_ !== param1)
         {
            this._1401872577joinPet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinPet4",_loc2_,param1));
         }
      }
      
      public function set joinPet2(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._1401872579joinPet2;
         if(_loc2_ !== param1)
         {
            this._1401872579joinPet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinPet2",_loc2_,param1));
         }
      }
      
      public function set xdButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._758955714xdButton;
         if(_loc2_ !== param1)
         {
            this._758955714xdButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xdButton",_loc2_,param1));
         }
      }
      
      public function set joinPet1(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._1401872580joinPet1;
         if(_loc2_ !== param1)
         {
            this._1401872580joinPet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"joinPet1",_loc2_,param1));
         }
      }
      
      public function __pzxsdPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(pzxsdPet);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : FilterButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : FilterButton
      {
         return this._1554141557tabBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : FilterButton
      {
         return this._1554141556tabBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : FilterButton
      {
         return this._1554141555tabBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn6() : FilterButton
      {
         return this._1554141553tabBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : FilterButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get pzxsdButton() : BasicGlowButton
      {
         return this._629176687pzxsdButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get xdPet() : ItemSlotPet
      {
         return this._113881747xdPet;
      }
      
      private function checkRepeatPets(param1:Object, param2:int) : Boolean
      {
         var _loc3_:Object = null;
         for each(_loc3_ in param1)
         {
            if(Boolean(_loc3_.slot) && ToolKit.isEqual(_loc3_.slot.giid,param2))
            {
               return true;
            }
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn5() : FilterButton
      {
         return this._1554141554tabBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn7() : FilterButton
      {
         return this._1554141552tabBtn7;
      }
      
      public function __joinPet1_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(joinPet1);
      }
      
      [Bindable(event="propertyChange")]
      public function get joinButton1() : BasicGlowButton
      {
         return this._1995978421joinButton1;
      }
      
      public function resetPetBagSlot(param1:ItemSlot, param2:Object = null) : void
      {
         var _loc3_:Object = null;
         if(param2)
         {
            _loc3_ = param2.slotData;
            param1.slotData = _loc3_;
            param1.type = int(_loc3_.type) || int(param2.type);
            param1.giid = Number(_loc3_.itemId) || Number(param2.giid);
            param1.stackNum = _loc3_.stackNum;
         }
         else
         {
            param1.clean();
         }
      }
      
      private function buyItem(param1:String) : void
      {
         var _loc2_:SystemShopPanel = SystemShopPanel(_core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP));
         _loc2_.show();
         _loc2_.setPage(param1);
      }
      
      public function set xsdButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1265723739xsdButton;
         if(_loc2_ !== param1)
         {
            this._1265723739xsdButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xsdButton",_loc2_,param1));
         }
      }
      
      private function changeBagVis() : void
      {
         if(!petBagAdded)
         {
            petBag = null;
            petBag = new FuncBag();
            petBag.x = 457;
            petBag.y = 33;
            width = 702;
            petBag.rows = 2;
            petBag.cols = 6;
            petBag.upType = Slot.SLOT_PET;
            petBag.upTabButtons = {
               "l":[Language.WING_PANEL_U[106],Language.WING_PANEL_U[107],Language.WING_PANEL_U[108],Language.WING_PANEL_U[109],Language.WING_PANEL_U[110],Language.WING_PANEL_U[111]],
               "p":"color",
               "v":[-1,4,3,2,1,0]
            };
            addChild(petBag as FuncBag);
            petBag.pFuncPanel = this;
            petBag.DClickCallBack = funcBagClickHandler;
            this.addEventListener(Slot.EVENT_SLOT_DCLICK,funcBagClickHandler);
            petBagAdded = true;
            showBag.styleName = "EquipBagLeft";
         }
         else if(petBag.visible)
         {
            petBag.visible = false;
            width = 459;
            showBag.styleName = "EquipBagRight";
         }
         else
         {
            petBag.visible = true;
            width = 702;
            showBag.styleName = "EquipBagLeft";
         }
         if(petBag.visible)
         {
            upPetRefresh();
         }
         pTitle.text = pTitle.text;
      }
      
      public function set starPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._1897219731starPet;
         if(_loc2_ !== param1)
         {
            this._1897219731starPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starPet",_loc2_,param1));
         }
      }
      
      public function __tab_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function petJoin() : void
      {
         var pets:Object = null;
         var func:Function = null;
         if(Boolean(joinMainPet.slotData) && Boolean(joinPet1.slotData) && Boolean(joinPet2.slotData) && Boolean(joinPet3.slotData) && Boolean(joinPet4.slotData))
         {
            pets = {};
            pets.main = joinMainPet.slotData;
            pets.pet1 = joinPet1.slotData;
            pets.pet2 = joinPet2.slotData;
            pets.pet3 = joinPet3.slotData;
            pets.pet4 = joinPet4.slotData;
            if(checkPetsData(pets))
            {
               if(checkPetBind(pets))
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("petJoin",new Responder(onJoin),joinMainPet.slotData.id,joinPet1.slotData.id,joinPet2.slotData.id,joinPet3.slotData.id,joinPet4.slotData.id);
                        joinButton.enabled = false;
                     }
                  };
                  Alert.show(Language.PETFUNCPANEL_S[40],"",Alert.YES | Alert.NO,this,func);
               }
               else
               {
                  _core.remote.call("petJoin",new Responder(onJoin),joinMainPet.slotData.id,joinPet1.slotData.id,joinPet2.slotData.id,joinPet3.slotData.id,joinPet4.slotData.id);
                  joinButton.enabled = false;
               }
            }
         }
      }
      
      public function set bookPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._64661878bookPet;
         if(_loc2_ !== param1)
         {
            this._64661878bookPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bookPet",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
      }
      
      public function set bookButton(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1810742139bookButton;
         if(_loc2_ !== param1)
         {
            this._1810742139bookButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bookButton",_loc2_,param1));
         }
      }
      
      private function getMaxAptitudes(param1:Object) : void
      {
         var _loc2_:Object = _core.getTemplateData(GamePredef.TBL_CREATURE,param1.tid,false);
         if(!_loc2_)
         {
            return;
         }
         xsdMaxText.htmlText = Language.PETFUNCPANEL_S[48] + Math.round(_loc2_.aptStrength * 1.2) + Language.PETFUNCPANEL_S[19] + Math.round(_loc2_.aptAgility * 1.2) + Language.PETFUNCPANEL_S[20] + Math.round(_loc2_.aptStamina * 1.2) + Language.PETFUNCPANEL_S[21] + Math.round(_loc2_.aptIntelligence * 1.2) + Language.PETFUNCPANEL_S[22] + Math.round(_loc2_.aptEnergy * 1.2);
      }
      
      public function set xsdItem(param1:ItemSlotPetFunc) : void
      {
         var _loc2_:Object = this._1781714052xsdItem;
         if(_loc2_ !== param1)
         {
            this._1781714052xsdItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xsdItem",_loc2_,param1));
         }
      }
      
      private function pzXsdViewClear() : void
      {
         pzxsdPet.clean();
         pzxsdItem.clean();
         pzxsdInfo.htmlText = "";
         pzxsdText.htmlText = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get aptType() : ComboBox
      {
         return this._790240513aptType;
      }
      
      public function set seniorPetJoinEnable(param1:Boolean) : void
      {
         var _loc2_:Object = this._1822648700seniorPetJoinEnable;
         if(_loc2_ !== param1)
         {
            this._1822648700seniorPetJoinEnable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seniorPetJoinEnable",_loc2_,param1));
         }
      }
      
      public function __xsdItem_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(xsdItem);
      }
      
      public function __xdButton_click(param1:MouseEvent) : void
      {
         petXd();
      }
      
      private function petXsd() : void
      {
         if(Boolean(xsdPet.slotData) && Boolean(xsdItem.slotData))
         {
            _core.remote.call("petXsd",new Responder(onXsd),xsdPet.slotData.id,xsdItem.slotData.id);
            xsdButton.enabled = false;
         }
      }
      
      private function petNd() : void
      {
         var func:Function = null;
         if(Boolean(starPet.slotData) && Boolean(starItem.slotData))
         {
            if(starPet.slotData.binded == 0)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.OK)
                  {
                     petStar();
                  }
               };
               Alert.show(Language.PETFUNCPANEL_S[42],"",Alert.OK | Alert.CANCEL,this,func);
            }
            else
            {
               petStar();
            }
         }
      }
      
      public function set bookItem(param1:ItemSlotCreBook) : void
      {
         var _loc2_:Object = this._2004323740bookItem;
         if(_loc2_ !== param1)
         {
            this._2004323740bookItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bookItem",_loc2_,param1));
         }
      }
      
      public function __tabBtn7_click(param1:MouseEvent) : void
      {
         tabBtnClick(7);
      }
      
      public function petAdvancedJoin() : void
      {
         _core.view.getUI(ViewManager.PANEL_PETADVANCED).show();
      }
      
      public function set xsdPet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._750205034xsdPet;
         if(_loc2_ !== param1)
         {
            this._750205034xsdPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xsdPet",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get joinPet2() : ItemSlotPet
      {
         return this._1401872579joinPet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinPet3() : ItemSlotPet
      {
         return this._1401872578joinPet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get joinPet4() : ItemSlotPet
      {
         return this._1401872577joinPet4;
      }
      
      private function tabBtnClick(param1:int) : void
      {
         tab.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= tab.numChildren - 1)
         {
            this["tabBtn" + _loc2_].selected = _loc2_ == param1;
            _loc2_++;
         }
         petBag && petBag.initialized && upPetRefresh();
         tabBtnUpdate();
      }
      
      [Bindable(event="propertyChange")]
      public function get joinPet1() : ItemSlotPet
      {
         return this._1401872580joinPet1;
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
         }
      }
      
      public function set xsdText(param1:TextArea) : void
      {
         var _loc2_:Object = this._1781400170xsdText;
         if(_loc2_ !== param1)
         {
            this._1781400170xsdText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xsdText",_loc2_,param1));
         }
      }
      
      public function set xsdMaxText(param1:TextArea) : void
      {
         var _loc2_:Object = this._1185484712xsdMaxText;
         if(_loc2_ !== param1)
         {
            this._1185484712xsdMaxText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xsdMaxText",_loc2_,param1));
         }
      }
      
      public function addItem(param1:ItemSlot) : void
      {
         var _loc2_:DragEvent = new DragEvent(DragEvent.DRAG_DROP);
         var _loc3_:DragSource = new DragSource();
         _loc3_.addData(param1,"slot");
         _loc2_.dragSource = _loc3_;
      }
      
      private function setJoinInfo(param1:Event) : void
      {
         var _loc3_:ItemSlotPet = null;
         var _loc4_:ItemSlotPet = null;
         var _loc5_:int = 0;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:Object = null;
         var _loc10_:* = undefined;
         var _loc11_:Number = NaN;
         if(param1)
         {
            _loc4_ = ItemSlotPet(param1.currentTarget);
            if(_loc4_)
            {
               _loc5_ = 0;
               while(_loc5_ <= 4)
               {
                  if(_loc5_ == 0)
                  {
                     _loc3_ = this.joinMainPet;
                  }
                  else
                  {
                     _loc3_ = this["joinPet" + _loc5_];
                  }
                  if(Boolean(_loc3_) && Boolean(_loc3_ != _loc4_) && _loc3_.giid == _loc4_.giid)
                  {
                     _loc3_.clean();
                  }
                  _loc5_++;
               }
            }
         }
         var _loc2_:Object = {};
         _loc2_.main = joinMainPet.slotData;
         _loc2_.pet1 = joinPet1.slotData;
         _loc2_.pet2 = joinPet2.slotData;
         _loc2_.pet3 = joinPet3.slotData;
         _loc2_.pet4 = joinPet4.slotData;
         if(!checkPetsData(_loc2_))
         {
            return;
         }
         if(joinMainPet.slotData)
         {
            _loc6_ = petList[joinMainPet.slotData.id];
            if(_loc6_)
            {
               if(ToolKit.isBigOrEqual(_core.basic.colorByGrowRate(_loc6_.growRate),4))
               {
                  joinInfo.htmlText = Language.PETFUNCPANEL_S[7];
               }
               else
               {
                  _loc7_ = int(GamePredef.PET_JOIN_SUCCESS[_core.basic.colorByGrowRate(_loc6_.growRate)]);
                  if(_core.MC_BIRTH_FLAG[5])
                  {
                     _loc7_ = int(GamePredef.MC_BIRTH_CONFIG[5][_core.basic.colorByGrowRate(_loc6_.growRate)]);
                  }
                  if(_core.basic.colorByGrowRate(_loc6_.growRate) == 3 && _core.pet_rate > 0 && _loc6_.creatureData.classIds == 10)
                  {
                     joinInfo.htmlText = Language.PETFUNCPANEL_S[8] + _core.pet_rate + "%";
                     if(Boolean(_core.player.pmLevel) && Number(_core.player.pmLevel) > 0)
                     {
                        _loc8_ = GameData.d[GamePredef.TBL_PM_RIGHT];
                        _loc9_ = null;
                        for(_loc10_ in _loc8_)
                        {
                           if(Boolean(_loc8_[_loc10_]) && Number(_loc8_[_loc10_].id) == 6)
                           {
                              _loc9_ = _loc8_[_loc10_];
                              break;
                           }
                        }
                        if(Boolean(_loc9_) && Boolean(_loc9_["value" + _core.player.pmLevel]))
                        {
                           _loc11_ = Number(_core.pet_rate) + Number(_loc9_["value" + _core.player.pmLevel]);
                           joinInfo.htmlText = Language.PETFUNCPANEL_S[8] + _loc11_ + "%";
                        }
                     }
                  }
                  else
                  {
                     joinInfo.htmlText = Language.PETFUNCPANEL_S[8] + _loc7_ + "%";
                     if(Boolean(_core.basic.colorByGrowRate(_loc6_.growRate) == 3) && Boolean(_core.player.pmLevel) && Number(_core.player.pmLevel) > 0)
                     {
                        _loc8_ = GameData.d[GamePredef.TBL_PM_RIGHT];
                        _loc9_ = null;
                        for(_loc10_ in _loc8_)
                        {
                           if(Boolean(_loc8_[_loc10_]) && Number(_loc8_[_loc10_].id) == 6)
                           {
                              _loc9_ = _loc8_[_loc10_];
                              break;
                           }
                        }
                        if(Boolean(_loc9_) && Boolean(_loc9_["value" + _core.player.pmLevel]))
                        {
                           _loc11_ = Number(_loc7_) + Number(_loc9_["value" + _core.player.pmLevel]);
                           joinInfo.htmlText = Language.PETFUNCPANEL_S[8] + _loc11_ + "%";
                        }
                     }
                  }
               }
            }
            if(Boolean(joinPet1.slotData) && Boolean(joinPet2.slotData) && Boolean(joinPet3.slotData) && Boolean(joinPet4.slotData))
            {
               joinButton.enabled = true;
               return;
            }
         }
         joinButton.enabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get bookButton() : DelayButton
      {
         return this._1810742139bookButton;
      }
      
      public function __xsdPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(xsdPet);
      }
      
      public function set xdInfo(param1:Label) : void
      {
         var _loc2_:Object = this._764833350xdInfo;
         if(_loc2_ !== param1)
         {
            this._764833350xdInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xdInfo",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetFuncPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetFuncPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetFuncPanelWatcherSetupUtil");
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
      
      private function updatePet(param1:int, param2:String, param3:String) : void
      {
         if(Boolean(petList) && Boolean(petList[param1]))
         {
            petList[param1][param2] = param3;
            _core.data.addEventListener(GameDataEvent.DATA_RECIEVED + "_" + GamePredef.TBL_PET + "_" + param1,dataLoaded);
            _core.data.delData(GamePredef.TBL_PET,param1);
            _core.data.getGameData(GamePredef.TBL_PET,param1);
         }
      }
      
      public function __joinButton1_click(param1:MouseEvent) : void
      {
         petAdvancedJoin();
      }
      
      public function __bookButton_click(param1:MouseEvent) : void
      {
         petBook();
      }
      
      public function onJoin(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            if(param1.flag)
            {
               if(Boolean(petList) && Boolean(petList[param1.pid]))
               {
                  petList[param1.pid]["growRate"] = param1.grow;
                  _core.view.getUI(ViewManager.PANEL_PETMANAGER).updateView(param1.pid);
                  _core.view.getUI(ViewManager.PANEL_BAG).petInit();
                  joinMainPet.setStyleName(_core.basic.colorByGrowRate(param1.grow));
               }
               _core.sysMidNote(Language.PETFUNCPANEL_S[13]);
               _loc2_ = 1;
               while(_loc2_ <= 4)
               {
                  this["joinPet" + _loc2_].clean();
                  _loc2_++;
               }
               joinButton.enabled = true;
               setJoinInfo(null);
            }
            else
            {
               _core.sysMidNote(Language.PETFUNCPANEL_S[14]);
               joinViewClear();
               joinButton.enabled = true;
            }
         }
      }
      
      public function __starSafeItem_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(starSafeItem);
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      public function set showBag(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2067262411showBag;
         if(_loc2_ !== param1)
         {
            this._2067262411showBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xsdMaxText() : TextArea
      {
         return this._1185484712xsdMaxText;
      }
      
      public function putPet(param1:ItemSlot, param2:int) : void
      {
         var _loc3_:DragEvent = null;
         var _loc4_:DragSource = null;
         if(Boolean(param1) && param2 >= 0)
         {
            show();
            tabBtnClick(param2);
            _loc3_ = new DragEvent(DragEvent.DRAG_DROP);
            _loc4_ = new DragSource();
            _loc4_.addData(param1,"slot");
            _loc3_.dragSource = _loc4_;
            switch(param2)
            {
               case 0:
                  starPet.dispatchEvent(_loc3_);
                  break;
               case 1:
                  joinMainPet.dispatchEvent(_loc3_);
                  break;
               case 2:
                  xsdPet.dispatchEvent(_loc3_);
                  break;
               case 3:
               case 4:
                  break;
               case 5:
                  bookPet.dispatchEvent(_loc3_);
                  break;
               case 6:
                  mainPet.dispatchEvent(_loc3_);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xsdItem() : ItemSlotPetFunc
      {
         return this._1781714052xsdItem;
      }
      
      private function _refreshMainPetText() : void
      {
         var _loc1_:* = undefined;
         if(mainPet.slotData)
         {
            _loc1_ = mainPet.slotData;
            eatMainText.htmlText = Language.PETFUNCPANEL_S[45] + _loc1_.aptStrength + (_loc1_.aptStrengthEx >= 0 ? "+" + _loc1_.aptStrengthEx : "") + Language.PETFUNCPANEL_S[19] + _loc1_.aptAgility + (_loc1_.aptAgilityEx >= 0 ? "+" + _loc1_.aptAgilityEx : "") + Language.PETFUNCPANEL_S[20] + _loc1_.aptStamina + (_loc1_.aptStaminaEx >= 0 ? "+" + _loc1_.aptStaminaEx : "") + Language.PETFUNCPANEL_S[21] + _loc1_.aptIntelligence + (_loc1_.aptIntelligenceEx >= 0 ? "+" + _loc1_.aptIntelligenceEx : "") + Language.PETFUNCPANEL_S[22] + _loc1_.aptEnergy + (_loc1_.aptEnergyEx >= 0 ? "+" + _loc1_.aptEnergyEx : "");
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xsdPet() : ItemSlotPet
      {
         return this._750205034xsdPet;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      public function set pzxsdInfo(param1:Label) : void
      {
         var _loc2_:Object = this._183693363pzxsdInfo;
         if(_loc2_ !== param1)
         {
            this._183693363pzxsdInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pzxsdInfo",_loc2_,param1));
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
      
      public function onPzXsd(param1:Object) : void
      {
         var yesAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:* = undefined;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var data:Object = param1;
         if(data)
         {
            updatePet(data.p,data.t,data.num);
            if(ToolKit.isEqual(data.i,pzxsdItem.slotData.id))
            {
               if(ToolKit.isBigThan(data.n,0))
               {
                  pzxsdItem.stackNum = data.n;
               }
               else
               {
                  pzxsdItem.clean();
               }
            }
            setPzXsdInfo(null);
            if(data.f)
            {
               pzxsdButton.enabled = false;
               yesAlert = Alert.yesLabel;
               func = function(param1:CloseEvent):void
               {
                  Alert.yesLabel = yesAlert;
                  if(param1.detail == Alert.YES)
                  {
                     if(data.before < data.after)
                     {
                        pzxsdInfo.text = Language.PETFUNCPANEL_S[47];
                     }
                     else
                     {
                        pzxsdInfo.text = "";
                     }
                     pzxsdButton.enabled = true;
                  }
               };
               title = Language.PETFUNCPANEL_S[54];
               contentMsg = _showAlertMsg(Language.PETFUNCPANEL_S[53],title,data.before,data.after);
               msg = contentMsg.replace(/<font(.*?)>/g,"");
               msg = msg.replace(/<\/font>/g,"");
               msg = msg.replace(/<b>/g,"");
               msg = msg.replace(/<\/b>/g,"");
               if(data.before < data.after)
               {
                  Alert.yesLabel = Language.PETFUNCPANEL_S[50];
               }
               else
               {
                  Alert.yesLabel = Language.PETFUNCPANEL_S[51];
               }
               _alert = Alert.show(msg,"",Alert.YES,null,func);
               Alert.yesLabel = yesAlert;
               tf = _alert.mx_internal::alertForm.mx_internal::textField;
               tf.htmlText = contentMsg;
               tf.filters = GamePredef.FILTER_TEXT1;
            }
            else
            {
               pzxsdInfo.text = Language.PETFUNCPANEL_S[24];
               pzxsdButton.enabled = true;
            }
         }
         else
         {
            pzxsdButton.enabled = true;
         }
      }
      
      public function __joinMainPet_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(joinMainPet);
      }
      
      [Bindable(event="propertyChange")]
      public function get pTitle() : BasicTitleCanvas
      {
         return this._1007683640pTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBag() : BasicGlowButton
      {
         return this._2067262411showBag;
      }
      
      public function __luckItem_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(luckItem);
      }
      
      private function _PetFuncPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pTitle.text = param1;
         },"pTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Canvas1.label = param1;
         },"_PetFuncPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC2;
         },function(param1:Object):void
         {
            _PetFuncPanel_Image1.source = param1;
         },"_PetFuncPanel_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText1.htmlText = param1;
         },"_PetFuncPanel_IntroText1.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starButton.label = param1;
         },"starButton.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starClearButton.label = param1;
         },"starClearButton.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton1.label = param1;
         },"_PetFuncPanel_BasicTxtButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton2.label = param1;
         },"_PetFuncPanel_BasicTxtButton2.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton3.label = param1;
         },"_PetFuncPanel_BasicTxtButton3.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Canvas3.label = param1;
         },"_PetFuncPanel_Canvas3.label");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC1;
         },function(param1:Object):void
         {
            _PetFuncPanel_Image2.source = param1;
         },"_PetFuncPanel_Image2.source");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText2.htmlText = param1;
         },"_PetFuncPanel_IntroText2.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            joinButton.label = param1;
         },"joinButton.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            joinButton1.label = param1;
         },"joinButton1.label");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return seniorPetJoinEnable;
         },function(param1:Boolean):void
         {
            joinButton1.visible = param1;
         },"joinButton1.visible");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton4.label = param1;
         },"_PetFuncPanel_BasicTxtButton4.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton5.label = param1;
         },"_PetFuncPanel_BasicTxtButton5.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton6.label = param1;
         },"_PetFuncPanel_BasicTxtButton6.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Canvas5.label = param1;
         },"_PetFuncPanel_Canvas5.label");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC2;
         },function(param1:Object):void
         {
            _PetFuncPanel_Image3.source = param1;
         },"_PetFuncPanel_Image3.source");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText3.htmlText = param1;
         },"_PetFuncPanel_IntroText3.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            xsdButton.label = param1;
         },"xsdButton.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton7.label = param1;
         },"_PetFuncPanel_BasicTxtButton7.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton8.label = param1;
         },"_PetFuncPanel_BasicTxtButton8.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_DescriptionLabel1.text = param1;
         },"_PetFuncPanel_DescriptionLabel1.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Canvas7.label = param1;
         },"_PetFuncPanel_Canvas7.label");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC2;
         },function(param1:Object):void
         {
            _PetFuncPanel_Image4.source = param1;
         },"_PetFuncPanel_Image4.source");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText4.htmlText = param1;
         },"_PetFuncPanel_IntroText4.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            pzxsdButton.label = param1;
         },"pzxsdButton.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton9.label = param1;
         },"_PetFuncPanel_BasicTxtButton9.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton10.label = param1;
         },"_PetFuncPanel_BasicTxtButton10.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_DescriptionLabel2.text = param1;
         },"_PetFuncPanel_DescriptionLabel2.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Canvas9.label = param1;
         },"_PetFuncPanel_Canvas9.label");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC2;
         },function(param1:Object):void
         {
            _PetFuncPanel_Image5.source = param1;
         },"_PetFuncPanel_Image5.source");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText5.htmlText = param1;
         },"_PetFuncPanel_IntroText5.htmlText");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            xdButton.label = param1;
         },"xdButton.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_RoundedButton1.label = param1;
         },"_PetFuncPanel_RoundedButton1.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton11.label = param1;
         },"_PetFuncPanel_BasicTxtButton11.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton12.label = param1;
         },"_PetFuncPanel_BasicTxtButton12.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_DescriptionLabel3.text = param1;
         },"_PetFuncPanel_DescriptionLabel3.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Canvas11.label = param1;
         },"_PetFuncPanel_Canvas11.label");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC2;
         },function(param1:Object):void
         {
            _PetFuncPanel_Image6.source = param1;
         },"_PetFuncPanel_Image6.source");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText6.htmlText = param1;
         },"_PetFuncPanel_IntroText6.htmlText");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bookButton.label = param1;
         },"bookButton.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton13.label = param1;
         },"_PetFuncPanel_BasicTxtButton13.label");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton14.label = param1;
         },"_PetFuncPanel_BasicTxtButton14.label");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Canvas12.label = param1;
         },"_PetFuncPanel_Canvas12.label");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC2;
         },function(param1:Object):void
         {
            _PetFuncPanel_Image7.source = param1;
         },"_PetFuncPanel_Image7.source");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText7.htmlText = param1;
         },"_PetFuncPanel_IntroText7.htmlText");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton15.label = param1;
         },"_PetFuncPanel_BasicTxtButton15.label");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton16.label = param1;
         },"_PetFuncPanel_BasicTxtButton16.label");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicTxtButton17.label = param1;
         },"_PetFuncPanel_BasicTxtButton17.label");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_DescriptionLabel4.text = param1;
         },"_PetFuncPanel_DescriptionLabel4.text");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bookButton1.label = param1;
         },"bookButton1.label");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_S[57];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_IntroText8.htmlText = param1;
         },"_PetFuncPanel_IntroText8.htmlText");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Label7.text = param1;
         },"_PetFuncPanel_Label7.text");
         result[55] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetFuncPanel_Label7.filters = param1;
         },"_PetFuncPanel_Label7.filters");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_Label8.text = param1;
         },"_PetFuncPanel_Label8.text");
         result[57] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetFuncPanel_Label8.filters = param1;
         },"_PetFuncPanel_Label8.filters");
         result[58] = binding;
         binding = new Binding(this,function():Object
         {
            return new ArrayCollection(Language.PETFUNCPANEL_U[46]);
         },function(param1:Object):void
         {
            elementBox.dataProvider = param1;
         },"elementBox.dataProvider");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            elementCost.text = param1;
         },"elementCost.text");
         result[60] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            elementCost.filters = param1;
         },"elementCost.filters");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetFuncPanel_BasicGlowButton9.label = param1;
         },"_PetFuncPanel_BasicGlowButton9.label");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[63] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn0.filters = param1;
         },"tabBtn0.filters");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[65] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn1.filters = param1;
         },"tabBtn1.filters");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[67] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn2.filters = param1;
         },"tabBtn2.filters");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[69] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn3.filters = param1;
         },"tabBtn3.filters");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[71] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn4.filters = param1;
         },"tabBtn4.filters");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn5.label = param1;
         },"tabBtn5.label");
         result[73] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn5.filters = param1;
         },"tabBtn5.filters");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn6.label = param1;
         },"tabBtn6.label");
         result[75] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn6.filters = param1;
         },"tabBtn6.filters");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFUNCPANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn7.label = param1;
         },"tabBtn7.label");
         result[77] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tabBtn7.filters = param1;
         },"tabBtn7.filters");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EQUIPTFUNCPANEL_S[97];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showBag.toolTip = param1;
         },"showBag.toolTip");
         result[79] = binding;
         return result;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         petList = _core.player.petList;
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.addItem({
            "type":-1,
            "label":Language.PETFUNCPANEL_U[28]
         });
         _loc1_.addItem({
            "type":1,
            "label":Language.PETPANEL_U[12]
         });
         _loc1_.addItem({
            "type":2,
            "label":Language.PETPANEL_U[13]
         });
         _loc1_.addItem({
            "type":3,
            "label":Language.PETPANEL_U[14]
         });
         _loc1_.addItem({
            "type":4,
            "label":Language.PETPANEL_U[15]
         });
         _loc1_.addItem({
            "type":5,
            "label":Language.PETPANEL_U[16]
         });
         aptType.dataProvider = _loc1_;
      }
      
      private function checkPetBind(param1:Object) : Boolean
      {
         var _loc3_:Object = null;
         if(param1.main.binded == 1)
         {
            return true;
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 4)
         {
            if(param1["pet" + _loc2_])
            {
               _loc3_ = param1["pet" + _loc2_];
               if(_loc3_.binded == 1)
               {
                  return true;
               }
            }
            _loc2_++;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get pzxsdInfo() : Label
      {
         return this._183693363pzxsdInfo;
      }
      
      private function xsdViewClear() : void
      {
         xsdPet.clean();
         xsdItem.clean();
         xsdInfo.htmlText = "";
         xsdText.htmlText = "";
         xsdMaxText.htmlText = "";
      }
      
      public function __tabBtn6_click(param1:MouseEvent) : void
      {
         tabBtnClick(6);
      }
      
      public function set eatMainText(param1:TextArea) : void
      {
         var _loc2_:Object = this._2140516866eatMainText;
         if(_loc2_ !== param1)
         {
            this._2140516866eatMainText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eatMainText",_loc2_,param1));
         }
      }
   }
}

