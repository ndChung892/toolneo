package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.*;
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
   import mx.controls.ComboBox;
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LifeSkillPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _385185496medicineLevelList:List;
      
      private var medicineListAC:Array = new Array();
      
      public var _LifeSkillPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1624210112cookCanvas:Canvas;
      
      private var _75035704medicineRequire3:ItemSlot;
      
      private var _40272812makeList:List;
      
      private var _75035706medicineRequire1:ItemSlot;
      
      private var _717053516progressBar2:ProgressBarCanvas;
      
      private var _75035705medicineRequire2:ItemSlot;
      
      private var _1505392340cookRequire1:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _3059528cook:BasicGlowButton;
      
      private var _114581tab:ViewStack;
      
      private var _189736949cookAward:ItemSlot;
      
      private var _1319233554cookAwardLabel1:BasicTxtButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _9686830classType:ComboBox;
      
      private var cookLearnedListAC:Array = new Array();
      
      public var initFlag:* = false;
      
      private var _1329203267medicineAward:ItemSlot;
      
      private var MAXLEVEL:int = 10;
      
      private var cookListAC:Array = new Array();
      
      private var cid:Number = -1;
      
      private var _1505392341cookRequire2:ItemSlot;
      
      public var learnedSkillArray:Array = new Array();
      
      private var medicineLearnedListAC:Array = new Array();
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _1586878172cookAward1:ItemSlot;
      
      private var _494206780cookInputItem1:ItemSlot;
      
      private var _510997000medicineList:List;
      
      private var _218813920medicineAwardLabel1:BasicTxtButton;
      
      private var _1505392342cookRequire3:ItemSlot;
      
      private var _2121277359medicineInputItem2:ItemSlot;
      
      private var flag:Boolean = false;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _494206781cookInputItem2:ItemSlot;
      
      private var _2121277358medicineInputItem1:ItemSlot;
      
      private var currentSkillId:Number = -1;
      
      public var _LifeSkillPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _1754248235medicineAllBtn:BasicGlowButton;
      
      public var _LifeSkillPanel_BasicGlowButton4:BasicGlowButton;
      
      private var _547753978cookList:List;
      
      public var _LifeSkillPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _LifeSkillPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _LifeSkillPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _LifeSkillPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _LifeSkillPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _LifeSkillPanel_BasicTxtButton8:BasicTxtButton;
      
      private var _1131509414progressBar:ProgressBarCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _494206782cookInputItem3:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _952151353cookAll:BasicGlowButton;
      
      private var _2121277360medicineInputItem3:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":397,
               "height":355,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_LifeSkillPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tab",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.top = "60";
                     this.right = "15";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"cookCanvas",
                           "events":{"creationComplete":"__cookCanvas_creationComplete"},
                           "stylesFactory":function():void
                           {
                              this.disabledOverlayAlpha = 0.1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "creationPolicy":"auto",
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"makeList",
                                    "events":{"itemClick":"__makeList_itemClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "7";
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":70,
                                          "styleName":"CSSBorder",
                                          "height":230
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":List,
                                    "id":"cookList",
                                    "events":{"itemClick":"__cookList_itemClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":81,
                                          "y":5,
                                          "width":95,
                                          "height":200,
                                          "styleName":"CSSBorder",
                                          "labelField":"name",
                                          "itemRenderer":_LifeSkillPanel_ClassFactory1_c()
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ComboBox,
                                    "id":"classType",
                                    "events":{"change":"__classType_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":81,
                                          "width":95,
                                          "editable":false,
                                          "y":210,
                                          "rowCount":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":5,
                                          "height":230,
                                          "styleName":"CanvasBorder",
                                          "width":181,
                                          "x":179,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_LifeSkillPanel_BasicTxtButton1",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":7,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"cookAwardLabel1",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":98,
                                                   "y":7,
                                                   "height":18,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_LifeSkillPanel_BasicTxtButton3",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":69,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_LifeSkillPanel_BasicTxtButton4",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":134,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookAward",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.top = "30";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"movable":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookAward1",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "30";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "movable":false,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookRequire1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":95,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookRequire2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":55,
                                                   "y":95,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookRequire3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "y":95,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookInputItem1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":160,
                                                   "slotType":19,
                                                   "movable":true,
                                                   "creationPolicy":"auto"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookInputItem2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":55,
                                                   "y":160,
                                                   "slotType":19,
                                                   "movable":true,
                                                   "creationPolicy":"auto"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"cookInputItem3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "y":160,
                                                   "slotType":19,
                                                   "movable":true,
                                                   "creationPolicy":"auto"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_LifeSkillPanel_BasicGlowButton1",
                                             "events":{"click":"___LifeSkillPanel_BasicGlowButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "styleName":"BtnNormalRed",
                                                   "y":204,
                                                   "width":99
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                       this.left = "7";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":35,
                                          "y":238,
                                          "styleName":"CanvasBorder",
                                          "width":353,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ProgressBarCanvas,
                                             "id":"progressBar",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 2171169;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":10,
                                                   "width":200,
                                                   "showCancelButton":false,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"cook",
                                             "events":{"click":"__cook_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "90";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "enabled":false,
                                                   "styleName":"BtnStdRed",
                                                   "width":50,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"cookAll",
                                             "events":{"click":"__cookAll_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":80,
                                                   "enabled":false,
                                                   "y":5
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
                           "id":"medicineCanvas",
                           "events":{"creationComplete":"__medicineCanvas_creationComplete"},
                           "stylesFactory":function():void
                           {
                              this.disabledOverlayAlpha = 0.1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "creationPolicy":"auto",
                                 "styleName":"RoundedGradientBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"medicineLevelList",
                                    "events":{"itemClick":"__medicineLevelList_itemClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "7";
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":70,
                                          "styleName":"CSSBorder",
                                          "height":230
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":List,
                                    "id":"medicineList",
                                    "events":{"itemClick":"__medicineList_itemClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "itemRenderer":_LifeSkillPanel_ClassFactory2_c(),
                                          "x":81,
                                          "y":5,
                                          "width":95,
                                          "height":200,
                                          "styleName":"CSSBorder",
                                          "labelField":"name"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ComboBox,
                                    "id":"classType2",
                                    "events":{"change":"__classType2_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":81,
                                          "width":95,
                                          "editable":false,
                                          "y":210,
                                          "rowCount":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":5,
                                          "height":230,
                                          "styleName":"CanvasBorder",
                                          "width":181,
                                          "x":179,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_LifeSkillPanel_BasicTxtButton5",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":7,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"medicineAwardLabel1",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":98,
                                                   "y":7,
                                                   "height":18,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_LifeSkillPanel_BasicTxtButton7",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":69,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_LifeSkillPanel_BasicTxtButton8",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":134,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineAward",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                                this.top = "30";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"movable":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineAward1",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "30";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "movable":false,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineRequire1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":95,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineRequire2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":55,
                                                   "y":95,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineRequire3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "y":95,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineInputItem1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":160,
                                                   "slotType":19,
                                                   "movable":true,
                                                   "creationPolicy":"auto"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineInputItem2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":55,
                                                   "y":160,
                                                   "slotType":19,
                                                   "movable":true,
                                                   "creationPolicy":"auto"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"medicineInputItem3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":100,
                                                   "y":160,
                                                   "slotType":19,
                                                   "movable":true,
                                                   "creationPolicy":"auto"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_LifeSkillPanel_BasicGlowButton4",
                                             "events":{"click":"___LifeSkillPanel_BasicGlowButton4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "styleName":"BtnNormalRed",
                                                   "y":204,
                                                   "width":99
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                       this.left = "7";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":35,
                                          "y":238,
                                          "styleName":"CanvasBorder",
                                          "width":353,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ProgressBarCanvas,
                                             "id":"progressBar2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 2171169;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":15,
                                                   "y":10,
                                                   "width":200,
                                                   "showCancelButton":false,
                                                   "visible":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"medicineBtn",
                                             "events":{"click":"__medicineBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "90";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "enabled":false,
                                                   "styleName":"BtnStdRed",
                                                   "width":50,
                                                   "y":5
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"medicineAllBtn",
                                             "events":{"click":"__medicineAllBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "width":80,
                                                   "enabled":false,
                                                   "y":5
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
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "styleName":"HTabWrapper",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":66,
                                 "styleName":"HorizontalTab",
                                 "selected":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":66,
                                 "styleName":"HorizontalTab"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _2061716930medicineBtn:BasicGlowButton;
      
      private var _300291680classType2:ComboBox;
      
      private var _1707039694medicineCanvas:Canvas;
      
      private var _1744371634medicineAward1:ItemSlot;
      
      public function LifeSkillPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 397;
         this.height = 355;
         this.x = 250;
         this.y = 100;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LifeSkillPanel._watcherSetupUtil = param1;
      }
      
      public function ___LifeSkillPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         autoInputCook(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cookList() : List
      {
         return this._547753978cookList;
      }
      
      public function set medicineList(param1:List) : void
      {
         var _loc2_:Object = this._510997000medicineList;
         if(_loc2_ !== param1)
         {
            this._510997000medicineList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineList",_loc2_,param1));
         }
      }
      
      public function set cookList(param1:List) : void
      {
         var _loc2_:Object = this._547753978cookList;
         if(_loc2_ !== param1)
         {
            this._547753978cookList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cookAwardLabel1() : BasicTxtButton
      {
         return this._1319233554cookAwardLabel1;
      }
      
      private function _LifeSkillPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = LifeListItemRenderer;
         return _loc1_;
      }
      
      private function completeCook() : void
      {
         if(this.visible == false)
         {
            flag = false;
            cookCanvas.enabled = true;
            return;
         }
         if(-1 == cookAward.giid)
         {
            flag = false;
            cookCanvas.enabled = true;
            return;
         }
         cookCanvas.enabled = true;
         startNewCook();
      }
      
      private function initList1(param1:int) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         switch(param1)
         {
            case 0:
               _loc2_ = new ArrayCollection();
               _loc4_ = 1;
               while(_loc4_ <= MAXLEVEL)
               {
                  _loc2_.addItem({
                     "id":_loc4_,
                     "label":Language.LIFESKILLPANEL_S[_loc4_]
                  });
                  _loc4_++;
               }
               makeList.dataProvider = _loc2_;
               break;
            case 1:
               _loc3_ = new ArrayCollection();
               _loc5_ = 11;
               while(_loc5_ <= 10 + MAXLEVEL)
               {
                  _loc3_.addItem({
                     "id":_loc5_ - 10,
                     "label":Language.LIFESKILLPANEL_S[_loc5_]
                  });
                  _loc5_++;
               }
               medicineLevelList.dataProvider = _loc3_;
         }
      }
      
      public function initList2(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Boolean = false;
         var _loc5_:Object = null;
         switch(param1)
         {
            case 0:
               _loc2_ = 1;
               while(_loc2_ <= 10)
               {
                  cookListAC[_loc2_] = new ArrayCollection();
                  cookLearnedListAC[_loc2_] = new ArrayCollection();
                  _loc2_++;
               }
               for each(_loc3_ in _core.data.gameData[GamePredef.TBL_SKILL])
               {
                  if(Boolean(_loc3_) && _loc3_.type == GamePredef.SKILL_TYPE_COOKBOOK)
                  {
                     _loc4_ = false;
                     for each(_loc5_ in learnedSkillArray)
                     {
                        if(_loc3_.id == _loc5_)
                        {
                           _loc4_ = true;
                           cookLearnedListAC[_loc3_.level].addItem({
                              "id":_loc3_.id,
                              "name":_loc3_.name,
                              "useItemId":_loc3_.useItemId,
                              "useItemType":_loc3_.useItemType,
                              "isLearned":_loc4_
                           });
                        }
                     }
                     cookListAC[_loc3_.level].addItem({
                        "id":_loc3_.id,
                        "name":_loc3_.name,
                        "useItemId":_loc3_.useItemId,
                        "useItemType":_loc3_.useItemType,
                        "isLearned":_loc4_
                     });
                  }
               }
               break;
            case 1:
               _loc2_ = 1;
               while(_loc2_ <= 10)
               {
                  medicineListAC[_loc2_] = new ArrayCollection();
                  medicineLearnedListAC[_loc2_] = new ArrayCollection();
                  _loc2_++;
               }
               for each(_loc3_ in _core.data.gameData[GamePredef.TBL_SKILL])
               {
                  if(Boolean(_loc3_) && _loc3_.type == GamePredef.SKILL_TYPE_MEDICINEBOOK)
                  {
                     _loc4_ = false;
                     for each(_loc5_ in learnedSkillArray)
                     {
                        if(_loc3_.id == _loc5_)
                        {
                           _loc4_ = true;
                           medicineLearnedListAC[_loc3_.level].addItem({
                              "id":_loc3_.id,
                              "name":_loc3_.name,
                              "useItemId":_loc3_.useItemId,
                              "useItemType":_loc3_.useItemType,
                              "isLearned":_loc4_
                           });
                        }
                     }
                     medicineListAC[_loc3_.level].addItem({
                        "id":_loc3_.id,
                        "name":_loc3_.name,
                        "useItemId":_loc3_.useItemId,
                        "useItemType":_loc3_.useItemType,
                        "isLearned":_loc4_
                     });
                  }
               }
         }
      }
      
      private function onNewCook(param1:Object) : void
      {
         var _loc2_:int = 0;
         trace(param1);
         if(param1)
         {
            this["cookInputItem" + 1].stackNum -= this["cookRequire" + 1].stackNum;
            this["cookInputItem" + 2].stackNum -= this["cookRequire" + 2].stackNum;
            this["cookInputItem" + 3].stackNum -= this["cookRequire" + 3].stackNum;
            if(flag)
            {
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(0 == this["cookInputItem" + _loc2_].stackNum)
                  {
                     this["cookInputItem" + _loc2_].clean();
                  }
                  _loc2_++;
               }
               cook.enabled = false;
               cookAll.enabled = false;
               flag = false;
               newCookAll();
            }
            else
            {
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  this["cookInputItem" + _loc2_].clean();
                  _loc2_++;
               }
               cook.enabled = false;
               cookAll.enabled = false;
            }
         }
         else
         {
            _loc2_ = 1;
            while(_loc2_ <= 3)
            {
               this["cookInputItem" + _loc2_].clean();
               _loc2_++;
            }
            cook.enabled = false;
            cookAll.enabled = false;
         }
      }
      
      public function set cookAwardLabel1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1319233554cookAwardLabel1;
         if(_loc2_ !== param1)
         {
            this._1319233554cookAwardLabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookAwardLabel1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineCanvas() : Canvas
      {
         return this._1707039694medicineCanvas;
      }
      
      private function startNewMedicine() : void
      {
         var _loc1_:Object = {};
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            if(this["medicineInputItem" + _loc2_].slotData)
            {
               _loc1_[_loc2_] = this["medicineInputItem" + _loc2_].slotData.id;
            }
            _loc2_++;
         }
         _core.remote.call("newMedicine",new Responder(onNewMedicine),_loc1_,currentSkillId,18);
      }
      
      public function ___LifeSkillPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         autoInputCook(0);
      }
      
      private function cookViewClear() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 3)
         {
            this["cookRequire" + _loc1_].clean();
            this["cookInputItem" + _loc1_].clean();
            _loc1_++;
         }
         cookAward.clean();
         cookAward1.clean();
         cookAward1.visible = false;
         cookAwardLabel1.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineAward() : ItemSlot
      {
         return this._1329203267medicineAward;
      }
      
      private function startNewCook() : void
      {
         var _loc1_:Object = {};
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            if(this["cookInputItem" + _loc2_].slotData)
            {
               _loc1_[_loc2_] = this["cookInputItem" + _loc2_].slotData.id;
               trace("fdjfhdhfjdd" + _loc1_[_loc2_]);
            }
            _loc2_++;
         }
         _core.remote.call("newCook",new Responder(onNewCook),_loc1_,currentSkillId,GamePredef.SKILL_TYPE_COOK);
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar2() : ProgressBarCanvas
      {
         return this._717053516progressBar2;
      }
      
      private function _LifeSkillPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = LifeSkillPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineAward1() : ItemSlot
      {
         return this._1744371634medicineAward1;
      }
      
      public function set medicineLevelList(param1:List) : void
      {
         var _loc2_:Object = this._385185496medicineLevelList;
         if(_loc2_ !== param1)
         {
            this._385185496medicineLevelList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineLevelList",_loc2_,param1));
         }
      }
      
      public function set medicineCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1707039694medicineCanvas;
         if(_loc2_ !== param1)
         {
            this._1707039694medicineCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineCanvas",_loc2_,param1));
         }
      }
      
      private function initTab(param1:int) : void
      {
         initLearnedSkill();
      }
      
      private function classTypeSelect() : void
      {
         var _loc1_:int = 0;
         if(0 == classType.selectedItem.type)
         {
            if(makeList.selectedItem != null)
            {
               _loc1_ = 1;
               while(_loc1_ <= 10)
               {
                  if(makeList.selectedItem.id == _loc1_)
                  {
                     cookList.dataProvider = cookLearnedListAC[_loc1_];
                  }
                  _loc1_++;
               }
            }
         }
         else if(1 == classType.selectedItem.type)
         {
            if(makeList.selectedItem != null)
            {
               _loc1_ = 1;
               while(_loc1_ <= 10)
               {
                  if(makeList.selectedItem.id == _loc1_)
                  {
                     cookList.dataProvider = cookListAC[_loc1_];
                  }
                  _loc1_++;
               }
            }
         }
         if(0 == classType2.selectedItem.type)
         {
            if(medicineLevelList.selectedItem != null)
            {
               _loc1_ = 1;
               while(_loc1_ <= 10)
               {
                  if(medicineLevelList.selectedItem.id == _loc1_)
                  {
                     medicineList.dataProvider = medicineLearnedListAC[_loc1_];
                  }
                  _loc1_++;
               }
            }
         }
         else if(1 == classType2.selectedItem.type)
         {
            if(medicineLevelList.selectedItem != null)
            {
               _loc1_ = 1;
               while(_loc1_ <= 10)
               {
                  if(medicineLevelList.selectedItem.id == _loc1_)
                  {
                     medicineList.dataProvider = medicineListAC[_loc1_];
                  }
                  _loc1_++;
               }
            }
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         BtnClick(0);
      }
      
      private function medicineInputItemChange(param1:Event) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(!medicineList.selectedItem)
         {
            return;
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            if(-1 == this["medicineInputItem" + _loc2_].giid)
            {
               medicineBtn.enabled = false;
               medicineAllBtn.enabled = false;
               return;
            }
            _loc2_++;
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 3)
         {
            if(this["medicineInputItem" + _loc3_].stackNum < this["medicineRequire" + _loc3_].stackNum)
            {
               medicineBtn.enabled = false;
               medicineAllBtn.enabled = false;
               return;
            }
            _loc3_++;
         }
         var _loc4_:int = 1;
         while(_loc4_ <= 3)
         {
            _loc5_ = Number(this["medicineInputItem" + _loc4_].giid);
            _loc6_ = _core.data.getData(GamePredef.TBL_ITEM_INSTANCE,_loc5_);
            _loc7_ = _loc6_.tid;
            if(this["medicineRequire" + _loc4_].giid != _loc7_)
            {
               medicineBtn.enabled = false;
               medicineAllBtn.enabled = false;
               return;
            }
            _loc4_++;
         }
         medicineBtn.enabled = true;
         medicineAllBtn.enabled = true;
      }
      
      public function set cookInputItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._494206780cookInputItem1;
         if(_loc2_ !== param1)
         {
            this._494206780cookInputItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookInputItem1",_loc2_,param1));
         }
      }
      
      public function set cookAll(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._952151353cookAll;
         if(_loc2_ !== param1)
         {
            this._952151353cookAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookAll",_loc2_,param1));
         }
      }
      
      public function set cookInputItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._494206781cookInputItem2;
         if(_loc2_ !== param1)
         {
            this._494206781cookInputItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookInputItem2",_loc2_,param1));
         }
      }
      
      public function makeListChange() : void
      {
         var _loc1_:int = 0;
         if(makeList.selectedItem != null)
         {
            _loc1_ = 1;
            while(_loc1_ <= 10)
            {
               if(makeList.selectedItem.id == _loc1_)
               {
                  if(classType.selectedItem.type == 0)
                  {
                     cookList.dataProvider = cookLearnedListAC[_loc1_];
                  }
                  else
                  {
                     cookList.dataProvider = cookListAC[_loc1_];
                  }
               }
               _loc1_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      public function set cookInputItem3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._494206782cookInputItem3;
         if(_loc2_ !== param1)
         {
            this._494206782cookInputItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookInputItem3",_loc2_,param1));
         }
      }
      
      public function __medicineList_itemClick(param1:ListEvent) : void
      {
         medicineListChange();
      }
      
      public function set cook(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3059528cook;
         if(_loc2_ !== param1)
         {
            this._3059528cook = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cook",_loc2_,param1));
         }
      }
      
      private function completeMedicine() : void
      {
         if(this.visible == false)
         {
            flag = false;
            medicineCanvas.enabled = true;
            return;
         }
         if(-1 == medicineAward.giid)
         {
            flag = false;
            medicineCanvas.enabled = true;
            return;
         }
         medicineCanvas.enabled = true;
         startNewMedicine();
      }
      
      private function initComboBox(param1:int) : void
      {
         var _loc2_:ArrayCollection = new ArrayCollection();
         _loc2_.addItem({
            "type":1,
            "label":Language.LIFESKILLPANEL_S[42]
         });
         _loc2_.addItem({
            "type":0,
            "label":Language.LIFESKILLPANEL_S[41]
         });
         switch(param1)
         {
            case 0:
               classType.dataProvider = _loc2_;
               break;
            case 1:
               classType2.dataProvider = _loc2_;
         }
      }
      
      public function set medicineAward(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1329203267medicineAward;
         if(_loc2_ !== param1)
         {
            this._1329203267medicineAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineAward",_loc2_,param1));
         }
      }
      
      public function set progressBar2(param1:ProgressBarCanvas) : void
      {
         var _loc2_:Object = this._717053516progressBar2;
         if(_loc2_ !== param1)
         {
            this._717053516progressBar2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar2",_loc2_,param1));
         }
      }
      
      private function _LifeSkillPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicTitleCanvas1.text = param1;
         },"_LifeSkillPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cookCanvas.label = param1;
         },"cookCanvas.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicTxtButton1.label = param1;
         },"_LifeSkillPanel_BasicTxtButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cookAwardLabel1.label = param1;
         },"cookAwardLabel1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicTxtButton3.label = param1;
         },"_LifeSkillPanel_BasicTxtButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicTxtButton4.label = param1;
         },"_LifeSkillPanel_BasicTxtButton4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicGlowButton1.label = param1;
         },"_LifeSkillPanel_BasicGlowButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cook.label = param1;
         },"cook.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cookAll.label = param1;
         },"cookAll.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medicineCanvas.label = param1;
         },"medicineCanvas.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicTxtButton5.label = param1;
         },"_LifeSkillPanel_BasicTxtButton5.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medicineAwardLabel1.label = param1;
         },"medicineAwardLabel1.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicTxtButton7.label = param1;
         },"_LifeSkillPanel_BasicTxtButton7.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicTxtButton8.label = param1;
         },"_LifeSkillPanel_BasicTxtButton8.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeSkillPanel_BasicGlowButton4.label = param1;
         },"_LifeSkillPanel_BasicGlowButton4.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medicineBtn.label = param1;
         },"medicineBtn.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medicineAllBtn.label = param1;
         },"medicineAllBtn.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.LIFESKILLPANEL_S[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[18] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarCanvas
      {
         return this._1131509414progressBar;
      }
      
      private function onNewMedicine(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            this["medicineInputItem" + 1].stackNum -= this["medicineRequire" + 1].stackNum;
            this["medicineInputItem" + 2].stackNum -= this["medicineRequire" + 2].stackNum;
            this["medicineInputItem" + 3].stackNum -= this["medicineRequire" + 3].stackNum;
            if(flag)
            {
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(0 == this["medicineInputItem" + _loc2_].stackNum)
                  {
                     this["medicineInputItem" + _loc2_].clean();
                  }
                  _loc2_++;
               }
               medicineBtn.enabled = false;
               medicineAllBtn.enabled = false;
               flag = false;
               newMedicineAll();
            }
            else
            {
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  this["medicineInputItem" + _loc2_].clean();
                  _loc2_++;
               }
               medicineBtn.enabled = false;
               medicineAllBtn.enabled = false;
            }
         }
         else
         {
            _loc2_ = 1;
            while(_loc2_ <= 3)
            {
               this["medicineInputItem" + _loc2_].clean();
               _loc2_++;
            }
            medicineBtn.enabled = false;
            medicineAllBtn.enabled = false;
         }
      }
      
      public function __medicineAllBtn_click(param1:MouseEvent) : void
      {
         newMedicineAll();
      }
      
      private function BtnClick(param1:int) : void
      {
         tab.selectedIndex = param1;
         activatePanel(param1);
         var _loc2_:int = 0;
         while(_loc2_ <= tab.numChildren - 1)
         {
            if(_loc2_ == param1)
            {
               this["tabBtn" + _loc2_].selected = true;
            }
            else
            {
               this["tabBtn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
      }
      
      private function medicineListSelected(param1:Event) : void
      {
         if(!medicineList.selectedItem)
         {
            medicineBtn.enabled = false;
            medicineAllBtn.enabled = false;
         }
      }
      
      public function set medicineAward1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1744371634medicineAward1;
         if(_loc2_ !== param1)
         {
            this._1744371634medicineAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineAward1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cookCanvas() : Canvas
      {
         return this._1624210112cookCanvas;
      }
      
      private function cookListSelected(param1:Event) : void
      {
         if(!cookList.selectedItem)
         {
            cook.enabled = false;
            cookAll.enabled = false;
         }
      }
      
      public function learnedSkillSkip(param1:Object) : void
      {
         setTimeout(autoClick,100,param1);
      }
      
      private function activatePanel(param1:int) : void
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case 0:
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(this["cookInputItem" + _loc2_])
                  {
                     this["cookInputItem" + _loc2_].addEventListener(GameEvent.SLOT_NUM_CHANGE,cookInputItemChange);
                  }
                  this["cookInputItem" + _loc2_].stackNum = 0;
                  _loc2_++;
               }
               cookList.addEventListener(MouseEvent.CLICK,cookListSelected);
               makeList.addEventListener(MouseEvent.CLICK,cookListSelected);
               break;
            case 1:
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(this["medicineInputItem" + _loc2_])
                  {
                     this["medicineInputItem" + _loc2_].addEventListener(GameEvent.SLOT_NUM_CHANGE,medicineInputItemChange);
                  }
                  this["medicineInputItem" + _loc2_].stackNum = 0;
                  _loc2_++;
               }
               medicineList.addEventListener(MouseEvent.CLICK,medicineListSelected);
               medicineLevelList.addEventListener(MouseEvent.CLICK,medicineListSelected);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get classType() : ComboBox
      {
         return this._9686830classType;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookRequire1() : ItemSlot
      {
         return this._1505392340cookRequire1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookRequire2() : ItemSlot
      {
         return this._1505392341cookRequire2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookRequire3() : ItemSlot
      {
         return this._1505392342cookRequire3;
      }
      
      private function refresh(param1:int) : void
      {
         initList1(param1);
         initList2(param1);
         initComboBox(param1);
         activatePanel(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cookAward1() : ItemSlot
      {
         return this._1586878172cookAward1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            initFlag = true;
            if(cid == _core.player.id)
            {
               cookViewClear();
               medicineViewClear();
               cid = _core.player.id;
            }
            else
            {
               cid = _core.player.id;
               cookList.dataProvider = null;
               medicineList.dataProvider = null;
               learnedSkillArray = new Array();
               initTab(0);
            }
         }
      }
      
      private function delayFunc(param1:int, param2:int) : void
      {
         if(param2 == 0)
         {
            cookList.selectedIndex = param1;
            cookList.selectedItem.isLearned = true;
            cookListChange();
         }
         else if(param2 == 1)
         {
            medicineList.selectedIndex = param1;
            medicineList.selectedItem.isLearned = true;
            medicineListChange();
         }
      }
      
      public function __medicineBtn_click(param1:MouseEvent) : void
      {
         newMedicine();
      }
      
      public function __cookCanvas_creationComplete(param1:FlexEvent) : void
      {
         initTab(0);
      }
      
      public function medicineLevelListChange() : void
      {
         var _loc1_:int = 0;
         if(medicineLevelList.selectedItem != null)
         {
            _loc1_ = 1;
            while(_loc1_ <= 10)
            {
               if(medicineLevelList.selectedItem.id == _loc1_)
               {
                  trace("the selectedItemId is：" + medicineLevelList.selectedItem.id);
                  if(classType2.selectedItem.type == 0)
                  {
                     medicineList.dataProvider = medicineLearnedListAC[_loc1_];
                  }
                  else
                  {
                     medicineList.dataProvider = medicineListAC[_loc1_];
                  }
               }
               _loc1_++;
            }
         }
      }
      
      private function newCook() : void
      {
         cookCanvas.enabled = false;
         progressBar.visible = true;
         progressBar.progressName = Language.LIFESKILLPANEL_S[53];
         progressBar.completeFunction = completeCook;
         progressBar.showByTime(2);
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      private function autoClick(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         if(Boolean(param1) && Boolean(param1.type))
         {
            if(param1.type == 21)
            {
               BtnClick(0);
               if(param1.level)
               {
                  if(!makeList.dataProvider)
                  {
                     refresh(0);
                  }
                  makeList.selectedIndex = param1.level - 1;
                  classType.selectedIndex = 0;
                  makeListChange();
                  if(param1.name)
                  {
                     _loc2_ = 0;
                     for each(_loc3_ in cookList.dataProvider)
                     {
                        if(_loc3_.name == param1.name)
                        {
                           setTimeout(delayFunc,100,_loc2_,0);
                        }
                        _loc2_++;
                     }
                  }
               }
            }
            if(param1.type == 22)
            {
               BtnClick(1);
               if(param1.level)
               {
                  if(!medicineLevelList.dataProvider)
                  {
                     refresh(1);
                  }
                  medicineLevelList.selectedIndex = param1.level - 1;
                  classType.selectedIndex = 0;
                  medicineLevelListChange();
                  if(param1.name)
                  {
                     _loc2_ = 0;
                     for each(_loc3_ in medicineList.dataProvider)
                     {
                        if(_loc3_.name == param1.name)
                        {
                           setTimeout(delayFunc,100,_loc2_,1);
                        }
                        _loc2_++;
                     }
                  }
               }
            }
         }
      }
      
      public function __cookList_itemClick(param1:ListEvent) : void
      {
         cookListChange();
      }
      
      public function __cookAll_click(param1:MouseEvent) : void
      {
         newCookAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineLevelList() : List
      {
         return this._385185496medicineLevelList;
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
      
      [Bindable(event="propertyChange")]
      public function get cookAll() : BasicGlowButton
      {
         return this._952151353cookAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookInputItem1() : ItemSlot
      {
         return this._494206780cookInputItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookInputItem2() : ItemSlot
      {
         return this._494206781cookInputItem2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cookInputItem3() : ItemSlot
      {
         return this._494206782cookInputItem3;
      }
      
      public function __makeList_itemClick(param1:ListEvent) : void
      {
         makeListChange();
      }
      
      private function newMedicineAll() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 3)
         {
            if(this["medicineInputItem" + _loc1_].giid == -1)
            {
               return;
            }
            _loc1_++;
         }
         if(this["medicineInputItem" + 1].stackNum >= this["medicineRequire" + 1].stackNum && this["medicineInputItem" + 2].stackNum >= this["medicineRequire" + 2].stackNum && this["medicineInputItem" + 3].stackNum >= this["medicineRequire" + 3].stackNum)
         {
            flag = true;
            newMedicine();
         }
      }
      
      public function set progressBar(param1:ProgressBarCanvas) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
         }
      }
      
      public function __classType2_change(param1:ListEvent) : void
      {
         classTypeSelect();
      }
      
      private function autoInputCook(param1:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc2_:Object = _dm.sList;
         var _loc3_:int = 1;
         while(_loc3_ <= 3)
         {
            for each(_loc4_ in _loc2_)
            {
               if(Boolean(_loc4_) && Boolean(ToolKit.isBigThan(_loc4_.sid,GamePredef.SLOT_SID_BAG[0])) && ToolKit.isSmallOrEqual(_loc4_.sid,GamePredef.SLOT_SID_BAG[7]))
               {
                  _loc5_ = _core.getTemplateData(_loc4_.type,_loc4_.itemId);
                  if(_loc5_)
                  {
                     switch(param1)
                     {
                        case 0:
                           _loc6_ = "cookRequire";
                           _loc7_ = "cookInputItem";
                           break;
                        case 1:
                           _loc6_ = "medicineRequire";
                           _loc7_ = "medicineInputItem";
                     }
                     if(ToolKit.isEqual(_loc4_.type,this[_loc6_ + _loc3_].type - 1) && ToolKit.isEqual(_loc5_.id,this[_loc6_ + _loc3_].giid) && ToolKit.isBigOrEqual(_loc4_.stackNum,this[_loc6_ + _loc3_].stackNum))
                     {
                        this[_loc7_ + _loc3_].slotData = _loc4_;
                        this[_loc7_ + _loc3_].type = _loc4_.type;
                        this[_loc7_ + _loc3_].giid = _loc4_.itemId;
                        this[_loc7_ + _loc3_].stackNum = _loc4_.stackNum;
                        break;
                     }
                  }
               }
            }
            _loc3_++;
         }
      }
      
      private function cookListChange() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         if(cookList.selectedItem != null)
         {
            cookViewClear();
            currentSkillId = cookList.selectedItem.id;
            _loc1_ = Number(cookList.selectedItem.useItemId);
            this["cookAward"].type = GamePredef.TBL_ITEM_TEMPLATE;
            this["cookAward"].giid = _loc1_;
            this["cookAward"].stackNum = "1";
            trace("this skill is learned?" + cookList.selectedItem.isLearned);
            if(cookList.selectedItem.isLearned)
            {
               _loc2_ = Number(cookList.selectedItem.useItemType);
               if(-1 != _loc2_)
               {
                  this["cookAward1"].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["cookAward1"].giid = _loc2_;
                  this["cookAward1"].stackNum = "1";
                  this["cookAward1"].visible = true;
                  cookAwardLabel1.visible = true;
               }
               _loc3_ = new Array();
               _loc4_ = new Array();
               _loc3_[1] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].i1;
               _loc3_[2] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].i2;
               _loc3_[3] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].i3;
               _loc4_[1] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].n1;
               _loc4_[2] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].n2;
               _loc4_[3] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].n3;
               _loc5_ = 1;
               while(_loc5_ <= 3)
               {
                  this["cookRequire" + _loc5_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["cookRequire" + _loc5_].giid = _loc3_[_loc5_];
                  this["cookRequire" + _loc5_].stackNum = _loc4_[_loc5_];
                  _loc5_++;
               }
            }
            cook.enabled = false;
            cookAll.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cook() : BasicGlowButton
      {
         return this._3059528cook;
      }
      
      private function onInitLearnedSkill(param1:Object) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            learnedSkillArray[_loc2_] = param1[_loc2_].sid;
         }
         refresh(0);
         refresh(1);
      }
      
      public function set makeList(param1:List) : void
      {
         var _loc2_:Object = this._40272812makeList;
         if(_loc2_ !== param1)
         {
            this._40272812makeList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeList",_loc2_,param1));
         }
      }
      
      public function set classType2(param1:ComboBox) : void
      {
         var _loc2_:Object = this._300291680classType2;
         if(_loc2_ !== param1)
         {
            this._300291680classType2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classType2",_loc2_,param1));
         }
      }
      
      public function set medicineInputItem1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2121277358medicineInputItem1;
         if(_loc2_ !== param1)
         {
            this._2121277358medicineInputItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineInputItem1",_loc2_,param1));
         }
      }
      
      private function initLearnedSkill() : void
      {
         _core.remote.call("initLearnedSkill",new Responder(onInitLearnedSkill),null);
      }
      
      public function set medicineInputItem2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2121277359medicineInputItem2;
         if(_loc2_ !== param1)
         {
            this._2121277359medicineInputItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineInputItem2",_loc2_,param1));
         }
      }
      
      public function set medicineInputItem3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._2121277360medicineInputItem3;
         if(_loc2_ !== param1)
         {
            this._2121277360medicineInputItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineInputItem3",_loc2_,param1));
         }
      }
      
      private function newCookAll() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 3)
         {
            if(this["cookInputItem" + _loc1_].giid == -1)
            {
               return;
            }
            _loc1_++;
         }
         if(this["cookInputItem" + 1].stackNum >= this["cookRequire" + 1].stackNum && this["cookInputItem" + 2].stackNum >= this["cookRequire" + 2].stackNum && this["cookInputItem" + 3].stackNum >= this["cookRequire" + 3].stackNum)
         {
            flag = true;
            newCook();
         }
      }
      
      public function set cookCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._1624210112cookCanvas;
         if(_loc2_ !== param1)
         {
            this._1624210112cookCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookCanvas",_loc2_,param1));
         }
      }
      
      public function set medicineBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2061716930medicineBtn;
         if(_loc2_ !== param1)
         {
            this._2061716930medicineBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineBtn",_loc2_,param1));
         }
      }
      
      public function set medicineRequire1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._75035706medicineRequire1;
         if(_loc2_ !== param1)
         {
            this._75035706medicineRequire1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineRequire1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LifeSkillPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LifeSkillPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_LifeSkillPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      private function medicineViewClear() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 3)
         {
            this["medicineRequire" + _loc1_].clean();
            this["medicineInputItem" + _loc1_].clean();
            _loc1_++;
         }
         medicineAward.clean();
         medicineAward1.clean();
         medicineAward1.visible = false;
         medicineAwardLabel1.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get classType2() : ComboBox
      {
         return this._300291680classType2;
      }
      
      private function cookInputItemChange(param1:Event) : void
      {
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         if(!cookList.selectedItem)
         {
            return;
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            if(-1 == this["cookInputItem" + _loc2_].giid)
            {
               cook.enabled = false;
               cookAll.enabled = false;
               return;
            }
            _loc2_++;
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 3)
         {
            if(this["cookInputItem" + _loc3_].stackNum < this["cookRequire" + _loc3_].stackNum)
            {
               cook.enabled = false;
               cookAll.enabled = false;
               return;
            }
            _loc3_++;
         }
         var _loc4_:int = 1;
         while(_loc4_ <= 3)
         {
            _loc5_ = Number(this["cookInputItem" + _loc4_].giid);
            _loc6_ = _core.data.getData(GamePredef.TBL_ITEM_INSTANCE,_loc5_);
            _loc7_ = _loc6_.tid;
            if(this["cookRequire" + _loc4_].giid != _loc7_)
            {
               cook.enabled = false;
               cookAll.enabled = false;
               return;
            }
            _loc4_++;
         }
         cook.enabled = true;
         cookAll.enabled = true;
      }
      
      public function set medicineRequire2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._75035705medicineRequire2;
         if(_loc2_ !== param1)
         {
            this._75035705medicineRequire2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineRequire2",_loc2_,param1));
         }
      }
      
      public function set cookRequire1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1505392340cookRequire1;
         if(_loc2_ !== param1)
         {
            this._1505392340cookRequire1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookRequire1",_loc2_,param1));
         }
      }
      
      private function _LifeSkillPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.LIFESKILLPANEL_S[0];
         _loc1_ = Language.LIFESKILLPANEL_S[43];
         _loc1_ = Language.LIFESKILLPANEL_S[47];
         _loc1_ = Language.LIFESKILLPANEL_S[54];
         _loc1_ = Language.LIFESKILLPANEL_S[48];
         _loc1_ = Language.LIFESKILLPANEL_S[49];
         _loc1_ = Language.LIFESKILLPANEL_S[50];
         _loc1_ = Language.LIFESKILLPANEL_S[51];
         _loc1_ = Language.LIFESKILLPANEL_S[52];
         _loc1_ = Language.LIFESKILLPANEL_S[44];
         _loc1_ = Language.LIFESKILLPANEL_S[47];
         _loc1_ = Language.LIFESKILLPANEL_S[54];
         _loc1_ = Language.LIFESKILLPANEL_S[48];
         _loc1_ = Language.LIFESKILLPANEL_S[49];
         _loc1_ = Language.LIFESKILLPANEL_S[50];
         _loc1_ = Language.LIFESKILLPANEL_S[51];
         _loc1_ = Language.LIFESKILLPANEL_S[52];
         _loc1_ = Language.LIFESKILLPANEL_S[43];
         _loc1_ = Language.LIFESKILLPANEL_S[44];
      }
      
      public function set classType(param1:ComboBox) : void
      {
         var _loc2_:Object = this._9686830classType;
         if(_loc2_ !== param1)
         {
            this._9686830classType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classType",_loc2_,param1));
         }
      }
      
      public function __cook_click(param1:MouseEvent) : void
      {
         newCook();
      }
      
      public function __classType_change(param1:ListEvent) : void
      {
         classTypeSelect();
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineInputItem2() : ItemSlot
      {
         return this._2121277359medicineInputItem2;
      }
      
      public function set cookAward1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1586878172cookAward1;
         if(_loc2_ !== param1)
         {
            this._1586878172cookAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookAward1",_loc2_,param1));
         }
      }
      
      public function set cookRequire2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1505392341cookRequire2;
         if(_loc2_ !== param1)
         {
            this._1505392341cookRequire2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookRequire2",_loc2_,param1));
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         BtnClick(1);
      }
      
      public function set cookRequire3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1505392342cookRequire3;
         if(_loc2_ !== param1)
         {
            this._1505392342cookRequire3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookRequire3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineInputItem1() : ItemSlot
      {
         return this._2121277358medicineInputItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineInputItem3() : ItemSlot
      {
         return this._2121277360medicineInputItem3;
      }
      
      public function set medicineAwardLabel1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._218813920medicineAwardLabel1;
         if(_loc2_ !== param1)
         {
            this._218813920medicineAwardLabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineAwardLabel1",_loc2_,param1));
         }
      }
      
      public function set medicineAllBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1754248235medicineAllBtn;
         if(_loc2_ !== param1)
         {
            this._1754248235medicineAllBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineAllBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get makeList() : List
      {
         return this._40272812makeList;
      }
      
      public function __medicineCanvas_creationComplete(param1:FlexEvent) : void
      {
         initTab(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineRequire1() : ItemSlot
      {
         return this._75035706medicineRequire1;
      }
      
      private function medicineListChange() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:int = 0;
         if(medicineList.selectedItem != null)
         {
            medicineViewClear();
            currentSkillId = medicineList.selectedItem.id;
            _loc1_ = Number(medicineList.selectedItem.useItemId);
            this["medicineAward"].type = GamePredef.TBL_ITEM_TEMPLATE;
            this["medicineAward"].giid = _loc1_;
            this["medicineAward"].stackNum = "1";
            trace("this skill is learned?" + medicineList.selectedItem.isLearned);
            if(medicineList.selectedItem.isLearned)
            {
               _loc2_ = Number(medicineList.selectedItem.useItemType);
               if(-1 != _loc2_)
               {
                  this["medicineAward1"].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["medicineAward1"].giid = _loc2_;
                  this["medicineAward1"].stackNum = "1";
                  this["medicineAward1"].visible = true;
                  medicineAwardLabel1.visible = true;
               }
               _loc3_ = new Array();
               _loc4_ = new Array();
               _loc3_[1] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].i1;
               _loc3_[2] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].i2;
               _loc3_[3] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].i3;
               _loc4_[1] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].n1;
               _loc4_[2] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].n2;
               _loc4_[3] = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][_loc1_].n3;
               _loc5_ = 1;
               while(_loc5_ <= 3)
               {
                  this["medicineRequire" + _loc5_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["medicineRequire" + _loc5_].giid = _loc3_[_loc5_];
                  this["medicineRequire" + _loc5_].stackNum = _loc4_[_loc5_];
                  _loc5_++;
               }
            }
            medicineBtn.enabled = false;
            medicineAllBtn.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineBtn() : BasicGlowButton
      {
         return this._2061716930medicineBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineRequire2() : ItemSlot
      {
         return this._75035705medicineRequire2;
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineRequire3() : ItemSlot
      {
         return this._75035704medicineRequire3;
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineAllBtn() : BasicGlowButton
      {
         return this._1754248235medicineAllBtn;
      }
      
      public function set medicineRequire3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._75035704medicineRequire3;
         if(_loc2_ !== param1)
         {
            this._75035704medicineRequire3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medicineRequire3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineAwardLabel1() : BasicTxtButton
      {
         return this._218813920medicineAwardLabel1;
      }
      
      public function set cookAward(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._189736949cookAward;
         if(_loc2_ !== param1)
         {
            this._189736949cookAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cookAward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cookAward() : ItemSlot
      {
         return this._189736949cookAward;
      }
      
      private function newMedicine() : void
      {
         medicineCanvas.enabled = false;
         progressBar2.visible = true;
         progressBar2.progressName = Language.LIFESKILLPANEL_S[53];
         progressBar2.completeFunction = completeMedicine;
         progressBar2.showByTime(2);
      }
      
      public function __medicineLevelList_itemClick(param1:ListEvent) : void
      {
         medicineLevelListChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get medicineList() : List
      {
         return this._510997000medicineList;
      }
   }
}

