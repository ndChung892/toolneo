package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.comp.TalentSlot;
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
   import mx.containers.HBox;
   import mx.containers.Tile;
   import mx.containers.ViewStack;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetTalentFuncPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var itemLen:Number = 0;
      
      private var _802861224delSlot1:TalentSlot;
      
      private var _249806821upSlot4:TalentSlot;
      
      private var _109532659slot1:TalentSlot;
      
      private var _951264094rSlot2:TalentSlot;
      
      private var _899454782slot26:TalentSlot;
      
      private var maxPage:uint = 1;
      
      private var _3773vs:ViewStack;
      
      private var _109532667slot9:TalentSlot;
      
      private var _398266427checkItem:CheckBox;
      
      private var _899454813slot16:TalentSlot;
      
      private var _320271553btnLastPage:Button;
      
      public var _PetTalentFuncPanel_Canvas1:Canvas;
      
      private var _133022078firstTile:Tile;
      
      private var _109532664slot6:TalentSlot;
      
      private var _1229795408txtPageIndicator:TextInput;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _899454787slot21:TalentSlot;
      
      private var _109532661slot3:TalentSlot;
      
      private var _899454810slot19:TalentSlot;
      
      private var _899454818slot11:TalentSlot;
      
      private var itemAC:Object = new Object();
      
      private var _core:Core = Core.getInstance();
      
      private var TAL_UP_PLAN_ITEM:Object = {
         1:4181,
         2:4181,
         3:4181,
         4:4181
      };
      
      private var _click:Number = 0;
      
      private var _899454784slot24:TalentSlot;
      
      private var _899454815slot14:TalentSlot;
      
      private var _249806824upSlot1:TalentSlot;
      
      private var TAL_UP_PLAN_ITEM_NUM:Object = {
         1:1,
         2:3,
         3:15,
         4:50
      };
      
      private var _1717904490talentMixNum:NumericStepper;
      
      private var _1540805694tbPoint:Label;
      
      private var _1468352367_point:Number = 0;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      public var _PetTalentFuncPanel_Label3:Label;
      
      private var _3119c2:Canvas;
      
      private var _899454781slot27:TalentSlot;
      
      private var _109532665slot7:TalentSlot;
      
      private var _899454812slot17:TalentSlot;
      
      private var _249806822upSlot3:TalentSlot;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _109532662slot4:TalentSlot;
      
      private var _firstLoadCid:Number = 0;
      
      private var _3118c1:Canvas;
      
      private var _899454786slot22:TalentSlot;
      
      public var _PetTalentFuncPanel_IntroText1:IntroText;
      
      private var _899454817slot12:TalentSlot;
      
      private var _249806820upSlot5:TalentSlot;
      
      private var countPerPage:uint = 28;
      
      public var _PetTalentFuncPanel_Image1:Image;
      
      public var _PetTalentFuncPanel_Image3:Image;
      
      public var _PetTalentFuncPanel_Image2:Image;
      
      private var _951264095rSlot1:TalentSlot;
      
      private var _899454783slot25:TalentSlot;
      
      private var _899454814slot15:TalentSlot;
      
      private var _3120c3:Canvas;
      
      private var _changed:Boolean = false;
      
      private var _109532666slot8:TalentSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _899454780slot28:TalentSlot;
      
      private var _109532663slot5:TalentSlot;
      
      public var _PetTalentFuncPanel_BasicDelayButton1:BasicDelayButton;
      
      public var _PetTalentFuncPanel_BasicDelayButton2:BasicDelayButton;
      
      public var _PetTalentFuncPanel_BasicDelayButton3:BasicDelayButton;
      
      private var _899454819slot10:TalentSlot;
      
      private var _899454811slot18:TalentSlot;
      
      private var _1090881890btnNextPage:Button;
      
      private var _isLoadInfo:Boolean = false;
      
      private var _899454788slot20:TalentSlot;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var itemPageNo:uint = 1;
      
      private var _109532660slot2:TalentSlot;
      
      public var _PetTalentFuncPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1863324753bangBtn3:DelayButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _256612071upLabel:Label;
      
      private var _899454785slot23:TalentSlot;
      
      private var _249806823upSlot2:TalentSlot;
      
      private var _899454816slot13:TalentSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":442,
               "height":385,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetTalentFuncPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":253,
                        "y":60,
                        "width":175,
                        "height":315,
                        "styleName":"CanvasBorder",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_PetTalentFuncPanel_Canvas1",
                           "stylesFactory":function():void
                           {
                              this.top = "3";
                              this.bottom = "10";
                              this.left = "4.5";
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Tile,
                                    "id":"firstTile",
                                    "stylesFactory":function():void
                                    {
                                       this.verticalGap = 4;
                                       this.horizontalGap = 3;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":160.5,
                                          "height":277,
                                          "direction":"horizontal",
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "styleName":"TileSlot",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot13",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot14",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot15",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot16",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot26",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot27",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TalentSlot,
                                             "id":"slot28",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":34,
                                                   "height":34,
                                                   "acceptable":true,
                                                   "iconWidth":34,
                                                   "iconHeight":34
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.verticalAlign = "middle";
                                       this.horizontalGap = 5;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":276,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"btnLastPage",
                                             "events":{"click":"__btnLastPage_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"LastPage",
                                                   "autoRepeat":true,
                                                   "width":45,
                                                   "useHandCursor":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextInput,
                                             "id":"txtPageIndicator",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "center";
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"PageNoIndicator",
                                                   "width":50,
                                                   "height":16,
                                                   "text":"0",
                                                   "y":2.5,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "id":"btnNextPage",
                                             "events":{"click":"__btnNextPage_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"NextPage",
                                                   "autoRepeat":true,
                                                   "width":45,
                                                   "useHandCursor":true,
                                                   "y":0
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
                     this.horizontalGap = 1;
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":20,
                        "width":339,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn0",
                           "events":{"click":"__bangBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "labelPlacement":"bottom",
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn1",
                           "events":{"click":"__bangBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"bangBtn2",
                           "events":{"click":"__bangBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":100
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vs",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":60,
                        "width":235,
                        "height":170,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"c1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "x":33,
                                 "y":2,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetTalentFuncPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":185,
                                          "height":105,
                                          "x":25,
                                          "y":10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"upSlot2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":60002,
                                          "movable":false,
                                          "acceptable":true,
                                          "showStackNum":false,
                                          "x":35,
                                          "y":41
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"upSlot1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":60001,
                                          "movable":false,
                                          "acceptable":true,
                                          "showStackNum":false,
                                          "x":100.5,
                                          "y":26
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"upSlot3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":60003,
                                          "movable":false,
                                          "acceptable":true,
                                          "showStackNum":false,
                                          "x":137.5,
                                          "y":83
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"upSlot4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":60004,
                                          "movable":false,
                                          "acceptable":true,
                                          "showStackNum":false,
                                          "x":62,
                                          "y":83
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"upSlot5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":60005,
                                          "movable":false,
                                          "acceptable":true,
                                          "showStackNum":false,
                                          "x":166,
                                          "y":41
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"checkItem",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":119,
                                          "label":"Checkbox",
                                          "width":200
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"upLabel",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":142,
                                          "text":"Label",
                                          "width":96.2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_PetTalentFuncPanel_BasicDelayButton1",
                                    "events":{"click":"___PetTalentFuncPanel_BasicDelayButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":132,
                                          "y":141
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"c2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "x":33,
                                 "y":2,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetTalentFuncPanel_Image2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":185,
                                          "height":105,
                                          "x":25,
                                          "y":10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"rSlot1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":70001,
                                          "movable":false,
                                          "acceptable":true,
                                          "showStackNum":false,
                                          "x":100.5,
                                          "y":26
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"rSlot2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":70002,
                                          "movable":false,
                                          "acceptable":true,
                                          "showStackNum":false,
                                          "x":100.5,
                                          "y":82
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_PetTalentFuncPanel_BasicDelayButton2",
                                    "events":{"click":"___PetTalentFuncPanel_BasicDelayButton2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":142,
                                          "y":138
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"c3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "x":33,
                                 "y":2,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PetTalentFuncPanel_Image3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":185,
                                          "height":105,
                                          "x":25,
                                          "y":10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TalentSlot,
                                    "id":"delSlot1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":34,
                                          "height":34,
                                          "sid":80001,
                                          "movable":false,
                                          "acceptable":true,
                                          "x":100.5,
                                          "y":26
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"talentMixNum",
                                    "events":{"change":"__talentMixNum_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":136,
                                          "minimum":1,
                                          "maximum":999,
                                          "x":63,
                                          "value":1
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_PetTalentFuncPanel_BasicDelayButton3",
                                    "events":{"click":"___PetTalentFuncPanel_BasicDelayButton3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":142,
                                          "y":138
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"tbPoint",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":63,
                                          "y":85,
                                          "text":"Label",
                                          "width":147
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetTalentFuncPanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":63,
                                          "y":105,
                                          "width":147
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"_PetTalentFuncPanel_IntroText1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "width":233,
                        "height":135,
                        "x":15,
                        "y":238
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"bangBtn3",
                  "events":{"click":"__bangBtn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":5000,
                        "styleName":"HorizontalTab",
                        "x":356,
                        "y":40
                     };
                  }
               })]
            };
         }
      });
      
      private var max_slot:uint = 320;
      
      public function PetTalentFuncPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 442;
         this.height = 385;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetTalentFuncPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot7() : TalentSlot
      {
         return this._109532665slot7;
      }
      
      public function set slot7(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532665slot7;
         if(_loc2_ !== param1)
         {
            this._109532665slot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot7",_loc2_,param1));
         }
      }
      
      public function set slot8(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532666slot8;
         if(_loc2_ !== param1)
         {
            this._109532666slot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot8",_loc2_,param1));
         }
      }
      
      public function set slot9(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532667slot9;
         if(_loc2_ !== param1)
         {
            this._109532667slot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot8() : TalentSlot
      {
         return this._109532666slot8;
      }
      
      [Bindable(event="propertyChange")]
      public function get upSlot1() : TalentSlot
      {
         return this._249806824upSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get upSlot4() : TalentSlot
      {
         return this._249806821upSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get upSlot2() : TalentSlot
      {
         return this._249806823upSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get upSlot3() : TalentSlot
      {
         return this._249806822upSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get c2() : Canvas
      {
         return this._3119c2;
      }
      
      [Bindable(event="propertyChange")]
      public function get c3() : Canvas
      {
         return this._3120c3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot9() : TalentSlot
      {
         return this._109532667slot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get c1() : Canvas
      {
         return this._3118c1;
      }
      
      public function set upSlot4(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._249806821upSlot4;
         if(_loc2_ !== param1)
         {
            this._249806821upSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upSlot4",_loc2_,param1));
         }
      }
      
      public function set upSlot1(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._249806824upSlot1;
         if(_loc2_ !== param1)
         {
            this._249806824upSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upSlot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkItem() : CheckBox
      {
         return this._398266427checkItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get upSlot5() : TalentSlot
      {
         return this._249806820upSlot5;
      }
      
      public function set upSlot5(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._249806820upSlot5;
         if(_loc2_ !== param1)
         {
            this._249806820upSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upSlot5",_loc2_,param1));
         }
      }
      
      public function set upSlot3(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._249806822upSlot3;
         if(_loc2_ !== param1)
         {
            this._249806822upSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upSlot3",_loc2_,param1));
         }
      }
      
      private function _PetTalentFuncPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TALENT_PANEL_FUNC_U[0];
         _loc1_ = Language.BANKPANEL_S[2];
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Language.PAGE_SELECTOR[0];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.PAGE_SELECTOR[1];
         _loc1_ = Language.TALENT_PANEL_FUNC_U[1];
         _loc1_ = Language.TALENT_PANEL_FUNC_U[2];
         _loc1_ = Language.TALENT_PANEL_FUNC_U[3];
         _loc1_ = ResManager.getIconUrl(4130220000344);
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Language.TALENT_PANEL_FUNC_U[1];
         _loc1_ = ResManager.getIconUrl(4130220000344);
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Language.TALENT_PANEL_FUNC_U[2];
         _loc1_ = ResManager.getIconUrl(4130220000344);
         _loc1_ = Slot.SLOT_TALENT;
         _loc1_ = Language.TALENT_PANEL_FUNC_U[3];
         _loc1_ = Language.TALENT_PANEL_FUNC_U[11] + "" + _point;
         _loc1_ = Language.TALENT_PANEL_FUNC_U[24];
         _loc1_ = Language.TALENT_PANEL_FUNC_U[9];
      }
      
      public function updatePoint() : void
      {
         if(initialized)
         {
            _point = _core.player.pvePoint ? _core.player.pvePoint : 0;
         }
      }
      
      public function ___PetTalentFuncPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         resetTalentSlot();
      }
      
      private function dataChangeChange() : void
      {
         var _loc1_:* = undefined;
         if(delSlot1.slotData)
         {
            _loc1_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][delSlot1.giid];
            if(Boolean(_loc1_) && Boolean(_loc1_.exp))
            {
               tbPoint.text = Language.TALENT_PANEL_FUNC_U[10].replace("{num}",_loc1_.exp * talentMixNum.value);
            }
         }
      }
      
      public function cleanFuncSlot() : void
      {
         var _loc1_:int = 0;
         if(!initialized)
         {
            return;
         }
         _loc1_ = 1;
         while(_loc1_ <= 5)
         {
            this["upSlot" + _loc1_].reset();
            this["upSlot" + _loc1_].slotData = null;
            this["upSlot" + _loc1_].csid = 0;
            _loc1_++;
         }
         _loc1_ = 1;
         while(_loc1_ <= 2)
         {
            this["rSlot" + _loc1_].reset();
            this["rSlot" + _loc1_].slotData = null;
            this["rSlot" + _loc1_].csid = 0;
            _loc1_++;
         }
         this["delSlot1"].reset();
         this["delSlot1"].slotData = null;
         this["delSlot1"].csid = 0;
         tbPoint.text = Language.TALENT_PANEL_FUNC_U[10].replace("{num}","");
         checkItem.label = Language.TALENT_PANEL_FUNC_U[12].replace("{name}",Language.TALENT_PANEL_FUNC_U[14]);
         upLabel.text = Language.TALENT_PANEL_FUNC_U[13].replace("{num}","0");
      }
      
      public function set upLabel(param1:Label) : void
      {
         var _loc2_:Object = this._256612071upLabel;
         if(_loc2_ !== param1)
         {
            this._256612071upLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upLabel",_loc2_,param1));
         }
      }
      
      public function onUpdateTalentData(param1:Object) : void
      {
         _updateTalentData(param1);
      }
      
      public function set upSlot2(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._249806823upSlot2;
         if(_loc2_ !== param1)
         {
            this._249806823upSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upSlot2",_loc2_,param1));
         }
      }
      
      private function checkSameTypeAndLvTalentStone(param1:*, param2:*) : Boolean
      {
         if(Boolean(param1 && param2) && Boolean(ToolKit.isEqual(Math.ceil(param1.sid / 10000),Math.ceil(param2.sid / 10000))) && ToolKit.isEqual(param1.lv,param2.lv))
         {
            return true;
         }
         return false;
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeOperationView(1);
      }
      
      public function set c3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3120c3;
         if(_loc2_ !== param1)
         {
            this._3120c3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c3",_loc2_,param1));
         }
      }
      
      private function onBreakTalentStone(param1:Object) : void
      {
         if(param1)
         {
            cleanFuncSlot();
            _updateTalentData(param1);
            _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[8]);
         }
      }
      
      public function set c1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3118c1;
         if(_loc2_ !== param1)
         {
            this._3118c1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c1",_loc2_,param1));
         }
      }
      
      public function set c2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3119c2;
         if(_loc2_ !== param1)
         {
            this._3119c2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c2",_loc2_,param1));
         }
      }
      
      public function set checkItem(param1:CheckBox) : void
      {
         var _loc2_:Object = this._398266427checkItem;
         if(_loc2_ !== param1)
         {
            this._398266427checkItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkItem",_loc2_,param1));
         }
      }
      
      private function updateBagNum(param1:Number) : void
      {
         if(!initialized)
         {
            return;
         }
         if(param1 > itemLen && param1 <= max_slot)
         {
            itemLen = param1;
            initTalentInfo();
         }
      }
      
      private function upStone() : void
      {
         var _loc8_:* = undefined;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Number = NaN;
         var _loc12_:String = null;
         var _loc1_:Number = 0;
         var _loc2_:* = "";
         var _loc3_:* = "";
         var _loc4_:Object = null;
         var _loc5_:Number = 0;
         var _loc6_:Object = new Object();
         var _loc7_:* = 1;
         while(_loc7_ <= 5)
         {
            if(Boolean(ToolKit.isBigThan(this["upSlot" + _loc7_].csid,0)) && Boolean(this["upSlot" + _loc7_].slotData) && Boolean(this["upSlot" + _loc7_].giid))
            {
               _loc1_++;
               if(_loc1_ != 5)
               {
                  _loc3_ = _loc3_ + this["upSlot" + _loc7_].csid + "|";
                  _loc2_ = _loc2_ + this["upSlot" + _loc7_].giid + "|";
               }
               else
               {
                  _loc3_ += this["upSlot" + _loc7_].csid;
                  _loc2_ += this["upSlot" + _loc7_].giid;
               }
               if(_loc1_ > 1 && !checkSameTypeAndLvTalentStone(_core.data.gameData[GamePredef.TBL_PET_TALENT][this["upSlot" + _loc7_].giid],_loc4_))
               {
                  _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[16]);
                  return;
               }
               _loc4_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][this["upSlot" + _loc7_].giid];
               if(!_loc6_[this["upSlot" + _loc7_].csid])
               {
                  _loc6_[this["upSlot" + _loc7_].csid] = 1;
               }
               else
               {
                  ++_loc6_[this["upSlot" + _loc7_].csid];
               }
               _loc5_ = Number(_loc4_.lv);
            }
            _loc7_++;
         }
         if(_loc1_ == 5)
         {
            if(checkItem.selected)
            {
               _loc9_ = _core.hasItemNum(29,TAL_UP_PLAN_ITEM[_loc5_]);
               _loc10_ = _core.hasItemNum(28,TAL_UP_PLAN_ITEM[_loc5_]);
               _loc11_ = ToolKit.add(_loc9_,_loc10_);
               if(_loc11_ < TAL_UP_PLAN_ITEM_NUM[_loc5_])
               {
                  _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[18]);
                  return;
               }
            }
            for(_loc8_ in _loc6_)
            {
               if(!(Boolean(_core.player.petTalentData.b) && Boolean(_core.player.petTalentData.b[_loc8_]) && Boolean(_loc6_[_loc8_]) && ToolKit.isSmallOrEqual(_loc6_[_loc8_],_core.player.petTalentData.b[_loc8_].n)))
               {
                  _loc12_ = Language.TALENT_PANEL_FUNC_U[23].replace("{num}",Math.floor(_loc8_ % countPerPage));
                  _core.sysMidNote(_loc12_);
                  return;
               }
            }
            _core.remote.call("upTalentStone",new Responder(onUpTalentStone),_loc3_,_loc2_,checkItem.selected);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _point() : Number
      {
         return this._1468352367_point;
      }
      
      public function __talentMixNum_change(param1:NumericStepperEvent) : void
      {
         dataChangeChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot10() : TalentSlot
      {
         return this._899454819slot10;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnNextPage() : Button
      {
         return this._1090881890btnNextPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot12() : TalentSlot
      {
         return this._899454817slot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get rSlot1() : TalentSlot
      {
         return this._951264095rSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rSlot2() : TalentSlot
      {
         return this._951264094rSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot11() : TalentSlot
      {
         return this._899454818slot11;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot13() : TalentSlot
      {
         return this._899454816slot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get delSlot1() : TalentSlot
      {
         return this._802861224delSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot15() : TalentSlot
      {
         return this._899454814slot15;
      }
      
      public function __btnLastPage_click(param1:MouseEvent) : void
      {
         goto(-1);
      }
      
      [Bindable(event="propertyChange")]
      public function get slot17() : TalentSlot
      {
         return this._899454812slot17;
      }
      
      public function onInitTalentBag() : void
      {
         if(_core.player.petTalentData)
         {
            txtPageIndicator.text = "1/1";
            maxPage = Math.ceil(itemLen / countPerPage);
            if(!maxPage || maxPage == 0)
            {
               maxPage = 1;
            }
            if(ToolKit.isBigThan(itemPageNo,maxPage))
            {
               itemPageNo = 1;
            }
            txtPageIndicator.text = itemPageNo + "/" + maxPage;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot14() : TalentSlot
      {
         return this._899454815slot14;
      }
      
      public function onResetTalentBag(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(Boolean(param1) && Boolean(_core.player.petTalentData))
         {
            _core.player.petTalentData.b = new Object();
            for(_loc2_ in param1)
            {
               if(Boolean(param1[_loc2_]) && ToolKit.isSmallOrEqual(_loc2_,max_slot))
               {
                  _core.player.petTalentData.b[_loc2_] = new Object();
                  _core.player.petTalentData.b[_loc2_] = param1[_loc2_];
               }
            }
            onInitTalentFuncPanelData(_core.player.petTalentData);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot18() : TalentSlot
      {
         return this._899454811slot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot19() : TalentSlot
      {
         return this._899454810slot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot16() : TalentSlot
      {
         return this._899454813slot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot20() : TalentSlot
      {
         return this._899454788slot20;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot21() : TalentSlot
      {
         return this._899454787slot21;
      }
      
      private function _updateTalentData(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = undefined;
         if(param1)
         {
            if(!_core.player.petTalentData)
            {
               _core.player.petTalentData = new Object();
            }
            _loc2_ = false;
            if(param1.a)
            {
               if(!_core.player.petTalentData.b)
               {
                  _core.player.petTalentData.b = new Object();
               }
               for(_loc3_ in param1.a)
               {
                  if(param1.a[_loc3_])
                  {
                     if(!_core.player.petTalentData.b[_loc3_])
                     {
                        _core.player.petTalentData.b[_loc3_] = new Object();
                     }
                     _core.player.petTalentData.b[_loc3_].t = param1.a[_loc3_].tid;
                     _core.player.petTalentData.b[_loc3_].n = param1.a[_loc3_].ln;
                     if(initialized)
                     {
                        updateBagNum(_loc3_);
                        updateOneTalentBag(_core.player.petTalentData.b[_loc3_],_loc3_);
                        if(!_loc2_ && ToolKit.isBigThan(_loc3_,ToolKit.minus(itemPageNo,1) * countPerPage) && ToolKit.isSmallOrEqual(_loc3_,itemPageNo * countPerPage))
                        {
                           _loc2_ = true;
                        }
                     }
                  }
               }
            }
            if(param1.d)
            {
               for(_loc3_ in param1.d)
               {
                  if(param1.d[_loc3_])
                  {
                     if(ToolKit.isSmallOrEqual(param1.d[_loc3_].ln,0))
                     {
                        delete _core.player.petTalentData.b[_loc3_];
                        if(initialized && Boolean(itemAC[_loc3_]))
                        {
                           delete itemAC[_loc3_];
                        }
                     }
                     else
                     {
                        _core.player.petTalentData.b[_loc3_].n = param1.d[_loc3_].ln;
                        if(initialized)
                        {
                           updateOneTalentBag(_core.player.petTalentData.b[_loc3_],_loc3_);
                        }
                     }
                     if(initialized)
                     {
                        if(!_loc2_ && ToolKit.isBigThan(_loc3_,ToolKit.minus(itemPageNo,1) * countPerPage) && ToolKit.isSmallOrEqual(_loc3_,itemPageNo * countPerPage))
                        {
                           _loc2_ = true;
                        }
                     }
                  }
               }
            }
            if(_loc2_)
            {
               updateView();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot23() : TalentSlot
      {
         return this._899454785slot23;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot24() : TalentSlot
      {
         return this._899454784slot24;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot26() : TalentSlot
      {
         return this._899454782slot26;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot27() : TalentSlot
      {
         return this._899454781slot27;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot28() : TalentSlot
      {
         return this._899454780slot28;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot22() : TalentSlot
      {
         return this._899454786slot22;
      }
      
      public function __btnNextPage_click(param1:MouseEvent) : void
      {
         goto(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLastPage() : Button
      {
         return this._320271553btnLastPage;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot25() : TalentSlot
      {
         return this._899454783slot25;
      }
      
      private function checkData() : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.id) && _core.player.id != _firstLoadCid)
         {
            cleanFuncSlot();
         }
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         resetTalentBag();
      }
      
      private function changeOperationView(param1:int) : void
      {
         vs.selectedIndex = param1;
         var _loc2_:* = 0;
         while(_loc2_ <= 2)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
      }
      
      private function resetTalentBag() : void
      {
         _core.remote.call("arrangeTalentBag",new Responder(onResetTalentBag));
      }
      
      private function initTalentInfo() : void
      {
         txtPageIndicator.text = "1/1";
         maxPage = Math.ceil(itemLen / countPerPage);
         if(!maxPage || maxPage == 0)
         {
            maxPage = 1;
         }
         if(ToolKit.isBigThan(itemPageNo,maxPage))
         {
            itemPageNo = 1;
         }
         txtPageIndicator.text = itemPageNo + "/" + maxPage;
      }
      
      public function set firstTile(param1:Tile) : void
      {
         var _loc2_:Object = this._133022078firstTile;
         if(_loc2_ !== param1)
         {
            this._133022078firstTile = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstTile",_loc2_,param1));
         }
      }
      
      public function ___PetTalentFuncPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         upStone();
      }
      
      private function updateView() : void
      {
         var _loc3_:Number = NaN;
         if(!initialized)
         {
            return;
         }
         var _loc1_:* = ToolKit.minus(itemPageNo,1);
         var _loc2_:int = 1;
         while(_loc2_ <= countPerPage)
         {
            this["slot" + _loc2_].reset();
            this["slot" + _loc2_].slotData = null;
            this["slot" + _loc2_].sid = ToolKit.add(_loc1_ * countPerPage,_loc2_);
            _loc3_ = ToolKit.add(_loc1_ * countPerPage,_loc2_);
            if(Boolean(itemAC[_loc3_]) && Boolean(itemAC[_loc3_].ti) && Boolean(itemAC[_loc3_].ii) && Boolean(itemAC[_loc3_].n))
            {
               this["slot" + _loc2_].type = itemAC[_loc3_].ti;
               this["slot" + _loc2_].giid = itemAC[_loc3_].ii;
               this["slot" + _loc2_].stackNum = itemAC[_loc3_].n;
               this["slot" + _loc2_].quality = itemAC[_loc3_].q;
               this["slot" + _loc2_].slotData = itemAC[_loc3_];
            }
            _loc2_++;
         }
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeOperationView(0);
      }
      
      private function delStone() : void
      {
         if(Boolean(this["delSlot1"]) && Boolean(this["delSlot1"].slotData) && Boolean(this["delSlot1"].giid))
         {
            if(Number(talentMixNum.value) > Number(this.delSlot1.slotData.stackNum) || Number(talentMixNum.value) <= 0)
            {
               return;
            }
            _core.remote.call("breakTalentStone",new Responder(onBreakTalentStone),this["delSlot1"].csid,this["delSlot1"].giid,talentMixNum.value);
         }
      }
      
      private function updateOneTalentBag(param1:Object, param2:Number) : void
      {
         if(!initialized)
         {
            return;
         }
         if(!param1)
         {
            return;
         }
         if(!itemAC)
         {
            itemAC = new Object();
         }
         if(!itemAC[param2])
         {
            itemAC[param2] = new Object();
            itemAC[param2].ti = GamePredef.TBL_PET_TALENT;
            itemAC[param2].q = 0;
            itemAC[param2].index = param2;
         }
         itemAC[param2].ii = _core.player.petTalentData.b[param2].t;
         itemAC[param2].n = _core.player.petTalentData.b[param2].n;
         updateBagNum(ToolKit.add(param2,1));
      }
      
      [Bindable(event="propertyChange")]
      public function get upLabel() : Label
      {
         return this._256612071upLabel;
      }
      
      private function set _point(param1:Number) : void
      {
         var _loc2_:Object = this._1468352367_point;
         if(_loc2_ !== param1)
         {
            this._1468352367_point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_point",_loc2_,param1));
         }
      }
      
      public function showFuncPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set btnNextPage(param1:Button) : void
      {
         var _loc2_:Object = this._1090881890btnNextPage;
         if(_loc2_ !== param1)
         {
            this._1090881890btnNextPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnNextPage",_loc2_,param1));
         }
      }
      
      private function _PetTalentFuncPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentFuncPanel_BasicTitleCanvas1.text = param1;
         },"_PetTalentFuncPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BANKPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentFuncPanel_Canvas1.label = param1;
         },"_PetTalentFuncPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot1.slotType = param1;
         },"slot1.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot2.slotType = param1;
         },"slot2.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot3.slotType = param1;
         },"slot3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot4.slotType = param1;
         },"slot4.slotType");
         result[5] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot5.slotType = param1;
         },"slot5.slotType");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot6.slotType = param1;
         },"slot6.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot7.slotType = param1;
         },"slot7.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot8.slotType = param1;
         },"slot8.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot9.slotType = param1;
         },"slot9.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot10.slotType = param1;
         },"slot10.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot11.slotType = param1;
         },"slot11.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot12.slotType = param1;
         },"slot12.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot13.slotType = param1;
         },"slot13.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot14.slotType = param1;
         },"slot14.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot15.slotType = param1;
         },"slot15.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot16.slotType = param1;
         },"slot16.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot17.slotType = param1;
         },"slot17.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot18.slotType = param1;
         },"slot18.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot19.slotType = param1;
         },"slot19.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot20.slotType = param1;
         },"slot20.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot21.slotType = param1;
         },"slot21.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot22.slotType = param1;
         },"slot22.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot23.slotType = param1;
         },"slot23.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot24.slotType = param1;
         },"slot24.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot25.slotType = param1;
         },"slot25.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot26.slotType = param1;
         },"slot26.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot27.slotType = param1;
         },"slot27.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            slot28.slotType = param1;
         },"slot28.slotType");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PAGE_SELECTOR[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnLastPage.label = param1;
         },"btnLastPage.label");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            txtPageIndicator.filters = param1;
         },"txtPageIndicator.filters");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PAGE_SELECTOR[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnNextPage.label = param1;
         },"btnNextPage.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000344);
         },function(param1:Object):void
         {
            _PetTalentFuncPanel_Image1.source = param1;
         },"_PetTalentFuncPanel_Image1.source");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            upSlot2.slotType = param1;
         },"upSlot2.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            upSlot1.slotType = param1;
         },"upSlot1.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            upSlot3.slotType = param1;
         },"upSlot3.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            upSlot4.slotType = param1;
         },"upSlot4.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            upSlot5.slotType = param1;
         },"upSlot5.slotType");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentFuncPanel_BasicDelayButton1.label = param1;
         },"_PetTalentFuncPanel_BasicDelayButton1.label");
         result[42] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000344);
         },function(param1:Object):void
         {
            _PetTalentFuncPanel_Image2.source = param1;
         },"_PetTalentFuncPanel_Image2.source");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            rSlot1.slotType = param1;
         },"rSlot1.slotType");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            rSlot2.slotType = param1;
         },"rSlot2.slotType");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentFuncPanel_BasicDelayButton2.label = param1;
         },"_PetTalentFuncPanel_BasicDelayButton2.label");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000344);
         },function(param1:Object):void
         {
            _PetTalentFuncPanel_Image3.source = param1;
         },"_PetTalentFuncPanel_Image3.source");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TALENT;
         },function(param1:int):void
         {
            delSlot1.slotType = param1;
         },"delSlot1.slotType");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentFuncPanel_BasicDelayButton3.label = param1;
         },"_PetTalentFuncPanel_BasicDelayButton3.label");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[11] + "" + _point;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentFuncPanel_Label3.text = param1;
         },"_PetTalentFuncPanel_Label3.text");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetTalentFuncPanel_IntroText1.text = param1;
         },"_PetTalentFuncPanel_IntroText1.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_PANEL_FUNC_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[52] = binding;
         return result;
      }
      
      public function set slot12(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454817slot12;
         if(_loc2_ !== param1)
         {
            this._899454817slot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot12",_loc2_,param1));
         }
      }
      
      public function set slot13(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454816slot13;
         if(_loc2_ !== param1)
         {
            this._899454816slot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot13",_loc2_,param1));
         }
      }
      
      public function set rSlot2(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._951264094rSlot2;
         if(_loc2_ !== param1)
         {
            this._951264094rSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rSlot2",_loc2_,param1));
         }
      }
      
      public function set slot19(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454810slot19;
         if(_loc2_ !== param1)
         {
            this._899454810slot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot19",_loc2_,param1));
         }
      }
      
      public function set talentMixNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1717904490talentMixNum;
         if(_loc2_ !== param1)
         {
            this._1717904490talentMixNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"talentMixNum",_loc2_,param1));
         }
      }
      
      public function set slot17(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454812slot17;
         if(_loc2_ !== param1)
         {
            this._899454812slot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot17",_loc2_,param1));
         }
      }
      
      public function set delSlot1(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._802861224delSlot1;
         if(_loc2_ !== param1)
         {
            this._802861224delSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delSlot1",_loc2_,param1));
         }
      }
      
      public function set rSlot1(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._951264095rSlot1;
         if(_loc2_ !== param1)
         {
            this._951264095rSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rSlot1",_loc2_,param1));
         }
      }
      
      public function set slot11(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454818slot11;
         if(_loc2_ !== param1)
         {
            this._899454818slot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot11",_loc2_,param1));
         }
      }
      
      public function set bangBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324755bangBtn1;
         if(_loc2_ !== param1)
         {
            this._1863324755bangBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn1",_loc2_,param1));
         }
      }
      
      private function setTalentBag(param1:Object) : void
      {
         var _loc2_:* = undefined;
         itemAC = new Object();
         itemLen = 0;
         if(!param1)
         {
            return;
         }
         for(_loc2_ in param1)
         {
            if(param1[_loc2_])
            {
               itemAC[_loc2_] = new Object();
               itemAC[_loc2_].ti = GamePredef.TBL_PET_TALENT;
               itemAC[_loc2_].ii = param1[_loc2_].t;
               itemAC[_loc2_].n = param1[_loc2_].n;
               itemAC[_loc2_].q = 0;
               itemAC[_loc2_].index = _loc2_;
               if(ToolKit.isBigOrEqual(_loc2_,itemLen) && !ToolKit.isEqual(0,_loc2_))
               {
                  itemLen = ToolKit.add(_loc2_,1);
                  if(ToolKit.isBigThan(itemLen,max_slot))
                  {
                     itemLen = max_slot;
                  }
               }
            }
         }
         initTalentInfo();
         updateView();
         _firstLoadCid = _core.player.id ? _core.player.id : 0;
      }
      
      public function set bangBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324756bangBtn0;
         if(_loc2_ !== param1)
         {
            this._1863324756bangBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn0",_loc2_,param1));
         }
      }
      
      public function set txtPageIndicator(param1:TextInput) : void
      {
         var _loc2_:Object = this._1229795408txtPageIndicator;
         if(_loc2_ !== param1)
         {
            this._1229795408txtPageIndicator = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPageIndicator",_loc2_,param1));
         }
      }
      
      public function set slot18(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454811slot18;
         if(_loc2_ !== param1)
         {
            this._899454811slot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot18",_loc2_,param1));
         }
      }
      
      public function set slot15(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454814slot15;
         if(_loc2_ !== param1)
         {
            this._899454814slot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot15",_loc2_,param1));
         }
      }
      
      public function set slot10(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454819slot10;
         if(_loc2_ !== param1)
         {
            this._899454819slot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot10",_loc2_,param1));
         }
      }
      
      private function goto(param1:int) : void
      {
         if(ToolKit.isSmallThan(param1,0))
         {
            if(ToolKit.isBigThan(itemPageNo,1))
            {
               --itemPageNo;
               txtPageIndicator.text = itemPageNo + "/" + maxPage;
               updateView();
            }
         }
         else if(ToolKit.isSmallThan(itemPageNo,maxPage))
         {
            ++itemPageNo;
            txtPageIndicator.text = itemPageNo + "/" + maxPage;
            updateView();
         }
      }
      
      public function set bangBtn3(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1863324753bangBtn3;
         if(_loc2_ !== param1)
         {
            this._1863324753bangBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn3",_loc2_,param1));
         }
      }
      
      public function set slot14(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454815slot14;
         if(_loc2_ !== param1)
         {
            this._899454815slot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot14",_loc2_,param1));
         }
      }
      
      public function set bangBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324754bangBtn2;
         if(_loc2_ !== param1)
         {
            this._1863324754bangBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn2",_loc2_,param1));
         }
      }
      
      private function upStoneSlotChange(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         if(upSlot1.slotData)
         {
            _loc2_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][upSlot1.giid];
            if(Boolean(_loc2_) && Boolean(_loc2_.lv))
            {
               _loc3_ = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][TAL_UP_PLAN_ITEM[_loc2_.lv]];
               checkItem.label = Language.TALENT_PANEL_FUNC_U[12].replace("{name}",_loc3_.name);
               upLabel.text = Language.TALENT_PANEL_FUNC_U[13].replace("{num}",TAL_UP_PLAN_ITEM_NUM[_loc2_.lv]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firstTile() : Tile
      {
         return this._133022078firstTile;
      }
      
      public function set slot16(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454813slot16;
         if(_loc2_ !== param1)
         {
            this._899454813slot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot16",_loc2_,param1));
         }
      }
      
      public function set slot24(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454784slot24;
         if(_loc2_ !== param1)
         {
            this._899454784slot24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot24",_loc2_,param1));
         }
      }
      
      public function set slot21(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454787slot21;
         if(_loc2_ !== param1)
         {
            this._899454787slot21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot21",_loc2_,param1));
         }
      }
      
      public function set btnLastPage(param1:Button) : void
      {
         var _loc2_:Object = this._320271553btnLastPage;
         if(_loc2_ !== param1)
         {
            this._320271553btnLastPage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLastPage",_loc2_,param1));
         }
      }
      
      private function resetBagData(param1:Number) : void
      {
         if(ToolKit.isBigThan(param1,ToolKit.minus(itemPageNo,1) * countPerPage) && ToolKit.isSmallOrEqual(param1,itemPageNo * countPerPage))
         {
            updateView();
         }
      }
      
      public function set slot26(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454782slot26;
         if(_loc2_ !== param1)
         {
            this._899454782slot26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot26",_loc2_,param1));
         }
      }
      
      public function set slot23(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454785slot23;
         if(_loc2_ !== param1)
         {
            this._899454785slot23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot23",_loc2_,param1));
         }
      }
      
      public function set slot27(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454781slot27;
         if(_loc2_ !== param1)
         {
            this._899454781slot27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot27",_loc2_,param1));
         }
      }
      
      public function set slot20(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454788slot20;
         if(_loc2_ !== param1)
         {
            this._899454788slot20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot20",_loc2_,param1));
         }
      }
      
      public function set slot25(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454783slot25;
         if(_loc2_ !== param1)
         {
            this._899454783slot25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot25",_loc2_,param1));
         }
      }
      
      public function ___PetTalentFuncPanel_BasicDelayButton3_click(param1:MouseEvent) : void
      {
         delStone();
      }
      
      public function set slot22(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454786slot22;
         if(_loc2_ !== param1)
         {
            this._899454786slot22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot22",_loc2_,param1));
         }
      }
      
      private function BreakSlotChange(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(delSlot1.slotData)
         {
            talentMixNum.maximum = delSlot1.slotData.n;
            if(talentMixNum.value > talentMixNum.maximum)
            {
               talentMixNum.value = talentMixNum.maximum;
            }
            _loc2_ = _core.data.gameData[GamePredef.TBL_PET_TALENT][delSlot1.giid];
            if(Boolean(_loc2_) && Boolean(_loc2_.exp))
            {
               tbPoint.text = Language.TALENT_PANEL_FUNC_U[10].replace("{num}",_loc2_.exp * talentMixNum.value);
            }
         }
         else
         {
            tbPoint.text = Language.TALENT_PANEL_FUNC_U[10].replace("{num}","");
         }
      }
      
      public function set slot28(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._899454780slot28;
         if(_loc2_ !== param1)
         {
            this._899454780slot28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot28",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetTalentFuncPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetTalentFuncPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetTalentFuncPanelWatcherSetupUtil");
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
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      public function set tbPoint(param1:Label) : void
      {
         var _loc2_:Object = this._1540805694tbPoint;
         if(_loc2_ !== param1)
         {
            this._1540805694tbPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tbPoint",_loc2_,param1));
         }
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         changeOperationView(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get talentMixNum() : NumericStepper
      {
         return this._1717904490talentMixNum;
      }
      
      public function onUpTalentStone(param1:Object) : void
      {
         if(param1)
         {
            cleanFuncSlot();
            _updateTalentData(param1);
            _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[6]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn3() : DelayButton
      {
         return this._1863324753bangBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPageIndicator() : TextInput
      {
         return this._1229795408txtPageIndicator;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      private function resetTalentSlot() : void
      {
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         if(!this["rSlot1"] || !this["rSlot2"] || !this["rSlot1"].slotData || !this["rSlot2"].slotData)
         {
            return;
         }
         if(Boolean(this["rSlot1"].giid) && Boolean(ToolKit.isBigThan(this["rSlot1"].giid,0)) && !checkSameTypeAndLvTalentStone(_core.data.gameData[GamePredef.TBL_PET_TALENT][this["rSlot1"].giid],_core.data.gameData[GamePredef.TBL_PET_TALENT][this["rSlot2"].giid]))
         {
            _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[16]);
            return;
         }
         var _loc1_:Object = new Object();
         var _loc2_:String = this["rSlot1"].giid + "|" + this["rSlot2"].giid;
         var _loc3_:String = this["rSlot1"].csid + "|" + this["rSlot2"].csid;
         if(ToolKit.isEqual(this["rSlot1"].csid,this["rSlot2"].csid))
         {
            _loc1_[this["rSlot1"].csid] = 2;
         }
         else
         {
            _loc1_[this["rSlot1"].csid] = 1;
            _loc1_[this["rSlot2"].csid] = 1;
         }
         for(_loc4_ in _loc1_)
         {
            if(!(Boolean(_core.player.petTalentData.b) && Boolean(_core.player.petTalentData.b[_loc4_]) && Boolean(_loc1_[_loc4_]) && ToolKit.isSmallOrEqual(_loc1_[_loc4_],_core.player.petTalentData.b[_loc4_].n)))
            {
               _loc5_ = Language.TALENT_PANEL_FUNC_U[23].replace("{num}",Math.floor(_loc4_ % countPerPage));
               _core.sysMidNote(_loc5_);
               return;
            }
         }
         _core.remote.call("resetTalentSlot",new Responder(onResetTalentSlot),_loc2_,_loc3_);
      }
      
      [Bindable(event="propertyChange")]
      public function get tbPoint() : Label
      {
         return this._1540805694tbPoint;
      }
      
      private function onInitTalentFuncPanelData(param1:Object) : void
      {
         cleanFuncSlot();
         if(Boolean(param1) && Boolean(param1.b))
         {
            setTalentBag(param1.b);
         }
         else
         {
            setTalentBag(null);
         }
      }
      
      private function checkSameTypeTalentStone(param1:*, param2:*) : Boolean
      {
         if(Boolean(param1) && Boolean(param2) && ToolKit.isEqual(Math.ceil(param1.sid / 10000),Math.ceil(param2.sid / 10000)))
         {
            return true;
         }
         return false;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(_core.player.petTalentData)
         {
            onInitTalentFuncPanelData(_core.player.petTalentData);
         }
         else
         {
            onInitTalentFuncPanelData(null);
         }
         if(!delSlot1.hasEventListener(GameEvent.SLOT_GIID_CHANGE))
         {
            delSlot1.addEventListener(GameEvent.SLOT_GIID_CHANGE,BreakSlotChange);
         }
         if(!upSlot1.hasEventListener(GameEvent.SLOT_GIID_CHANGE))
         {
            upSlot1.addEventListener(GameEvent.SLOT_GIID_CHANGE,upStoneSlotChange);
         }
         updatePoint();
      }
      
      public function onResetTalentSlot(param1:Object) : void
      {
         if(param1)
         {
            cleanFuncSlot();
            _updateTalentData(param1);
            _core.sysMidNote(Language.TALENT_PANEL_FUNC_U[7]);
         }
      }
      
      public function set slot1(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532659slot1;
         if(_loc2_ !== param1)
         {
            this._109532659slot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot1",_loc2_,param1));
         }
      }
      
      public function set slot2(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532660slot2;
         if(_loc2_ !== param1)
         {
            this._109532660slot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot2",_loc2_,param1));
         }
      }
      
      public function set slot3(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532661slot3;
         if(_loc2_ !== param1)
         {
            this._109532661slot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot3",_loc2_,param1));
         }
      }
      
      public function set slot5(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532663slot5;
         if(_loc2_ !== param1)
         {
            this._109532663slot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot5",_loc2_,param1));
         }
      }
      
      public function set slot6(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532664slot6;
         if(_loc2_ !== param1)
         {
            this._109532664slot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot1() : TalentSlot
      {
         return this._109532659slot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot2() : TalentSlot
      {
         return this._109532660slot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot3() : TalentSlot
      {
         return this._109532661slot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot5() : TalentSlot
      {
         return this._109532663slot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot6() : TalentSlot
      {
         return this._109532664slot6;
      }
      
      public function set slot4(param1:TalentSlot) : void
      {
         var _loc2_:Object = this._109532662slot4;
         if(_loc2_ !== param1)
         {
            this._109532662slot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get slot4() : TalentSlot
      {
         return this._109532662slot4;
      }
   }
}

