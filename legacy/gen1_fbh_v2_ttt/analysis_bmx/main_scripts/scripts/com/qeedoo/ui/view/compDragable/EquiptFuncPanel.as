package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.adobe.serialization.json.JSON;
   import com.adobe.utils.StringUtil;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.utils.JSONUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.AutoTextArea;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DescriptionLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.EquipFunc;
   import com.qeedoo.ui.view.comp.EquipFuncBag;
   import com.qeedoo.ui.view.comp.HtmlComboItemRenderer;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotEquFunc;
   import com.qeedoo.ui.view.comp.ItemSlotJewel;
   import com.qeedoo.ui.view.comp.ItemSlotMaterial;
   import com.qeedoo.ui.view.comp.ItemSlotStar;
   import com.qeedoo.ui.view.comp.ProgressBarCanvas;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.Menu;
   import mx.controls.NumericStepper;
   import mx.controls.Spacer;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.controls.Tree;
   import mx.controls.VRule;
   import mx.core.ClassFactory;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DropdownEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   import style.Assets;
   
   use namespace mx_internal;
   
   public class EquiptFuncPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"eTitle",
                  "events":{"creationComplete":"__eTitle_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tabA",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":60,
                        "width":470,
                        "height":325,
                        "creationPolicy":"auto",
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"makeCanvas",
                           "events":{"creationComplete":"__makeCanvas_creationComplete"},
                           "stylesFactory":function():void
                           {
                              this.disabledOverlayAlpha = 0.1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Tree,
                                    "id":"makeTree",
                                    "events":{
                                       "mouseDown":"__makeTree_mouseDown",
                                       "itemClick":"__makeTree_itemClick",
                                       "change":"__makeTree_change"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "width":96,
                                          "height":307,
                                          "y":5,
                                          "iconField":"myIcon",
                                          "styleName":"CSSBorder"
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
                                          "height":235,
                                          "styleName":"CanvasBorder",
                                          "width":253,
                                          "x":210,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"makeAward",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":9,
                                                   "y":36,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"makeRequire1",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":9,
                                                   "y":101,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"makeRequire2",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":49,
                                                   "y":101,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"makeRequire3",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90,
                                                   "y":101,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotMaterial,
                                             "id":"makeInputItem1",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":9,
                                                   "y":166,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotMaterial,
                                             "id":"makeInputItem2",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":49,
                                                   "y":166,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotMaterial,
                                             "id":"makeInputItem3",
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":90,
                                                   "y":166,
                                                   "movable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_EquiptFuncPanel_BasicGlowButton1",
                                             "events":{"click":"___EquiptFuncPanel_BasicGlowButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "styleName":"BtnNormalRed",
                                                   "y":206,
                                                   "width":99
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_EquiptFuncPanel_BasicTxtButton1",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":12,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_EquiptFuncPanel_BasicTxtButton2",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":75,
                                                   "height":18
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_EquiptFuncPanel_BasicTxtButton3",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":8,
                                                   "y":140,
                                                   "height":18
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":List,
                                    "id":"makeList",
                                    "events":{
                                       "itemClick":"__makeList_itemClick",
                                       "mouseDown":"__makeList_mouseDown"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":107,
                                          "y":5,
                                          "width":94,
                                          "height":205,
                                          "styleName":"CSSBorder",
                                          "labelField":"name"
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
                                          "height":67,
                                          "y":245,
                                          "styleName":"CanvasBorder",
                                          "width":357,
                                          "x":106,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"makeButton",
                                             "events":{"click":"__makeButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":297,
                                                   "y":37,
                                                   "enabled":false,
                                                   "styleName":"BtnStdRed",
                                                   "width":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ProgressBarCanvas,
                                             "id":"progressBar",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 2171169;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":32,
                                                   "y":40,
                                                   "width":205,
                                                   "showCancelButton":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"makePer1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.textAlign = "right";
                                                this.color = 65280;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":68,
                                                   "width":65,
                                                   "text":"100%",
                                                   "y":9
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"makePer2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.textAlign = "right";
                                                this.color = 5954812;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":138,
                                                   "width":65,
                                                   "text":"100%",
                                                   "y":9
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"makePer3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.textAlign = "right";
                                                this.color = 16711935;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":208,
                                                   "width":65,
                                                   "text":"100%",
                                                   "y":9
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BoxLabel,
                                             "id":"makePer4",
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                                this.textAlign = "right";
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":278,
                                                   "width":65,
                                                   "text":"100%",
                                                   "y":9
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicTxtButton,
                                             "id":"_EquiptFuncPanel_BasicTxtButton4",
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 1;
                                                this.paddingRight = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":4,
                                                   "y":10,
                                                   "width":64,
                                                   "height":18
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ComboBox,
                                    "id":"classType",
                                    "events":{
                                       "change":"__classType_change",
                                       "close":"__classType_close"
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":107,
                                          "width":95,
                                          "editable":false,
                                          "y":213,
                                          "rowCount":7
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":EquipFunc,
                           "id":"equipChange",
                           "events":{"creationComplete":"__equipChange_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_EquiptFuncPanel_Canvas4",
                           "events":{"creationComplete":"___EquiptFuncPanel_Canvas4_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_EquiptFuncPanel_Image1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":110};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotMaterial,
                                    "id":"materialMixItem",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":120,
                                          "movable":false,
                                          "x":217,
                                          "haveRequireSlot":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"materialMixNum",
                                    "events":{"change":"__materialMixNum_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":246,
                                          "minimum":2,
                                          "maximum":5,
                                          "x":165,
                                          "value":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"materialMixPer",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":249,
                                          "label":"100%",
                                          "x":267
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"materialButtonAll",
                                    "events":{"click":"__materialButtonAll_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdGreen",
                                          "x":130,
                                          "width":80,
                                          "y":296
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"materialButtonOne",
                                    "events":{"click":"__materialButtonOne_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":260,
                                          "width":50,
                                          "y":296
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_EquiptFuncPanel_BasicTxtButton6",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                       this.horizontalCenter = "-4";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":158,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_EquiptFuncPanel_BasicTxtButton7",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":165,
                                          "y":227,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_EquiptFuncPanel_BasicTxtButton8",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":250,
                                          "y":226,
                                          "width":163,
                                          "height":18
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_EquiptFuncPanel_Canvas5",
                           "events":{"creationComplete":"___EquiptFuncPanel_Canvas5_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_EquiptFuncPanel_Image2",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":110};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotJewel,
                                    "id":"jewelUpdateItem1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":182,
                                          "movable":false,
                                          "showStackNum":true,
                                          "x":112
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlotJewel,
                                    "id":"jewelUpdateItem2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":181,
                                          "x":325
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"jewelUpdateNum",
                                    "events":{"change":"__jewelUpdateNum_change"},
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":268,
                                          "minimum":2,
                                          "maximum":5,
                                          "x":128,
                                          "value":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"jewelUpdatePer",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.right = "50";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":269,
                                          "label":"100%"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"jewelUpdateButtonAll",
                                    "events":{"click":"__jewelUpdateButtonAll_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":257,
                                          "styleName":"BtnStdGreen",
                                          "x":193,
                                          "width":80
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"jewelUpdateButtonOne",
                                    "events":{"click":"__jewelUpdateButtonOne_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "x":209,
                                          "width":50,
                                          "y":296
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_EquiptFuncPanel_BasicTxtButton10",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                       this.horizontalCenter = "-108";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":143,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_EquiptFuncPanel_BasicTxtButton11",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":310,
                                          "y":143,
                                          "width":76,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_EquiptFuncPanel_BasicTxtButton12",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":56,
                                          "y":270,
                                          "width":65,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_EquiptFuncPanel_BasicTxtButton13",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                       this.right = "96";
                                       this.textAlign = "right";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":269,
                                          "height":18
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_EquiptFuncPanel_Canvas6",
                           "events":{"creationComplete":"___EquiptFuncPanel_Canvas6_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_EquiptFuncPanel_Image3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":185,
                                          "y":105,
                                          "width":285,
                                          "height":220
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"tabD",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":95,
                                          "width":370,
                                          "y":5,
                                          "height":312,
                                          "creationPolicy":"auto",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_EquiptFuncPanel_Canvas7",
                                             "events":{"creationComplete":"___EquiptFuncPanel_Canvas7_creationComplete"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"MWChangeLevel",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":173,
                                                            "movable":false,
                                                            "x":167
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton7",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton7_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingBottom = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":50,
                                                            "y":286
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":227,
                                                            "y":264
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":132,
                                                            "y":213
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton14",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":150,
                                                            "y":147,
                                                            "width":76,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"spiritualityLabel",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":72,
                                                            "y":253
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"upgradeRequireLabel",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":202,
                                                            "y":253
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_EquiptFuncPanel_Canvas8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"MWResolve",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":178,
                                                            "movable":false,
                                                            "x":85
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"MWResolve2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":250,
                                                            "movable":false,
                                                            "x":85
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotMaterial,
                                                      "id":"blueStoneGet",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "movable":false,
                                                            "y":178,
                                                            "haveRequireSlot":false,
                                                            "x":248
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton8",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton8_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingBottom = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":50,
                                                            "y":187
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton9",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton9_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingBottom = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":50,
                                                            "y":258
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton15",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":64,
                                                            "y":152,
                                                            "width":76,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton16",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":64,
                                                            "y":225,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton17",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":227,
                                                            "y":152,
                                                            "width":76,
                                                            "height":18
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_EquiptFuncPanel_Canvas9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"MWRepair",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":178,
                                                            "movable":false,
                                                            "x":85
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"blueStoneNeed",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "movable":false,
                                                            "y":178,
                                                            "x":248
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton10",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton10_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingBottom = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":50,
                                                            "y":286
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton18",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "-83";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton19",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "80";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":18
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"mwSuccinctCanvas",
                                             "events":{"creationComplete":"__mwSuccinctCanvas_creationComplete"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"MwSuccinct",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":145,
                                                            "movable":false,
                                                            "x":7
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"oldPro0",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "editable":false,
                                                            "x":94,
                                                            "y":110,
                                                            "text":"",
                                                            "width":220,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"oldPro1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "editable":false,
                                                            "x":94,
                                                            "y":134,
                                                            "text":"",
                                                            "width":220,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"oldPro2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "editable":false,
                                                            "x":94,
                                                            "y":158,
                                                            "text":"",
                                                            "width":220,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"newPro0",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "editable":false,
                                                            "x":94,
                                                            "y":196,
                                                            "text":"",
                                                            "width":220,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"newPro1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "editable":false,
                                                            "x":94,
                                                            "y":220,
                                                            "text":"",
                                                            "width":220,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextInput,
                                                      "id":"newPro2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "editable":false,
                                                            "x":94,
                                                            "y":246,
                                                            "text":"",
                                                            "width":220,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_EquiptFuncPanel_Label2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16775802;
                                                         this.textAlign = "right";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":111
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_EquiptFuncPanel_Label3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16775802;
                                                         this.textAlign = "right";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":0,
                                                            "y":201
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"itemInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "25";
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"x":27};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"autoBuy",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                         this.bottom = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":7,
                                                            "width":96.2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"costInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "25";
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"x":160};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"actBtn0",
                                                      "events":{"click":"__actBtn0_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "7";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "styleName":"BtnStdRed",
                                                            "y":110,
                                                            "width":45,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"actBtn1",
                                                      "events":{"click":"__actBtn1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "7";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "styleName":"BtnStdRed",
                                                            "y":134,
                                                            "width":45,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"actBtn2",
                                                      "events":{"click":"__actBtn2_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "7";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "styleName":"BtnStdRed",
                                                            "y":158,
                                                            "width":45,
                                                            "height":20
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"lock0",
                                                      "events":{"click":"__lock0_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "x":318,
                                                            "y":110
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"lock1",
                                                      "events":{"click":"__lock1_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "x":318,
                                                            "y":134
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"lock2",
                                                      "events":{"click":"__lock2_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "x":318,
                                                            "y":158
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton14",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton14_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":111.2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"succinctBtn",
                                                      "events":{"click":"__succinctBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.bottom = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":196.2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton16",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton16_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.right = "15";
                                                         this.bottom = "0";
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
                                             "id":"_EquiptFuncPanel_Canvas11",
                                             "events":{"creationComplete":"___EquiptFuncPanel_Canvas11_creationComplete"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"MWResetSkill",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":178,
                                                            "movable":false,
                                                            "x":85
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"redStoneNeed",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "movable":false,
                                                            "y":178,
                                                            "x":248
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton17",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton17_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingBottom = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":50,
                                                            "y":283
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton20",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "-83";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton21",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "80";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"transRequireLabel",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":120.5,
                                                            "y":253
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel5",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":51,
                                                            "y":218
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ComboBox,
                                                      "id":"MWSkills",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":36,
                                                            "width":120,
                                                            "rowCount":4,
                                                            "y":280
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_EquiptFuncPanel_Canvas12",
                                             "events":{"creationComplete":"___EquiptFuncPanel_Canvas12_creationComplete"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"MWTransTo",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":178,
                                                            "movable":false,
                                                            "x":85
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"MWTransFrom",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":178,
                                                            "movable":false,
                                                            "x":248
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"transItemNeed",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "movable":false,
                                                            "y":178,
                                                            "x":168
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton18",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton18_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingBottom = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":50,
                                                            "y":280
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton22",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "-85";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton23",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "79";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton24",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":18
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_EquiptFuncPanel_Canvas13",
                                             "events":{"creationComplete":"___EquiptFuncPanel_Canvas13_creationComplete"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"mwResetProp",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":178,
                                                            "movable":false,
                                                            "x":115
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"resetStoneNeed",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "movable":false,
                                                            "y":178,
                                                            "x":208
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton19",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton19_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingBottom = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":50,
                                                            "y":286
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton25",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "-54";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":151,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton26",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "58";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":151,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextArea,
                                                      "id":"curPropTA",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "left";
                                                         this.left = "10";
                                                         this.color = 1961723;
                                                         this.backgroundAlpha = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":100,
                                                            "width":110,
                                                            "editable":false,
                                                            "alpha":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextArea,
                                                      "id":"maxPropTA",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "left";
                                                         this.right = "10";
                                                         this.color = 1961723;
                                                         this.backgroundAlpha = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":152,
                                                            "height":100,
                                                            "width":110,
                                                            "editable":false,
                                                            "alpha":0
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"resetRequireLabel1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":137,
                                                            "y":247
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"resetRequireLabel2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":137,
                                                            "y":222
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"_EquiptFuncPanel_Canvas14",
                                             "events":{"creationComplete":"___EquiptFuncPanel_Canvas14_creationComplete"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "-45";
                                                         this.horizontalAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":115,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":BasicTxtButton,
                                                               "id":"_EquiptFuncPanel_BasicTxtButton27"
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlotEquFunc,
                                                               "id":"stageEqu",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"movable":false};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":VBox,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "45";
                                                         this.horizontalAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":115,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":BasicTxtButton,
                                                               "id":"_EquiptFuncPanel_BasicTxtButton28"
                                                            }),new UIComponentDescriptor({
                                                               "type":ItemSlot,
                                                               "id":"stageItem",
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"movable":false};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextArea,
                                                      "id":"hintTxt",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16776960;
                                                         this.borderStyle = "none";
                                                         this.horizontalCenter = "0";
                                                         this.backgroundAlpha = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":195,
                                                            "width":180,
                                                            "height":80,
                                                            "selectable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "id":"_EquiptFuncPanel_Canvas15",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.borderStyle = "none";
                                                         this.backgroundAlpha = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":182,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":HBox,
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.horizontalGap = 28;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"childDescriptors":[new UIComponentDescriptor({
                                                                     "type":AutoTextArea,
                                                                     "id":"stagePropLeft",
                                                                     "stylesFactory":function():void
                                                                     {
                                                                        this.backgroundAlpha = 0;
                                                                        this.borderStyle = "none";
                                                                     }
                                                                  }),new UIComponentDescriptor({
                                                                     "type":AutoTextArea,
                                                                     "id":"stagePropRight",
                                                                     "stylesFactory":function():void
                                                                     {
                                                                        this.backgroundAlpha = 0;
                                                                        this.borderStyle = "none";
                                                                     }
                                                                  })]};
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"_EquiptFuncPanel_Image4",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.horizontalCenter = "15";
                                                                  this.verticalCenter = "0";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {"rotation":90};
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":AutoTextArea,
                                                      "id":"consumeTxt",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 1961723;
                                                         this.borderStyle = "none";
                                                         this.horizontalCenter = "0";
                                                         this.backgroundAlpha = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":232,
                                                            "selectable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_EquiptFuncPanel_BasicGlowButton20",
                                                      "events":{"click":"___EquiptFuncPanel_BasicGlowButton20_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdRed",
                                                            "y":285
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VRule,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":8,
                                          "height":311
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":List,
                                    "id":"magEquFuncList",
                                    "events":{
                                       "change":"__magEquFuncList_change",
                                       "creationComplete":"__magEquFuncList_creationComplete"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderSides = "0";
                                       this.backgroundAlpha = 0;
                                       this.textRollOverColor = 16366965;
                                       this.textSelectedColor = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":80,
                                          "height":310,
                                          "x":10,
                                          "y":8
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_EquiptFuncPanel_Canvas16",
                           "events":{"creationComplete":"___EquiptFuncPanel_Canvas16_creationComplete"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_EquiptFuncPanel_Image5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":120,
                                          "y":130,
                                          "width":350,
                                          "height":195
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"tabC",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":95,
                                          "width":375,
                                          "y":8,
                                          "height":317,
                                          "creationPolicy":"all",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "label":" ",
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"petEquStarItem",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":166,
                                                            "movable":false,
                                                            "x":81
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotStar,
                                                      "id":"petEquStarJewel",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":166,
                                                            "movable":false,
                                                            "x":259
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"petEquStarInfo1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.right = "210";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":205,
                                                            "label":"10"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"petEquStarInfo2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.right = "29";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":205,
                                                            "label":"100%",
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"petEquStarBasic",
                                                      "events":{"change":"__petEquStarBasic_change"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":81,
                                                            "y":257,
                                                            "value":5,
                                                            "minimum":1,
                                                            "maximum":5,
                                                            "width":50,
                                                            "height":21
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"petEquStarMax",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":254,
                                                            "y":257,
                                                            "minimum":1,
                                                            "maximum":10,
                                                            "width":50,
                                                            "height":21
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"petEquStarAllBtn",
                                                      "events":{"click":"__petEquStarAllBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingTop = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":157.5,
                                                            "y":227,
                                                            "styleName":"BtnStdGreen",
                                                            "enabled":false,
                                                            "width":80
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"petEquStarOneBtn",
                                                      "events":{"click":"__petEquStarOneBtn_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":165.5,
                                                            "styleName":"BtnStdRed",
                                                            "enabled":false,
                                                            "width":50,
                                                            "y":286
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton31",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":65,
                                                            "y":136,
                                                            "width":76,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton32",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":240,
                                                            "y":136,
                                                            "width":76,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton33",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.right = "244";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":205,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton34",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.right = "71";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":205,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton35",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":66,
                                                            "y":231,
                                                            "width":65,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton36",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":254,
                                                            "y":231,
                                                            "width":92,
                                                            "height":18
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
                                                   "label":" ",
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"petEquReadyLevelup",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":149,
                                                            "movable":false,
                                                            "x":69
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"nextPetEqu",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":216,
                                                            "x":69
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquLevelupItemNeed",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":184,
                                                            "x":167,
                                                            "movable":false,
                                                            "label":"所需材料"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquLevelupItem",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":183,
                                                            "x":266,
                                                            "label":"放入材料"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton37",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":49,
                                                            "y":129,
                                                            "width":75,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton38",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "-101";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":193,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton39",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "-3";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":160,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton40",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":241,
                                                            "y":160,
                                                            "width":90,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton41",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "x":196,
                                                            "y":253,
                                                            "width":64,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton42",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "x":205,
                                                            "y":219,
                                                            "width":61,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"petEquLevelupRate",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "y":253,
                                                            "label":"100%",
                                                            "x":268,
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":NumericStepper,
                                                      "id":"petEquLevelupBasic",
                                                      "events":{"change":"__petEquLevelupBasic_change"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 2171169;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "visible":false,
                                                            "x":271,
                                                            "y":218,
                                                            "value":5,
                                                            "minimum":1,
                                                            "maximum":5,
                                                            "width":50,
                                                            "height":21
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquLevelupReqNum",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.color = 255;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":228,
                                                            "y":222,
                                                            "width":131,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel8",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":29,
                                                            "y":252,
                                                            "width":105
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquLevelupMoney",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":130,
                                                            "y":253,
                                                            "width":43
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquLevelupInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":288,
                                                            "width":140,
                                                            "x":10
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel9",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":35,
                                                            "y":111,
                                                            "width":100
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicDelayButton,
                                                      "id":"petEquLevelupBtn",
                                                      "events":{"click":"__petEquLevelupBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingTop = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "clickDelay":5000,
                                                            "x":153,
                                                            "styleName":"BtnStdRed",
                                                            "width":80,
                                                            "y":286
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
                                                   "label":" ",
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"petEquReadyModColor",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":175,
                                                            "movable":false,
                                                            "x":73
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquModColorNeedItem",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":175,
                                                            "x":171
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquModColorItem",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":175,
                                                            "x":268
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton44",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":54,
                                                            "y":145,
                                                            "width":75,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton45",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":151,
                                                            "y":145,
                                                            "width":66,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton46",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":246,
                                                            "y":145,
                                                            "width":91,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquModReqNum",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.color = 255;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":227,
                                                            "y":215,
                                                            "width":131,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton47",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.right = "72";
                                                         this.textAlign = "right";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":241,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"petEquModColorRate",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.right = "27";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":241,
                                                            "label":"100%",
                                                            "width":40,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquModColorInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                         this.textAlign = "center";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":284,
                                                            "width":148,
                                                            "x":10
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel10",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":63,
                                                            "y":246,
                                                            "width":105
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquModColorMoney",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":171,
                                                            "y":248,
                                                            "width":43
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel11",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":36,
                                                            "y":215,
                                                            "width":100
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicDelayButton,
                                                      "id":"petEquModColorBtn",
                                                      "events":{"click":"__petEquModColorBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingTop = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "clickDelay":2000,
                                                            "x":160,
                                                            "styleName":"BtnStdRed",
                                                            "width":60,
                                                            "y":286
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
                                                   "label":" ",
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"petEquReadyModBind",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":175,
                                                            "movable":false,
                                                            "x":73
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquModBindNeedItem",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":175,
                                                            "x":171
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquModBindItem",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":175,
                                                            "x":268
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"modBindReqNum",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.color = 255;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":227,
                                                            "y":215,
                                                            "width":131,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel12",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":36,
                                                            "y":236,
                                                            "width":105
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":137,
                                                            "y":237,
                                                            "text":"30000",
                                                            "width":43
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton49",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":54,
                                                            "y":145,
                                                            "width":75,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton50",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.horizontalCenter = "-4";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":145,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton51",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":246,
                                                            "y":145,
                                                            "width":91,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquModBindSucc",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                         this.textAlign = "right";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":255,
                                                            "width":111.5,
                                                            "x":45,
                                                            "height":21
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquModBindInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                         this.textAlign = "left";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":255,
                                                            "width":155.5,
                                                            "x":156,
                                                            "height":35
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel13",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":36,
                                                            "y":215,
                                                            "width":100
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicDelayButton,
                                                      "id":"petEquModBindBtn",
                                                      "events":{"click":"__petEquModBindBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingTop = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "clickDelay":5000,
                                                            "x":160,
                                                            "styleName":"BtnStdRed",
                                                            "width":60,
                                                            "y":288
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
                                                   "label":" ",
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":ItemSlotEquFunc,
                                                      "id":"petEquReadyPre",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":137,
                                                            "movable":false,
                                                            "x":161
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquModPreNeedItem",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":200,
                                                            "x":127
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":ItemSlot,
                                                      "id":"petEquModPreItem",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":200,
                                                            "x":196
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"modPreReqNum",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                         this.color = 255;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":146,
                                                            "y":236,
                                                            "width":131,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel14",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":36,
                                                            "y":256,
                                                            "width":105
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":97,
                                                            "y":257,
                                                            "text":"30000",
                                                            "width":43
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton52",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":147,
                                                            "y":111,
                                                            "width":75,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton53",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":117,
                                                            "y":179,
                                                            "width":66,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicTxtButton,
                                                      "id":"_EquiptFuncPanel_BasicTxtButton54",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingLeft = 0;
                                                         this.paddingRight = 0;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":176,
                                                            "y":179,
                                                            "width":91,
                                                            "height":18
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquModPreSucc",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                         this.textAlign = "right";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":255,
                                                            "width":111.5,
                                                            "x":45,
                                                            "height":21
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"petEquModPreInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 14026246;
                                                         this.textAlign = "left";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":255,
                                                            "width":155.5,
                                                            "x":156,
                                                            "height":35
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DescriptionLabel,
                                                      "id":"_EquiptFuncPanel_DescriptionLabel15",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":215,
                                                            "y":111,
                                                            "width":100
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextArea,
                                                      "id":"curProp",
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
                                                            "y":137,
                                                            "height":107,
                                                            "width":109,
                                                            "x":10,
                                                            "editable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":TextArea,
                                                      "id":"maxProp",
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
                                                            "y":137,
                                                            "height":107,
                                                            "width":109,
                                                            "x":258,
                                                            "editable":false
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicDelayButton,
                                                      "id":"petEquModPreBtn",
                                                      "events":{"click":"__petEquModPreBtn_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.paddingTop = 1;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "clickDelay":5000,
                                                            "x":160,
                                                            "styleName":"BtnStdRed",
                                                            "width":60,
                                                            "y":280
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_EquiptFuncPanel_Label20",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":105,
                                                         "y":107
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_EquiptFuncPanel_Label21",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":204,
                                                         "y":107
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotEquFunc,
                                                   "id":"sublimeEquip",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":120,
                                                         "y":129,
                                                         "movable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"sublimeItem",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":213,
                                                         "y":129,
                                                         "movable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Canvas,
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "mouseEnabled":false,
                                                         "mouseChildren":false,
                                                         "percentWidth":100,
                                                         "height":80,
                                                         "y":187,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":AutoTextArea,
                                                            "id":"sublimeHint",
                                                            "stylesFactory":function():void
                                                            {
                                                               this.color = 16776960;
                                                               this.borderStyle = "none";
                                                               this.horizontalCenter = "0";
                                                               this.verticalCenter = "0";
                                                               this.backgroundAlpha = 0;
                                                            }
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HBox,
                                                   "id":"_EquiptFuncPanel_HBox2",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalGap = 0;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":35,
                                                         "y":169,
                                                         "width":358,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":AutoTextArea,
                                                            "id":"sublimeLeft",
                                                            "stylesFactory":function():void
                                                            {
                                                               this.backgroundAlpha = 0;
                                                               this.borderStyle = "none";
                                                            },
                                                            "propertiesFactory":function():Object
                                                            {
                                                               return {"width":128};
                                                            }
                                                         }),new UIComponentDescriptor({
                                                            "type":Canvas,
                                                            "propertiesFactory":function():Object
                                                            {
                                                               return {
                                                                  "clipContent":false,
                                                                  "percentHeight":100,
                                                                  "childDescriptors":[new UIComponentDescriptor({
                                                                     "type":Spacer,
                                                                     "propertiesFactory":function():Object
                                                                     {
                                                                        return {"width":12};
                                                                     }
                                                                  }),new UIComponentDescriptor({
                                                                     "type":Image,
                                                                     "id":"_EquiptFuncPanel_Image6",
                                                                     "stylesFactory":function():void
                                                                     {
                                                                        this.verticalCenter = "0";
                                                                        this.horizontalCenter = "15";
                                                                     },
                                                                     "propertiesFactory":function():Object
                                                                     {
                                                                        return {"rotation":90};
                                                                     }
                                                                  })]
                                                               };
                                                            }
                                                         }),new UIComponentDescriptor({
                                                            "type":AutoTextArea,
                                                            "id":"sublimeRight",
                                                            "stylesFactory":function():void
                                                            {
                                                               this.backgroundAlpha = 0;
                                                               this.borderStyle = "none";
                                                            }
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"sublimeConsume",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.textAlign = "center";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":250,
                                                         "percentWidth":100
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HBox,
                                                   "id":"_EquiptFuncPanel_HBox3",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalCenter = "0";
                                                      this.horizontalGap = 2;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":270,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":CheckBox,
                                                            "id":"autoSublime"
                                                         }),new UIComponentDescriptor({
                                                            "type":Label,
                                                            "id":"_EquiptFuncPanel_Label23",
                                                            "stylesFactory":function():void
                                                            {
                                                               this.color = 16777215;
                                                            }
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicGlowButton,
                                                   "id":"_EquiptFuncPanel_BasicGlowButton23",
                                                   "events":{"click":"___EquiptFuncPanel_BasicGlowButton23_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalCenter = "0";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "styleName":"BtnStdRed",
                                                         "height":23,
                                                         "y":282
                                                      };
                                                   }
                                                })]};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {"childDescriptors":[new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_EquiptFuncPanel_Label24",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":105,
                                                         "y":107
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_EquiptFuncPanel_Label25",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":204,
                                                         "y":107
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlotEquFunc,
                                                   "id":"restrainEquip",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":120,
                                                         "y":129,
                                                         "movable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":ItemSlot,
                                                   "id":"restrainItem",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":213,
                                                         "y":129,
                                                         "movable":false
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"restrainHint",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16776960;
                                                      this.textAlign = "center";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":202,
                                                         "percentWidth":100
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HBox,
                                                   "id":"_EquiptFuncPanel_HBox4",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalGap = 0;
                                                      this.verticalAlign = "middle";
                                                      this.horizontalCenter = "0";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":177,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":Label,
                                                            "id":"_EquiptFuncPanel_Label27",
                                                            "stylesFactory":function():void
                                                            {
                                                               this.color = 16777215;
                                                            }
                                                         }),new UIComponentDescriptor({
                                                            "type":ComboBox,
                                                            "id":"restrainBox",
                                                            "events":{"change":"__restrainBox_change"},
                                                            "propertiesFactory":function():Object
                                                            {
                                                               return {
                                                                  "width":95,
                                                                  "rowCount":4,
                                                                  "itemRenderer":_EquiptFuncPanel_ClassFactory1_c()
                                                               };
                                                            }
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"restrainView",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 16777215;
                                                      this.textAlign = "center";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":202,
                                                         "percentWidth":100
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"_EquiptFuncPanel_Label29",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.color = 65535;
                                                      this.textAlign = "center";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":237,
                                                         "percentWidth":100
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":HBox,
                                                   "id":"_EquiptFuncPanel_HBox5",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalCenter = "0";
                                                      this.horizontalGap = 2;
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "y":257,
                                                         "childDescriptors":[new UIComponentDescriptor({
                                                            "type":CheckBox,
                                                            "id":"autoRestrain"
                                                         }),new UIComponentDescriptor({
                                                            "type":Label,
                                                            "id":"_EquiptFuncPanel_Label30",
                                                            "stylesFactory":function():void
                                                            {
                                                               this.color = 16777215;
                                                            }
                                                         })]
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":BasicGlowButton,
                                                   "id":"_EquiptFuncPanel_BasicGlowButton24",
                                                   "events":{"click":"___EquiptFuncPanel_BasicGlowButton24_click"},
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalCenter = "0";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "styleName":"BtnStdRed",
                                                         "height":23,
                                                         "y":282,
                                                         "width":50
                                                      };
                                                   }
                                                })]};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":VRule,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":90,
                                          "y":8,
                                          "height":311
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":List,
                                    "id":"creEquFuncList",
                                    "events":{
                                       "change":"__creEquFuncList_change",
                                       "creationComplete":"__creEquFuncList_creationComplete"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderSides = "0";
                                       this.backgroundAlpha = 0;
                                       this.textRollOverColor = 16366965;
                                       this.textSelectedColor = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":80,
                                          "height":310,
                                          "x":10,
                                          "y":8
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
                           "id":"tabBtnA0",
                           "events":{"click":"__tabBtnA0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnA1",
                           "events":{"click":"__tabBtnA1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnA2",
                           "events":{"click":"__tabBtnA2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnA3",
                           "events":{"click":"__tabBtnA3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnA4",
                           "events":{"click":"__tabBtnA4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnA5",
                           "events":{"click":"__tabBtnA5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":66
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
                        "x":485,
                        "y":125,
                        "height":155,
                        "width":12,
                        "styleName":"EquipBagRight"
                     };
                  }
               })]
            };
         }
      });
      
      private var levelupReqNum:int = 0;
      
      private var _933747495tabBtnA3:BasicGlowButton;
      
      private var _643565254petEquReadyLevelup:ItemSlotEquFunc;
      
      private var _476789048mwResetProp:ItemSlotEquFunc;
      
      private var _1885394232sublimeItem:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var oldSuccData:Object = new Object();
      
      private var _1845096676newPro1:TextInput;
      
      private var _60073210jewelUpdateNum:NumericStepper;
      
      private var _core:Core = Core.getInstance();
      
      private var _1221705316makeInputItem3:ItemSlotMaterial;
      
      private var _1036064102autoSublime:CheckBox;
      
      private var _1836581681stageItem:ItemSlot;
      
      private var _2058846118isFirst:String = "|";
      
      private var _418363278petEquStarBasic:NumericStepper;
      
      private var _1563237501petEquLevelupReqNum:Label;
      
      private var modPreReq:int = 0;
      
      private var makeListAC:ArrayCollection;
      
      public var succinctId:int = -1;
      
      private var _1292150120magEquFuncList:List;
      
      private var _restrainPet:Alert;
      
      private var _40388036makePer3:BoxLabel;
      
      private var _948574959transItemNeed:ItemSlot;
      
      public var _EquiptFuncPanel_Label2:Label;
      
      public var _EquiptFuncPanel_Label3:Label;
      
      private var _933747494tabBtnA4:BasicGlowButton;
      
      private var _2082390040MWTransFrom:ItemSlotEquFunc;
      
      public var _EquiptFuncPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton12:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton13:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton14:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton15:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton16:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton17:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton18:BasicTxtButton;
      
      private var _1621769932petEquModColorNeedItem:ItemSlot;
      
      public var _EquiptFuncPanel_BasicTxtButton19:BasicTxtButton;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      public var _EquiptFuncPanel_BasicTxtButton20:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton21:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton22:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton23:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton24:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton25:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton26:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton27:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton28:BasicTxtButton;
      
      private var _1031382924resetRequireLabel2:DescriptionLabel;
      
      private var _410852217petEquStarJewel:ItemSlotStar;
      
      private var _1343807092petEquModPreNeedItem:ItemSlot;
      
      private var _103145573lock0:CheckBox;
      
      public var _EquiptFuncPanel_BasicTxtButton31:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton32:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton33:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton34:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton35:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton36:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton37:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton38:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton39:BasicTxtButton;
      
      private var modColorReqId:int = 0;
      
      public var jweOffMoney:Number = 1;
      
      private var _1162960632actBtn2:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicTxtButton40:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton41:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton42:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton44:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton45:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton46:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton47:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton49:BasicTxtButton;
      
      private var _1379509781oldPro1:TextInput;
      
      private var _60813428MWResetSkill:ItemSlotEquFunc;
      
      public var _EquiptFuncPanel_BasicTxtButton50:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton51:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton52:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton53:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton54:BasicTxtButton;
      
      internal var _reAlert:Alert;
      
      private var _166265644consumeTxt:AutoTextArea;
      
      private var _1131509414progressBar:ProgressBarCanvas;
      
      private var _1149285369petEquLevelupBtn:BasicDelayButton;
      
      public var introText:IntroText = new IntroText();
      
      private var _2124710308succinctBtn:BasicGlowButton;
      
      private var modBindReq:int = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _40388035makePer2:BoxLabel;
      
      private var _858071152MWResolve2:ItemSlot;
      
      private var _103145574lock1:CheckBox;
      
      private var _553145794petEquModPreItem:ItemSlot;
      
      private var skillResetIndex:int = -1;
      
      private var _1991722883jewelUpdateButtonAll:BasicGlowButton;
      
      private var modColorRate:int = 0;
      
      private var _933747493tabBtnA5:BasicGlowButton;
      
      private var _646631509petEquLevelupMoney:Label;
      
      public var useEquInfo:ArrayCollection = new ArrayCollection();
      
      private var _217727770makeCanvas:Canvas;
      
      private var _552846995petEquModPreSucc:Label;
      
      private var _sublimeAlert:Alert;
      
      private var _227709248makeButton:BasicGlowButton;
      
      private var _988812235petEquModColorMoney:Label;
      
      public var _EquiptFuncPanel_BasicGlowButton10:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton14:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton16:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton17:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton18:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton19:BasicGlowButton;
      
      private var _1788134104materialMixPer:BasicTxtButton;
      
      private var _2008127689petEquModBindSucc:Label;
      
      private var _3552079tabD:ViewStack;
      
      public var lastLineId:int = -1;
      
      public var _EquiptFuncPanel_BasicGlowButton20:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton24:BasicGlowButton;
      
      private var _1799691270petEquReadyModBind:ItemSlotEquFunc;
      
      public var _EquiptFuncPanel_BasicGlowButton23:BasicGlowButton;
      
      public var autoMatchSlots:Object;
      
      private var _2008426488petEquModBindItem:ItemSlot;
      
      private var _804327583blueStoneNeed:ItemSlot;
      
      private var _103145575lock2:CheckBox;
      
      private var _2008432221petEquModBindInfo:Label;
      
      private var _803512544petEquModReqNum:Label;
      
      public var _EquiptFuncPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton7:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton8:BasicGlowButton;
      
      public var _EquiptFuncPanel_BasicGlowButton9:BasicGlowButton;
      
      private var _1788135535materialMixNum:NumericStepper;
      
      private var _638137383sublimeConsume:Label;
      
      private var _3552078tabC:ViewStack;
      
      public var _EquiptFuncPanel_HBox2:HBox;
      
      public var _EquiptFuncPanel_HBox3:HBox;
      
      public var _EquiptFuncPanel_HBox4:HBox;
      
      public var _EquiptFuncPanel_HBox5:HBox;
      
      private var _40388034makePer1:BoxLabel;
      
      private var _304002869upgradeRequireLabel:DescriptionLabel;
      
      private var _1031382925resetRequireLabel1:DescriptionLabel;
      
      private var _843999975maxProp:TextArea;
      
      private var _43044678petEquReadyModColor:ItemSlotEquFunc;
      
      private var _1162960634actBtn0:BasicGlowButton;
      
      private var _1322604301eTitle:BasicTitleCanvas;
      
      private var _341889337petEquModBindBtn:BasicDelayButton;
      
      private var _894849577MWRepair:ItemSlotEquFunc;
      
      private var _510410697autoRestrain:CheckBox;
      
      private var _1845096675newPro0:TextInput;
      
      public var _EquiptFuncPanel_Image1:Image;
      
      public var _EquiptFuncPanel_Image2:Image;
      
      public var _EquiptFuncPanel_Image3:Image;
      
      public var _EquiptFuncPanel_Image4:Image;
      
      public var _EquiptFuncPanel_Image5:Image;
      
      public var _EquiptFuncPanel_Image6:Image;
      
      private var _1306166635stageEqu:ItemSlotEquFunc;
      
      private var _1267649387petEquLevelupRate:BasicTxtButton;
      
      private var _1678552859sublimeEquip:ItemSlotEquFunc;
      
      private var _1891128307jewelUpdateItem2:ItemSlotJewel;
      
      private var _517338458mwSuccinctCanvas:Canvas;
      
      private var _1784770749restrainBox:ComboBox;
      
      private var shopData:Object;
      
      private var _3552076tabA:ViewStack;
      
      private var _411523705petEquStarInfo1:BasicTxtButton;
      
      private var starNum:int;
      
      mx_internal var _bindings:Array = [];
      
      private var _60074641jewelUpdatePer:BasicTxtButton;
      
      private var _1926393423petEquStarItem:ItemSlotEquFunc;
      
      private var _1221705314makeInputItem1:ItemSlotMaterial;
      
      private var _103075529petEquStarAllBtn:BasicGlowButton;
      
      private var _1004296629spiritualityLabel:DescriptionLabel;
      
      private var _1267905437petEquLevelupInfo:Label;
      
      private var _860877172MWSkills:ComboBox;
      
      private var _929613692makeRequire3:ItemSlot;
      
      private var _40519340makeTree:Tree;
      
      private var SKILL_PROVIDER:ArrayCollection = new ArrayCollection([{
         "position":-1,
         "label":Language.EQUIPTFUNCPANEL_S[81]
      }]);
      
      private var eventListenerAdded:Boolean = false;
      
      private var skillListReady:Boolean = false;
      
      public var _EquiptFuncPanel_DescriptionLabel1:DescriptionLabel;
      
      public var _EquiptFuncPanel_DescriptionLabel5:DescriptionLabel;
      
      public var _alert:Alert;
      
      public var _EquiptFuncPanel_DescriptionLabel8:DescriptionLabel;
      
      public var _EquiptFuncPanel_DescriptionLabel9:DescriptionLabel;
      
      private var _sublimePet:Alert;
      
      private var _506894491restrainItem:ItemSlot;
      
      private var _192885848materialButtonAll:BasicGlowButton;
      
      public var spirituality:int = 0;
      
      private var levelupReqId:int = 0;
      
      private var currentMakeTreeIndex:int = 0;
      
      private var _273317502MwSuccinct:ItemSlotEquFunc;
      
      private var _799266457petEquModColorInfo:Label;
      
      private var _9686830classType:ComboBox;
      
      private var _1379509780oldPro2:TextInput;
      
      private var _1658087640stagePropLeft:AutoTextArea;
      
      private var _1836823818redStoneNeed:ItemSlot;
      
      private var _1177195105itemInfo:Label;
      
      private var _1885434308sublimeHint:AutoTextArea;
      
      public var _EquiptFuncPanel_Canvas5:Canvas;
      
      public var _EquiptFuncPanel_Canvas6:Canvas;
      
      public var _EquiptFuncPanel_Canvas7:Canvas;
      
      public var _EquiptFuncPanel_Canvas8:Canvas;
      
      public var _EquiptFuncPanel_Canvas9:Canvas;
      
      private var _664840300maxPropTA:TextArea;
      
      public var _EquiptFuncPanel_Canvas4:Canvas;
      
      private var _1482580427creEquFuncList:List;
      
      private var _506854415restrainHint:Label;
      
      private var _933747498tabBtnA0:BasicGlowButton;
      
      private var _1845096677newPro2:TextInput;
      
      private var _1469908056restrainEquip:ItemSlotEquFunc;
      
      private var _849134127petEquModPreBtn:BasicDelayButton;
      
      private var _1690306823sublimeRight:AutoTextArea;
      
      private var _1908571136equipChange:EquipFunc;
      
      private var _1238698255makeAward:ItemSlot;
      
      private var _1359520555blueStoneGet:ItemSlotMaterial;
      
      private var _1891128306jewelUpdateItem1:ItemSlotJewel;
      
      public var equipBag:Object = {};
      
      private var _929613691makeRequire2:ItemSlot;
      
      private var newJewelList:Object;
      
      private var _411523704petEquStarInfo2:BasicTxtButton;
      
      private var materialMixBasicRate:Number = 20;
      
      private var _299371090petEquStarOneBtn:BasicGlowButton;
      
      private var _922290793hintTxt:TextArea;
      
      private var _933747497tabBtnA1:BasicGlowButton;
      
      private var _1991736392jewelUpdateButtonOne:BasicGlowButton;
      
      private var equipBagAdded:Boolean = false;
      
      private var _40272812makeList:List;
      
      public var _EquiptFuncPanel_Canvas11:Canvas;
      
      public var _EquiptFuncPanel_Canvas12:Canvas;
      
      public var _EquiptFuncPanel_Canvas13:Canvas;
      
      public var _EquiptFuncPanel_Canvas14:Canvas;
      
      public var _EquiptFuncPanel_Canvas15:Canvas;
      
      public var _EquiptFuncPanel_Canvas16:Canvas;
      
      private var _1221705315makeInputItem2:ItemSlotMaterial;
      
      private var _1162960633actBtn1:BasicGlowButton;
      
      private var _1379509782oldPro0:TextInput;
      
      private var _144551707stagePropRight:AutoTextArea;
      
      private var _1267899704petEquLevelupItem:ItemSlot;
      
      private var _163196473MWTransTo:ItemSlotEquFunc;
      
      private var _799272190petEquModColorItem:ItemSlot;
      
      private var _1518482858MWChangeLevel:ItemSlotEquFunc;
      
      public var _EquiptFuncPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _EquiptFuncPanel_BasicTxtButton8:BasicTxtButton;
      
      private var introArr1:Array = [90,91,92,143,93,96,112,144];
      
      private var introArr2:Array = [87,88,89,98,142,175,176];
      
      private var aliasString:String = "";
      
      private var _402223208materialMixItem:ItemSlotMaterial;
      
      private var introArr3:Array = [46,48,50,51,72,57,63,73,36,39,161,171];
      
      private var lockImg:Class = EquiptFuncPanel_lockImg;
      
      private var _192872339materialButtonOne:BasicGlowButton;
      
      private var _646343081autoBuy:CheckBox;
      
      public var _EquiptFuncPanel_DescriptionLabel10:DescriptionLabel;
      
      public var _EquiptFuncPanel_DescriptionLabel11:DescriptionLabel;
      
      public var _EquiptFuncPanel_DescriptionLabel12:DescriptionLabel;
      
      public var _EquiptFuncPanel_DescriptionLabel13:DescriptionLabel;
      
      public var _EquiptFuncPanel_DescriptionLabel14:DescriptionLabel;
      
      public var _EquiptFuncPanel_DescriptionLabel15:DescriptionLabel;
      
      private var _638827390petEquLevelupItemNeed:ItemSlot;
      
      private var _442224809transRequireLabel:DescriptionLabel;
      
      private var _restrainAlert:Alert;
      
      private var modColorReqNum:int = 0;
      
      public var equiptClassType:Object = {};
      
      private var _507271213restrainView:Label;
      
      private var _1885319236sublimeLeft:AutoTextArea;
      
      private var _933747496tabBtnA2:BasicGlowButton;
      
      public var _EquiptFuncPanel_Label20:Label;
      
      public var _EquiptFuncPanel_Label21:Label;
      
      public var _EquiptFuncPanel_Label23:Label;
      
      public var _EquiptFuncPanel_Label24:Label;
      
      public var _EquiptFuncPanel_Label25:Label;
      
      public var _EquiptFuncPanel_Label27:Label;
      
      public var _EquiptFuncPanel_Label29:Label;
      
      private var _553151527petEquModPreInfo:Label;
      
      private var _255603766petEquReadyPre:ItemSlotEquFunc;
      
      private var _929613690makeRequire1:ItemSlot;
      
      private var _2067262411showBag:BasicGlowButton;
      
      public var _EquiptFuncPanel_Label30:Label;
      
      private var _303751312curPropTA:TextArea;
      
      private var _228267838petEquModBindNeedItem:ItemSlot;
      
      private var _1232558777modBindReqNum:Label;
      
      public var useEquTypeInfo:Object;
      
      public var lockDict:Dictionary = new Dictionary();
      
      private var _799522507petEquModColorRate:BasicTxtButton;
      
      private var _425010661costInfo:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _718512913petEquModColorBtn:BasicDelayButton;
      
      private var listArr1:Array = [Language.EQUIPTFUNCPANEL_U[158],Language.EQUIPTFUNCPANEL_U[159],Language.EQUIPTFUNCPANEL_U[160],Language.EQUIPTFUNCPANEL_U[205],Language.EQUIPTFUNCPANEL_U[161],Language.EQUIPTFUNCPANEL_U[176],Language.EQUIPTFUNCPANEL_U[188],Language.EQUIPTFUNCPANEL_U[237]];
      
      private var listArr2:Array = [Language.EQUIPTFUNCPANEL_U[73],Language.EQUIPTFUNCPANEL_U[74],Language.EQUIPTFUNCPANEL_U[75],Language.EQUIPTFUNCPANEL_U[69],Language.EQUIPTFUNCPANEL_U[199],Language.EQUIPTFUNCPANEL_U[272],Language.EQUIPTFUNCPANEL_U[273]];
      
      private var _itemList:Object = {
         "val":new Number(-1),
         "type":new Number(-1),
         "idList":new Array()
      };
      
      private var _1748616716resetStoneNeed:ItemSlot;
      
      private var _1967342366MWResolve:ItemSlotEquFunc;
      
      private var _1363735427nextPetEqu:ItemSlotEquFunc;
      
      private var _1252811177modPreReqNum:Label;
      
      private var _1125939651curProp:TextArea;
      
      private var _1877517656petEquStarMax:NumericStepper;
      
      private var _40388037makePer4:BoxLabel;
      
      private var _657202407petEquLevelupBasic:NumericStepper;
      
      private var tabInitialized:Array = new Array(false,false,false,false,false,false);
      
      public function EquiptFuncPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 400;
         this.styleName = "StandardContent";
      }
      
      public static function isPetEqu(param1:Object) : Boolean
      {
         return ToolKit.isEqual(param1.kind,GamePredef.ITEM_KIND_PETEQU) && ToolKit.isBigOrEqual(param1.position,GamePredef.PETEQU_POS_BEGIN) && ToolKit.isSmallOrEqual(param1.position,GamePredef.PETEQU_POS_END);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         EquiptFuncPanel._watcherSetupUtil = param1;
      }
      
      public static function isSpecPetEqu(param1:Object) : Boolean
      {
         return ToolKit.isEqual(param1.kind,GamePredef.ITEM_KIND_PETEQU) && ToolKit.isBigOrEqual(param1.position,56) && ToolKit.isSmallOrEqual(param1.position,57);
      }
      
      public function set equipChange(param1:EquipFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1908571136equipChange;
         if(_loc2_ !== param1)
         {
            this._1908571136equipChange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equipChange",_loc2_,param1));
         }
      }
      
      private function tabBtnAUpdate() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         if(tabA)
         {
            _loc1_ = tabA.selectedIndex;
         }
         else
         {
            _loc1_ = 0;
         }
         resetItemList();
         switch(_loc1_)
         {
            case 0:
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(this["makeRequire" + _loc2_].giid > 0)
                  {
                     _itemList.idList.push(this["makeRequire" + _loc2_].giid);
                  }
                  _loc2_++;
               }
               if(_itemList.idList.length > 0)
               {
                  _itemList.type = 1;
               }
               else
               {
                  _itemList.type = -1;
               }
               equipBag.showItem(_loc1_,_itemList);
               break;
            case 1:
               equipChange.tabBtnBUpdate();
               break;
            case 2:
               _itemList.type = -2;
               _itemList.idList = [GamePredef.ITEM_TYPE_DIAMOND,GamePredef.ITEM_TYPE_METAL,GamePredef.ITEM_TYPE_WOOD,GamePredef.ITEM_TYPE_JADE,GamePredef.ITEM_TYPE_CLOTH,GamePredef.ITEM_TYPE_FUR];
               equipBag.showItem(_loc1_,_itemList);
               break;
            case 3:
               _itemList.type = -2;
               _itemList.idList = [GamePredef.ITEM_TYPE_JEWEL];
               equipBag.showItem(_loc1_,_itemList);
               break;
            case 4:
               tabBtnDUpdate();
               break;
            case 5:
               tabBtnCUpdate();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModBindItem() : ItemSlot
      {
         return this._2008426488petEquModBindItem;
      }
      
      public function set petEquReadyModBind(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1799691270petEquReadyModBind;
         if(_loc2_ !== param1)
         {
            this._1799691270petEquReadyModBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquReadyModBind",_loc2_,param1));
         }
      }
      
      public function set petEquModBindItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2008426488petEquModBindItem;
         if(_loc2_ !== param1)
         {
            this._2008426488petEquModBindItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModBindItem",_loc2_,param1));
         }
      }
      
      public function set petEquLevelupBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1149285369petEquLevelupBtn;
         if(_loc2_ !== param1)
         {
            this._1149285369petEquLevelupBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupBtn",_loc2_,param1));
         }
      }
      
      public function set restrainHint(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._506854415restrainHint;
         if(_loc2_ !== param1)
         {
            this._506854415restrainHint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainHint",_loc2_,param1));
         }
      }
      
      public function validateSublime(param1:Number, param2:Number, param3:int) : void
      {
         var popStr:String = null;
         var closeHandler:Function = null;
         var slotId:Number = param1;
         var itemSid:Number = param2;
         var needGold:int = param3;
         if(_sublimeAlert)
         {
            PopUpManager.removePopUp(_sublimeAlert);
            _sublimeAlert = null;
         }
         popStr = LanguageUtil.replace(Language.EQUIPTFUNCPANEL_S[165],{"money":needGold});
         closeHandler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.NO)
            {
               return;
            }
            _core.remote.call("onValidateSublime",new Responder(equipChange.onSublimeEquip),slotId,itemSid);
         };
         _sublimeAlert = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _sublimeAlert.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      public function __magEquFuncList_creationComplete(param1:FlexEvent) : void
      {
         magEquFuncList.selectedIndex = tabD ? tabD.selectedIndex : 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainView() : Label
      {
         return this._507271213restrainView;
      }
      
      [Bindable(event="propertyChange")]
      public function get autoRestrain() : CheckBox
      {
         return this._510410697autoRestrain;
      }
      
      public function __showBag_click(param1:MouseEvent) : void
      {
         changeBagVis();
      }
      
      private function makeInputItemChange(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         if(!makeList.selectedItem)
         {
            return;
         }
         var _loc2_:Object = makeList.selectedItem.equData;
         if(_loc2_)
         {
            if(canMake())
            {
               makeButton.enabled = true;
               _loc3_ = {};
               _loc4_ = 1;
               while(_loc4_ <= 3)
               {
                  if(this["makeInputItem" + _loc4_].slotData)
                  {
                     _loc5_ = {};
                     if(this["makeInputItem" + _loc4_].tempBagFlag)
                     {
                        _loc5_.tempBagFlag = true;
                        _loc5_.idx = this["makeInputItem" + _loc4_].slotData.idx;
                     }
                     else
                     {
                        _loc5_.tempBagFlag = false;
                        _loc5_.idx = this["makeInputItem" + _loc4_].slotData.id;
                     }
                     _loc3_[_loc4_] = _loc5_;
                  }
                  _loc4_++;
               }
               _core.remote.call("getMakeColor",new Responder(onGetMakeColor),_loc3_,_loc2_.id);
            }
            else
            {
               makeButton.enabled = false;
            }
         }
      }
      
      private function tabBtnCClick(param1:int) : void
      {
         tabC.selectedIndex = param1;
         introText.htmlText = Language.EQUIPTFUNCPANEL_S[introArr2[param1]];
         tabBtnCUpdate();
      }
      
      public function set sublimeConsume(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._638137383sublimeConsume;
         if(_loc2_ !== param1)
         {
            this._638137383sublimeConsume = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeConsume",_loc2_,param1));
         }
      }
      
      private function makeViewClear() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 3)
         {
            this["makeRequire" + _loc1_].clean();
            this["makeInputItem" + _loc1_].clean();
            _loc1_++;
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 4)
         {
            this["makePer" + _loc2_].text = "0%";
            _loc2_++;
         }
         makeAward.clean();
         makeButton.enabled = false;
      }
      
      public function __petEquStarAllBtn_click(param1:MouseEvent) : void
      {
         starAll();
      }
      
      public function set restrainView(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._507271213restrainView;
         if(_loc2_ !== param1)
         {
            this._507271213restrainView = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainView",_loc2_,param1));
         }
      }
      
      private function initTab(param1:int) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:Object = null;
         var _loc4_:ArrayCollection = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:Sort = null;
         if(!tabInitialized[param1])
         {
            switch(param1)
            {
               case 0:
                  _loc2_ = new ArrayCollection();
                  _loc2_.addItem({
                     "cid":"all",
                     "label":Language.EQUIPTFUNCPANEL_S[65]
                  });
                  for each(_loc6_ in _core.data.gameData[GamePredef.TBL_CLASS])
                  {
                     if(_loc6_)
                     {
                        _loc2_.addItem({
                           "cid":_loc6_.id,
                           "label":_loc6_.name
                        });
                     }
                  }
                  classType.dataProvider = _loc2_;
                  _loc3_ = GamePredef.ITEM_KIND_TYPE;
                  _loc4_ = new ArrayCollection();
                  _loc5_ = {};
                  useEquTypeInfo = {};
                  equiptClassType = {};
                  for(_loc7_ in _loc3_)
                  {
                     if(_loc7_ == GamePredef.ITEM_KIND_PET || _loc7_ == GamePredef.ITEM_KIND_ITEM || _loc7_ == GamePredef.ITEM_KIND_MATERIAL)
                     {
                        break;
                     }
                     if(GamePredef.ITEM_KIND_NAME[_loc7_] == Language.GAMEPREDEF_S[167] || GamePredef.ITEM_KIND_NAME[_loc7_] == Language.GAMEPREDEF_S[168])
                     {
                        useEquTypeInfo[Number(_loc7_ * 100)] = new ArrayCollection();
                        useEquTypeInfo[Number(_loc7_ * 100)].removeAll();
                     }
                     _loc5_[_loc7_] = new ArrayCollection();
                     for(_loc8_ in _loc3_[_loc7_])
                     {
                        _loc5_[_loc7_].addItem({
                           "label":GamePredef.ITEM_TYPE_NAME[_loc8_],
                           "kind":_loc7_,
                           "type":_loc8_
                        });
                        if(GamePredef.ITEM_KIND_NAME[_loc7_] == Language.GAMEPREDEF_S[167] || GamePredef.ITEM_KIND_NAME[_loc7_] == Language.GAMEPREDEF_S[168])
                        {
                           useEquTypeInfo[Number(_loc7_ * 100)].addItem(Number(_loc8_));
                        }
                     }
                     _loc9_ = new Sort();
                     _loc9_.fields = [new SortField("type",true)];
                     _loc5_[_loc7_].sort = _loc9_;
                     _loc5_[_loc7_].refresh();
                     _loc4_.addItem({
                        "label":GamePredef.ITEM_KIND_NAME[_loc7_],
                        "kind":_loc7_,
                        "children":_loc5_[_loc7_]
                     });
                  }
                  useEquInfo.removeAll();
                  useEquInfo = _loc4_;
                  makeTree.dataProvider = _loc4_;
            }
            tabInitialized[param1] = true;
            activatePanel(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lock2() : CheckBox
      {
         return this._103145575lock2;
      }
      
      public function set petEquModColorMoney(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._988812235petEquModColorMoney;
         if(_loc2_ !== param1)
         {
            this._988812235petEquModColorMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModColorMoney",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lock0() : CheckBox
      {
         return this._103145573lock0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lock1() : CheckBox
      {
         return this._103145574lock1;
      }
      
      public function set autoRestrain(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._510410697autoRestrain;
         if(_loc2_ !== param1)
         {
            this._510410697autoRestrain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoRestrain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialMixItem() : ItemSlotMaterial
      {
         return this._402223208materialMixItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get resetRequireLabel1() : DescriptionLabel
      {
         return this._1031382925resetRequireLabel1;
      }
      
      [Bindable(event="propertyChange")]
      public function get materialButtonOne() : BasicGlowButton
      {
         return this._192872339materialButtonOne;
      }
      
      private function starViewClear(param1:int) : void
      {
         if(param1 == 5)
         {
            petEquStarItem.clean();
            petEquStarJewel.clean();
            petEquStarInfo1.label = "";
            petEquStarInfo2.label = "";
         }
         starNum = NaN;
      }
      
      public function __actBtn1_click(param1:MouseEvent) : void
      {
         activateMWPro(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarBasic() : NumericStepper
      {
         return this._418363278petEquStarBasic;
      }
      
      public function ___EquiptFuncPanel_Canvas7_creationComplete(param1:FlexEvent) : void
      {
         initMWPLvUp();
      }
      
      [Bindable(event="propertyChange")]
      public function get resetRequireLabel2() : DescriptionLabel
      {
         return this._1031382924resetRequireLabel2;
      }
      
      private function MWResetSkillViewClear() : void
      {
         MWSkills && MWSkills.close();
         if(MWSkills)
         {
            MWSkills.selectedIndex = 0;
         }
         MWResetSkill && MWResetSkill.clean();
         redStoneNeed && redStoneNeed.clean();
      }
      
      public function ___EquiptFuncPanel_Canvas11_creationComplete(param1:FlexEvent) : void
      {
         initMWPSkill();
      }
      
      public function onSuccinctMW(param1:Object) : void
      {
         var view:Object = null;
         var i:int = 0;
         var succ:* = undefined;
         var proInfo:Object = null;
         var colorCode:int = 0;
         var j:int = 0;
         var yesAlert:String = null;
         var func:Function = null;
         var obj:Object = param1;
         succinctBtn.enabled = true;
         if(!obj)
         {
            return;
         }
         if(obj.newPro)
         {
            i = 0;
            while(i < 3)
            {
               succ = obj.newPro["succ" + i];
               if(succ)
               {
                  proInfo = GamePredef.ACTIVATE_MW_PRO[succ["propType"]];
                  j = 0;
                  while(j < 4)
                  {
                     if(Number(succ["propVal"]) <= proInfo["top" + j])
                     {
                        colorCode = j;
                        break;
                     }
                     j++;
                  }
                  if(!obj.lockArr[i] && colorCode == 3)
                  {
                     yesAlert = Alert.yesLabel;
                     if(_reAlert)
                     {
                        PopUpManager.removePopUp(_reAlert);
                        _reAlert = null;
                     }
                     func = function(param1:CloseEvent):void
                     {
                        Alert.yesLabel = yesAlert;
                     };
                     Alert.yesLabel = Language.EQUIPTFUNCPANEL_U[236];
                     _reAlert = Alert.show(Language.EQUIPTFUNCPANEL_U[235],"",Alert.YES,null,func);
                     break;
                  }
               }
               i++;
            }
         }
         this.updateMWSuccView(null,obj.newPro);
         view = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
         if(view)
         {
            view.updateItemNum();
         }
      }
      
      private function petEquModPre() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         petEquModPreSucc.text = "";
         if(Boolean(petEquReadyPre.slotData) && Boolean(petEquModPreItem.slotData))
         {
            if(!_core.player.enoughMoneyAuto(1,GamePredef.MONEY_EQUFUNC_ELEMENT))
            {
               petEquModPreInfo.htmlText = Language.EQUIPTFUNCPANEL_S[32];
               return;
            }
            if(!ToolKit.isBigOrEqual(petEquModPreItem.stackNum,modPreReq))
            {
               petEquModPreInfo.htmlText = Language.EQUIPTFUNCPANEL_S[56];
               return;
            }
            _loc1_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][petEquReadyPre.slotData.itemId];
            if(_loc1_.color < 3)
            {
               petEquModPreInfo.htmlText = Language.EQUIPTFUNCPANEL_S[141];
               return;
            }
            _loc2_ = Number(petEquReadyPre.slotData.id);
            _loc3_ = Number(petEquModPreItem.slotData.id);
            _core.remote.call("petEquModPre",new Responder(onPetEquModPre),_loc2_,_loc3_);
         }
      }
      
      public function validateSublimePet(param1:Number, param2:Number, param3:int) : void
      {
         var popStr:String = null;
         var closeHandler:Function = null;
         var slotId:Number = param1;
         var itemSid:Number = param2;
         var needGold:int = param3;
         if(_sublimePet)
         {
            PopUpManager.removePopUp(_sublimePet);
            _sublimePet = null;
         }
         popStr = LanguageUtil.replace(Language.EQUIPTFUNCPANEL_S[165],{"money":needGold});
         closeHandler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.NO)
            {
               return;
            }
            _core.remote.call("onValidateSublimePet",new Responder(onSublimePetEquip),slotId,itemSid);
         };
         _sublimePet = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _sublimePet.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      public function set jewelUpdateButtonOne(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1991736392jewelUpdateButtonOne;
         if(_loc2_ !== param1)
         {
            this._1991736392jewelUpdateButtonOne = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelUpdateButtonOne",_loc2_,param1));
         }
      }
      
      private function mwResetPropChange(param1:Event) : void
      {
         var mwInst:Object = null;
         var onQueryMWResetPropMax:Function = null;
         var mwRate:Number = NaN;
         var e:Event = param1;
         if(mwResetProp.slotData)
         {
            resetRequireLabel1.text = Language.EQUIPTFUNCPANEL_U[192] + GamePredef.RESET_SPIRITUALITY_NEED;
            resetRequireLabel2.text = Language.EQUIPTFUNCPANEL_U[193] + GamePredef.RESET_STONE_NEED;
            mwInst = _core.data.getGameData(mwResetProp.slotData.type,mwResetProp.slotData.itemId);
            curPropTA.htmlText = Language.EQUIPTFUNCPANEL_U[194] + "<br/>";
            if(mwInst.mainProp1 > 0)
            {
               mwRate = GamePredef.MW_GROW_MAP[mwInst.mainProp1] ? Number(GamePredef.MW_GROW_MAP[mwInst.mainProp1][mwInst.upgradeNum]) : 1;
               curPropTA.htmlText += GamePredef.EQUIPT_PROP_NAME[mwInst.mainProp1] + ": " + int(mwInst.mainPropNum1 * mwRate) + (mwInst.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "<br/>";
            }
            if(mwInst.mainProp2 > 0)
            {
               mwRate = GamePredef.MW_GROW_MAP[mwInst.mainProp2] ? Number(GamePredef.MW_GROW_MAP[mwInst.mainProp2][mwInst.upgradeNum]) : 1;
               curPropTA.htmlText += GamePredef.EQUIPT_PROP_NAME[mwInst.mainProp2] + ": " + int(mwInst.mainPropNum2 * mwRate) + (mwInst.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "");
            }
            onQueryMWResetPropMax = function(param1:Object):void
            {
               var _loc2_:* = undefined;
               if(param1.succ)
               {
                  maxPropTA.htmlText = Language.EQUIPTFUNCPANEL_U[195] + "<br/>";
                  if(mwInst.mainProp1 > 0)
                  {
                     _loc2_ = GamePredef.MW_GROW_MAP[mwInst.mainProp1] ? GamePredef.MW_GROW_MAP[mwInst.mainProp1][mwInst.upgradeNum] : 1;
                     maxPropTA.htmlText += GamePredef.EQUIPT_PROP_NAME[mwInst.mainProp1] + ": " + int(param1.maxMainPropNum1 * _loc2_) + (mwInst.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "<br/>";
                  }
                  if(mwInst.mainProp2 > 0)
                  {
                     _loc2_ = GamePredef.MW_GROW_MAP[mwInst.mainProp2] ? GamePredef.MW_GROW_MAP[mwInst.mainProp2][mwInst.upgradeNum] : 1;
                     maxPropTA.htmlText += GamePredef.EQUIPT_PROP_NAME[mwInst.mainProp2] + ": " + int(param1.maxMainPropNum2 * _loc2_) + (mwInst.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || mwInst.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "");
                  }
               }
            };
            _core.remote.call("queryMWResetPropMax",new Responder(onQueryMWResetPropMax),mwResetProp.slotData.id);
         }
         else
         {
            MWResetPropViewClear();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainItem() : ItemSlot
      {
         return this._506894491restrainItem;
      }
      
      public function __tabBtnA0_click(param1:MouseEvent) : void
      {
         tabBtnAClick(0);
      }
      
      private function resetItemList() : void
      {
         _itemList.val = -1;
         _itemList.type = -1;
         _itemList.idList = [];
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquReadyModColor() : ItemSlotEquFunc
      {
         return this._43044678petEquReadyModColor;
      }
      
      public function __makeTree_change(param1:ListEvent) : void
      {
         makeTreeChange();
      }
      
      public function set petEquLevelupInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1267905437petEquLevelupInfo;
         if(_loc2_ !== param1)
         {
            this._1267905437petEquLevelupInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupInfo",_loc2_,param1));
         }
      }
      
      private function MWResetPropViewClear() : void
      {
         mwResetProp && mwResetProp.clean();
         resetStoneNeed && resetStoneNeed.clean();
         if(curPropTA)
         {
            curPropTA.htmlText = "";
         }
         if(maxPropTA)
         {
            maxPropTA.htmlText = "";
         }
         if(resetRequireLabel1)
         {
            resetRequireLabel1.text = "";
         }
         if(resetRequireLabel2)
         {
            resetRequireLabel2.text = "";
         }
      }
      
      override public function update() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,updateLater);
            return;
         }
         if(visible)
         {
            this.activatePanel(tabA.selectedIndex);
            tabBtnAUpdate();
         }
         else
         {
            this.deactivatePanel(tabA.selectedIndex);
         }
      }
      
      public function set lock0(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._103145573lock0;
         if(_loc2_ !== param1)
         {
            this._103145573lock0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upgradeRequireLabel() : DescriptionLabel
      {
         return this._304002869upgradeRequireLabel;
      }
      
      public function set lock1(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._103145574lock1;
         if(_loc2_ !== param1)
         {
            this._103145574lock1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock1",_loc2_,param1));
         }
      }
      
      public function set materialMixItem(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._402223208materialMixItem;
         if(_loc2_ !== param1)
         {
            this._402223208materialMixItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialMixItem",_loc2_,param1));
         }
      }
      
      public function onStar(param1:Object) : void
      {
         var _loc2_:String = "";
         if(param1)
         {
            if(tabA.selectedIndex == 5 && ToolKit.isEqual(param1.equSlotId,petEquStarItem.slotData.id) && ToolKit.isEqual(param1.starSlotId,petEquStarJewel.slotData.id))
            {
               petEquStarOneBtn.enabled = true;
               petEquStarAllBtn.enabled = true;
               if(ToolKit.isBigThan(param1.num,0))
               {
                  petEquStarJewel.stackNum = param1.num;
               }
               else
               {
                  petEquStarJewel.clean();
               }
            }
            starNum = param1.starNum;
            setStarInfo();
            if(param1.flag)
            {
               _loc2_ = Language.EQUIPTFUNCPANEL_S[4];
               _loc2_ = _loc2_.replace("{starNum}",starNum);
               _core.sysMidNote(_loc2_);
            }
            else
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[6]);
            }
         }
      }
      
      public function set lock2(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._103145575lock2;
         if(_loc2_ !== param1)
         {
            this._103145575lock2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lock2",_loc2_,param1));
         }
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton9_click(param1:MouseEvent) : void
      {
         magicWeaponResolve(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get classType() : ComboBox
      {
         return this._9686830classType;
      }
      
      public function set materialButtonOne(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._192872339materialButtonOne;
         if(_loc2_ !== param1)
         {
            this._192872339materialButtonOne = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialButtonOne",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newPro0() : TextInput
      {
         return this._1845096675newPro0;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         update();
      }
      
      [Bindable(event="propertyChange")]
      public function get newPro2() : TextInput
      {
         return this._1845096677newPro2;
      }
      
      public function set resetRequireLabel1(param1:DescriptionLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1031382925resetRequireLabel1;
         if(_loc2_ !== param1)
         {
            this._1031382925resetRequireLabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resetRequireLabel1",_loc2_,param1));
         }
      }
      
      private function tabBtnDClick(param1:int) : void
      {
         tabD.selectedIndex = param1;
         introText.htmlText = Language.EQUIPTFUNCPANEL_S[introArr1[param1]];
         tabBtnDUpdate();
      }
      
      public function set resetRequireLabel2(param1:DescriptionLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1031382924resetRequireLabel2;
         if(_loc2_ !== param1)
         {
            this._1031382924resetRequireLabel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resetRequireLabel2",_loc2_,param1));
         }
      }
      
      public function updateSuccData(param1:int, param2:Object) : void
      {
         if(!this.MwSuccinct)
         {
            return;
         }
         if(this.MwSuccinct.giid != param1)
         {
            return;
         }
         this.updateMWSuccView(param2,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get eTitle() : BasicTitleCanvas
      {
         return this._1322604301eTitle;
      }
      
      public function __makeTree_mouseDown(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function __tabBtnA5_click(param1:MouseEvent) : void
      {
         tabBtnAClick(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn0() : BasicGlowButton
      {
         return this._1162960634actBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn2() : BasicGlowButton
      {
         return this._1162960632actBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get newPro1() : TextInput
      {
         return this._1845096676newPro1;
      }
      
      public function set nextPetEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1363735427nextPetEqu;
         if(_loc2_ !== param1)
         {
            this._1363735427nextPetEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextPetEqu",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn1() : BasicGlowButton
      {
         return this._1162960633actBtn1;
      }
      
      private function sublimePetHandler(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:String = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:Number = NaN;
         var _loc9_:Boolean = false;
         param1.stopImmediatePropagation();
         if(!sublimeEquip || !sublimeEquip.slotData)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[177]);
            return;
         }
         if(Boolean(sublimeItem) && Boolean(sublimeItem.slotData) && sublimeItem.slotData.tid != GamePredef.SUBLIME_ITEMID)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[164]);
            return;
         }
         _loc2_ = sublimeEquip.slotData;
         _loc3_ = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         if(!_loc3_ || !ToolKit.isEqual(_loc3_.binded,1))
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[177]);
            return;
         }
         _loc4_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc3_.tid];
         if(!_loc4_ || int(_loc4_.kind) != 9)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[177]);
            return;
         }
         if(!_loc3_.hasOwnProperty("color") || Number(_loc3_.color) < 3)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[177]);
            return;
         }
         _loc5_ = _loc3_.flag ? JSONUtil.JSONfy(_loc3_.flag) : "";
         _loc6_ = _loc5_ ? com.adobe.serialization.json.JSON.decode(_loc5_) : null;
         _loc7_ = _loc6_ ? int(_loc6_.sublimeId) : 0;
         if(_loc7_ >= GamePredef.SUBLIME_MAX)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[178]);
            return;
         }
         _loc8_ = Boolean(sublimeItem) && Boolean(sublimeItem.slotData) ? Number(sublimeItem.slotData.id) : Number(null);
         _loc9_ = Boolean(autoSublime) && autoSublime.selected;
         _core.remote.call("sublimePetEquip",new Responder(onSublimePetEquip),sublimeEquip.slotData.id,_loc8_,_loc9_);
      }
      
      [Bindable(event="propertyChange")]
      public function get makeAward() : ItemSlot
      {
         return this._1238698255makeAward;
      }
      
      private function magicWeaponResetProp() : void
      {
         var mwInst:Object = null;
         var onMagicWeaponResetProp:Function = null;
         if(!mwResetProp.slotData)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[109]);
            return;
         }
         mwInst = _core.data.getGameData(mwResetProp.slotData.type,mwResetProp.slotData.itemId);
         if(!ToolKit.isEqual(mwInst.binded,1))
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[115]);
            return;
         }
         if(ToolKit.isSmallThan(mwInst.upgradeNum,GamePredef.MAGIC_WEAPON_RESET_LEVEL_LIMIT))
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[116]);
            return;
         }
         if(!_core.player.property || Number(_core.player.property.spirituality) < GamePredef.RESET_SPIRITUALITY_NEED)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[110]);
            return;
         }
         if(!resetStoneNeed.slotData || Number(resetStoneNeed.stackNum) < GamePredef.RESET_STONE_NEED)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[111]);
            return;
         }
         onMagicWeaponResetProp = function(param1:Object):void
         {
            if(param1.succ)
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  resetStoneNeed.stackNum = param1.num;
               }
               else
               {
                  resetStoneNeed.clean();
               }
            }
         };
         _core.remote.call("magicWeaponResetProp",new Responder(onMagicWeaponResetProp),mwResetProp.slotData.id,resetStoneNeed.slotData.id);
      }
      
      private function _EquiptFuncPanel_bindingsSetup() : Array
      {
         var result:Array = null;
         var binding:Binding = null;
         result = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eTitle.text = param1;
         },"eTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[57];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            makeCanvas.label = param1;
         },"makeCanvas.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton1.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton1.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton2.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton3.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            makeButton.label = param1;
         },"makeButton.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton4.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton4.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas4.label = param1;
         },"_EquiptFuncPanel_Canvas4.label");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_CHARACTER;
         },function(param1:Object):void
         {
            _EquiptFuncPanel_Image1.source = param1;
         },"_EquiptFuncPanel_Image1.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            materialButtonAll.label = param1;
         },"materialButtonAll.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            materialButtonOne.label = param1;
         },"materialButtonOne.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton6.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton6.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton7.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton7.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton8.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton8.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas5.label = param1;
         },"_EquiptFuncPanel_Canvas5.label");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_CHARACTER;
         },function(param1:Object):void
         {
            _EquiptFuncPanel_Image2.source = param1;
         },"_EquiptFuncPanel_Image2.source");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            jewelUpdateButtonAll.label = param1;
         },"jewelUpdateButtonAll.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            jewelUpdateButtonOne.label = param1;
         },"jewelUpdateButtonOne.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton10.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton10.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton11.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton11.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton12.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton12.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton13.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton13.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas6.label = param1;
         },"_EquiptFuncPanel_Canvas6.label");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_MAGIC_WEAPON;
         },function(param1:Object):void
         {
            _EquiptFuncPanel_Image3.source = param1;
         },"_EquiptFuncPanel_Image3.source");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[158];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas7.label = param1;
         },"_EquiptFuncPanel_Canvas7.label");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_MAIN;
         },function(param1:Object):void
         {
            MWChangeLevel.acceptObj = param1;
         },"MWChangeLevel.acceptObj");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton7.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton7.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[164];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel1.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel1.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[166];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton14.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton14.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[204] + spirituality;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            spiritualityLabel.text = param1;
         },"spiritualityLabel.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[165];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upgradeRequireLabel.text = param1;
         },"upgradeRequireLabel.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[159];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas8.label = param1;
         },"_EquiptFuncPanel_Canvas8.label");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW;
         },function(param1:Object):void
         {
            MWResolve.acceptObj = param1;
         },"MWResolve.acceptObj");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return {
               "kinds":{5:true},
               "ids":{
                  4905:true,
                  4906:true,
                  4907:true,
                  3849:true,
                  3850:true,
                  3851:true,
                  3852:true,
                  3853:true,
                  3854:true,
                  3855:true,
                  3856:true,
                  3857:true,
                  3858:true
               }
            };
         },function(param1:Object):void
         {
            MWResolve2.acceptObj = param1;
         },"MWResolve2.acceptObj");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton8.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton8.label");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton9.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton9.label");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[167];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton15.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton15.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[277];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton16.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton16.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[168];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton17.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton17.label");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[160];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas9.label = param1;
         },"_EquiptFuncPanel_Canvas9.label");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW;
         },function(param1:Object):void
         {
            MWRepair.acceptObj = param1;
         },"MWRepair.acceptObj");
         result[41] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{510:true}};
         },function(param1:Object):void
         {
            blueStoneNeed.acceptObj = param1;
         },"blueStoneNeed.acceptObj");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[162];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton10.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton10.label");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[169];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton18.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton18.label");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[170];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton19.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton19.label");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[205];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            mwSuccinctCanvas.label = param1;
         },"mwSuccinctCanvas.label");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_SUB;
         },function(param1:Object):void
         {
            MwSuccinct.acceptObj = param1;
         },"MwSuccinct.acceptObj");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[206];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label2.text = param1;
         },"_EquiptFuncPanel_Label2.text");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[207];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label3.text = param1;
         },"_EquiptFuncPanel_Label3.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.VIP_SUCCINCT_P[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            autoBuy.label = param1;
         },"autoBuy.label");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[224];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            autoBuy.toolTip = param1;
         },"autoBuy.toolTip");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[214];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn0.label = param1;
         },"actBtn0.label");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[232];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn0.toolTip = param1;
         },"actBtn0.toolTip");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[214];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn1.label = param1;
         },"actBtn1.label");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[232];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn1.toolTip = param1;
         },"actBtn1.toolTip");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[214];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn2.label = param1;
         },"actBtn2.label");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[232];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn2.toolTip = param1;
         },"actBtn2.toolTip");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock0.label = param1;
         },"lock0.label");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock0.toolTip = param1;
         },"lock0.toolTip");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock1.label = param1;
         },"lock1.label");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock1.toolTip = param1;
         },"lock1.toolTip");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock2.label = param1;
         },"lock2.label");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lock2.toolTip = param1;
         },"lock2.toolTip");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[212];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton14.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton14.label");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[211];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            succinctBtn.label = param1;
         },"succinctBtn.label");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[213];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton16.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton16.label");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[161];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas11.label = param1;
         },"_EquiptFuncPanel_Canvas11.label");
         result[67] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_MAIN;
         },function(param1:Object):void
         {
            MWResetSkill.acceptObj = param1;
         },"MWResetSkill.acceptObj");
         result[68] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{511:true}};
         },function(param1:Object):void
         {
            redStoneNeed.acceptObj = param1;
         },"redStoneNeed.acceptObj");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[163];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton17.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton17.label");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[171];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton20.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton20.label");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[172];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton21.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton21.label");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[165];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            transRequireLabel.text = param1;
         },"transRequireLabel.text");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[164];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel5.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel5.text");
         result[74] = binding;
         binding = new Binding(this,function():Object
         {
            return SKILL_PROVIDER;
         },function(param1:Object):void
         {
            MWSkills.dataProvider = param1;
         },"MWSkills.dataProvider");
         result[75] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[175];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas12.label = param1;
         },"_EquiptFuncPanel_Canvas12.label");
         result[76] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_MAIN;
         },function(param1:Object):void
         {
            MWTransTo.acceptObj = param1;
         },"MWTransTo.acceptObj");
         result[77] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_MAIN;
         },function(param1:Object):void
         {
            MWTransFrom.acceptObj = param1;
         },"MWTransFrom.acceptObj");
         result[78] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{514:true}};
         },function(param1:Object):void
         {
            transItemNeed.acceptObj = param1;
         },"transItemNeed.acceptObj");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[175];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton18.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton18.label");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[177];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton22.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton22.label");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[178];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton23.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton23.label");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[179];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton24.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton24.label");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[188];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas13.label = param1;
         },"_EquiptFuncPanel_Canvas13.label");
         result[84] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_MAIN;
         },function(param1:Object):void
         {
            mwResetProp.acceptObj = param1;
         },"mwResetProp.acceptObj");
         result[85] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{519:true}};
         },function(param1:Object):void
         {
            resetStoneNeed.acceptObj = param1;
         },"resetStoneNeed.acceptObj");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[189];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton19.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton19.label");
         result[87] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[190];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton25.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton25.label");
         result[88] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[191];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton26.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton26.label");
         result[89] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[192];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            resetRequireLabel1.text = param1;
         },"resetRequireLabel1.text");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[193];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            resetRequireLabel2.text = param1;
         },"resetRequireLabel2.text");
         result[91] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[160];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas14.label = param1;
         },"_EquiptFuncPanel_Canvas14.label");
         result[92] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[238];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton27.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton27.label");
         result[93] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_MW_MAIN;
         },function(param1:Object):void
         {
            stageEqu.acceptObj = param1;
         },"stageEqu.acceptObj");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[239];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton28.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton28.label");
         result[95] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{522:true}};
         },function(param1:Object):void
         {
            stageItem.acceptObj = param1;
         },"stageItem.acceptObj");
         result[96] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            hintTxt.filters = param1;
         },"hintTxt.filters");
         result[97] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[240];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            hintTxt.htmlText = param1;
         },"hintTxt.htmlText");
         result[98] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hintTxt.visible;
         },function(param1:Boolean):void
         {
            _EquiptFuncPanel_Canvas15.visible = param1;
         },"_EquiptFuncPanel_Canvas15.visible");
         result[99] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.UP_ARROW;
         },function(param1:Object):void
         {
            _EquiptFuncPanel_Image4.source = param1;
         },"_EquiptFuncPanel_Image4.source");
         result[100] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !hintTxt.visible;
         },function(param1:Boolean):void
         {
            consumeTxt.visible = param1;
         },"consumeTxt.visible");
         result[101] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            consumeTxt.filters = param1;
         },"consumeTxt.filters");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[242];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton20.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton20.label");
         result[103] = binding;
         binding = new Binding(this,function():Object
         {
            return listArr1;
         },function(param1:Object):void
         {
            magEquFuncList.dataProvider = param1;
         },"magEquFuncList.dataProvider");
         result[104] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Canvas16.label = param1;
         },"_EquiptFuncPanel_Canvas16.label");
         result[105] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_EQUIP;
         },function(param1:Object):void
         {
            _EquiptFuncPanel_Image5.source = param1;
         },"_EquiptFuncPanel_Image5.source");
         result[106] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_PETEQU;
         },function(param1:Object):void
         {
            petEquStarItem.acceptObj = param1;
         },"petEquStarItem.acceptObj");
         result[107] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEquStarAllBtn.label = param1;
         },"petEquStarAllBtn.label");
         result[108] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEquStarOneBtn.label = param1;
         },"petEquStarOneBtn.label");
         result[109] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton31.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton31.label");
         result[110] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton32.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton32.label");
         result[111] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton33.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton33.label");
         result[112] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton34.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton34.label");
         result[113] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton35.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton35.label");
         result[114] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton36.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton36.label");
         result[115] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_PETEQU;
         },function(param1:Object):void
         {
            petEquReadyLevelup.acceptObj = param1;
         },"petEquReadyLevelup.acceptObj");
         result[116] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquLevelupItemNeed.slotType = param1;
         },"petEquLevelupItemNeed.slotType");
         result[117] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_ITEM_INSTANCE];
         },function(param1:Array):void
         {
            petEquLevelupItemNeed.acceptType = param1;
         },"petEquLevelupItemNeed.acceptType");
         result[118] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquLevelupItem.slotType = param1;
         },"petEquLevelupItem.slotType");
         result[119] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_ITEM_INSTANCE];
         },function(param1:Array):void
         {
            petEquLevelupItem.acceptType = param1;
         },"petEquLevelupItem.acceptType");
         result[120] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[76];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton37.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton37.label");
         result[121] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[77];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton38.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton38.label");
         result[122] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton39.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton39.label");
         result[123] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton40.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton40.label");
         result[124] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[80];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton41.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton41.label");
         result[125] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[81];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton42.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton42.label");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel8.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel8.text");
         result[127] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel9.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel9.text");
         result[128] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEquLevelupBtn.label = param1;
         },"petEquLevelupBtn.label");
         result[129] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_PETEQU;
         },function(param1:Object):void
         {
            petEquReadyModColor.acceptObj = param1;
         },"petEquReadyModColor.acceptObj");
         result[130] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquModColorNeedItem.slotType = param1;
         },"petEquModColorNeedItem.slotType");
         result[131] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquModColorItem.slotType = param1;
         },"petEquModColorItem.slotType");
         result[132] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[82];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton44.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton44.label");
         result[133] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton45.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton45.label");
         result[134] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[83];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton46.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton46.label");
         result[135] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[80];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton47.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton47.label");
         result[136] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel10.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel10.text");
         result[137] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel11.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel11.text");
         result[138] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[86];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEquModColorBtn.label = param1;
         },"petEquModColorBtn.label");
         result[139] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_PETEQU;
         },function(param1:Object):void
         {
            petEquReadyModBind.acceptObj = param1;
         },"petEquReadyModBind.acceptObj");
         result[140] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquModBindNeedItem.slotType = param1;
         },"petEquModBindNeedItem.slotType");
         result[141] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquModBindItem.slotType = param1;
         },"petEquModBindItem.slotType");
         result[142] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel12.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel12.text");
         result[143] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[82];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton49.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton49.label");
         result[144] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton50.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton50.label");
         result[145] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[83];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton51.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton51.label");
         result[146] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel13.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel13.text");
         result[147] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[86];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEquModBindBtn.label = param1;
         },"petEquModBindBtn.label");
         result[148] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_PETEQU;
         },function(param1:Object):void
         {
            petEquReadyPre.acceptObj = param1;
         },"petEquReadyPre.acceptObj");
         result[149] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquModPreNeedItem.slotType = param1;
         },"petEquModPreNeedItem.slotType");
         result[150] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            petEquModPreItem.slotType = param1;
         },"petEquModPreItem.slotType");
         result[151] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel14.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel14.text");
         result[152] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[82];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton52.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton52.label");
         result[153] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton53.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton53.label");
         result[154] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[83];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicTxtButton54.label = param1;
         },"_EquiptFuncPanel_BasicTxtButton54.label");
         result[155] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.PETFUNCPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_DescriptionLabel15.text = param1;
         },"_EquiptFuncPanel_DescriptionLabel15.text");
         result[156] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[86];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            petEquModPreBtn.label = param1;
         },"petEquModPreBtn.label");
         result[157] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[275];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label20.text = param1;
         },"_EquiptFuncPanel_Label20.text");
         result[158] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label20.filters = param1;
         },"_EquiptFuncPanel_Label20.filters");
         result[159] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[245];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label21.text = param1;
         },"_EquiptFuncPanel_Label21.text");
         result[160] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label21.filters = param1;
         },"_EquiptFuncPanel_Label21.filters");
         result[161] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_PETEQU;
         },function(param1:Object):void
         {
            sublimeEquip.acceptObj = param1;
         },"sublimeEquip.acceptObj");
         result[162] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{523:true}};
         },function(param1:Object):void
         {
            sublimeItem.acceptObj = param1;
         },"sublimeItem.acceptObj");
         result[163] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[274];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            sublimeHint.htmlText = param1;
         },"sublimeHint.htmlText");
         result[164] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !sublimeHint.visible;
         },function(param1:Boolean):void
         {
            _EquiptFuncPanel_HBox2.visible = param1;
         },"_EquiptFuncPanel_HBox2.visible");
         result[165] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.UP_ARROW;
         },function(param1:Object):void
         {
            _EquiptFuncPanel_Image6.source = param1;
         },"_EquiptFuncPanel_Image6.source");
         result[166] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !sublimeHint.visible;
         },function(param1:Boolean):void
         {
            sublimeConsume.visible = param1;
         },"sublimeConsume.visible");
         result[167] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            sublimeConsume.filters = param1;
         },"sublimeConsume.filters");
         result[168] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !sublimeHint.visible;
         },function(param1:Boolean):void
         {
            _EquiptFuncPanel_HBox3.visible = param1;
         },"_EquiptFuncPanel_HBox3.visible");
         result[169] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[249];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label23.text = param1;
         },"_EquiptFuncPanel_Label23.text");
         result[170] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label23.filters = param1;
         },"_EquiptFuncPanel_Label23.filters");
         result[171] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[248];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton23.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton23.label");
         result[172] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[261];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label24.text = param1;
         },"_EquiptFuncPanel_Label24.text");
         result[173] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label24.filters = param1;
         },"_EquiptFuncPanel_Label24.filters");
         result[174] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[262];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label25.text = param1;
         },"_EquiptFuncPanel_Label25.text");
         result[175] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label25.filters = param1;
         },"_EquiptFuncPanel_Label25.filters");
         result[176] = binding;
         binding = new Binding(this,function():Object
         {
            return ItemSlotEquFunc.EQUIP_PETEQU;
         },function(param1:Object):void
         {
            restrainEquip.acceptObj = param1;
         },"restrainEquip.acceptObj");
         result[177] = binding;
         binding = new Binding(this,function():Object
         {
            return {"types":{524:true}};
         },function(param1:Object):void
         {
            restrainItem.acceptObj = param1;
         },"restrainItem.acceptObj");
         result[178] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[276];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            restrainHint.text = param1;
         },"restrainHint.text");
         result[179] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            restrainHint.filters = param1;
         },"restrainHint.filters");
         result[180] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            _EquiptFuncPanel_HBox4.visible = param1;
         },"_EquiptFuncPanel_HBox4.visible");
         result[181] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[264];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label27.text = param1;
         },"_EquiptFuncPanel_Label27.text");
         result[182] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label27.filters = param1;
         },"_EquiptFuncPanel_Label27.filters");
         result[183] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[266];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            restrainView.htmlText = param1;
         },"restrainView.htmlText");
         result[184] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            restrainView.visible = param1;
         },"restrainView.visible");
         result[185] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            restrainView.filters = param1;
         },"restrainView.filters");
         result[186] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[268];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label29.htmlText = param1;
         },"_EquiptFuncPanel_Label29.htmlText");
         result[187] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            _EquiptFuncPanel_Label29.visible = param1;
         },"_EquiptFuncPanel_Label29.visible");
         result[188] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label29.filters = param1;
         },"_EquiptFuncPanel_Label29.filters");
         result[189] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !restrainHint.visible;
         },function(param1:Boolean):void
         {
            _EquiptFuncPanel_HBox5.visible = param1;
         },"_EquiptFuncPanel_HBox5.visible");
         result[190] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[269];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_Label30.text = param1;
         },"_EquiptFuncPanel_Label30.text");
         result[191] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _EquiptFuncPanel_Label30.filters = param1;
         },"_EquiptFuncPanel_Label30.filters");
         result[192] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[270];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _EquiptFuncPanel_BasicGlowButton24.label = param1;
         },"_EquiptFuncPanel_BasicGlowButton24.label");
         result[193] = binding;
         binding = new Binding(this,function():Object
         {
            return listArr2;
         },function(param1:Object):void
         {
            creEquFuncList.dataProvider = param1;
         },"creEquFuncList.dataProvider");
         result[194] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA0.label = param1;
         },"tabBtnA0.label");
         result[195] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA1.label = param1;
         },"tabBtnA1.label");
         result[196] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA2.label = param1;
         },"tabBtnA2.label");
         result[197] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA3.label = param1;
         },"tabBtnA3.label");
         result[198] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[71];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA4.label = param1;
         },"tabBtnA4.label");
         result[199] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_U[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnA5.label = param1;
         },"tabBtnA5.label");
         result[200] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = undefined;
            var _loc2_:* = undefined;
            _loc1_ = Language.EQUIPTFUNCPANEL_S[97];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showBag.toolTip = param1;
         },"showBag.toolTip");
         result[201] = binding;
         return result;
      }
      
      private function MWTransViewClear() : void
      {
         MWTransFrom && MWTransFrom.clean();
         MWTransTo && MWTransTo.clean();
         transItemNeed && transItemNeed.clean();
         if(transRequireLabel)
         {
            transRequireLabel.text = Language.EQUIPTFUNCPANEL_U[165];
         }
      }
      
      public function set petEquLevelupReqNum(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1563237501petEquLevelupReqNum;
         if(_loc2_ !== param1)
         {
            this._1563237501petEquLevelupReqNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupReqNum",_loc2_,param1));
         }
      }
      
      public function set restrainItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._506894491restrainItem;
         if(_loc2_ !== param1)
         {
            this._506894491restrainItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainItem",_loc2_,param1));
         }
      }
      
      public function __makeList_itemClick(param1:ListEvent) : void
      {
         makeListChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarAllBtn() : BasicGlowButton
      {
         return this._103075529petEquStarAllBtn;
      }
      
      public function set petEquStarBasic(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._418363278petEquStarBasic;
         if(_loc2_ !== param1)
         {
            this._418363278petEquStarBasic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarBasic",_loc2_,param1));
         }
      }
      
      private function jewelUpdateNumChange() : void
      {
         jewelUpdatePer.label = (jewelUpdateNum.value * 20).toString() + "%";
         jewelUpdateItemChange(null);
      }
      
      public function set petEquLevelupRate(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1267649387petEquLevelupRate;
         if(_loc2_ !== param1)
         {
            this._1267649387petEquLevelupRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupRate",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeRight() : AutoTextArea
      {
         return this._1690306823sublimeRight;
      }
      
      public function __lock0_click(param1:MouseEvent) : void
      {
         chageSelected(0);
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton24_click(param1:MouseEvent) : void
      {
         restrainPetHandler(param1);
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton18_click(param1:MouseEvent) : void
      {
         MWTrans();
      }
      
      public function __petEquStarOneBtn_click(param1:MouseEvent) : void
      {
         starOne();
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModColorNeedItem() : ItemSlot
      {
         return this._1621769932petEquModColorNeedItem;
      }
      
      public function set petEquStarJewel(param1:ItemSlotStar) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._410852217petEquStarJewel;
         if(_loc2_ !== param1)
         {
            this._410852217petEquStarJewel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarJewel",_loc2_,param1));
         }
      }
      
      public function funcBagClickHandler(param1:Event) : void
      {
         var _loc6_:Array = null;
         var _loc7_:String = null;
         var _loc8_:ItemSlot = null;
         var _loc9_:Boolean = false;
         var _loc10_:String = null;
         setAutoMatchSlots();
         var _loc2_:Object = param1.currentTarget.slotData;
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:Number = Number(_loc2_.sid);
         var _loc4_:Object = _core.getTemplateData(_loc2_.type,_loc2_.itemId);
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Array = autoMatchSlots.inputSlots;
         if(Boolean(autoMatchSlots.hasReq) && Boolean(autoMatchSlots.reqSlots))
         {
            _loc6_ = autoMatchSlots.reqSlots;
            for(_loc7_ in _loc6_)
            {
               if(_loc2_.type == _loc6_[_loc7_].type && _loc4_.id == _loc6_[_loc7_].id)
               {
                  _loc8_ = autoMatchSlots.inputSlots[_loc7_];
                  _loc8_.slotData = _loc2_;
                  _loc8_.type = _loc2_.type;
                  _loc8_.giid = _loc2_.itemId;
                  _loc8_.stackNum = _loc2_.stackNum;
               }
            }
         }
         else
         {
            _loc6_ = autoMatchSlots.reqSlots;
            if(!_loc6_)
            {
               _loc8_ = autoMatchSlots.inputSlots[0];
               _loc8_.slotData = _loc2_;
               _loc8_.type = _loc2_.type;
               _loc8_.giid = _loc2_.itemId;
               _loc8_.stackNum = _loc2_.stackNum;
            }
            else
            {
               for(_loc7_ in _loc6_)
               {
                  _loc9_ = true;
                  for(_loc10_ in _loc6_[_loc7_])
                  {
                     if(_loc10_ == "itemType")
                     {
                        if(_loc2_.type != _loc6_[_loc7_][_loc10_])
                        {
                           _loc9_ = false;
                           break;
                        }
                     }
                     else if(!_loc4_.hasOwnProperty(_loc10_) || _loc4_[_loc10_] != _loc6_[_loc7_][_loc10_])
                     {
                        _loc9_ = false;
                        break;
                     }
                  }
                  if(_loc9_)
                  {
                     if(Boolean(autoMatchSlots.orderPut) && Boolean(autoMatchSlots.menuArr) && _loc2_.type == autoMatchSlots.orderType)
                     {
                        for(_loc7_ in autoMatchSlots.menuArr)
                        {
                           autoMatchSlots.menuArr[_loc7_].data.sData = _loc2_;
                        }
                        menuPop(autoMatchSlots.menuArr);
                     }
                     else if(autoMatchSlots.inputSlots[_loc7_])
                     {
                        _loc8_ = autoMatchSlots.inputSlots[_loc7_];
                        _loc8_.slotData = _loc2_;
                        _loc8_.type = _loc2_.type;
                        _loc8_.giid = _loc2_.itemId;
                        _loc8_.stackNum = _loc2_.stackNum;
                     }
                     break;
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModPreSucc() : Label
      {
         return this._552846995petEquModPreSucc;
      }
      
      public function _activateMwPro(param1:int) : void
      {
         var func:Function = null;
         var index:int = param1;
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.nc.call("activateMWPro",new Responder(onActivateMWPro),MwSuccinct.giid,index);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[216].replace("{num}",GamePredef.MW_PRO_COST),"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get MwSuccinct() : ItemSlotEquFunc
      {
         return this._273317502MwSuccinct;
      }
      
      public function set petEquReadyModColor(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._43044678petEquReadyModColor;
         if(_loc2_ !== param1)
         {
            this._43044678petEquReadyModColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquReadyModColor",_loc2_,param1));
         }
      }
      
      public function set upgradeRequireLabel(param1:DescriptionLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._304002869upgradeRequireLabel;
         if(_loc2_ !== param1)
         {
            this._304002869upgradeRequireLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upgradeRequireLabel",_loc2_,param1));
         }
      }
      
      private function onPetEquReadyModPre(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         if(petEquReadyPre.slotData)
         {
            petEquModPreInfo.htmlText = "";
            _loc2_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][petEquReadyPre.slotData.itemId];
            if(_loc2_.color < 3)
            {
               clearPetEquiptPrePanel();
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[140]);
               return;
            }
            _loc3_ = _core.getTemplateData(petEquReadyPre.slotData.type,petEquReadyPre.slotData.itemId,false);
            if(Boolean(_loc2_) && Boolean(_loc3_))
            {
               _loc4_ = GamePredef.EQUIPT_STAR_NUM[_loc2_.upgradeNum];
               _loc5_ = Language.EQUIPTFUNCPANEL_U[201] + Language.EQUIPTFUNCPANEL_U[202] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + int(_loc2_.mainPropNum1 * _loc4_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + int(_loc2_.mainPropNum2 * _loc4_);
               if(Number(_loc2_.prop1) > 0)
               {
                  _loc5_ = _loc5_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop1] + ":" + _loc2_.propNum1;
               }
               if(Number(_loc2_.prop2) > 0)
               {
                  _loc5_ = _loc5_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop2] + ":" + _loc2_.propNum2;
               }
               _loc5_ = _loc5_ + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + _loc2_.bindMainPropNum1 + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + _loc2_.bindMainPropNum2 + "%";
               curProp.htmlText = _loc5_;
               _loc6_ = _loc2_.color * 5;
               if(GamePredef.EQUIPT_QUALITY[_loc6_])
               {
                  _loc7_ = Number(GamePredef.EQUIPT_QUALITY[_loc6_]);
                  _loc8_ = Language.EQUIPTFUNCPANEL_U[203] + Language.EQUIPTFUNCPANEL_U[202] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + int(Math.round(_loc3_.mainPropNum1 * _loc7_ * _loc4_)) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + int(Math.round(_loc3_.mainPropNum2 * _loc7_ * _loc4_));
                  if(Number(_loc2_.prop1) > 0)
                  {
                     _loc8_ = _loc8_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop1] + ":" + Math.round(_loc3_.propNum1 * _loc7_);
                  }
                  if(Number(_loc2_.prop2) > 0)
                  {
                     _loc8_ = _loc8_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop2] + ":" + Math.round(_loc3_.propNum2 * _loc7_);
                  }
                  _loc8_ = _loc8_ + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + Math.round(_loc3_.bindPropNum * _loc7_) + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + Math.round(_loc3_.bindPropNum * _loc7_) + "%";
                  maxProp.htmlText = _loc8_;
               }
            }
            else
            {
               curProp.htmlText = "";
               maxProp.htmlText = "";
            }
            if(Boolean(_loc3_) && isPetEqu(_loc3_))
            {
               modPreReq = GamePredef.MODPRE_REQ_NUM[_loc2_.color].req;
               petEquModPreNeedItem.type = GamePredef.TBL_ITEM_TEMPLATE;
               petEquModPreNeedItem.giid = 3491;
               if(isSpecPetEqu(_loc3_))
               {
                  if(StringUtil.beginsWith(_loc3_.reqClassId.toString(),"|") && StringUtil.endsWith(_loc3_.reqClassId.toString(),"|"))
                  {
                     modPreReq *= 4;
                  }
                  else
                  {
                     modPreReq *= 2;
                  }
               }
               modPreReqNum.htmlText = Language.EQUIPTFUNCPANEL_U[84].replace("{num}",modPreReq);
            }
            else
            {
               modPreReqNum.htmlText = "";
            }
         }
      }
      
      public function __mwSuccinctCanvas_creationComplete(param1:FlexEvent) : void
      {
         initMWPBuild();
      }
      
      public function updateMWResetView(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(Boolean(mwResetProp.slotData) && mwResetProp.slotData.itemId == param1.itemId)
         {
            resetRequireLabel1.text = Language.EQUIPTFUNCPANEL_U[192] + GamePredef.RESET_SPIRITUALITY_NEED;
            resetRequireLabel2.text = Language.EQUIPTFUNCPANEL_U[193] + GamePredef.RESET_STONE_NEED;
            _loc2_ = _core.data.getGameData(mwResetProp.slotData.type,mwResetProp.slotData.itemId);
            curPropTA.htmlText = Language.EQUIPTFUNCPANEL_U[194] + "<br/>";
            if(_loc2_.mainProp1 > 0)
            {
               _loc3_ = GamePredef.MW_GROW_MAP[_loc2_.mainProp1] ? Number(GamePredef.MW_GROW_MAP[_loc2_.mainProp1][_loc2_.upgradeNum]) : 1;
               curPropTA.htmlText += GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + int(param1.mainPropNum1 * _loc3_) + (_loc2_.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || _loc2_.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "<br/>";
            }
            if(_loc2_.mainProp2 > 0)
            {
               _loc3_ = GamePredef.MW_GROW_MAP[_loc2_.mainProp2] ? Number(GamePredef.MW_GROW_MAP[_loc2_.mainProp2][_loc2_.upgradeNum]) : 1;
               curPropTA.htmlText += GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + int(param1.mainPropNum2 * _loc3_) + (_loc2_.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || _loc2_.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "");
            }
         }
         else if(!mwResetProp.slotData)
         {
            MWResetPropViewClear();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModBindInfo() : Label
      {
         return this._2008432221petEquModBindInfo;
      }
      
      public function set classType(param1:ComboBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._9686830classType;
         if(_loc2_ !== param1)
         {
            this._9686830classType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"classType",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get modPreReqNum() : Label
      {
         return this._1252811177modPreReqNum;
      }
      
      public function set tabBtnA0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._933747498tabBtnA0;
         if(_loc2_ !== param1)
         {
            this._933747498tabBtnA0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA0",_loc2_,param1));
         }
      }
      
      public function set tabBtnA1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._933747497tabBtnA1;
         if(_loc2_ !== param1)
         {
            this._933747497tabBtnA1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA1",_loc2_,param1));
         }
      }
      
      public function set consumeTxt(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._166265644consumeTxt;
         if(_loc2_ !== param1)
         {
            this._166265644consumeTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumeTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get succinctBtn() : BasicGlowButton
      {
         return this._2124710308succinctBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get spiritualityLabel() : DescriptionLabel
      {
         return this._1004296629spiritualityLabel;
      }
      
      public function set tabBtnA4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._933747494tabBtnA4;
         if(_loc2_ !== param1)
         {
            this._933747494tabBtnA4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA4",_loc2_,param1));
         }
      }
      
      public function set tabBtnA5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._933747493tabBtnA5;
         if(_loc2_ !== param1)
         {
            this._933747493tabBtnA5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA5",_loc2_,param1));
         }
      }
      
      private function petEquModColorClear() : void
      {
         petEquReadyModColor.clean();
         petEquModColorNeedItem.clean();
         petEquModColorItem.clean();
         petEquModColorInfo.text = "";
         petEquModReqNum.text = "";
         petEquModColorMoney.text = "";
      }
      
      [Bindable(event="propertyChange")]
      public function get curProp() : TextArea
      {
         return this._1125939651curProp;
      }
      
      public function set MWResolve(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1967342366MWResolve;
         if(_loc2_ !== param1)
         {
            this._1967342366MWResolve = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWResolve",_loc2_,param1));
         }
      }
      
      private function MWTransFromChange(param1:Event) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(MWTransFrom.slotData)
         {
            _loc2_ = _core.data.getData(GamePredef.TBL_EQUIPT_INSTANCE,MWTransFrom.slotData.itemId);
            _loc3_ = _loc2_ && _loc2_.upgradeNum || 0;
            _loc4_ = (GamePredef.SPIRITUALITY_COST[_loc3_] || 0) * GamePredef.MW_TRANS_COST_RATE;
            transRequireLabel.text = Language.EQUIPTFUNCPANEL_U[165] + _loc4_;
         }
      }
      
      public function set newPro1(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1845096676newPro1;
         if(_loc2_ !== param1)
         {
            this._1845096676newPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newPro1",_loc2_,param1));
         }
      }
      
      public function set newPro2(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1845096677newPro2;
         if(_loc2_ !== param1)
         {
            this._1845096677newPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newPro2",_loc2_,param1));
         }
      }
      
      private function tabBtnDUpdate() : void
      {
         var _loc1_:int = tabD ? tabD.selectedIndex : 0;
         resetItemList();
         switch(_loc1_)
         {
            case 0:
            case 1:
               _itemList.type = 1;
               _itemList.idList = [-1];
               break;
            case 2:
               _itemList.type = 1;
               _itemList.idList = [2330];
               break;
            case 3:
               _itemList.type = 1;
               _itemList.idList = [GamePredef.MW_SUCC_ITEM];
               this.unselectAutoBuy();
               break;
            case 4:
               _itemList.type = 1;
               _itemList.idList = [2331];
               break;
            case 5:
               _itemList.type = 1;
               _itemList.idList = [2356];
               break;
            case 6:
               _itemList.type = 1;
               _itemList.idList = [3228];
               break;
            case 7:
               _itemList.type = 1;
               _itemList.idList = [GamePredef.STAGE_EIGHT_ITEMID];
         }
         equipBag.showItem(4,_itemList);
      }
      
      public function set tabBtnA2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._933747496tabBtnA2;
         if(_loc2_ !== param1)
         {
            this._933747496tabBtnA2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA2",_loc2_,param1));
         }
      }
      
      public function set makeCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._217727770makeCanvas;
         if(_loc2_ !== param1)
         {
            this._217727770makeCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeCanvas",_loc2_,param1));
         }
      }
      
      public function set tabBtnA3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._933747495tabBtnA3;
         if(_loc2_ !== param1)
         {
            this._933747495tabBtnA3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnA3",_loc2_,param1));
         }
      }
      
      public function hasSuccData() : Boolean
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            if(this["newPro" + _loc1_].htmlText != "")
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      private function canMake() : Boolean
      {
         var _loc1_:int = 1;
         while(_loc1_ <= 3)
         {
            if(!this["makeInputItem" + _loc1_].tempBagFlag)
            {
               if(this["makeRequire" + _loc1_].type > 0 && this["makeRequire" + _loc1_].type - 1 != this["makeInputItem" + _loc1_].type)
               {
                  return false;
               }
            }
            else if(this["makeRequire" + _loc1_].type > 0 && this["makeInputItem" + _loc1_].type <= 0)
            {
               return false;
            }
            _loc1_++;
         }
         return true;
      }
      
      public function onGetEquMake(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Sort = null;
         makeListAC = new ArrayCollection();
         for each(_loc2_ in param1)
         {
            if(_loc2_)
            {
               makeListAC.addItem({
                  "name":_loc2_.name,
                  "level":Number(_loc2_.reqLevel) + 10000,
                  "equData":_loc2_
               });
            }
         }
         _loc3_ = new Sort();
         _loc3_.fields = [new SortField("level",true)];
         makeListAC.sort = _loc3_;
         makeListAC.refresh();
         makeList.dataProvider = makeListAC;
      }
      
      public function set eTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1322604301eTitle;
         if(_loc2_ !== param1)
         {
            this._1322604301eTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eTitle",_loc2_,param1));
         }
      }
      
      public function set newPro0(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1845096675newPro0;
         if(_loc2_ !== param1)
         {
            this._1845096675newPro0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newPro0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPro0() : TextInput
      {
         return this._1379509782oldPro0;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPro1() : TextInput
      {
         return this._1379509781oldPro1;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPro2() : TextInput
      {
         return this._1379509780oldPro2;
      }
      
      private function starAll() : void
      {
         var equIns:Object = null;
         var starIns:Object = null;
         var func:Function = null;
         var e:CloseEvent = null;
         if(Boolean(tabA.selectedIndex == 5) && Boolean(petEquStarItem.slotData) && Boolean(petEquStarJewel.slotData))
         {
            equIns = _core.data.gameData[petEquStarItem.slotData.type][petEquStarItem.slotData.itemId];
            starIns = _core.data.gameData[petEquStarJewel.slotData.type][petEquStarJewel.slotData.itemId];
            if(Boolean(equIns) && Boolean(starIns))
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("starAll",new Responder(onStar),petEquStarBasic.value,petEquStarItem.slotData.id,petEquStarMax.value,petEquStarJewel.slotData.id);
                     petEquStarOneBtn.enabled = false;
                     petEquStarAllBtn.enabled = false;
                  }
               };
               if(ToolKit.isEqual(equIns.binded,0) && ToolKit.isEqual(starIns.binded,1))
               {
                  Alert.show(Language.EQUIPTFUNCPANEL_S[102],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  e = new CloseEvent("");
                  e.detail = Alert.YES;
                  func(e);
               }
            }
         }
      }
      
      private function restrainPetClear() : void
      {
         restrainEquip && restrainEquip.clean();
         restrainItem && restrainItem.clean();
         if(!restrainHint)
         {
            return;
         }
         restrainHint.visible = true;
         restrainHint.text = Language.EQUIPTFUNCPANEL_U[276];
      }
      
      private function deactivatePanel(param1:int) : void
      {
         var _loc2_:int = 0;
         if(!tabInitialized[param1])
         {
            return;
         }
         switch(param1)
         {
            case 0:
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(this["makeInputItem" + _loc2_])
                  {
                     this["makeInputItem" + _loc2_].removeEventListener(GameEvent.SLOT_NUM_CHANGE,makeInputItemChange);
                  }
                  _loc2_++;
               }
               break;
            case 1:
               break;
            case 2:
               materialMixItem.removeEventListener(GameEvent.SLOT_NUM_CHANGE,materialMixItemChange);
               materialMixViewClear();
               break;
            case 3:
               jewelUpdateItem1.removeEventListener(GameEvent.SLOT_NUM_CHANGE,jewelUpdateItemChange);
               jewelUpdateViewClear();
               break;
            case 4:
               MWResetSkill && MWResetSkill.removeEventListener(GameEvent.SLOT_GIID_CHANGE,MWResetSkillChange);
               MWChangeLevel && MWChangeLevel.removeEventListener(GameEvent.SLOT_GIID_CHANGE,MWChangeLevelChange);
               MWTransFrom && MWTransFrom.removeEventListener(GameEvent.SLOT_GIID_CHANGE,MWTransFromChange);
               mwResetProp && mwResetProp.removeEventListener(GameEvent.SLOT_GIID_CHANGE,mwResetPropChange);
               stageEqu && stageEqu.removeEventListener(GameEvent.SLOT_GIID_CHANGE,magicWeaponStageChange);
               MWChangeLevelViewClear();
               MWResolveViewClear();
               MWRepairViewClear();
               MWResetSkillViewClear();
               MWTransViewClear();
               MWResetPropViewClear();
               magicWeaponStageViewClear();
               break;
            case 5:
               petEquStarItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,starItemChange);
               petEquStarJewel.removeEventListener(GameEvent.SLOT_NUM_CHANGE,setStarInfo);
               petEquReadyLevelup.removeEventListener(GameEvent.SLOT_GIID_CHANGE,petEquLevelupChange);
               petEquLevelupItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,petEquLevelupItemChange);
               petEquReadyModColor.removeEventListener(GameEvent.SLOT_GIID_CHANGE,petEquModColorChange);
               petEquModColorItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,petEquModColorItemChange);
               petEquReadyModBind.removeEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquReadyModBind);
               petEquModBindItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquModBindItem);
               petEquReadyPre.removeEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquReadyModPre);
               petEquModPreItem.removeEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquModPreItem);
               sublimeEquip && sublimeEquip.removeEventListener(GameEvent.SLOT_GIID_CHANGE,sublimePetChange);
               restrainEquip && restrainEquip.removeEventListener(GameEvent.SLOT_GIID_CHANGE,restrainPetChange);
               starViewClear(param1);
               petEquLevelupClear();
               petEquModColorClear();
               petEquModBindClear();
               sublimePetClear();
               restrainPetClear();
         }
         eventListenerAdded = false;
      }
      
      public function set jewelUpdateNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60073210jewelUpdateNum;
         if(_loc2_ !== param1)
         {
            this._60073210jewelUpdateNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelUpdateNum",_loc2_,param1));
         }
      }
      
      public function set petEquModColorItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._799272190petEquModColorItem;
         if(_loc2_ !== param1)
         {
            this._799272190petEquModColorItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModColorItem",_loc2_,param1));
         }
      }
      
      public function __petEquModBindBtn_click(param1:MouseEvent) : void
      {
         petEquModBind();
      }
      
      public function setSpirituality(param1:int) : void
      {
         spirituality = param1;
         if(this.visible && Boolean(spiritualityLabel))
         {
            spiritualityLabel.text = Language.EQUIPTFUNCPANEL_U[204] + spirituality;
         }
      }
      
      public function set actBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1162960634actBtn0;
         if(_loc2_ !== param1)
         {
            this._1162960634actBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn0",_loc2_,param1));
         }
      }
      
      public function set redStoneNeed(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1836823818redStoneNeed;
         if(_loc2_ !== param1)
         {
            this._1836823818redStoneNeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"redStoneNeed",_loc2_,param1));
         }
      }
      
      public function set actBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1162960633actBtn1;
         if(_loc2_ !== param1)
         {
            this._1162960633actBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn1",_loc2_,param1));
         }
      }
      
      public function set actBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1162960632actBtn2;
         if(_loc2_ !== param1)
         {
            this._1162960632actBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn2",_loc2_,param1));
         }
      }
      
      public function ___EquiptFuncPanel_Canvas4_creationComplete(param1:FlexEvent) : void
      {
         initTab(2);
      }
      
      public function __creEquFuncList_creationComplete(param1:FlexEvent) : void
      {
         creEquFuncList.selectedIndex = 0;
      }
      
      private function petEquLevelupChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(petEquReadyLevelup.slotData)
         {
            _loc2_ = _core.getTemplateData(petEquReadyLevelup.slotData.type,petEquReadyLevelup.slotData.itemId,false);
            if(Boolean(_loc2_) && isPetEqu(_loc2_))
            {
               _loc3_ = _core.data.getData(GamePredef.TBL_EQUIPT_TEMPLATE,_loc2_.nextEquTid);
               if(_loc3_)
               {
                  nextPetEqu.type = GamePredef.TBL_EQUIPT_TEMPLATE;
                  nextPetEqu.giid = _loc2_.nextEquTid;
                  levelupReqId = GamePredef.LEVELUP_REQ_NUM[_loc2_.reqLevel].id;
                  levelupReqNum = GamePredef.LEVELUP_REQ_NUM[_loc2_.reqLevel].req;
                  if(isSpecPetEqu(_loc2_))
                  {
                     if(StringUtil.beginsWith(_loc2_.reqClassId.toString(),"|") && StringUtil.endsWith(_loc2_.reqClassId.toString(),"|"))
                     {
                        levelupReqNum *= 2;
                     }
                     else
                     {
                        levelupReqNum = Math.round(levelupReqNum * 1.5);
                     }
                  }
                  petEquLevelupItemNeed.type = GamePredef.TBL_ITEM_TEMPLATE;
                  petEquLevelupItemNeed.giid = levelupReqId;
                  petEquLevelupReqNum.htmlText = Language.EQUIPTFUNCPANEL_U[84].replace("{num}",levelupReqNum);
                  petEquLevelupMoney.text = (_loc3_.reqLevel * _loc3_.reqLevel * GamePredef.MONEY_EQUFUNC_MAKE).toString();
               }
               else
               {
                  nextPetEqu.giid = -1;
               }
            }
            else
            {
               petEquReadyLevelup.slotData = null;
               petEquReadyLevelup.clean();
            }
         }
      }
      
      public function set transItemNeed(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._948574959transItemNeed;
         if(_loc2_ !== param1)
         {
            this._948574959transItemNeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"transItemNeed",_loc2_,param1));
         }
      }
      
      public function set makeAward(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1238698255makeAward;
         if(_loc2_ !== param1)
         {
            this._1238698255makeAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeAward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get costInfo() : Label
      {
         return this._425010661costInfo;
      }
      
      public function set sublimeRight(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1690306823sublimeRight;
         if(_loc2_ !== param1)
         {
            this._1690306823sublimeRight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeRight",_loc2_,param1));
         }
      }
      
      private function makeTreeChange2() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ArrayCollection = null;
         var _loc3_:ArrayCollection = null;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:Boolean = false;
         var _loc7_:* = undefined;
         if(classType.selectedItem.cid == "all")
         {
            makeTree.dataProvider = useEquInfo;
            makeTreeChange();
            return;
         }
         if(Boolean(equiptClassType[Number(classType.selectedItem.cid)]) && Boolean(equiptClassType[Number(classType.selectedItem.cid)][0]))
         {
            makeTree.dataProvider = equiptClassType[Number(classType.selectedItem.cid)][0];
         }
         else
         {
            _loc1_ = {};
            _loc1_ = getThisClassEquiptObject(Number(classType.selectedItem.cid));
            _loc2_ = new ArrayCollection();
            _loc2_.removeAll();
            _loc3_ = new ArrayCollection();
            for(_loc4_ in useEquInfo)
            {
               if(!useEquInfo[_loc4_])
               {
                  return;
               }
               if(useEquInfo[_loc4_].label == GamePredef.ITEM_KIND_NAME[GamePredef.ITEM_KIND_MAINHAND] || useEquInfo[_loc4_].label == GamePredef.ITEM_KIND_NAME[GamePredef.ITEM_KIND_SUBHAND])
               {
                  if(useEquInfo[_loc4_].children)
                  {
                     for(_loc5_ in useEquInfo[_loc4_].children)
                     {
                        _loc6_ = false;
                        for(_loc7_ in _loc1_)
                        {
                           if(Boolean(useEquInfo[_loc4_].children[_loc5_]) && Boolean(useEquInfo[_loc4_].children[_loc5_].type) && useEquInfo[_loc4_].children[_loc5_].type == Number(_loc7_))
                           {
                              _loc3_.addItem({
                                 "label":useEquInfo[_loc4_].label,
                                 "kind":useEquInfo[_loc4_].kind,
                                 "children":useEquInfo[_loc4_].children[_loc5_]
                              });
                              _loc6_ = true;
                              break;
                           }
                        }
                        if(_loc6_)
                        {
                           break;
                        }
                     }
                  }
               }
               else
               {
                  _loc3_.addItem({
                     "label":useEquInfo[_loc4_].label,
                     "kind":useEquInfo[_loc4_].kind,
                     "children":useEquInfo[_loc4_].children
                  });
               }
            }
            if(!equiptClassType[Number(classType.selectedItem.cid)])
            {
               equiptClassType[Number(classType.selectedItem.cid)] = new ArrayCollection();
            }
            equiptClassType[Number(classType.selectedItem.cid)].removeAll();
            equiptClassType[Number(classType.selectedItem.cid)].addItem(_loc3_);
            makeTree.dataProvider = _loc3_;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModPreItem() : ItemSlot
      {
         return this._553145794petEquModPreItem;
      }
      
      private function materialMixItemChange(param1:Event) : void
      {
         var _loc2_:int = 0;
         if(materialMixItem.slotData)
         {
            if(materialMixItem.tempBagFlag)
            {
               _loc2_ = materialMixItem.slotData.q / 5;
               if(_loc2_ == 4)
               {
                  materialMixBasicRate = 6;
               }
               else
               {
                  materialMixBasicRate = 20;
               }
               materialMixNumChange();
            }
            else
            {
               _core.remote.call("gdc",new Responder(onMaterialMixIns),GamePredef.TBL_ITEM_INSTANCE,materialMixItem.slotData.itemId);
            }
         }
      }
      
      private function petEquLevelUp() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(Boolean(petEquReadyLevelup.slotData) && Boolean(petEquLevelupItem.slotData))
         {
            if(_core.player.enoughMoneyAuto(1,Number(petEquLevelupMoney.text)))
            {
               _loc1_ = Number(petEquReadyLevelup.slotData.id);
               _loc2_ = Number(petEquLevelupItem.slotData.id);
               _core.remote.call("petEquLevelUp",new Responder(onPetEquLevelUp),_loc1_,_loc2_);
            }
            else
            {
               petEquLevelupInfo.htmlText = Language.EQUIPTFUNCPANEL_S[32];
            }
         }
      }
      
      private function makeTreeClick(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(!makeTree.selectedItem.type)
         {
            if(makeTree.selectedIndex == currentMakeTreeIndex)
            {
               makeTree.expandItem(makeTree.selectedItem,!makeTree.isItemOpen(makeTree.selectedItem));
            }
            else
            {
               for each(_loc2_ in makeTree.openItems)
               {
                  makeTree.expandItem(_loc2_,false);
               }
               makeTree.expandItem(makeTree.selectedItem,!makeTree.isItemOpen(makeTree.selectedItem));
            }
            currentMakeTreeIndex = makeTree.selectedIndex;
         }
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton7_click(param1:MouseEvent) : void
      {
         magicWeaponChangeLevel();
      }
      
      public function showEquipChangeAlert(param1:Object) : void
      {
         if(param1.saveType)
         {
            switch(param1.saveType)
            {
               case 1:
                  this.onPetEquModBind(param1);
                  break;
               case 11:
                  equipChange.onChangeSoul(param1);
                  break;
               case 21:
                  equipChange.onChangeElement(param1);
                  break;
               case 3:
                  equipChange.onChangePrefix(param1);
                  break;
               case 4:
                  equipChange.onChangeBind(param1);
                  break;
               case 6:
                  this.onPetEquModPre(param1);
                  break;
               case 31:
                  showMWSuccinct(param1);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get itemInfo() : Label
      {
         return this._1177195105itemInfo;
      }
      
      private function materialMixOne() : void
      {
         var _loc1_:int = 0;
         if(materialMixItem.slotData)
         {
            materialButtonAll.enabled = false;
            materialButtonOne.enabled = false;
            if(materialMixItem.tempBagFlag)
            {
               _loc1_ = int(materialMixItem.slotData.idx);
            }
            else
            {
               _loc1_ = int(materialMixItem.slotData.id);
            }
            _core.remote.call("materialMixOne",new Responder(onMaterialMix),materialMixNum.value,_loc1_,materialMixItem.tempBagFlag);
         }
      }
      
      public function set petEquStarAllBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._103075529petEquStarAllBtn;
         if(_loc2_ !== param1)
         {
            this._103075529petEquStarAllBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarAllBtn",_loc2_,param1));
         }
      }
      
      public function set petEquModColorNeedItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1621769932petEquModColorNeedItem;
         if(_loc2_ !== param1)
         {
            this._1621769932petEquModColorNeedItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModColorNeedItem",_loc2_,param1));
         }
      }
      
      private function materialMixViewClear() : void
      {
         materialMixItem.clean();
      }
      
      private function stageHandler(param1:Event) : void
      {
         var equSlot:Object = null;
         var equInst:Object = null;
         var equMeta:Object = null;
         var maxPropNum1:int = 0;
         var maxPropNum2:int = 0;
         var finalPropNum1:int = 0;
         var finalPropNum2:int = 0;
         var spiritNum:int = 0;
         var itemNum:int = 0;
         var gameDataIdx:Object = null;
         var stageMetaDict:Object = null;
         var charProp:Object = null;
         var onMagicWeaponStage:Function = null;
         var stageMeta:Object = null;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(!stageEqu.slotData)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[145]);
            return;
         }
         equSlot = stageEqu.slotData;
         equInst = _core.data.getGameData(equSlot.type,equSlot.itemId);
         if(!ToolKit.isEqual(equInst.binded,1))
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[146]);
            return;
         }
         if(ToolKit.isSmallThan(equInst.upgradeNum,GamePredef.STAGE_EIGHT_LEVEL))
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[146]);
            return;
         }
         equMeta = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][equInst.tid];
         maxPropNum1 = Math.floor(Number(equMeta.mainPropNum1) * GamePredef.STAGE_EIGHT_MIN);
         maxPropNum2 = Math.floor(Number(equMeta.mainPropNum2) * GamePredef.STAGE_EIGHT_MIN);
         if(Number(equInst.mainPropNum1) < maxPropNum1 || Number(equInst.mainPropNum2) < maxPropNum2)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[146]);
            return;
         }
         finalPropNum1 = Number(equMeta.mainPropNum1) * GamePredef.STAGE_EIGHT_MAX;
         finalPropNum2 = Number(equMeta.mainPropNum2) * GamePredef.STAGE_EIGHT_MAX;
         if(Number(equInst.mainPropNum1) >= finalPropNum1 || Number(equInst.mainPropNum2) >= finalPropNum2)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[148]);
            return;
         }
         gameDataIdx = DataManager.getInstance().gameDataIndex;
         stageMetaDict = gameDataIdx[GamePredef.TBL_ARTIFACT][equInst.tid];
         if(Number(equInst.mainPropNum1) == maxPropNum1 && Number(equInst.mainPropNum2) == maxPropNum2)
         {
            for each(stageMeta in stageMetaDict)
            {
               if(stageMeta.level == 1)
               {
                  spiritNum = int(stageMeta.spiritNum);
                  itemNum = int(stageMeta.itemNum);
                  break;
               }
            }
         }
         else
         {
            for each(stageMeta in stageMetaDict)
            {
               if(equInst.mainPropNum1 == stageMeta.propNum1 && equInst.mainPropNum2 == stageMeta.propNum2)
               {
                  spiritNum = int(stageMeta.spiritNum);
                  itemNum = int(stageMeta.itemNum);
                  break;
               }
            }
         }
         charProp = _core.player.property;
         if(!charProp || Number(charProp.spirituality) < spiritNum)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[110]);
            return;
         }
         if(!stageItem.slotData || Number(stageItem.stackNum) < itemNum)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[147]);
            return;
         }
         onMagicWeaponStage = function(param1:Object = null):void
         {
            var _loc2_:Object = null;
            var _loc3_:Object = null;
            if(!param1)
            {
               return;
            }
            param1.msg && _core.sysMidNote(param1.msg);
            if(!param1.hasOwnProperty("update"))
            {
               return;
            }
            _loc2_ = stageEqu.slotData;
            if(!_loc2_ && _loc2_.itemId != param1.itemId)
            {
               magicWeaponStageViewClear();
               return;
            }
            _loc3_ = _dm.getGameData(_loc2_.type,_loc2_.itemId);
            if(param1.hasOwnProperty("flagStr"))
            {
               _loc3_.flag = param1.flagStr;
            }
            if(param1.hasOwnProperty("propNum1"))
            {
               _loc3_.mainPropNum1 = param1.propNum1;
               _loc3_.mainPropNum2 = param1.propNum2;
            }
            _dm.updateData(_loc2_.type,_loc3_);
            if(param1.hasOwnProperty("num"))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  stageItem.stackNum = param1.num;
               }
               else
               {
                  stageItem.clean();
               }
            }
            magicWeaponStageChange();
         };
         _core.remote.call("magicWeaponStage",new Responder(onMagicWeaponStage),stageEqu.slotData.id,stageItem.slotData.id);
      }
      
      public function set materialMixPer(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1788134104materialMixPer;
         if(_loc2_ !== param1)
         {
            this._1788134104materialMixPer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialMixPer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hintTxt() : TextArea
      {
         return this._922290793hintTxt;
      }
      
      public function __tabBtnA3_click(param1:MouseEvent) : void
      {
         tabBtnAClick(3);
      }
      
      private function makeListChange(param1:Boolean = true) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         makeViewClear();
         if(makeList.selectedItem)
         {
            _loc2_ = makeList.selectedItem.equData;
            resetItemList();
            if(_loc2_)
            {
               makeAward.type = GamePredef.TBL_EQUIPT_TEMPLATE;
               makeAward.giid = _loc2_.id;
               _loc3_ = 1;
               while(_loc3_ <= 3)
               {
                  if(ToolKit.isBigThan(_loc2_["requireItem" + _loc3_],0))
                  {
                     this["makeRequire" + _loc3_].type = GamePredef.TBL_ITEM_TEMPLATE;
                     this["makeRequire" + _loc3_].giid = _loc2_["requireItem" + _loc3_];
                     this["makeRequire" + _loc3_].stackNum = _loc2_["requireNum" + _loc3_];
                     this["makeInputItem" + _loc3_].requireSlot = {
                        "type":GamePredef.TBL_ITEM_TEMPLATE,
                        "giid":_loc2_["requireItem" + _loc3_],
                        "stackNum":_loc2_["requireNum" + _loc3_]
                     };
                     _itemList.idList.push(this["makeRequire" + _loc3_].giid);
                  }
                  _loc3_++;
               }
               _itemList.type = 1;
               if(param1)
               {
                  equipBag.showItem(tabA.selectedIndex,_itemList);
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarOneBtn() : BasicGlowButton
      {
         return this._299371090petEquStarOneBtn;
      }
      
      public function set modBindReqNum(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1232558777modBindReqNum;
         if(_loc2_ !== param1)
         {
            this._1232558777modBindReqNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modBindReqNum",_loc2_,param1));
         }
      }
      
      public function haveSuccData() : Boolean
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            if(Boolean(this["newPro" + _loc1_]) && this["newPro" + _loc1_].htmlText != "")
            {
               return true;
            }
            _loc1_++;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelUpdatePer() : BasicTxtButton
      {
         return this._60074641jewelUpdatePer;
      }
      
      public function ___EquiptFuncPanel_Canvas12_creationComplete(param1:FlexEvent) : void
      {
         initMWPTransfer();
      }
      
      [Bindable(event="propertyChange")]
      public function get magEquFuncList() : List
      {
         return this._1292150120magEquFuncList;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarMax() : NumericStepper
      {
         return this._1877517656petEquStarMax;
      }
      
      public function __jewelUpdateButtonOne_click(param1:MouseEvent) : void
      {
         jewelUpdateOne();
      }
      
      private function buyItem(param1:String) : void
      {
         var func:Function;
         var bagpanel:*;
         var alias:String = param1;
         aliasString = alias;
         bagpanel = _core.view.getUI(ViewManager.PANEL_BAG);
         func = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuyItem),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuyItem(true);
         }
      }
      
      public function set mwSuccinctCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._517338458mwSuccinctCanvas;
         if(_loc2_ !== param1)
         {
            this._517338458mwSuccinctCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwSuccinctCanvas",_loc2_,param1));
         }
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton16_click(param1:MouseEvent) : void
      {
         succinctVip();
      }
      
      private function changeBagVis() : void
      {
         if(!equipBagAdded)
         {
            equipBag = null;
            equipBag = new EquipFuncBag();
            equipBag.x = 498;
            equipBag.y = 33;
            width = 750;
            addChild(equipBag as EquipFuncBag);
            equipBag.eFuncPanel = this;
            equipBagAdded = true;
            showBag.styleName = "EquipBagLeft";
         }
         else if(equipBag.visible)
         {
            equipBag.visible = false;
            showBag.styleName = "EquipBagRight";
            width = 500;
         }
         else
         {
            equipBag.visible = true;
            width = 750;
            showBag.styleName = "EquipBagLeft";
         }
         if(equipBag.visible)
         {
            equipBag.showItem(tabA.selectedIndex,_itemList);
         }
         eTitle.text = eTitle.text;
      }
      
      public function set autoSublime(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1036064102autoSublime;
         if(_loc2_ !== param1)
         {
            this._1036064102autoSublime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoSublime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupItem() : ItemSlot
      {
         return this._1267899704petEquLevelupItem;
      }
      
      public function set petEquModPreSucc(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._552846995petEquModPreSucc;
         if(_loc2_ !== param1)
         {
            this._552846995petEquModPreSucc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModPreSucc",_loc2_,param1));
         }
      }
      
      public function set stageEqu(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1306166635stageEqu;
         if(_loc2_ !== param1)
         {
            this._1306166635stageEqu = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stageEqu",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeItem() : ItemSlot
      {
         return this._1885394232sublimeItem;
      }
      
      private function initMWPTransfer() : void
      {
         tabD && tabD.selectedIndex == 5 && MWTransFrom.addEventListener(GameEvent.SLOT_GIID_CHANGE,MWTransFromChange);
      }
      
      public function onGetMakeColor(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1.canMake)
         {
            if(param1.colorPerList)
            {
               _loc2_ = 1;
               while(_loc2_ <= 4)
               {
                  this["makePer" + _loc2_].text = int(param1.colorPerList["makePer" + _loc2_]).toString() + "%";
                  _loc2_++;
               }
            }
            makeButton.enabled = true;
         }
         else
         {
            if(param1.flag)
            {
               if(ToolKit.isEqual(param1.flag,1))
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[64]);
                  _core.sysMsg(Language.EQUIPTFUNCPANEL_S[64]);
               }
            }
            makeButton.enabled = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxProp() : TextArea
      {
         return this._843999975maxProp;
      }
      
      public function __petEquModColorBtn_click(param1:MouseEvent) : void
      {
         petEquModColor();
      }
      
      public function onSureSuccinctMW(param1:Object) : *
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         _loc2_ = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
         if(_loc2_)
         {
            _loc2_.updateSuccData(this.MwSuccinct.giid,param1.flag);
         }
         this.updateMWSuccView(param1.flag,null);
      }
      
      public function set MwSuccinct(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._273317502MwSuccinct;
         if(_loc2_ !== param1)
         {
            this._273317502MwSuccinct = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MwSuccinct",_loc2_,param1));
         }
      }
      
      public function set petEquStarInfo1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._411523705petEquStarInfo1;
         if(_loc2_ !== param1)
         {
            this._411523705petEquStarInfo1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarInfo1",_loc2_,param1));
         }
      }
      
      public function set petEquStarInfo2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._411523704petEquStarInfo2;
         if(_loc2_ !== param1)
         {
            this._411523704petEquStarInfo2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarInfo2",_loc2_,param1));
         }
      }
      
      private function magicWeaponRepair() : void
      {
         var onMWRepair:Function = null;
         onMWRepair = function(param1:Object):void
         {
            if(param1)
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  blueStoneNeed.stackNum = param1.num;
               }
               else
               {
                  blueStoneNeed.clean();
               }
               if(param1.succ)
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[76]);
               }
            }
         };
         if(Boolean(MWRepair.slotData) && Boolean(blueStoneNeed.slotData))
         {
            _core.remote.call("magicWeaponRepair",new Responder(onMWRepair),MWRepair.slotData.id,blueStoneNeed.slotData.id);
         }
         else
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[82]);
         }
      }
      
      private function onPetEquModColor(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ISlot = null;
         if(!param1)
         {
            return;
         }
         if(param1.flag)
         {
            if(ToolKit.isEqual(petEquReadyModColor.slotData.itemId,param1.i))
            {
               petEquReadyModColor.giid = param1.i;
               petEquReadyModColor.setStyleName(param1.c);
               _loc2_ = _core.data.getData(petEquReadyModColor.slotData.type,petEquReadyModColor.slotData.itemId);
               if(_loc2_)
               {
                  _loc2_.color = param1.c;
                  _loc3_ = _core.view.getSlot(param1.sid);
                  _loc3_.restore();
                  equipBag.refreshSlots({
                     "sid":param1.sid,
                     "giid":param1.i
                  });
               }
            }
            petEquModColorItem.stackNum -= param1.num;
            petEquModColorInfo.htmlText = Language.EQUIPTFUNCPANEL_S[84];
            petEquModReqNum.text = "";
         }
         else
         {
            petEquModColorItem.stackNum -= param1.num;
            petEquModColorInfo.htmlText = param1.msg ? param1.msg : Language.EQUIPTFUNCPANEL_S[85];
         }
         petEquModColorChange(null);
      }
      
      private function initMWPSkill() : void
      {
         tabD && tabD.selectedIndex == 4 && MWResetSkill.addEventListener(GameEvent.SLOT_GIID_CHANGE,MWResetSkillChange);
      }
      
      private function jewelUpdateAll() : void
      {
         if(Boolean(jewelUpdateItem1.slotData) && ToolKit.isBigThan(jewelUpdateItem2.giid,0))
         {
            jewelUpdateButtonAll.enabled = false;
            jewelUpdateButtonOne.enabled = false;
            _core.remote.call("jewelUpdateAll",new Responder(onJewelUpdate),jewelUpdateNum.value,jewelUpdateItem1.slotData.id,jewelUpdateItem1.tempBagFlag);
         }
      }
      
      private function MWTrans() : void
      {
         var onMWTrans:Function = null;
         var onDel:Function = null;
         var func:Function = null;
         onMWTrans = function(param1:Object):void
         {
            if(Boolean(param1) && Boolean(param1.succ))
            {
               MWTransTo.clean();
               if(ToolKit.isBigThan(param1.num,0))
               {
                  transItemNeed.stackNum = param1.num;
               }
               else
               {
                  transItemNeed.clean();
               }
            }
            if(Boolean(param1) && Boolean(param1.msg))
            {
               _core.sysMidNote(param1.msg);
            }
         };
         onDel = function(param1:String):void
         {
            var _loc2_:String = null;
            if(param1)
            {
               _loc2_ = MD5.hash(param1);
               _core.remote.call("MWTrans",new Responder(onMWTrans),MWTransFrom.slotData.id,MWTransTo.slotData.id,transItemNeed.slotData.id,_loc2_);
            }
         };
         if(Boolean(MWTransFrom.slotData) && Boolean(MWTransTo.slotData) && Boolean(transItemNeed.slotData))
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(_core.delPass)
                  {
                     _core.remote.call("MWTrans",new Responder(onMWTrans),MWTransFrom.slotData.id,MWTransTo.slotData.id,transItemNeed.slotData.id,_core.delPass);
                  }
                  else
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.EQUIPTFUNCPANEL_U[56],onDel);
                  }
               }
            };
            Alert.show(Language.EQUIPTFUNCPANEL_S[95],"",Alert.YES | Alert.CANCEL,this,func);
         }
         else
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[82]);
         }
      }
      
      public function ___EquiptFuncPanel_Canvas16_creationComplete(param1:FlexEvent) : void
      {
         initTab(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupBasic() : NumericStepper
      {
         return this._657202407petEquLevelupBasic;
      }
      
      public function __makeButton_click(param1:MouseEvent) : void
      {
         newMake();
      }
      
      [Bindable(event="propertyChange")]
      public function get stageItem() : ItemSlot
      {
         return this._1836581681stageItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get blueStoneGet() : ItemSlotMaterial
      {
         return this._1359520555blueStoneGet;
      }
      
      public function __eTitle_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function chageSelected(param1:int) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Image = null;
         _loc2_ = new Array();
         _loc3_ = 0;
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            if(this["lock" + _loc4_].visible)
            {
               _loc3_++;
            }
            if(this["lock" + _loc4_].selected)
            {
               _loc2_.push(_loc4_);
            }
            _loc4_++;
         }
         if(_loc3_ == 1 || _loc3_ - _loc2_.length == 0)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[228],"",Alert.YES,null,null);
            this["lock" + param1].selected = false;
            return;
         }
         _loc5_ = _loc2_.length + _loc3_;
         costInfo.text = Language.EQUIPTFUNCPANEL_U[209].replace("{num}",_loc5_);
         if(this["lock" + param1].selected)
         {
            _loc6_ = new Image();
            _loc6_.source = lockImg;
            _loc6_.x = this["lock" + param1].x - 20;
            _loc6_.y = this["lock" + param1].y + 3;
            lockDict[param1] = _loc6_;
            mwSuccinctCanvas.addChild(_loc6_);
         }
         else if(lockDict[param1])
         {
            mwSuccinctCanvas.removeChild(lockDict[param1]);
            delete lockDict[param1];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModColorBtn() : BasicDelayButton
      {
         return this._718512913petEquModColorBtn;
      }
      
      public function set petEquModBindInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2008432221petEquModBindInfo;
         if(_loc2_ !== param1)
         {
            this._2008432221petEquModBindInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModBindInfo",_loc2_,param1));
         }
      }
      
      public function set succinctBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2124710308succinctBtn;
         if(_loc2_ !== param1)
         {
            this._2124710308succinctBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"succinctBtn",_loc2_,param1));
         }
      }
      
      private function petEquModColor() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(Boolean(petEquReadyModColor.slotData) && Boolean(petEquModColorItem.slotData))
         {
            if(_core.player.enoughMoneyAuto(1,Number(petEquModColorMoney.text)))
            {
               _loc1_ = Number(petEquReadyModColor.slotData.id);
               _loc2_ = Number(petEquModColorItem.slotData.id);
               _core.remote.call("petEquModColor",new Responder(onPetEquModColor),_loc1_,_loc2_);
            }
            else
            {
               petEquModColorInfo.htmlText = Language.EQUIPTFUNCPANEL_S[32];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabA() : ViewStack
      {
         return this._3552076tabA;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabC() : ViewStack
      {
         return this._3552078tabC;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabD() : ViewStack
      {
         return this._3552079tabD;
      }
      
      public function set modPreReqNum(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1252811177modPreReqNum;
         if(_loc2_ !== param1)
         {
            this._1252811177modPreReqNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"modPreReqNum",_loc2_,param1));
         }
      }
      
      private function petEquModBind() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         petEquModBindSucc.text = "";
         if(Boolean(petEquReadyModBind.slotData) && Boolean(petEquModBindItem.slotData))
         {
            if(!_core.player.enoughMoneyAuto(1,GamePredef.MONEY_EQUFUNC_ELEMENT))
            {
               petEquModBindInfo.htmlText = Language.EQUIPTFUNCPANEL_S[32];
               return;
            }
            if(!ToolKit.isBigOrEqual(petEquModBindItem.stackNum,modBindReq))
            {
               petEquModBindInfo.htmlText = Language.EQUIPTFUNCPANEL_S[56];
               return;
            }
            _loc1_ = Number(petEquReadyModBind.slotData.id);
            _loc2_ = Number(petEquModBindItem.slotData.id);
            _core.remote.call("petEquModBind",new Responder(onPetEquModBind),_loc1_,_loc2_);
         }
      }
      
      public function __magEquFuncList_change(param1:ListEvent) : void
      {
         tabBtnDClick(magEquFuncList.selectedIndex);
      }
      
      public function set MWChangeLevel(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1518482858MWChangeLevel;
         if(_loc2_ !== param1)
         {
            this._1518482858MWChangeLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWChangeLevel",_loc2_,param1));
         }
      }
      
      public function __materialButtonOne_click(param1:MouseEvent) : void
      {
         materialMixOne();
      }
      
      public function succinctVip() : void
      {
         var gfunc:Function = null;
         var view:Object = null;
         var func:Function = null;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         if(Boolean(_core.player.pmLevel) && _core.player.pmLevel > 0)
         {
            view = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
            if(view)
            {
               if(!view.haveSuccData())
               {
                  view.eid = MwSuccinct.giid;
                  view.updateMWSuccView(oldSuccData,null);
               }
               else if(MwSuccinct.giid == view.succinctId)
               {
                  view.eid = MwSuccinct.giid;
                  view.updateMWSuccView(oldSuccData,null,false);
               }
               else
               {
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        view.eid = MwSuccinct.giid;
                        view.updateMWSuccView(oldSuccData,null);
                     }
                  };
                  if(_alert)
                  {
                     PopUpManager.removePopUp(_alert);
                     _alert = null;
                  }
                  _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[218],"",Alert.YES | Alert.NO,null,func);
               }
               view.visible = true;
               view.unselectAutoBuy();
            }
         }
         else
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[234],"",Alert.YES,null,null);
         }
      }
      
      public function set spiritualityLabel(param1:DescriptionLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1004296629spiritualityLabel;
         if(_loc2_ !== param1)
         {
            this._1004296629spiritualityLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spiritualityLabel",_loc2_,param1));
         }
      }
      
      public function set curProp(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1125939651curProp;
         if(_loc2_ !== param1)
         {
            this._1125939651curProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curProp",_loc2_,param1));
         }
      }
      
      public function set makePer3(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._40388036makePer3;
         if(_loc2_ !== param1)
         {
            this._40388036makePer3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makePer3",_loc2_,param1));
         }
      }
      
      public function set makePer1(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._40388034makePer1;
         if(_loc2_ !== param1)
         {
            this._40388034makePer1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makePer1",_loc2_,param1));
         }
      }
      
      public function set makePer2(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._40388035makePer2;
         if(_loc2_ !== param1)
         {
            this._40388035makePer2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makePer2",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:EquiptFuncPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _EquiptFuncPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_EquiptFuncPanelWatcherSetupUtil");
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
      
      public function __makeCanvas_creationComplete(param1:FlexEvent) : void
      {
         initTab(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupItemNeed() : ItemSlot
      {
         return this._638827390petEquLevelupItemNeed;
      }
      
      public function set makePer4(param1:BoxLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._40388037makePer4;
         if(_loc2_ !== param1)
         {
            this._40388037makePer4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makePer4",_loc2_,param1));
         }
      }
      
      public function __classType_change(param1:ListEvent) : void
      {
         classType.dataProvider[0].label = Language.EQUIPTFUNCPANEL_S[0];
      }
      
      public function activateMWPro(param1:int) : void
      {
         var flag1:Boolean = false;
         var flag2:Boolean = false;
         var view:Object = null;
         var func:Function = null;
         var index:int = param1;
         if(MwSuccinct.giid < 0)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[226],"",Alert.YES,null,null);
         }
         flag1 = false;
         flag2 = false;
         view = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
         if(this.hasSuccData())
         {
            flag1 = true;
         }
         else if(view)
         {
            if(view.haveSuccData())
            {
               flag2 = true;
            }
         }
         if(flag1 || flag2)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _activateMwPro(index);
                  if(flag1)
                  {
                     this.cleanSuccData();
                  }
                  if(flag2)
                  {
                     view.clearSuccDb();
                  }
               }
            };
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[233],"",Alert.YES | Alert.NO,null,func);
         }
         else
         {
            _activateMwPro(index);
         }
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         var _loc2_:ItemSlot = param1.item.data.slot;
         var _loc3_:Object = param1.item.data.sData;
         _loc2_.slotData = _loc3_;
         _loc2_.type = _loc3_.type;
         _loc2_.giid = _loc3_.itemId;
         _loc2_.stackNum = _loc3_.stackNum;
         Menu(param1.target).removeEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function set petEquModPreBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._849134127petEquModPreBtn;
         if(_loc2_ !== param1)
         {
            this._849134127petEquModPreBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModPreBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialButtonAll() : BasicGlowButton
      {
         return this._192885848materialButtonAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get makeList() : List
      {
         return this._40272812makeList;
      }
      
      private function newMake() : void
      {
         if(makeList.selectedItem.equData)
         {
            setTimeout(startNewMake,2000);
            makeCanvas.enabled = false;
            progressBar.progressName = Language.EQUIPTFUNCPANEL_S[1];
            progressBar.completeFunction = completeMake;
            progressBar.showByTime(2);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainEquip() : ItemSlotEquFunc
      {
         return this._1469908056restrainEquip;
      }
      
      public function __actBtn2_click(param1:MouseEvent) : void
      {
         activateMWPro(2);
      }
      
      private function clearPetEquiptPrePanel() : *
      {
         petEquReadyPre.clean();
         petEquModPreNeedItem.clean();
         petEquModPreItem.clean();
         curProp.text = "";
         maxProp.text = "";
         petEquModPreSucc.text = "";
         petEquModPreInfo.text = "";
         modPreReqNum.htmlText = "";
      }
      
      private function onMaterialMixIns(param1:Object) : void
      {
         if(param1)
         {
            if(ToolKit.isEqual(param1.data.color,4))
            {
               materialMixBasicRate = 0.3 * 20;
            }
            else
            {
               materialMixBasicRate = 20;
            }
            materialMixNumChange();
         }
      }
      
      private function initMWPLvUp() : void
      {
         tabD && tabD.selectedIndex == 0 && MWChangeLevel.addEventListener(GameEvent.SLOT_GIID_CHANGE,MWChangeLevelChange);
      }
      
      private function doBuyItem(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:SystemShopPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            _loc3_ = SystemShopPanel(_core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP));
            _loc3_.show();
            _loc3_.setPage(aliasString);
         }
      }
      
      public function onScriptSublimeEquip(param1:Number, param2:String) : void
      {
         equipChange && equipChange.onScriptSublimeEquip(param1,param2);
      }
      
      public function set MWRepair(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._894849577MWRepair;
         if(_loc2_ !== param1)
         {
            this._894849577MWRepair = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWRepair",_loc2_,param1));
         }
      }
      
      private function initMWPStage() : void
      {
         tabD && tabD.selectedIndex == 7 && stageEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,magicWeaponStageChange);
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquReadyPre() : ItemSlotEquFunc
      {
         return this._255603766petEquReadyPre;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBag() : BasicGlowButton
      {
         return this._2067262411showBag;
      }
      
      public function set oldPro1(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1379509781oldPro1;
         if(_loc2_ !== param1)
         {
            this._1379509781oldPro1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPro1",_loc2_,param1));
         }
      }
      
      public function set oldPro2(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1379509780oldPro2;
         if(_loc2_ !== param1)
         {
            this._1379509780oldPro2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPro2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModPreInfo() : Label
      {
         return this._553151527petEquModPreInfo;
      }
      
      public function set oldPro0(param1:TextInput) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1379509782oldPro0;
         if(_loc2_ !== param1)
         {
            this._1379509782oldPro0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPro0",_loc2_,param1));
         }
      }
      
      private function MWResolveViewClear() : void
      {
         MWResolve && MWResolve.clean();
         blueStoneGet && blueStoneGet.clean();
      }
      
      private function autoInputMake() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc1_:Object = _dm.sList;
         var _loc2_:int = 1;
         while(_loc2_ <= 3)
         {
            _loc3_ = this["makeInputItem" + _loc2_].requireSlot;
            _loc4_ = -1;
            if(_loc3_)
            {
               for each(_loc6_ in _loc1_)
               {
                  if(Boolean(_loc6_) && Boolean(ToolKit.isBigThan(_loc6_.sid,GamePredef.SLOT_SID_BAG[0])) && ToolKit.isSmallOrEqual(_loc6_.sid,GamePredef.SLOT_SID_BAG[7]))
                  {
                     _loc7_ = _core.getTemplateData(_loc6_.type,_loc6_.itemId);
                     if(_loc7_)
                     {
                        _loc8_ = _core.data.getData(_loc6_.type,_loc6_.itemId);
                        if(ToolKit.isEqual(_loc6_.type,_loc3_.type - 1) && ToolKit.isEqual(_loc7_.id,_loc3_.giid) && ToolKit.isBigOrEqual(_loc6_.stackNum,_loc3_.stackNum) && (ToolKit.isBigThan(_loc8_.color,_loc4_) && ToolKit.isSmallThan(_loc8_.color,5)))
                        {
                           _loc4_ = Number(_loc8_.color);
                           _loc5_ = _loc6_;
                        }
                     }
                  }
               }
               if(Boolean(_loc5_) && _loc4_ >= 0)
               {
                  this["makeInputItem" + _loc2_].slotData = _loc5_;
                  this["makeInputItem" + _loc2_].type = _loc5_.type;
                  this["makeInputItem" + _loc2_].giid = _loc5_.itemId;
                  this["makeInputItem" + _loc2_].stackNum = _loc3_.stackNum;
                  this["makeInputItem" + _loc2_].tempBagFlag = false;
               }
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelUpdateItem2() : ItemSlotJewel
      {
         return this._1891128307jewelUpdateItem2;
      }
      
      private function onPetEquModBindItem(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(param1.target.slotData)
         {
            if(Boolean(petEquReadyModBind.slotData) && ToolKit.isBigThan(petEquModBindNeedItem.giid,0))
            {
               _loc2_ = _core.getTemplateData(petEquModBindItem.slotData.type,petEquModBindItem.slotData.itemId,false);
               if(Boolean(_loc2_) && ToolKit.isEqual(_loc2_.id,petEquModBindNeedItem.giid))
               {
                  petEquModBindBtn.enabled = true;
                  return;
               }
               petEquModBindItem.clean();
            }
         }
         petEquModBindBtn.enabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelUpdateItem1() : ItemSlotJewel
      {
         return this._1891128306jewelUpdateItem1;
      }
      
      public function __tabBtnA1_click(param1:MouseEvent) : void
      {
         tabBtnAClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquReadyModBind() : ItemSlotEquFunc
      {
         return this._1799691270petEquReadyModBind;
      }
      
      [Bindable(event="propertyChange")]
      public function get equipChange() : EquipFunc
      {
         return this._1908571136equipChange;
      }
      
      private function onPetEquModPre(param1:Object) : void
      {
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:String = null;
         var oldequData:Object = null;
         var rate:* = undefined;
         var newequData:Object = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var data:Object = param1;
         if(data.f)
         {
            if(!data.saveType)
            {
               petEquModPreInfo.htmlText = "";
            }
            if(Boolean(data.saveType) || ToolKit.isEqual(petEquModPreItem.slotData.id,data.ii))
            {
               if(!data.saveType)
               {
                  if(data.n <= 0)
                  {
                     petEquModPreItem.clean();
                  }
                  petEquModPreItem.stackNum = data.n;
               }
               yesAlert = Alert.yesLabel;
               noAlert = Alert.noLabel;
               func = function(param1:CloseEvent):void
               {
                  Alert.yesLabel = yesAlert;
                  Alert.noLabel = noAlert;
                  if(param1.detail == Alert.YES)
                  {
                     if(!data.saveType)
                     {
                        _core.remote.nc.call("surePetEquModPre",new Responder(onSurePetEquModPre),1);
                     }
                     else
                     {
                        _core.remote.nc.call("surePetEquModPre",null,1);
                     }
                  }
                  else if(!data.saveType)
                  {
                     _core.remote.nc.call("surePetEquModPre",new Responder(onSurePetEquModPre),-1);
                  }
                  else
                  {
                     _core.remote.nc.call("surePetEquModPre",null,-1);
                  }
               };
               title = Language.EQUIPTFUNCPANEL_S[139];
               contentMsg = "<b>" + Language.EQUIPTFUNCPANEL_S[139] + "</b>" + "    \n";
               if(data.saveType)
               {
                  oldequData = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][data.i];
               }
               else
               {
                  oldequData = data.oldIns;
               }
               rate = GamePredef.EQUIPT_STAR_NUM[oldequData.upgradeNum];
               newequData = data.newIns;
               if(newequData.mainProp1 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + int(oldequData.mainPropNum1 * rate) + (oldequData.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || oldequData.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + int(newequData.mainPropNum1 * rate) + (newequData.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || newequData.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>";
               }
               if(newequData.mainProp2 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + int(oldequData.mainPropNum2 * rate) + (oldequData.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || oldequData.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + int(newequData.mainPropNum2 * rate) + (newequData.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || newequData.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + "</font>";
               }
               if(newequData.prop1 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.prop1] + ": " + "<font color=\'#00FFFF\'>" + oldequData.propNum1 + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.prop1] + ": " + "<font color=\'#00FFFF\'>" + newequData.propNum1 + "</font>";
               }
               if(newequData.prop2 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.prop2] + ": " + "<font color=\'#00FFFF\'>" + oldequData.propNum2 + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.prop2] + ": " + "<font color=\'#00FFFF\'>" + newequData.propNum2 + "</font>";
               }
               if(newequData.bindMainPropNum1 > 0 || newequData.bindMainPropNum2 > 0)
               {
                  contentMsg = contentMsg + "\n" + "<font color=\'#FF11CC\'>" + Language.EQUIPTFUNCPANEL_S[138] + "</font>";
               }
               if(newequData.mainProp1 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + oldequData.bindMainPropNum1 + "%" + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp1] + ": " + "<font color=\'#00FFFF\'>" + newequData.bindMainPropNum1 + "%" + "</font>";
               }
               if(newequData.mainProp2 > 0)
               {
                  contentMsg = contentMsg + "\n" + GamePredef.EQUIPT_PROP_NAME[oldequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + oldequData.bindMainPropNum2 + "%" + "</font>" + Language.EQUIPTFUNCPANEL_S[129] + GamePredef.EQUIPT_PROP_NAME[newequData.mainProp2] + ": " + "<font color=\'#00FFFF\'>" + newequData.bindMainPropNum2 + "%" + "</font>";
               }
               msg = contentMsg.replace(/<font(.*?)>/g,"");
               msg = msg.replace(/<\/font>/g,"");
               msg = msg.replace(/<b>/g,"");
               msg = msg.replace(/<\/b>/g,"");
               Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
               Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
               _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
               Alert.yesLabel = yesAlert;
               Alert.noLabel = noAlert;
               tf = _alert.mx_internal::alertForm.mx_internal::textField;
               tf.htmlText = contentMsg;
               tf.filters = GamePredef.FILTER_TEXT1;
            }
         }
         else
         {
            petEquModPreInfo.htmlText = Language.EQUIPTFUNCPANEL_S[141];
         }
      }
      
      public function __restrainBox_change(param1:ListEvent) : void
      {
         restrainPetElement(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainHint() : Label
      {
         return this._506854415restrainHint;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupBtn() : BasicDelayButton
      {
         return this._1149285369petEquLevelupBtn;
      }
      
      public function set resetStoneNeed(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1748616716resetStoneNeed;
         if(_loc2_ !== param1)
         {
            this._1748616716resetStoneNeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resetStoneNeed",_loc2_,param1));
         }
      }
      
      private function MWChangeLevelViewClear() : void
      {
         MWChangeLevel && MWChangeLevel.clean();
      }
      
      public function showMWSuccinct(param1:Object) : void
      {
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var contentMsg:String = null;
         var oldPro:Object = null;
         var newPro:Object = null;
         var i:int = 0;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var msg1:String = null;
         var msg2:String = null;
         var obj:Object = param1;
         yesAlert = Alert.yesLabel;
         noAlert = Alert.noLabel;
         func = function(param1:CloseEvent):void
         {
            Alert.yesLabel = yesAlert;
            Alert.noLabel = noAlert;
            if(param1.detail == Alert.YES)
            {
               _core.remote.nc.call("onSureSuccinctMW",null,1);
            }
            else
            {
               _core.remote.nc.call("onSureSuccinctMW",null,-1);
            }
         };
         contentMsg = "<font color=\'#ffffff\'>" + Language.EQUIPTFUNCPANEL_U[205] + "\n     " + Language.EQUIPTFUNCPANEL_U[206] + "           " + Language.EQUIPTFUNCPANEL_U[207] + "</font>\n";
         oldPro = obj.oldPro;
         newPro = obj.newPro;
         i = 0;
         while(i < 3)
         {
            if(oldPro["succ" + i])
            {
               msg1 = encodePropInfo(oldPro["succ" + i],false);
               if(newPro["succ" + i])
               {
                  msg2 = encodePropInfo(newPro["succ" + i],false);
                  contentMsg += msg1 + "  →  " + msg2 + "\n";
               }
               else
               {
                  contentMsg += msg1 + "  →  " + msg1 + "\n";
               }
            }
            i++;
         }
         msg = contentMsg.replace(/<font(.*?)>/g,"");
         msg = msg.replace(/<\/font>/g,"");
         msg = msg.replace(/<b>/g,"");
         msg = msg.replace(/<\/b>/g,"");
         Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
         Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
         _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
         Alert.yesLabel = yesAlert;
         Alert.noLabel = noAlert;
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = contentMsg;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton20_click(param1:MouseEvent) : void
      {
         stageHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeConsume() : Label
      {
         return this._638137383sublimeConsume;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModColorMoney() : Label
      {
         return this._988812235petEquModColorMoney;
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton14_click(param1:MouseEvent) : void
      {
         saveSuccinct();
      }
      
      public function ___EquiptFuncPanel_Canvas5_creationComplete(param1:FlexEvent) : void
      {
         initTab(3);
      }
      
      public function set costInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._425010661costInfo;
         if(_loc2_ !== param1)
         {
            this._425010661costInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costInfo",_loc2_,param1));
         }
      }
      
      public function __materialMixNum_change(param1:NumericStepperEvent) : void
      {
         materialMixNumChange();
      }
      
      public function __makeTree_itemClick(param1:ListEvent) : void
      {
         makeTreeClick(param1);
      }
      
      private function onPetEquReadyModBind(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(petEquReadyModBind.slotData)
         {
            _loc2_ = _core.getTemplateData(petEquReadyModBind.slotData.type,petEquReadyModBind.slotData.itemId,false);
            if(Boolean(_loc2_) && isPetEqu(_loc2_))
            {
               modBindReq = GamePredef.MODBIND_REQ_NUM[_loc2_.reqLevel].req;
               petEquModBindNeedItem.type = GamePredef.TBL_ITEM_TEMPLATE;
               petEquModBindNeedItem.giid = 2809;
               if(isSpecPetEqu(_loc2_))
               {
                  if(StringUtil.beginsWith(_loc2_.reqClassId.toString(),"|") && StringUtil.endsWith(_loc2_.reqClassId.toString(),"|"))
                  {
                     modBindReq *= 4;
                  }
                  else
                  {
                     modBindReq *= 2;
                  }
               }
               modBindReqNum.htmlText = Language.EQUIPTFUNCPANEL_U[84].replace("{num}",modBindReq);
            }
            else
            {
               modBindReqNum.htmlText = "";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelUpdateButtonOne() : BasicGlowButton
      {
         return this._1991736392jewelUpdateButtonOne;
      }
      
      public function onMaterialMix(param1:Object) : void
      {
         materialButtonAll.enabled = true;
         materialButtonOne.enabled = true;
         var _loc2_:String = "";
         if(param1)
         {
            if(ToolKit.isEqual(param1.slotId,materialMixItem.slotData.id) || ToolKit.isEqual(param1.slotId,materialMixItem.slotData.idx))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  materialMixItem.stackNum = param1.num;
               }
               else
               {
                  materialMixItem.clean();
               }
            }
            if(param1.flag)
            {
               if(param1.finalNum)
               {
                  _loc2_ = Language.EQUIPTFUNCPANEL_S[11];
                  _loc2_ = _loc2_.replace("{finalNum}",param1.finalNum);
                  _core.sysMidNote(_loc2_);
               }
               else
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[13]);
               }
            }
            else
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[14]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupInfo() : Label
      {
         return this._1267905437petEquLevelupInfo;
      }
      
      private function restrainPetElement(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:Object = null;
         var _loc15_:int = 0;
         var _loc16_:Object = null;
         var _loc17_:String = null;
         param1.stopImmediatePropagation();
         _loc2_ = restrainEquip.slotData;
         _loc3_ = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         _loc4_ = _loc3_ ? _loc3_.flag : null;
         if(!_loc4_ || _loc4_.indexOf("sublimeId") == -1)
         {
            return;
         }
         _loc5_ = restrainBox ? restrainBox.selectedItem : null;
         _loc6_ = _loc5_ ? int(_loc5_.element) : 0;
         if(_loc6_ <= 0)
         {
            if(restrainView)
            {
               restrainView.htmlText = Language.EQUIPTFUNCPANEL_U[266];
            }
            return;
         }
         _loc7_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc3_.tid];
         if(!_loc7_)
         {
            return;
         }
         _loc8_ = int(GamePredef.EQUIP_FUNCTYPE[_loc7_.position]);
         var _loc9_:int = _loc8_ == GamePredef.EQUIP_TYPE_ATTACK ? 1 : 3;
         _loc10_ = _loc8_ == GamePredef.EQUIP_TYPE_ATTACK ? 254 : 255;
         _loc11_ = Language.EQUIPTFUNCPANEL_U[_loc10_];
         _loc12_ = GamePredef.ELEMENT_NAME[_loc6_];
         _loc13_ = GamePredef.ELEMENT_COLOR[_loc6_];
         _loc12_ = "<font color=\'" + _loc13_ + "\'>" + _loc12_ + "</font>";
         _loc14_ = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc4_));
         _loc15_ = _loc14_ ? int(_loc14_.sublimeId) : 0;
         _loc16_ = GameData.d[GamePredef.TBL_SUBLIMATION_PET][_loc15_];
         if(!_loc16_)
         {
            return;
         }
         _loc17_ = (Number(_loc16_.elementNum) * 100).toFixed(2);
         _loc11_ = LanguageUtil.replace(_loc11_,{
            "element":_loc12_,
            "num":_loc17_
         });
         _loc11_ = Language.EQUIPTFUNCPANEL_U[267] + _loc11_;
         if(restrainView)
         {
            restrainView.htmlText = _loc11_;
         }
      }
      
      public function set creEquFuncList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1482580427creEquFuncList;
         if(_loc2_ !== param1)
         {
            this._1482580427creEquFuncList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"creEquFuncList",_loc2_,param1));
         }
      }
      
      public function __classType_close(param1:DropdownEvent) : void
      {
         makeTreeChange2();
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function set MWTransTo(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._163196473MWTransTo;
         if(_loc2_ !== param1)
         {
            this._163196473MWTransTo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWTransTo",_loc2_,param1));
         }
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton19_click(param1:MouseEvent) : void
      {
         magicWeaponResetProp();
      }
      
      [Bindable(event="propertyChange")]
      public function get nextPetEqu() : ItemSlotEquFunc
      {
         return this._1363735427nextPetEqu;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarJewel() : ItemSlotStar
      {
         return this._410852217petEquStarJewel;
      }
      
      public function set petEquModPreItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._553145794petEquModPreItem;
         if(_loc2_ !== param1)
         {
            this._553145794petEquModPreItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModPreItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupReqNum() : Label
      {
         return this._1563237501petEquLevelupReqNum;
      }
      
      public function set sublimeHint(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1885434308sublimeHint;
         if(_loc2_ !== param1)
         {
            this._1885434308sublimeHint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeHint",_loc2_,param1));
         }
      }
      
      public function __lock1_click(param1:MouseEvent) : void
      {
         chageSelected(1);
      }
      
      private function petEquLevelupItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(petEquLevelupItem.slotData)
         {
            _loc2_ = _core.getTemplateData(petEquLevelupItem.slotData.type,petEquLevelupItem.slotData.itemId,false);
            if(Boolean(_loc2_ && ToolKit.isEqual(_loc2_.type,GamePredef.ITEM_TYPE_PETEQU_LEVELUP)) && Boolean(ToolKit.isEqual(_loc2_.id,levelupReqId)) && ToolKit.isBigOrEqual(petEquLevelupItem.stackNum,levelupReqNum))
            {
               petEquLevelupInfo.text = "";
               return;
            }
         }
      }
      
      public function validateRestrain(param1:Number, param2:int) : void
      {
         var popStr:String = null;
         var closeHandler:Function = null;
         var slotId:Number = param1;
         var element:int = param2;
         if(_restrainAlert)
         {
            PopUpManager.removePopUp(_restrainAlert);
            _restrainAlert = null;
         }
         popStr = LanguageUtil.replace(Language.EQUIPTFUNCPANEL_S[174],{"money":GamePredef.RESTRAIN_ITEM_PRICE});
         closeHandler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.NO)
            {
               return;
            }
            _core.remote.call("onValidateRestrain",new Responder(equipChange.onRestrainEquip),slotId,element);
         };
         _restrainAlert = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _restrainAlert.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      public function set petEquStarOneBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._299371090petEquStarOneBtn;
         if(_loc2_ !== param1)
         {
            this._299371090petEquStarOneBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarOneBtn",_loc2_,param1));
         }
      }
      
      private function starItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(tabA.selectedIndex == 5 && Boolean(petEquStarItem.slotData))
         {
            _loc2_ = _core.getTemplateData(petEquStarItem.slotData.type,petEquStarItem.slotData.itemId);
            if(Boolean(_loc2_) && isPetEqu(_loc2_))
            {
               _core.remote.call("getStarNum",new Responder(onGetStarNum),petEquStarItem.slotData.id);
            }
            else
            {
               petEquStarItem.slotData = null;
               petEquStarItem.clean();
            }
         }
      }
      
      public function set autoBuy(param1:CheckBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._646343081autoBuy;
         if(_loc2_ !== param1)
         {
            this._646343081autoBuy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoBuy",_loc2_,param1));
         }
      }
      
      private function jewelUpdateItemChange(param1:Event) : void
      {
         var _loc3_:Object = null;
         jewelUpdateItem2.clean();
         var _loc2_:Object = jewelUpdateItem1.slotData;
         if(_loc2_)
         {
            if(jewelUpdateItem1.tempBagFlag)
            {
               _loc3_ = _core.getTemplateData(_loc2_.ti,_loc2_.ii);
            }
            else
            {
               _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.itemId);
            }
            if(Boolean(_loc3_) && ToolKit.isEqual(_loc3_.type,GamePredef.ITEM_TYPE_JEWEL))
            {
               jewelUpdateItem2.type = GamePredef.TBL_ITEM_TEMPLATE;
               jewelUpdateItem2.giid = _loc3_.nextJewelTid;
            }
         }
         if(jewelUpdateItem1.stackNum >= jewelUpdateNum.value)
         {
            jewelUpdateButtonAll.enabled = true;
            jewelUpdateButtonOne.enabled = true;
         }
         else
         {
            jewelUpdateButtonAll.enabled = false;
            jewelUpdateButtonOne.enabled = false;
         }
      }
      
      private function setStarInfo(param1:Event = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         if(tabA.selectedIndex == 5 && Boolean(petEquStarItem.slotData))
         {
            if(ToolKit.isBigOrEqual(starNum,GamePredef.EQUIPT_STAR_MAX))
            {
               petEquStarInfo1.label = Language.EQUIPTFUNCPANEL_S[3];
               petEquStarOneBtn.enabled = false;
               petEquStarAllBtn.enabled = false;
            }
            else
            {
               _loc2_ = int(GamePredef.EQUIPT_STAR_SUCCESS[ToolKit.add(starNum,1)] * petEquStarBasic.value / 5);
               if(_core.MC_BIRTH_FLAG[8])
               {
                  _loc2_ = int(GamePredef.MC_BIRTH_CONFIG[8][ToolKit.add(starNum,1)] * petEquStarBasic.value / 5);
               }
               _loc3_ = _core.view.getUI(ViewManager.MAIN_LONGBUFF);
               if(Boolean(_loc3_) && Boolean(_loc3_.isBuffOn(3263)))
               {
                  _loc2_ = int(GamePredef.EQUIPT_STAR_SUCCESS_BUFF[ToolKit.add(starNum,1)] * petEquStarBasic.value / 5);
               }
               petEquStarInfo1.label = starNum.toString();
               petEquStarInfo2.label = _loc2_.toString();
               if(Boolean(petEquStarJewel.slotData) && ToolKit.isBigOrEqual(petEquStarJewel.stackNum,petEquStarBasic.value))
               {
                  petEquStarOneBtn.enabled = true;
                  petEquStarAllBtn.enabled = true;
               }
               else
               {
                  petEquStarOneBtn.enabled = false;
                  petEquStarOneBtn.enabled = false;
               }
            }
         }
      }
      
      private function restrainPetHandler(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:Number = NaN;
         var _loc10_:Boolean = false;
         param1.stopImmediatePropagation();
         if(!restrainEquip || !restrainEquip.slotData)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[179]);
            return;
         }
         if(Boolean(restrainItem) && Boolean(restrainItem.slotData) && restrainItem.slotData.tid != GamePredef.RESTRAIN_ITEMID)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[173]);
            return;
         }
         _loc2_ = restrainEquip.slotData;
         _loc3_ = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         _loc4_ = _loc3_ ? _loc3_.flag : null;
         if(!_loc4_ || _loc4_.indexOf("sublimeId") == -1)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[179]);
            return;
         }
         _loc5_ = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc4_));
         _loc6_ = _loc5_ ? int(_loc5_.sublimeElement) : 0;
         _loc7_ = restrainBox ? restrainBox.selectedItem : null;
         _loc8_ = _loc7_ ? int(_loc7_.element) : 0;
         if(_loc8_ <= 0 || _loc8_ == _loc6_)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_U[271]);
            return;
         }
         _loc9_ = Boolean(restrainItem) && Boolean(restrainItem.slotData) ? Number(restrainItem.slotData.id) : Number(null);
         _loc10_ = Boolean(autoRestrain) && autoRestrain.selected;
         _core.remote.call("restrainPetEquip",new Responder(onRestrainPetEquip),restrainEquip.slotData.id,_loc9_,_loc8_,_loc10_);
      }
      
      public function set petEquStarItem(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1926393423petEquStarItem;
         if(_loc2_ !== param1)
         {
            this._1926393423petEquStarItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupRate() : BasicTxtButton
      {
         return this._1267649387petEquLevelupRate;
      }
      
      public function ___EquiptFuncPanel_Canvas13_creationComplete(param1:FlexEvent) : void
      {
         initMWPReset();
      }
      
      public function set itemInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1177195105itemInfo;
         if(_loc2_ !== param1)
         {
            this._1177195105itemInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemInfo",_loc2_,param1));
         }
      }
      
      public function set makeInputItem1(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1221705314makeInputItem1;
         if(_loc2_ !== param1)
         {
            this._1221705314makeInputItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeInputItem1",_loc2_,param1));
         }
      }
      
      public function set makeInputItem2(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1221705315makeInputItem2;
         if(_loc2_ !== param1)
         {
            this._1221705315makeInputItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeInputItem2",_loc2_,param1));
         }
      }
      
      private function onNewMake(param1:Object) : void
      {
         if(param1.flag)
         {
            makeListChange(false);
         }
         else
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[2]);
         }
      }
      
      private function activatePanel(param1:int) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(!tabInitialized[param1] || eventListenerAdded)
         {
            return;
         }
         eventListenerAdded = true;
         switch(param1)
         {
            case 0:
               _loc5_ = 1;
               while(_loc5_ <= 3)
               {
                  if(this["makeInputItem" + _loc5_])
                  {
                     this["makeInputItem" + _loc5_].addEventListener(GameEvent.SLOT_NUM_CHANGE,makeInputItemChange);
                  }
                  _loc5_++;
               }
               introText.visible = false;
               break;
            case 1:
               introText.width = 355;
               introText.height = 100;
               introText.x = 115;
               introText.y = 75;
               _loc2_ = 46;
               if(equipChange.selectedIndx)
               {
                  _loc2_ = int(introArr3[equipChange.selectedIndx]);
                  if(equipChange.selectedIndx == 10)
                  {
                     introText.height = 80;
                  }
               }
               equipChange.equFuncList.selectedIndex = equipChange.selectedIndx;
               introText.htmlText = Language.EQUIPTFUNCPANEL_S[_loc2_];
               introText.visible = true;
               break;
            case 2:
               materialMixItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,materialMixItemChange);
               introText.width = 450;
               introText.height = 100;
               introText.x = 25;
               introText.y = 70;
               introText.htmlText = Language.EQUIPTFUNCPANEL_S[42];
               introText.visible = true;
               break;
            case 3:
               jewelUpdateItem1.addEventListener(GameEvent.SLOT_NUM_CHANGE,jewelUpdateItemChange);
               introText.width = 450;
               introText.height = 100;
               introText.x = 25;
               introText.y = 70;
               introText.htmlText = Language.EQUIPTFUNCPANEL_S[44];
               introText.visible = true;
               break;
            case 4:
               MWResetSkill && MWResetSkill.addEventListener(GameEvent.SLOT_GIID_CHANGE,MWResetSkillChange);
               MWChangeLevel && MWChangeLevel.addEventListener(GameEvent.SLOT_GIID_CHANGE,MWChangeLevelChange);
               MWTransFrom && MWTransFrom.addEventListener(GameEvent.SLOT_GIID_CHANGE,MWTransFromChange);
               mwResetProp && mwResetProp.addEventListener(GameEvent.SLOT_GIID_CHANGE,mwResetPropChange);
               MwSuccinct && MwSuccinct.addEventListener(GameEvent.SLOT_GIID_CHANGE,magicWeaponSuccinict);
               stageEqu && stageEqu.addEventListener(GameEvent.SLOT_GIID_CHANGE,magicWeaponStageChange);
               introText.width = 355;
               introText.height = 100;
               introText.x = 115;
               introText.y = 70;
               _loc3_ = 90;
               if(tabD.selectedIndex)
               {
                  _loc3_ = int(introArr1[tabD.selectedIndex]);
               }
               magEquFuncList.selectedIndex = tabD.selectedIndex;
               introText.htmlText = Language.EQUIPTFUNCPANEL_S[_loc3_];
               introText.visible = true;
               break;
            case 5:
               petEquStarItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,starItemChange);
               petEquStarJewel.addEventListener(GameEvent.SLOT_NUM_CHANGE,setStarInfo);
               petEquReadyLevelup.addEventListener(GameEvent.SLOT_GIID_CHANGE,petEquLevelupChange);
               petEquLevelupItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,petEquLevelupItemChange);
               petEquReadyModColor.addEventListener(GameEvent.SLOT_GIID_CHANGE,petEquModColorChange);
               petEquModColorItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,petEquModColorItemChange);
               petEquReadyModBind.addEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquReadyModBind);
               petEquModBindItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquModBindItem);
               petEquReadyPre.addEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquReadyModPre);
               petEquModPreItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,onPetEquModPreItem);
               sublimeEquip && sublimeEquip.addEventListener(GameEvent.SLOT_GIID_CHANGE,sublimePetChange);
               restrainEquip && restrainEquip.addEventListener(GameEvent.SLOT_GIID_CHANGE,restrainPetChange);
               introText.width = 355;
               introText.height = 100;
               introText.x = 115;
               introText.y = 70;
               _loc4_ = tabC.selectedIndex ? int(introArr2[tabC.selectedIndex]) : 87;
               creEquFuncList.selectedIndex = tabC.selectedIndex;
               introText.htmlText = Language.EQUIPTFUNCPANEL_S[_loc4_];
               introText.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get consumeTxt() : AutoTextArea
      {
         return this._166265644consumeTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA0() : BasicGlowButton
      {
         return this._933747498tabBtnA0;
      }
      
      public function set hintTxt(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._922290793hintTxt;
         if(_loc2_ !== param1)
         {
            this._922290793hintTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hintTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA2() : BasicGlowButton
      {
         return this._933747496tabBtnA2;
      }
      
      public function set petEquModPreNeedItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1343807092petEquModPreNeedItem;
         if(_loc2_ !== param1)
         {
            this._1343807092petEquModPreNeedItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModPreNeedItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MWResolve() : ItemSlotEquFunc
      {
         return this._1967342366MWResolve;
      }
      
      public function set makeInputItem3(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1221705316makeInputItem3;
         if(_loc2_ !== param1)
         {
            this._1221705316makeInputItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeInputItem3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get makeCanvas() : Canvas
      {
         return this._217727770makeCanvas;
      }
      
      public function MWSuccinictViewClear(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         if(!initialized)
         {
            return;
         }
         if(!MwSuccinct)
         {
            return;
         }
         if(MwSuccinct)
         {
            MwSuccinct.clean();
         }
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            this["oldPro" + _loc2_].htmlText = "";
            this["newPro" + _loc2_].htmlText = "";
            this["actBtn" + _loc2_].visible = false;
            this["lock" + _loc2_].visible = false;
            this["lock" + _loc2_].selected = false;
            if(lockDict[_loc2_])
            {
               mwSuccinctCanvas.removeChild(lockDict[_loc2_]);
               delete lockDict[_loc2_];
            }
            _loc2_++;
         }
         oldSuccData = null;
         this.succinctId = -1;
         if(costInfo)
         {
            costInfo.text = "";
         }
         if(!param1)
         {
            return;
         }
         _loc3_ = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
         if(_loc3_)
         {
            _loc3_.viewClear(param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA1() : BasicGlowButton
      {
         return this._933747497tabBtnA1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA3() : BasicGlowButton
      {
         return this._933747495tabBtnA3;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA4() : BasicGlowButton
      {
         return this._933747494tabBtnA4;
      }
      
      public function startNewMake() : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc1_:Object = makeList.selectedItem.equData;
         if(_loc1_)
         {
            if(canMake())
            {
               _loc2_ = {};
               _loc3_ = 1;
               while(_loc3_ <= 3)
               {
                  if(this["makeInputItem" + _loc3_].slotData)
                  {
                     _loc4_ = {};
                     if(this["makeInputItem" + _loc3_].tempBagFlag)
                     {
                        _loc4_.tempBagFlag = true;
                        _loc4_.idx = this["makeInputItem" + _loc3_].slotData.idx;
                     }
                     else
                     {
                        _loc4_.tempBagFlag = false;
                        _loc4_.idx = this["makeInputItem" + _loc3_].slotData.id;
                     }
                     _loc2_[_loc3_] = _loc4_;
                  }
                  _loc3_++;
               }
               _core.remote.call("newMake",new Responder(onNewMake),_loc2_,_loc1_.id);
            }
         }
      }
      
      private function sublimeInitHint() : void
      {
         if(!sublimeHint)
         {
            return;
         }
         sublimeHint.htmlText = Language.EQUIPTFUNCPANEL_U[274];
         sublimeHint.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnA5() : BasicGlowButton
      {
         return this._933747493tabBtnA5;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModColorItem() : ItemSlot
      {
         return this._799272190petEquModColorItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get redStoneNeed() : ItemSlot
      {
         return this._1836823818redStoneNeed;
      }
      
      private function init() : void
      {
         this.addChild(introText);
         introText.visible = false;
         equipBag.showItem = function(param1:int, param2:Object):void
         {
            _itemList = param2;
         };
         equipBag.refreshSlots = function(param1:Object):void
         {
         };
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelUpdateNum() : NumericStepper
      {
         return this._60073210jewelUpdateNum;
      }
      
      public function __creEquFuncList_change(param1:ListEvent) : void
      {
         tabBtnCClick(creEquFuncList.selectedIndex);
      }
      
      private function jewelUpdateViewClear() : void
      {
         jewelUpdateItem1.clean();
         jewelUpdateItem2.clean();
      }
      
      public function set MWSkills(param1:ComboBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._860877172MWSkills;
         if(_loc2_ !== param1)
         {
            this._860877172MWSkills = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWSkills",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get transItemNeed() : ItemSlot
      {
         return this._948574959transItemNeed;
      }
      
      private function restrainPetChange(param1:Event = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         if(!restrainEquip || !restrainEquip.slotData)
         {
            this.restrainPetClear();
            return;
         }
         _loc2_ = restrainEquip.slotData;
         _loc3_ = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         _loc4_ = _loc3_ ? _loc3_.flag : null;
         if(!_loc4_ || _loc4_.indexOf("sublimeId") == -1)
         {
            if(restrainHint)
            {
               restrainHint.visible = true;
               restrainHint.text = Language.EQUIPTFUNCPANEL_U[263];
            }
            return;
         }
         if(restrainHint)
         {
            restrainHint.visible = false;
         }
         _loc5_ = com.adobe.serialization.json.JSON.decode(JSONUtil.JSONfy(_loc4_));
         _loc6_ = (Boolean(_loc5_)) && Boolean(_loc5_.sublimeElement) ? int(_loc5_.sublimeElement) : 0;
         _loc7_ = [];
         _loc8_ = Language.EQUIPTFUNCPANEL_U[265];
         _loc9_ = int(_loc8_.length);
         _loc10_ = 0;
         while(_loc10_ < _loc9_)
         {
            _loc11_ = _loc8_[_loc10_];
            if(_loc11_.element != _loc6_)
            {
               _loc7_.push(_loc11_);
            }
            _loc10_++;
         }
         if(restrainBox)
         {
            restrainBox.dataProvider = new ArrayCollection(_loc7_);
            restrainBox.selectedIndex = 0;
         }
         if(restrainView)
         {
            restrainView.htmlText = Language.EQUIPTFUNCPANEL_U[266];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get materialMixPer() : BasicTxtButton
      {
         return this._1788134104materialMixPer;
      }
      
      public function set jewelUpdatePer(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60074641jewelUpdatePer;
         if(_loc2_ !== param1)
         {
            this._60074641jewelUpdatePer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelUpdatePer",_loc2_,param1));
         }
      }
      
      public function __actBtn0_click(param1:MouseEvent) : void
      {
         activateMWPro(0);
      }
      
      public function set petEquModColorInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._799266457petEquModColorInfo;
         if(_loc2_ !== param1)
         {
            this._799266457petEquModColorInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModColorInfo",_loc2_,param1));
         }
      }
      
      public function set magEquFuncList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1292150120magEquFuncList;
         if(_loc2_ !== param1)
         {
            this._1292150120magEquFuncList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magEquFuncList",_loc2_,param1));
         }
      }
      
      private function _EquiptFuncPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[28];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[57];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[0];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[29];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[30];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[31];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[1];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[32];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[61];
         _loc1_ = ResManager.TOTEM_CHARACTER;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[6];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[7];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[41];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[62];
         _loc1_ = ResManager.TOTEM_CHARACTER;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[8];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[9];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[42];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[43];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[71];
         _loc1_ = ResManager.TOTEM_MAGIC_WEAPON;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[158];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_MAIN;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[18];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[164];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[166];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[204] + spirituality;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[165];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[159];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW;
         _loc1_ = {
            "kinds":{5:true},
            "ids":{
               4905:true,
               4906:true,
               4907:true,
               3849:true,
               3850:true,
               3851:true,
               3852:true,
               3853:true,
               3854:true,
               3855:true,
               3856:true,
               3857:true,
               3858:true
            }
         };
         _loc1_ = Language.EQUIPTFUNCPANEL_U[20];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[20];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[167];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[277];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[168];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[160];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW;
         _loc1_ = {"types":{510:true}};
         _loc1_ = Language.EQUIPTFUNCPANEL_U[162];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[169];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[170];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[205];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_SUB;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[206];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[207];
         _loc1_ = Language.VIP_SUCCINCT_P[1];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[224];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[214];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[232];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[214];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[232];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[214];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[232];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[210];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[212];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[211];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[213];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[161];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_MAIN;
         _loc1_ = {"types":{511:true}};
         _loc1_ = Language.EQUIPTFUNCPANEL_U[163];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[171];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[172];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[165];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[164];
         _loc1_ = SKILL_PROVIDER;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[175];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_MAIN;
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_MAIN;
         _loc1_ = {"types":{514:true}};
         _loc1_ = Language.EQUIPTFUNCPANEL_U[175];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[177];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[178];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[179];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[188];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_MAIN;
         _loc1_ = {"types":{519:true}};
         _loc1_ = Language.EQUIPTFUNCPANEL_U[189];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[190];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[191];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[192];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[193];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[160];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[238];
         _loc1_ = ItemSlotEquFunc.EQUIP_MW_MAIN;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[239];
         _loc1_ = {"types":{522:true}};
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[240];
         _loc1_ = !hintTxt.visible;
         _loc1_ = Assets.UP_ARROW;
         _loc1_ = !hintTxt.visible;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[242];
         _loc1_ = listArr1;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[72];
         _loc1_ = ResManager.TOTEM_PET_EQUIP;
         _loc1_ = ItemSlotEquFunc.EQUIP_PETEQU;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[2];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[3];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[33];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[34];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[35];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[36];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[37];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[38];
         _loc1_ = ItemSlotEquFunc.EQUIP_PETEQU;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = [GamePredef.TBL_ITEM_INSTANCE];
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = [GamePredef.TBL_ITEM_INSTANCE];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[76];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[77];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[79];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[80];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[81];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[9];
         _loc1_ = ItemSlotEquFunc.EQUIP_PETEQU;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[82];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[83];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[80];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[86];
         _loc1_ = ItemSlotEquFunc.EQUIP_PETEQU;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[82];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[83];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[86];
         _loc1_ = ItemSlotEquFunc.EQUIP_PETEQU;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[52];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[82];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[78];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[83];
         _loc1_ = Language.PETFUNCPANEL_U[18];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[86];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[275];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[245];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = ItemSlotEquFunc.EQUIP_PETEQU;
         _loc1_ = {"types":{523:true}};
         _loc1_ = Language.EQUIPTFUNCPANEL_U[274];
         _loc1_ = !sublimeHint.visible;
         _loc1_ = Assets.UP_ARROW;
         _loc1_ = !sublimeHint.visible;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = !sublimeHint.visible;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[249];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[248];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[261];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[262];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = ItemSlotEquFunc.EQUIP_PETEQU;
         _loc1_ = {"types":{524:true}};
         _loc1_ = Language.EQUIPTFUNCPANEL_U[276];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = !restrainHint.visible;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[264];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[266];
         _loc1_ = !restrainHint.visible;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[268];
         _loc1_ = !restrainHint.visible;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = !restrainHint.visible;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[269];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[270];
         _loc1_ = listArr2;
         _loc1_ = Language.EQUIPTFUNCPANEL_U[21];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[27];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[25];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[26];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[71];
         _loc1_ = Language.EQUIPTFUNCPANEL_U[72];
         _loc1_ = Language.EQUIPTFUNCPANEL_S[97];
      }
      
      private function onSurePetEquModPre(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         if(param1.f == "sure")
         {
            _core.sysMidNote(Language.WING_PANEL_U[36]);
            _loc2_ = param1.n.id;
            _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][_loc2_] = param1.n;
            _loc3_ = _core.getTemplateData(petEquReadyPre.slotData.type,petEquReadyPre.slotData.itemId,false);
            if(param1.n)
            {
               _loc4_ = GamePredef.EQUIPT_STAR_NUM[param1.n.upgradeNum];
               _loc5_ = Language.EQUIPTFUNCPANEL_U[201] + Language.EQUIPTFUNCPANEL_U[202] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[param1.n.mainProp1] + ":" + int(param1.n.mainPropNum1 * _loc4_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[param1.n.mainProp2] + ":" + int(param1.n.mainPropNum2 * _loc4_);
               if(param1.n.prop1 > 0)
               {
                  _loc5_ = _loc5_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[param1.n.prop1] + ":" + param1.n.propNum1;
               }
               if(param1.n.prop2 > 0)
               {
                  _loc5_ = _loc5_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[param1.n.prop2] + ":" + param1.n.propNum2;
               }
               _loc5_ = _loc5_ + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[param1.n.mainProp1] + ": " + param1.n.bindMainPropNum1 + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[param1.n.mainProp2] + ": " + param1.n.bindMainPropNum2 + "%";
               curProp.htmlText = _loc5_;
            }
         }
      }
      
      private function onSurepetEquModBind(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         if(param1.f == "sure")
         {
            _loc2_ = _core.getTemplateData(petEquReadyModBind.slotData.type,petEquReadyModBind.slotData.itemId,false);
            if(Boolean(_loc2_) && isPetEqu(_loc2_))
            {
               petEquModBindSucc.htmlText = Language.EQUIPTFUNCPANEL_S[58];
               if(ToolKit.isBigThan(param1.b1,0))
               {
                  petEquModBindInfo.htmlText = "<font color=\'#FFFFFF\'>" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + "</font>" + "<font color=\'#00FFFF\'>" + param1.b1 + "%" + "</font>";
               }
               if(ToolKit.isBigThan(param1.b2,0))
               {
                  petEquModBindInfo.htmlText += "\n" + "<font color=\'#FFFFFF\'>" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + "</font>" + "<font color=\'#00FFFF\'>" + param1.b2 + "%" + "</font>";
               }
            }
         }
         else
         {
            petEquModBindSucc.htmlText = "";
            petEquModBindInfo.htmlText = "";
         }
      }
      
      private function petEquLevelupClear() : void
      {
         petEquReadyLevelup.clean();
         nextPetEqu.clean();
         petEquLevelupItemNeed.clean();
         petEquLevelupItem.clean();
         petEquLevelupInfo.text = "";
         petEquLevelupMoney.text = "";
         petEquLevelupReqNum.htmlText = "";
      }
      
      private function magicWeaponResetSkill() : void
      {
         var onMWResetSkill:Function = null;
         var onConfirm:Function = null;
         onMWResetSkill = function(param1:Object):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc4_:* = undefined;
            if(Boolean(param1) && Boolean(param1.succ))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  redStoneNeed.stackNum = param1.num;
               }
               else
               {
                  redStoneNeed.clean();
               }
               _loc2_ = param1.sid;
               _loc3_ = _core.getTemplateData(GamePredef.TBL_SKILL,_loc2_);
               _loc4_ = _loc3_ && _loc3_.name || _loc2_;
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[86].replace("{skillName}",_loc4_));
               MWResetSkillChange(null);
            }
         };
         if(Boolean(MWResetSkill.slotData && redStoneNeed.slotData) && Boolean(Number(MWSkills.selectedItem.position) > 0) && skillListReady)
         {
            onConfirm = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.OK)
               {
                  _core.remote.call("magicWeaponResetSkill",new Responder(onMWResetSkill),MWResetSkill.slotData.id,redStoneNeed.slotData.id,MWSkills.selectedItem.position);
                  skillResetIndex = MWSkills.selectedIndex;
               }
            };
            Alert.show(Language.EQUIPTFUNCPANEL_S[94].replace("{skillName}",MWSkills.selectedItem.label),"",Alert.OK | Alert.CANCEL,this,onConfirm);
         }
         else if(Number(MWSkills.selectedItem.position) == -1)
         {
            MWSkills.open();
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[79]);
         }
         else if(!skillListReady)
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[80]);
         }
         else
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[82]);
         }
      }
      
      public function set petEquStarMax(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1877517656petEquStarMax;
         if(_loc2_ !== param1)
         {
            this._1877517656petEquStarMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquStarMax",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get modBindReqNum() : Label
      {
         return this._1232558777modBindReqNum;
      }
      
      public function set progressBar(param1:ProgressBarCanvas) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
         }
      }
      
      public function set makeTree(param1:Tree) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._40519340makeTree;
         if(_loc2_ !== param1)
         {
            this._40519340makeTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeTree",_loc2_,param1));
         }
      }
      
      public function updateMWSuccView(param1:Object, param2:Object, param3:Boolean = false) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         if(param1)
         {
            this.oldSuccData = param1;
         }
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            if(param1)
            {
               if(param1["succ" + _loc4_])
               {
                  this["oldPro" + _loc4_].htmlText = this.encodePropInfo(param1["succ" + _loc4_],true);
                  this["lock" + _loc4_].visible = true;
                  if(param3)
                  {
                     this["lock" + _loc4_].selected = false;
                  }
                  this["actBtn" + _loc4_].visible = false;
               }
               else
               {
                  this["oldPro" + _loc4_].htmlText = "";
                  this["lock" + _loc4_].visible = false;
                  this["lock" + _loc4_].selected = false;
                  this["actBtn" + _loc4_].visible = true;
               }
            }
            if(param2)
            {
               if(param2["succ" + _loc4_])
               {
                  this["newPro" + _loc4_].htmlText = this.encodePropInfo(param2["succ" + _loc4_],true);
               }
               else
               {
                  this["newPro" + _loc4_].htmlText = "";
               }
            }
            else
            {
               this["newPro" + _loc4_].htmlText = "";
            }
            if(param3 && Boolean(lockDict[_loc4_]))
            {
               mwSuccinctCanvas.removeChild(lockDict[_loc4_]);
               delete lockDict[_loc4_];
            }
            _loc4_++;
         }
         _loc5_ = int(_core.getItemNum(29,GamePredef.MW_SUCC_ITEM).num);
         itemInfo.text = Language.EQUIPTFUNCPANEL_U[208] + _loc5_;
         updateCostInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get autoSublime() : CheckBox
      {
         return this._1036064102autoSublime;
      }
      
      [Bindable(event="propertyChange")]
      public function get mwSuccinctCanvas() : Canvas
      {
         return this._517338458mwSuccinctCanvas;
      }
      
      [Bindable(event="propertyChange")]
      public function get stageEqu() : ItemSlotEquFunc
      {
         return this._1306166635stageEqu;
      }
      
      public function set makeButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._227709248makeButton;
         if(_loc2_ !== param1)
         {
            this._227709248makeButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeButton",_loc2_,param1));
         }
      }
      
      private function makeTreeChange() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         if(Boolean(makeTree.selectedItem) && Boolean(makeTree.selectedItem.type))
         {
            _loc1_ = _core.data.gameDataIndex[GamePredef.TBL_EQUIPT_TEMPLATE][makeTree.selectedItem.type];
            if(makeTree.selectedItem.type >= 400 && makeTree.selectedItem.type <= 403)
            {
               for(_loc3_ in _loc1_)
               {
                  if(Boolean(_loc1_[_loc3_]) && Boolean(ToolKit.isEqual(_loc1_[_loc3_].makable,1)) && (classType.selectedItem.cid == "all" || _loc1_[_loc3_].reqClassId.indexOf("|" + classType.selectedItem.cid + "|") >= 0))
                  {
                     if(!_loc2_)
                     {
                        _loc2_ = {};
                     }
                     _loc2_[_loc3_] = _loc1_[_loc3_];
                  }
               }
            }
            else
            {
               for(_loc3_ in _loc1_)
               {
                  if(Boolean(_loc1_[_loc3_]) && Boolean(ToolKit.isEqual(_loc1_[_loc3_].makable,1)) && (classType.selectedItem.cid == "all" || _loc1_[_loc3_].reqClass.indexOf("|" + classType.selectedItem.cid + "|") >= 0))
                  {
                     if(!_loc2_)
                     {
                        _loc2_ = {};
                     }
                     _loc2_[_loc3_] = _loc1_[_loc3_];
                  }
               }
            }
            onGetEquMake(_loc2_);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarInfo1() : BasicTxtButton
      {
         return this._411523705petEquStarInfo1;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarInfo2() : BasicTxtButton
      {
         return this._411523704petEquStarInfo2;
      }
      
      public function set petEquModBindBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._341889337petEquModBindBtn;
         if(_loc2_ !== param1)
         {
            this._341889337petEquModBindBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModBindBtn",_loc2_,param1));
         }
      }
      
      public function set mwResetProp(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._476789048mwResetProp;
         if(_loc2_ !== param1)
         {
            this._476789048mwResetProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mwResetProp",_loc2_,param1));
         }
      }
      
      public function set petEquReadyLevelup(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._643565254petEquReadyLevelup;
         if(_loc2_ !== param1)
         {
            this._643565254petEquReadyLevelup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquReadyLevelup",_loc2_,param1));
         }
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton8_click(param1:MouseEvent) : void
      {
         magicWeaponResolve();
      }
      
      public function set petEquLevelupItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1267899704petEquLevelupItem;
         if(_loc2_ !== param1)
         {
            this._1267899704petEquLevelupItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupItem",_loc2_,param1));
         }
      }
      
      public function succinct() : void
      {
         var view:Object = null;
         var gfunc:Function = null;
         var func:Function = null;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         if(!this.MwSuccinct.giid || this.MwSuccinct.giid < 0)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[226],"",Alert.YES,null,null);
            return;
         }
         view = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
         if(view)
         {
            if(view.haveSuccData())
            {
               func = function(param1:CloseEvent):*
               {
                  var _loc2_:Object = null;
                  if(param1.detail == Alert.YES)
                  {
                     _succinct();
                     _loc2_ = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
                     if(_loc2_)
                     {
                        _loc2_.clearSuccDb();
                     }
                  }
               };
               if(_alert)
               {
                  PopUpManager.removePopUp(_alert);
                  _alert = null;
               }
               _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[219],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               _succinct();
            }
         }
      }
      
      public function set petEquModColorRate(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._799522507petEquModColorRate;
         if(_loc2_ !== param1)
         {
            this._799522507petEquModColorRate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModColorRate",_loc2_,param1));
         }
      }
      
      public function set sublimeItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1885394232sublimeItem;
         if(_loc2_ !== param1)
         {
            this._1885394232sublimeItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeItem",_loc2_,param1));
         }
      }
      
      private function sublimePetClear() : void
      {
         sublimeEquip && sublimeEquip.clean();
         sublimeItem && sublimeItem.clean();
         if(!hintTxt)
         {
            return;
         }
         hintTxt.htmlText = Language.EQUIPTFUNCPANEL_U[246];
         hintTxt.visible = true;
      }
      
      private function materialMixAll() : void
      {
         var _loc1_:int = 0;
         if(materialMixItem.slotData)
         {
            materialButtonAll.enabled = false;
            materialButtonOne.enabled = false;
            if(materialMixItem.tempBagFlag)
            {
               _loc1_ = int(materialMixItem.slotData.idx);
            }
            else
            {
               _loc1_ = int(materialMixItem.slotData.id);
            }
            _core.remote.call("materialMixAll",new Responder(onMaterialMix),materialMixNum.value,_loc1_,materialMixItem.tempBagFlag);
         }
      }
      
      public function __jewelUpdateButtonAll_click(param1:MouseEvent) : void
      {
         jewelUpdateAll();
      }
      
      public function __petEquModPreBtn_click(param1:MouseEvent) : void
      {
         petEquModPre();
      }
      
      [Bindable(event="propertyChange")]
      public function get MWChangeLevel() : ItemSlotEquFunc
      {
         return this._1518482858MWChangeLevel;
      }
      
      public function __tabBtnA4_click(param1:MouseEvent) : void
      {
         tabBtnAClick(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get makePer3() : BoxLabel
      {
         return this._40388036makePer3;
      }
      
      [Bindable(event="propertyChange")]
      public function get makePer4() : BoxLabel
      {
         return this._40388037makePer4;
      }
      
      [Bindable(event="propertyChange")]
      public function get makePer1() : BoxLabel
      {
         return this._40388034makePer1;
      }
      
      [Bindable(event="propertyChange")]
      public function get makePer2() : BoxLabel
      {
         return this._40388035makePer2;
      }
      
      public function set maxProp(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._843999975maxProp;
         if(_loc2_ !== param1)
         {
            this._843999975maxProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxProp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModPreBtn() : BasicDelayButton
      {
         return this._849134127petEquModPreBtn;
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton23_click(param1:MouseEvent) : void
      {
         sublimePetHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get MWRepair() : ItemSlotEquFunc
      {
         return this._894849577MWRepair;
      }
      
      public function onScriptSublimePet(param1:Number, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(!sublimeEquip || !sublimeEquip.slotData)
         {
            return;
         }
         _loc3_ = sublimeEquip.slotData;
         if(!_loc3_ || _loc3_.itemId != param1)
         {
            return;
         }
         _loc4_ = _dm.getGameData(_loc3_.type,_loc3_.itemId);
         if(!_loc4_)
         {
            return;
         }
         _loc4_.flag = param2;
         _dm.updateData(_loc3_.type,_loc4_);
         sublimePetChange();
      }
      
      private function buyStar() : void
      {
         var bagpanel:* = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuyStar),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuyStar(true);
         }
      }
      
      private function MWChangeLevelChange(param1:Event) : void
      {
         var e:Event = param1;
         var onSpiritRequire:Function = function(param1:Object):void
         {
            if(param1)
            {
               if(param1.value)
               {
                  upgradeRequireLabel.text = Language.EQUIPTFUNCPANEL_U[165] + param1.value;
               }
               else
               {
                  upgradeRequireLabel.text = Language.EQUIPTFUNCPANEL_U[173];
               }
            }
         };
         if(MWChangeLevel.slotData)
         {
            _core.remote.call("getSpiritRequire",new Responder(onSpiritRequire),MWChangeLevel.slotData.id);
         }
      }
      
      public function __makeList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton17_click(param1:MouseEvent) : void
      {
         magicWeaponResetSkill();
      }
      
      public function updateCostInfo() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         _loc1_ = 0;
         _loc2_ = 0;
         while(_loc2_ < 3)
         {
            if(this["lock" + _loc2_].visible)
            {
               _loc1_++;
            }
            if(this["lock" + _loc2_].selected)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         costInfo.text = Language.EQUIPTFUNCPANEL_U[209].replace("{num}",_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get resetStoneNeed() : ItemSlot
      {
         return this._1748616716resetStoneNeed;
      }
      
      public function onQuerySuccinictInfo(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         updateMWSuccView(param1.flag,null,true);
      }
      
      private function initMWPReset() : void
      {
         tabD && tabD.selectedIndex == 6 && mwResetProp.addEventListener(GameEvent.SLOT_GIID_CHANGE,mwResetPropChange);
      }
      
      public function set petEquModColorBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._718512913petEquModColorBtn;
         if(_loc2_ !== param1)
         {
            this._718512913petEquModColorBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModColorBtn",_loc2_,param1));
         }
      }
      
      public function magicWeaponSuccinict(param1:Event) : void
      {
         var hasNewData:Boolean = false;
         var i:int = 0;
         var mwInst:Object = null;
         var tData:Object = null;
         var func:Function = null;
         var e:Event = param1;
         if(MwSuccinct.giid)
         {
            mwInst = _core.data.getGameData(MwSuccinct.slotData.type,MwSuccinct.giid);
            tData = _core.getTemplateData(GamePredef.TBL_EQUIPT_INSTANCE,MwSuccinct.giid);
            if(!mwInst || int(mwInst.binded) != 1 || !tData || tData.type != GamePredef.ITEM_TYPE_SUB_MAGICWEAPON || int(mwInst.color) != 2)
            {
               if(_alert)
               {
                  PopUpManager.removePopUp(_alert);
                  _alert = null;
               }
               _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[221],"",Alert.YES,null,null);
               if(MwSuccinct.giid < 0 || succinctId < 0)
               {
                  MWSuccinictViewClear();
               }
               else
               {
                  MwSuccinct.giid = succinctId;
               }
               return;
            }
            if(_core.player.level < GamePredef.ACTIVATE_MW_LEVEL[int(tData.position) - 16])
            {
               if(MwSuccinct.giid < 0 || succinctId < 0)
               {
                  MWSuccinictViewClear();
               }
               else
               {
                  MwSuccinct.giid = succinctId;
               }
               if(_alert)
               {
                  PopUpManager.removePopUp(_alert);
                  _alert = null;
               }
               _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[225].replace("{level}",GamePredef.ACTIVATE_MW_LEVEL[int(tData.position) - 16]),"",Alert.YES,null,null);
               return;
            }
         }
         hasNewData = false;
         i = 0;
         while(i < 3)
         {
            if(Boolean(this["newPro" + i]) && this["newPro" + i].htmlText != "")
            {
               hasNewData = true;
               break;
            }
            i++;
         }
         if(succinctId > 0 && MwSuccinct.giid != succinctId && MwSuccinct.giid > 0)
         {
            if(hasNewData)
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     succinctId = MwSuccinct.giid;
                     _core.remote.call("showMWInfo",new Responder(onQuerySuccinictInfo),MwSuccinct.giid);
                  }
                  else
                  {
                     MwSuccinct.giid = succinctId;
                  }
               };
               if(_alert)
               {
                  PopUpManager.removePopUp(_alert);
                  _alert = null;
               }
               _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[218],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               succinctId = MwSuccinct.giid;
               _core.remote.call("showMWInfo",new Responder(onQuerySuccinictInfo),MwSuccinct.giid);
            }
         }
         else if(MwSuccinct.giid > 0 && succinctId < 0)
         {
            succinctId = MwSuccinct.giid;
            _core.remote.call("showMWInfo",new Responder(onQuerySuccinictInfo),MwSuccinct.giid);
         }
      }
      
      public function set petEquLevelupBasic(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._657202407petEquLevelupBasic;
         if(_loc2_ !== param1)
         {
            this._657202407petEquLevelupBasic = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupBasic",_loc2_,param1));
         }
      }
      
      public function saveSuccinct() : void
      {
         var func:Function = null;
         if(!this.MwSuccinct.giid || this.MwSuccinct.giid < 0 || !hasSuccData())
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[217],"",Alert.YES,null,null);
            return;
         }
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.nc.call("onSureSuccinctMW",new Responder(onSureSuccinctMW),1);
            }
         };
         _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[229],"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set stagePropRight(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._144551707stagePropRight;
         if(_loc2_ !== param1)
         {
            this._144551707stagePropRight = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stagePropRight",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MWTransTo() : ItemSlotEquFunc
      {
         return this._163196473MWTransTo;
      }
      
      public function set petEquModReqNum(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._803512544petEquModReqNum;
         if(_loc2_ !== param1)
         {
            this._803512544petEquModReqNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModReqNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeHint() : AutoTextArea
      {
         return this._1885434308sublimeHint;
      }
      
      public function set sublimeEquip(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1678552859sublimeEquip;
         if(_loc2_ !== param1)
         {
            this._1678552859sublimeEquip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeEquip",_loc2_,param1));
         }
      }
      
      private function onPetEquModPreItem(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         if(param1.target.slotData)
         {
            petEquModPreInfo.htmlText = "";
            if(petEquReadyPre.slotData)
            {
               _loc2_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][petEquReadyPre.slotData.itemId];
               _loc3_ = _core.getTemplateData(petEquReadyPre.slotData.type,petEquReadyPre.slotData.itemId,false);
               if(Boolean(_loc2_) && Boolean(_loc3_))
               {
                  _loc4_ = GamePredef.EQUIPT_STAR_NUM[_loc2_.upgradeNum];
                  _loc5_ = Language.EQUIPTFUNCPANEL_U[201] + Language.EQUIPTFUNCPANEL_U[202] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + int(_loc2_.mainPropNum1 * _loc4_) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + int(_loc2_.mainPropNum2 * _loc4_);
                  if(Number(_loc2_.prop1) > 0)
                  {
                     _loc5_ = _loc5_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop1] + ":" + _loc2_.propNum1;
                  }
                  if(Number(_loc2_.prop2) > 0)
                  {
                     _loc5_ = _loc5_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop2] + ":" + _loc2_.propNum2;
                  }
                  _loc5_ = _loc5_ + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + _loc2_.bindMainPropNum1 + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + _loc2_.bindMainPropNum2 + "%";
                  curProp.htmlText = _loc5_;
                  _loc6_ = _loc2_.color * 5;
                  if(GamePredef.EQUIPT_QUALITY[_loc6_])
                  {
                     _loc7_ = Number(GamePredef.EQUIPT_QUALITY[_loc6_]);
                     _loc8_ = Language.EQUIPTFUNCPANEL_U[203] + Language.EQUIPTFUNCPANEL_U[202] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ":" + int(Math.round(_loc3_.mainPropNum1 * _loc7_ * _loc4_)) + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ":" + int(Math.round(_loc3_.mainPropNum2 * _loc7_ * _loc4_));
                     if(Number(_loc2_.prop1) > 0)
                     {
                        _loc8_ = _loc8_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop1] + ":" + Math.round(_loc3_.propNum1 * _loc7_);
                     }
                     if(Number(_loc2_.prop2) > 0)
                     {
                        _loc8_ = _loc8_ + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.prop2] + ":" + Math.round(_loc3_.propNum2 * _loc7_);
                     }
                     _loc8_ = _loc8_ + "<br>" + Language.WING_PANEL_U[54] + "：" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp1] + ": " + Math.round(_loc3_.bindPropNum * _loc7_) + "%" + "<br>" + GamePredef.EQUIPT_PROP_NAME[_loc2_.mainProp2] + ": " + Math.round(_loc3_.bindPropNum * _loc7_) + "%";
                     maxProp.htmlText = _loc8_;
                  }
               }
               else
               {
                  curProp.htmlText = "";
                  maxProp.htmlText = "";
               }
            }
            if(Boolean(petEquReadyPre.slotData) && ToolKit.isBigThan(petEquModPreNeedItem.giid,0))
            {
               _loc9_ = _core.getTemplateData(petEquModPreItem.slotData.type,petEquModPreItem.slotData.itemId,false);
               if((Boolean(_loc9_)) && ToolKit.isEqual(_loc9_.id,petEquModPreNeedItem.giid))
               {
                  petEquModPreBtn.enabled = true;
                  return;
               }
               petEquModPreItem.clean();
            }
         }
         petEquModPreBtn.enabled = false;
      }
      
      public function clear() : void
      {
         if(equipChange)
         {
            equipChange.clear();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquStarItem() : ItemSlotEquFunc
      {
         return this._1926393423petEquStarItem;
      }
      
      public function set stagePropLeft(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1658087640stagePropLeft;
         if(_loc2_ !== param1)
         {
            this._1658087640stagePropLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stagePropLeft",_loc2_,param1));
         }
      }
      
      public function __materialButtonAll_click(param1:MouseEvent) : void
      {
         materialMixAll();
      }
      
      private function petEquModColorItemChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         if(petEquModColorItem.slotData)
         {
            _loc2_ = _core.getTemplateData(petEquModColorItem.slotData.type,petEquModColorItem.slotData.itemId,false);
            if(Boolean(_loc2_ && ToolKit.isEqual(_loc2_.type,GamePredef.ITEM_TYPE_PETEQU_MODCOLOR) && ToolKit.isEqual(_loc2_.id,modColorReqId)) && Boolean(!ToolKit.isEqual(modColorReqNum,-1)) && ToolKit.isBigOrEqual(petEquModColorItem.stackNum,modColorReqNum))
            {
               petEquModColorInfo.text = "";
               petEquModColorBtn.enabled = true;
               return;
            }
         }
      }
      
      public function set blueStoneGet(param1:ItemSlotMaterial) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1359520555blueStoneGet;
         if(_loc2_ !== param1)
         {
            this._1359520555blueStoneGet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueStoneGet",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoBuy() : CheckBox
      {
         return this._646343081autoBuy;
      }
      
      public function ___EquiptFuncPanel_Canvas6_creationComplete(param1:FlexEvent) : void
      {
         initTab(4);
      }
      
      private function MWResetSkillChange(param1:Event) : void
      {
         var onGetSkills:Function = null;
         var e:Event = param1;
         onGetSkills = function(param1:Object):void
         {
            var _loc2_:ArrayCollection = null;
            var _loc3_:* = undefined;
            var _loc4_:* = undefined;
            var _loc5_:* = undefined;
            if(param1)
            {
               _loc2_ = new ArrayCollection();
               _loc2_.addItem({
                  "position":-1,
                  "label":Language.EQUIPTFUNCPANEL_S[81]
               });
               for(_loc3_ in param1)
               {
                  _loc4_ = _core.getTemplateData(GamePredef.TBL_SKILL,Number(param1[_loc3_]));
                  _loc5_ = _loc4_ ? _loc4_.name : param1[_loc3_];
                  _loc2_.addItem({
                     "position":_loc3_,
                     "label":_loc5_
                  });
               }
               MWSkills.dataProvider = _loc2_;
               if(skillResetIndex != -1)
               {
                  MWSkills.selectedIndex = skillResetIndex;
                  skillResetIndex = -1;
               }
               skillListReady = true;
            }
         };
         if(MWResetSkill.slotData)
         {
            skillListReady = false;
            _core.remote.call("getMWSkills",new Responder(onGetSkills),MWResetSkill.slotData.id);
         }
      }
      
      private function magicWeaponStageChange(param1:Event = null) : void
      {
         var _loc10_:Object = null;
         var _loc13_:Object = null;
         var _loc23_:int = 0;
         var _loc24_:String = null;
         var _loc25_:Object = null;
         if(!stageEqu.slotData)
         {
            magicWeaponStageViewClear();
            return;
         }
         var _loc2_:Object = stageEqu.slotData;
         var _loc3_:Object = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         if(!ToolKit.isEqual(_loc3_.binded,1))
         {
            hintTxt.y = 195;
            hintTxt.visible = true;
            hintTxt.text = Language.EQUIPTFUNCPANEL_U[240];
            return;
         }
         if(ToolKit.isSmallThan(_loc3_.upgradeNum,GamePredef.STAGE_EIGHT_LEVEL))
         {
            hintTxt.y = 195;
            hintTxt.visible = true;
            hintTxt.text = Language.EQUIPTFUNCPANEL_U[240];
            return;
         }
         var _loc4_:Object = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc3_.tid];
         var _loc5_:int = Math.floor(Number(_loc4_.mainPropNum1) * GamePredef.STAGE_EIGHT_MIN);
         var _loc6_:int = Math.floor(Number(_loc4_.mainPropNum2) * GamePredef.STAGE_EIGHT_MIN);
         if(Number(_loc3_.mainPropNum1) < _loc5_ || Number(_loc3_.mainPropNum2) < _loc6_)
         {
            hintTxt.y = 195;
            hintTxt.visible = true;
            hintTxt.text = Language.EQUIPTFUNCPANEL_U[240];
            return;
         }
         var _loc7_:int = Number(_loc4_.mainPropNum1) * GamePredef.STAGE_EIGHT_MAX;
         var _loc8_:int = Number(_loc4_.mainPropNum2) * GamePredef.STAGE_EIGHT_MAX;
         if(Number(_loc3_.mainPropNum1) >= _loc7_ || Number(_loc3_.mainPropNum2) >= _loc8_)
         {
            hintTxt.y = 225;
            hintTxt.visible = true;
            hintTxt.text = Language.EQUIPTFUNCPANEL_U[241];
            return;
         }
         var _loc9_:int = 1;
         hintTxt.visible = false;
         var _loc11_:Object = DataManager.getInstance().gameDataIndex;
         var _loc12_:Object = _loc11_[GamePredef.TBL_ARTIFACT][_loc3_.tid];
         if(Number(_loc3_.mainPropNum1) != _loc5_ || Number(_loc3_.mainPropNum2) != _loc6_)
         {
            for each(_loc13_ in _loc12_)
            {
               if(_loc3_.mainPropNum1 == _loc13_.propNum1 && _loc3_.mainPropNum2 == _loc13_.propNum2)
               {
                  _loc23_ = int(_loc13_.level);
                  _loc9_ = _loc23_ + 1;
                  break;
               }
            }
         }
         for each(_loc13_ in _loc12_)
         {
            if(_loc13_.level == _loc9_)
            {
               _loc10_ = _loc13_;
               break;
            }
         }
         if(!_loc10_)
         {
            magicWeaponStageViewClear();
            return;
         }
         var _loc14_:String = String(_loc10_.rate) + "%";
         if(_core.MC_BIRTH_FLAG[18])
         {
            _loc14_ = String(GamePredef.MC_BIRTH_CONFIG[18][_loc10_.level]) + "%";
         }
         var _loc15_:int = Number(_loc10_.itemNum);
         var _loc16_:int = Number(_loc10_.spiritNum);
         if(_loc3_.flag)
         {
            _loc24_ = _loc3_.flag;
            if(_loc24_.indexOf("stageAdd") != -1)
            {
               _loc24_ = JSONUtil.JSONfy(_loc24_);
               _loc25_ = com.adobe.serialization.json.JSON.decode(_loc24_);
               if(Number(_loc25_.stageAdd) > 0)
               {
                  _loc14_ += " <font color=\'#00FF00\'>+" + _loc25_.stageAdd + "%</font>";
               }
            }
         }
         var _loc17_:Number = Number(GamePredef.MW_HP_GROW_MAP[_loc3_.upgradeNum]);
         var _loc18_:Number = Number(GamePredef.MW_SPEED_GROW_MAP[_loc3_.upgradeNum]);
         var _loc19_:Number = int(Number(_loc10_.propNum1) * _loc17_);
         var _loc20_:Number = int(Number(_loc10_.propNum2) * _loc18_);
         var _loc21_:Number = int(_loc17_ * Number(_loc3_.mainPropNum1));
         var _loc22_:Number = int(_loc18_ * Number(_loc3_.mainPropNum2));
         stagePropLeft.htmlText = LanguageUtil.replace(Language.EQUIPTFUNCPANEL_S[149],{
            "hp":_loc21_,
            "sp":_loc22_
         });
         stagePropRight.htmlText = LanguageUtil.replace(Language.EQUIPTFUNCPANEL_S[150],{
            "hp":_loc19_,
            "sp":_loc20_
         });
         consumeTxt.htmlText = LanguageUtil.replace(Language.EQUIPTFUNCPANEL_S[151],{
            "itemNum":_loc15_,
            "spiritNum":_loc16_,
            "rate":_loc14_
         });
      }
      
      [Bindable(event="propertyChange")]
      public function get makeInputItem1() : ItemSlotMaterial
      {
         return this._1221705314makeInputItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get makeInputItem3() : ItemSlotMaterial
      {
         return this._1221705316makeInputItem3;
      }
      
      public function cleanSuccData() : void
      {
         var _loc1_:int = 0;
         if(!this.MwSuccinct)
         {
            return;
         }
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            this["newPro" + _loc1_].htmlText = "";
            _loc1_++;
         }
      }
      
      public function updateItemNum() : void
      {
         var _loc1_:int = 0;
         if(!itemInfo)
         {
            return;
         }
         _loc1_ = int(_core.getItemNum(29,GamePredef.MW_SUCC_ITEM).num);
         itemInfo.text = Language.EQUIPTFUNCPANEL_U[208] + _loc1_;
      }
      
      public function set stageItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1836581681stageItem;
         if(_loc2_ !== param1)
         {
            this._1836581681stageItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stageItem",_loc2_,param1));
         }
      }
      
      private function tabBtnCUpdate() : void
      {
         var _loc1_:int = tabC ? tabC.selectedIndex : 0;
         resetItemList();
         switch(_loc1_)
         {
            case 0:
               _itemList.type = 1;
               _itemList.idList = [5];
               break;
            case 1:
               _itemList.type = 1;
               _itemList.idList = [2333];
               break;
            case 2:
               _itemList.type = 1;
               _itemList.idList = [2334,2335];
               break;
            case 3:
               _itemList.type = 1;
               _itemList.idList = [2809];
               break;
            case 4:
               clearPetEquiptPrePanel();
               _itemList.type = 1;
               _itemList.idList = [3491];
               break;
            case 5:
               _itemList.type = 1;
               _itemList.idList = [GamePredef.SUBLIME_ITEMID];
               break;
            case 6:
               _itemList.type = 1;
               _itemList.idList = [GamePredef.RESTRAIN_ITEMID];
         }
         equipBag.showItem(5,_itemList);
      }
      
      public function set petEquModBindSucc(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2008127689petEquModBindSucc;
         if(_loc2_ !== param1)
         {
            this._2008127689petEquModBindSucc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModBindSucc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get creEquFuncList() : List
      {
         return this._1482580427creEquFuncList;
      }
      
      public function set petEquModBindNeedItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._228267838petEquModBindNeedItem;
         if(_loc2_ !== param1)
         {
            this._228267838petEquModBindNeedItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModBindNeedItem",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MWSkills() : ComboBox
      {
         return this._860877172MWSkills;
      }
      
      [Bindable(event="propertyChange")]
      public function get makeInputItem2() : ItemSlotMaterial
      {
         return this._1221705315makeInputItem2;
      }
      
      private function MWRepairViewClear() : void
      {
         MWRepair && MWRepair.clean();
         blueStoneNeed && blueStoneNeed.clean();
      }
      
      public function set restrainBox(param1:ComboBox) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1784770749restrainBox;
         if(_loc2_ !== param1)
         {
            this._1784770749restrainBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainBox",_loc2_,param1));
         }
      }
      
      private function onPetEquLevelUp(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ISlot = null;
         if(!param1)
         {
            return;
         }
         if(param1.flag)
         {
            petEquLevelupInfo.htmlText = Language.EQUIPTFUNCPANEL_S[33];
            if(ToolKit.isBigThan(param1.num,0))
            {
               petEquLevelupItem.stackNum = param1.num;
               if(petEquLevelupItem.stackNum < petEquLevelupBasic.value)
               {
                  petEquLevelupBasic.value = petEquLevelupItem.stackNum;
                  petEquLevelupRate.label = petEquLevelupBasic.value * 20 + "%";
               }
            }
            else
            {
               petEquLevelupItem.clean();
            }
            _loc2_ = _core.data.gameData[GamePredef.TBL_EQUIPT_INSTANCE][param1.i];
            _loc2_.tid = param1.tid;
            petEquReadyLevelup.giid = param1.i;
            _loc3_ = _core.view.getSlot(param1.sid);
            if(_loc3_)
            {
               _loc3_.giid = param1.i;
            }
            petEquLevelupReqNum.text = "";
            nextPetEqu.giid = param1.next > 0 ? Number(param1.next) : -1;
            equipBag.refreshSlots({
               "sid":param1.sid,
               "giid":param1.i
            });
         }
         else
         {
            petEquLevelupInfo.htmlText = param1.msg ? param1.msg : Language.EQUIPTFUNCPANEL_S[83];
            if(param1.num)
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  petEquLevelupItem.stackNum = param1.num;
                  if(petEquLevelupItem.stackNum < petEquLevelupBasic.value)
                  {
                     petEquLevelupBasic.value = petEquLevelupItem.stackNum;
                     petEquLevelupRate.label = petEquLevelupBasic.value * 20 + "%";
                  }
               }
               else
               {
                  petEquLevelupItem.clean();
               }
            }
         }
         petEquReadyLevelup.clean();
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModColorInfo() : Label
      {
         return this._799266457petEquModColorInfo;
      }
      
      public function set tabA(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3552076tabA;
         if(_loc2_ !== param1)
         {
            this._3552076tabA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabA",_loc2_,param1));
         }
      }
      
      private function materialMixNumChange() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         var _loc3_:* = undefined;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         materialMixPer.label = (materialMixNum.value * materialMixBasicRate).toString() + "%";
         if(Boolean(_core.player.pmLevel) && Boolean(Number(_core.player.pmLevel) > 0) && Number(materialMixBasicRate) == 6)
         {
            _loc1_ = GameData.d[GamePredef.TBL_PM_RIGHT];
            _loc2_ = null;
            for(_loc3_ in _loc1_)
            {
               if(Boolean(_loc1_[_loc3_]) && Number(_loc1_[_loc3_].id) == 8)
               {
                  _loc2_ = _loc1_[_loc3_];
                  break;
               }
            }
            if(Boolean(_loc2_) && Boolean(_loc2_["value" + _core.player.pmLevel]))
            {
               _loc4_ = materialMixNum.value * materialMixBasicRate;
               _loc5_ = _loc4_ + Number(_loc2_["value" + _core.player.pmLevel]);
               materialMixPer.label = _loc5_.toString() + "%";
            }
         }
         materialMixNumCheck();
      }
      
      public function set tabC(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3552078tabC;
         if(_loc2_ !== param1)
         {
            this._3552078tabC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabC",_loc2_,param1));
         }
      }
      
      public function set tabD(param1:ViewStack) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._3552079tabD;
         if(_loc2_ !== param1)
         {
            this._3552079tabD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabD",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBarCanvas
      {
         return this._1131509414progressBar;
      }
      
      [Bindable(event="propertyChange")]
      public function get makeTree() : Tree
      {
         return this._40519340makeTree;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModPreNeedItem() : ItemSlot
      {
         return this._1343807092petEquModPreNeedItem;
      }
      
      public function set transRequireLabel(param1:DescriptionLabel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._442224809transRequireLabel;
         if(_loc2_ !== param1)
         {
            this._442224809transRequireLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"transRequireLabel",_loc2_,param1));
         }
      }
      
      private function starOne() : void
      {
         var equIns:Object = null;
         var starIns:Object = null;
         var func:Function = null;
         var e:CloseEvent = null;
         if(Boolean(tabA.selectedIndex == 5) && Boolean(petEquStarItem.slotData) && Boolean(petEquStarJewel.slotData))
         {
            equIns = _core.data.gameData[petEquStarItem.slotData.type][petEquStarItem.slotData.itemId];
            starIns = _core.data.gameData[petEquStarJewel.slotData.type][petEquStarJewel.slotData.itemId];
            if(Boolean(equIns) && Boolean(starIns))
            {
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     _core.remote.call("starOne",new Responder(onStar),petEquStarBasic.value,petEquStarItem.slotData.id,petEquStarJewel.slotData.id);
                     petEquStarOneBtn.enabled = false;
                     petEquStarAllBtn.enabled = false;
                  }
               };
               if(ToolKit.isEqual(equIns.binded,0) && ToolKit.isEqual(starIns.binded,1))
               {
                  Alert.show(Language.EQUIPTFUNCPANEL_S[102],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  e = new CloseEvent("");
                  e.detail = Alert.YES;
                  func(e);
               }
            }
         }
      }
      
      public function __jewelUpdateNum_change(param1:NumericStepperEvent) : void
      {
         jewelUpdateNumChange();
      }
      
      [Bindable(event="propertyChange")]
      public function get makeButton() : BasicGlowButton
      {
         return this._227709248makeButton;
      }
      
      public function set blueStoneNeed(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._804327583blueStoneNeed;
         if(_loc2_ !== param1)
         {
            this._804327583blueStoneNeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blueStoneNeed",_loc2_,param1));
         }
      }
      
      public function completeMake() : void
      {
         makeCanvas.enabled = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get mwResetProp() : ItemSlotEquFunc
      {
         return this._476789048mwResetProp;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModColorRate() : BasicTxtButton
      {
         return this._799522507petEquModColorRate;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquReadyLevelup() : ItemSlotEquFunc
      {
         return this._643565254petEquReadyLevelup;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModBindBtn() : BasicDelayButton
      {
         return this._341889337petEquModBindBtn;
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         autoInputMake();
      }
      
      private function petEquModColorChange(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         if(petEquReadyModColor.slotData)
         {
            _loc2_ = _core.data.getData(petEquReadyModColor.slotData.type,petEquReadyModColor.slotData.itemId);
            _loc3_ = _core.getTemplateData(petEquReadyModColor.slotData.type,petEquReadyModColor.slotData.itemId,false);
            if(Boolean(_loc3_) && Boolean(isPetEqu(_loc3_)) && _loc2_.color <= 3)
            {
               petEquModColorNeedItem.type = GamePredef.TBL_ITEM_TEMPLATE;
               _loc4_ = -1;
               modColorReqId = GamePredef.MODCOLOR_REQ_NUM[_loc2_.color].id;
               modColorReqNum = GamePredef.MODCOLOR_REQ_NUM[_loc2_.color].req;
               _loc4_ = int(GamePredef.MODCOLOR_REQ_NUM[_loc2_.color].rate);
               if(_core.MC_BIRTH_FLAG[9])
               {
                  _loc4_ = int(GamePredef.MC_BIRTH_CONFIG[9][_loc2_.color]);
               }
               if(isSpecPetEqu(_loc3_))
               {
                  if(StringUtil.beginsWith(_loc3_.reqClassId.toString(),"|") && StringUtil.endsWith(_loc3_.reqClassId.toString(),"|"))
                  {
                     modColorReqNum *= 4;
                  }
                  else
                  {
                     modColorReqNum *= 2;
                  }
               }
               petEquModColorRate.label = _loc4_ + "%";
               petEquModColorNeedItem.giid = modColorReqId;
               if(Boolean(petEquModColorItem.slotData) && petEquModColorItem.slotData.tid != petEquModColorNeedItem.giid)
               {
                  petEquModColorItem.clean();
               }
               if(ToolKit.isEqual(modColorReqId,-1) && ToolKit.isEqual(modColorReqNum,-1))
               {
                  petEquModReqNum.text = Language.EQUIPTFUNCPANEL_U[85];
                  petEquModColorMoney.text = "";
               }
               else
               {
                  petEquModReqNum.htmlText = Language.EQUIPTFUNCPANEL_U[84].replace("{num}",modColorReqNum);
                  petEquModColorMoney.text = (_loc3_.reqLevel * _loc3_.reqLevel * GamePredef.MONEY_EQUFUNC_MAKE).toString();
               }
            }
            else
            {
               petEquModColorBtn.enabled = false;
               petEquReadyModColor.slotData = null;
               petEquReadyModColor.clean();
            }
         }
      }
      
      public function onGetStarNum(param1:int) : void
      {
         starNum = param1;
         setStarInfo();
      }
      
      public function set curPropTA(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._303751312curPropTA;
         if(_loc2_ !== param1)
         {
            this._303751312curPropTA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curPropTA",_loc2_,param1));
         }
      }
      
      public function ___EquiptFuncPanel_Canvas14_creationComplete(param1:FlexEvent) : void
      {
         initMWPStage();
      }
      
      public function encodePropInfo(param1:Object, param2:Boolean = false) : String
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         _loc3_ = GamePredef.ACTIVATE_MW_PRO[param1["propType"]];
         _loc5_ = 0;
         while(_loc5_ < 4)
         {
            if(Number(param1["propVal"]) <= _loc3_["top" + _loc5_])
            {
               _loc4_ = _loc5_;
               break;
            }
            _loc5_++;
         }
         _loc6_ = "<font color=\'" + GamePredef.MW_PRO_COLOR[_loc4_] + "\'>" + GamePredef.EQUIPT_PROP_NAME[param1["propType"]] + " +" + param1["propVal"] + (_loc4_ == 3 ? Language.EQUIPTFUNCPANEL_U[223] : "") + "</font>";
         if(param2)
         {
            _loc6_ += "<font color=\'#ffffff\'>(" + _loc3_.valMin + "-" + _loc3_.valMax + ")</font>";
         }
         return _loc6_;
      }
      
      private function doBuyStar(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:NumPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            shopData = new Object();
            _loc3_ = 0;
            while(_loc3_ <= GameData.d[GamePredef.TBL_SHOP_SLOT].length)
            {
               if(GameData.d[GamePredef.TBL_SHOP_SLOT][_loc3_])
               {
                  if(GameData.d[GamePredef.TBL_SHOP_SLOT][_loc3_].type == 29 && GameData.d[GamePredef.TBL_SHOP_SLOT][_loc3_].itemId == 5)
                  {
                     shopData = GameData.d[GamePredef.TBL_SHOP_SLOT][_loc3_];
                     shopData.type = 29;
                  }
               }
               _loc3_++;
            }
            _loc4_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
            _loc4_.numSelected(shopData,buySelected);
         }
      }
      
      public function _succinct() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _loc1_ = false;
         _loc2_ = new Array();
         _loc3_ = 0;
         _loc4_ = 0;
         while(_loc4_ < 3)
         {
            if(!this["lock" + _loc4_].visible || Boolean(this["lock" + _loc4_].visible) && Boolean(this["lock" + _loc4_].selected))
            {
               _loc2_[_loc4_] = true;
            }
            else
            {
               _loc2_[_loc4_] = false;
               _loc1_ = true;
            }
            if(this["lock" + _loc4_].visible)
            {
               _loc3_++;
            }
            if(this["lock" + _loc4_].selected)
            {
               _loc3_++;
            }
            _loc4_++;
         }
         if(!_loc1_)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[215],"",Alert.YES,null,null);
            return;
         }
         _loc5_ = int(_core.getItemNum(29,GamePredef.MW_SUCC_ITEM).num);
         if(_loc5_ < _loc3_ && !this.autoBuy.selected)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[227],"",Alert.YES,null,null);
            itemInfo.text = Language.EQUIPTFUNCPANEL_U[208] + _loc5_;
            return;
         }
         _core.remote.nc.call("succinctMW",new Responder(onSuccinctMW),MwSuccinct.giid,_loc2_,autoBuy.selected);
         succinctBtn.enabled = false;
      }
      
      public function set makeRequire1(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._929613690makeRequire1;
         if(_loc2_ !== param1)
         {
            this._929613690makeRequire1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeRequire1",_loc2_,param1));
         }
      }
      
      public function set petEquLevelupItemNeed(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._638827390petEquLevelupItemNeed;
         if(_loc2_ !== param1)
         {
            this._638827390petEquLevelupItemNeed = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupItemNeed",_loc2_,param1));
         }
      }
      
      public function set makeRequire2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._929613691makeRequire2;
         if(_loc2_ !== param1)
         {
            this._929613691makeRequire2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeRequire2",_loc2_,param1));
         }
      }
      
      public function set jewelUpdateButtonAll(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1991722883jewelUpdateButtonAll;
         if(_loc2_ !== param1)
         {
            this._1991722883jewelUpdateButtonAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelUpdateButtonAll",_loc2_,param1));
         }
      }
      
      public function set makeRequire3(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._929613692makeRequire3;
         if(_loc2_ !== param1)
         {
            this._929613692makeRequire3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeRequire3",_loc2_,param1));
         }
      }
      
      private function tabBtnAClick(param1:int) : void
      {
         var _loc2_:int = tabA ? tabA.selectedIndex : 0;
         if(_loc2_ == param1)
         {
            return;
         }
         this["tabBtnA" + _loc2_].selected = false;
         deactivatePanel(_loc2_);
         tabA.selectedIndex = param1;
         this["tabBtnA" + param1].selected = true;
         activatePanel(param1);
         tabBtnAUpdate();
      }
      
      public function set MWResetSkill(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._60813428MWResetSkill;
         if(_loc2_ !== param1)
         {
            this._60813428MWResetSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWResetSkill",_loc2_,param1));
         }
      }
      
      private function sublimePetChange(param1:Event = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:int = 0;
         var _loc16_:Object = null;
         var _loc17_:String = null;
         var _loc18_:String = null;
         var _loc19_:String = null;
         var _loc20_:Object = null;
         var _loc21_:int = 0;
         var _loc22_:int = 0;
         var _loc23_:int = 0;
         var _loc24_:String = null;
         var _loc25_:String = null;
         var _loc26_:String = null;
         var _loc27_:Object = null;
         var _loc28_:Object = null;
         var _loc29_:String = null;
         var _loc30_:String = null;
         var _loc31_:Object = null;
         var _loc32_:int = 0;
         var _loc33_:int = 0;
         var _loc34_:Number = NaN;
         var _loc35_:int = 0;
         var _loc36_:int = 0;
         var _loc37_:Number = NaN;
         var _loc38_:int = 0;
         if(!sublimeEquip || !sublimeEquip.slotData)
         {
            this.sublimePetClear();
            return;
         }
         _loc2_ = sublimeEquip.slotData;
         _loc3_ = _core.data.getGameData(_loc2_.type,_loc2_.itemId);
         if(!_loc3_ || !ToolKit.isEqual(_loc3_.binded,1))
         {
            sublimeInitHint();
            return;
         }
         _loc4_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc3_.tid];
         if(!_loc3_.hasOwnProperty("color") || Number(_loc3_.color) < 3)
         {
            sublimeInitHint();
            return;
         }
         _loc5_ = 0;
         _loc6_ = 0;
         _loc7_ = 0;
         if(_loc3_.hasOwnProperty("flag"))
         {
            _loc26_ = JSONUtil.JSONfy(_loc3_.flag);
            _loc27_ = _loc26_ ? com.adobe.serialization.json.JSON.decode(_loc26_) : null;
            if(_loc27_)
            {
               _loc5_ = _loc27_.sublimeId ? int(_loc27_.sublimeId) : 0;
               _loc6_ = _loc27_.sublimeAdd ? int(_loc27_.sublimeAdd) : 0;
               _loc7_ = _loc27_.sublimeElement ? int(_loc27_.sublimeElement) : 0;
            }
         }
         if(_loc5_ >= GamePredef.SUBLIME_MAX)
         {
            if(hintTxt)
            {
               hintTxt.htmlText = Language.EQUIPTFUNCPANEL_U[250];
               hintTxt.visible = true;
            }
            sublimeEquip.clean();
            sublimeItem && sublimeItem.clean();
            return;
         }
         if(sublimeHint)
         {
            sublimeHint.visible = false;
         }
         _loc8_ = int(_loc4_.position);
         _loc9_ = int(GamePredef.EQUIP_FUNCTYPE[_loc8_]);
         _loc10_ = _loc9_ == GamePredef.EQUIP_TYPE_ATTACK ? 1 : 3;
         _loc11_ = _loc9_ == GamePredef.EQUIP_TYPE_ATTACK ? 254 : 255;
         _loc12_ = Language.EQUIPTFUNCPANEL_U[_loc11_];
         _loc13_ = Language.EQUIPTFUNCPANEL_U[256];
         if(_loc7_ > 0)
         {
            _loc13_ = GamePredef.ELEMENT_NAME[_loc7_];
            _loc13_ = "<font color=\'" + GamePredef.ELEMENT_COLOR[_loc7_] + "\'>" + _loc13_ + "</font>";
         }
         _loc14_ = "";
         if(_loc5_ <= 0)
         {
            _loc14_ = Language.EQUIPTFUNCPANEL_U[253];
         }
         else
         {
            _loc28_ = GameData.d[GamePredef.TBL_SUBLIMATION_PET][_loc5_];
            if(!_loc28_)
            {
               return;
            }
            _loc29_ = (Number(_loc28_.elementNum) * 100).toFixed(2);
            _loc30_ = LanguageUtil.replace(_loc12_,{
               "element":_loc13_,
               "num":_loc29_
            });
            _loc14_ = Language.EQUIPTFUNCPANEL_U[251];
            _loc31_ = {
               "propName0":"",
               "propNum0":0,
               "propName1":"",
               "propNum1":0,
               "element":_loc30_
            };
            _loc32_ = _loc10_;
            while(_loc32_ < _loc10_ + 2)
            {
               _loc33_ = int(_loc28_["prop" + _loc32_]);
               _loc34_ = Number(_loc28_["propNum" + _loc32_]);
               _loc35_ = _loc32_ - _loc10_;
               _loc31_["propName" + _loc35_] = GamePredef.EQUIPT_PROP_NAME[_loc33_];
               _loc31_["propNum" + _loc35_] = _loc34_;
               _loc32_++;
            }
            _loc14_ = LanguageUtil.replace(_loc14_,_loc31_);
         }
         if(sublimeLeft)
         {
            sublimeLeft.htmlText = _loc14_;
         }
         _loc15_ = _loc5_ + 1;
         _loc16_ = GameData.d[GamePredef.TBL_SUBLIMATION_PET][_loc15_];
         if(!_loc16_)
         {
            return;
         }
         _loc17_ = (Number(_loc16_.elementNum) * 100).toFixed(2);
         _loc18_ = LanguageUtil.replace(_loc12_,{
            "element":_loc13_,
            "num":_loc17_
         });
         _loc19_ = Language.EQUIPTFUNCPANEL_U[252];
         _loc20_ = {
            "propName0":"",
            "propNum0":0,
            "propName1":"",
            "propNum1":0,
            "element":_loc18_
         };
         _loc21_ = _loc10_;
         while(_loc21_ < _loc10_ + 2)
         {
            _loc36_ = int(_loc16_["prop" + _loc21_]);
            _loc37_ = Number(_loc16_["propNum" + _loc21_]);
            _loc38_ = _loc21_ - _loc10_;
            _loc20_["propName" + _loc38_] = GamePredef.EQUIPT_PROP_NAME[_loc36_];
            _loc20_["propNum" + _loc38_] = _loc37_;
            _loc21_++;
         }
         _loc19_ = LanguageUtil.replace(_loc19_,_loc20_);
         if(sublimeRight)
         {
            sublimeRight.htmlText = _loc19_;
         }
         _loc22_ = _loc9_ == GamePredef.EQUIP_TYPE_ATTACK ? 1 : 2;
         _loc23_ = int(_loc16_["itemNum" + _loc22_]);
         _loc24_ = String(_loc16_["rate"]) + "%";
         if(_core.MC_BIRTH_FLAG[17])
         {
            _loc24_ = String(GamePredef.MC_BIRTH_CONFIG[17][_loc16_["id"]]) + "%";
         }
         if(_loc6_ > 0)
         {
            _loc24_ += " <font color=\'#00FF00\'>+" + _loc6_ + "%</font>";
         }
         _loc25_ = Language.EQUIPTFUNCPANEL_U[247];
         _loc25_ = LanguageUtil.replace(_loc25_,{
            "num":_loc23_,
            "rate":_loc24_
         });
         if(sublimeConsume)
         {
            sublimeConsume.htmlText = _loc25_;
         }
      }
      
      public function set MWResolve2(param1:ItemSlot) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._858071152MWResolve2;
         if(_loc2_ !== param1)
         {
            this._858071152MWResolve2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWResolve2",_loc2_,param1));
         }
      }
      
      private function _EquiptFuncPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = null;
         _loc1_ = new ClassFactory();
         _loc1_.generator = HtmlComboItemRenderer;
         return _loc1_;
      }
      
      public function set materialMixNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1788135535materialMixNum;
         if(_loc2_ !== param1)
         {
            this._1788135535materialMixNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialMixNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModReqNum() : Label
      {
         return this._803512544petEquModReqNum;
      }
      
      public function set maxPropTA(param1:TextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._664840300maxPropTA;
         if(_loc2_ !== param1)
         {
            this._664840300maxPropTA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxPropTA",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stagePropLeft() : AutoTextArea
      {
         return this._1658087640stagePropLeft;
      }
      
      private function initMWPBuild() : void
      {
         tabD && tabD.selectedIndex == 3 && MwSuccinct.addEventListener(GameEvent.SLOT_GIID_CHANGE,magicWeaponSuccinict);
      }
      
      [Bindable(event="propertyChange")]
      public function get stagePropRight() : AutoTextArea
      {
         return this._144551707stagePropRight;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModBindNeedItem() : ItemSlot
      {
         return this._228267838petEquModBindNeedItem;
      }
      
      public function buySelected(param1:int) : void
      {
         _core.remote.buySystemItemClient(shopData.id,param1);
      }
      
      public function ___EquiptFuncPanel_BasicGlowButton10_click(param1:MouseEvent) : void
      {
         magicWeaponRepair();
      }
      
      [Bindable(event="propertyChange")]
      public function get restrainBox() : ComboBox
      {
         return this._1784770749restrainBox;
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquModBindSucc() : Label
      {
         return this._2008127689petEquModBindSucc;
      }
      
      public function __petEquLevelupBtn_click(param1:MouseEvent) : void
      {
         petEquLevelUp();
      }
      
      public function set isFirst(param1:String) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2058846118isFirst;
         if(_loc2_ !== param1)
         {
            this._2058846118isFirst = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFirst",_loc2_,param1));
         }
      }
      
      public function __succinctBtn_click(param1:MouseEvent) : void
      {
         succinct();
      }
      
      public function __tabBtnA2_click(param1:MouseEvent) : void
      {
         tabBtnAClick(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeEquip() : ItemSlotEquFunc
      {
         return this._1678552859sublimeEquip;
      }
      
      public function set petEquLevelupMoney(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._646631509petEquLevelupMoney;
         if(_loc2_ !== param1)
         {
            this._646631509petEquLevelupMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquLevelupMoney",_loc2_,param1));
         }
      }
      
      public function set materialButtonAll(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._192885848materialButtonAll;
         if(_loc2_ !== param1)
         {
            this._192885848materialButtonAll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"materialButtonAll",_loc2_,param1));
         }
      }
      
      public function set makeList(param1:List) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._40272812makeList;
         if(_loc2_ !== param1)
         {
            this._40272812makeList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makeList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get blueStoneNeed() : ItemSlot
      {
         return this._804327583blueStoneNeed;
      }
      
      [Bindable(event="propertyChange")]
      public function get transRequireLabel() : DescriptionLabel
      {
         return this._442224809transRequireLabel;
      }
      
      public function set restrainEquip(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1469908056restrainEquip;
         if(_loc2_ !== param1)
         {
            this._1469908056restrainEquip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restrainEquip",_loc2_,param1));
         }
      }
      
      public function __equipChange_creationComplete(param1:FlexEvent) : void
      {
         initTab(1);
      }
      
      public function set sublimeLeft(param1:AutoTextArea) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1885319236sublimeLeft;
         if(_loc2_ !== param1)
         {
            this._1885319236sublimeLeft = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sublimeLeft",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get makeRequire2() : ItemSlot
      {
         return this._929613691makeRequire2;
      }
      
      [Bindable(event="propertyChange")]
      public function get makeRequire3() : ItemSlot
      {
         return this._929613692makeRequire3;
      }
      
      [Bindable(event="propertyChange")]
      public function get curPropTA() : TextArea
      {
         return this._303751312curPropTA;
      }
      
      private function setAutoMatchSlots() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:ItemSlot = null;
         _loc1_ = tabA.selectedIndex;
         autoMatchSlots = {};
         _loc2_ = [];
         switch(_loc1_)
         {
            case 0:
               _loc3_ = [];
               autoMatchSlots.hasReq = true;
               _loc4_ = 1;
               while(_loc4_ <= 3)
               {
                  _loc5_ = this["makeRequire" + _loc4_];
                  if(_loc5_.giid > 0)
                  {
                     _loc3_.push({
                        "id":_loc5_.giid,
                        "type":_loc5_.type - 1,
                        "kind":_loc5_.kind
                     });
                  }
                  _loc2_.push(this["makeInputItem" + _loc4_]);
                  _loc4_++;
               }
               break;
            case 1:
               if(equipChange.visible)
               {
                  autoMatchSlots = equipChange.autoMatchSlots;
               }
               return;
            case 2:
               autoMatchSlots.hasReq = false;
               _loc2_.push(materialMixItem);
               break;
            case 3:
               autoMatchSlots.hasReq = false;
               _loc2_.push(jewelUpdateItem1);
               break;
            case 4:
               _loc3_ = [];
               switch(tabD.selectedIndex)
               {
                  case 0:
                     _loc2_.push(MWChangeLevel);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_MAGICWEAPON,
                        "position":15
                     });
                     break;
                  case 1:
                     _loc2_.push(MWResolve);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_MAGICWEAPON
                     });
                     break;
                  case 2:
                     _loc2_.push(MWRepair);
                     _loc2_.push(blueStoneNeed);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_MAGICWEAPON
                     });
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_MW_REPAIR
                     });
                     break;
                  case 4:
                     _loc2_.push(MWResetSkill);
                     _loc2_.push(redStoneNeed);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_MAGICWEAPON,
                        "position":15
                     });
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_MW_SKILL_RESET
                     });
                     break;
                  case 5:
                     autoMatchSlots.orderPut = true;
                     autoMatchSlots.orderType = GamePredef.TBL_EQUIPT_INSTANCE;
                     autoMatchSlots.menuArr = [{
                        "label":Language.EQUIPTFUNCPANEL_U[177],
                        "data":{"slot":MWTransTo}
                     },{
                        "label":Language.EQUIPTFUNCPANEL_U[178],
                        "data":{"slot":MWTransFrom}
                     }];
                     _loc2_.push(transItemNeed);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_MW_TRANS
                     });
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_MAGICWEAPON,
                        "position":15
                     });
                     break;
                  case 6:
                     _loc2_.push(mwResetProp);
                     _loc2_.push(resetStoneNeed);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_MAGICWEAPON
                     });
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_MW_PROP_RESET
                     });
                     break;
                  case 7:
                     _loc2_.push(stageEqu);
                     _loc2_.push(stageItem);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_MAGICWEAPON
                     });
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_MW_STAGE_EIGHT
                     });
               }
               break;
            case 5:
               _loc3_ = [];
               switch(tabC.selectedIndex)
               {
                  case 0:
                     _loc2_.push(petEquStarItem);
                     _loc2_.push(petEquStarJewel);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_PETEQU
                     });
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_STAR
                     });
                     break;
                  case 1:
                     _loc2_.push(petEquReadyLevelup);
                     _loc2_.push(petEquLevelupItem);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_PETEQU
                     });
                     _loc3_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
                     break;
                  case 2:
                     _loc2_.push(petEquReadyModColor);
                     _loc2_.push(petEquModColorItem);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_PETEQU
                     });
                     _loc3_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
                     break;
                  case 3:
                     _loc2_.push(petEquReadyModBind);
                     _loc2_.push(petEquModBindItem);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_PETEQU
                     });
                     _loc3_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
                     break;
                  case 4:
                     _loc2_.push(petEquReadyPre);
                     _loc2_.push(petEquModPreItem);
                     _loc3_.push({
                        "itemType":GamePredef.TBL_EQUIPT_INSTANCE,
                        "kind":GamePredef.ITEM_KIND_PETEQU
                     });
                     _loc3_.push({"itemType":GamePredef.TBL_ITEM_INSTANCE});
                     break;
                  case 5:
                     _loc2_.push(sublimeEquip);
                     _loc2_.push(sublimeItem);
                     _loc3_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_SUBLIME
                     });
                     break;
                  case 6:
                     _loc2_.push(restrainEquip);
                     _loc2_.push(restrainItem);
                     _loc3_.push({"itemType":GamePredef.TBL_EQUIPT_INSTANCE});
                     _loc3_.push({
                        "itemType":GamePredef.TBL_ITEM_INSTANCE,
                        "type":GamePredef.ITEM_TYPE_RESTRAIN
                     });
               }
         }
         autoMatchSlots.reqSlots = _loc3_;
         autoMatchSlots.inputSlots = _loc2_;
      }
      
      private function magicWeaponResolve(param1:int = 0) : void
      {
         var onMWResolve:Function = null;
         var onDel:Function = null;
         var onDel2:Function = null;
         var func:Function = null;
         var func2:Function = null;
         var type:int = param1;
         onMWResolve = function(param1:Object):void
         {
            var _loc2_:* = undefined;
            if(Boolean(param1) && Boolean(param1.succ))
            {
               blueStoneGet.type = param1.type;
               blueStoneGet.giid = param1.giid;
               blueStoneGet.stackNum = param1.stackNum;
               blueStoneGet.temp_quality = param1.temp_quality;
               MWResolve.clean();
               MWResolve2.clean();
               _loc2_ = _core.getTemplateData(GamePredef.TBL_ITEM_TEMPLATE,param1.giid);
               if(_loc2_)
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[77].replace("{itemName}",_loc2_.name).replace("{itemNum}",param1.stackNum));
               }
            }
         };
         onDel = function(param1:String):void
         {
            var _loc2_:String = null;
            if(param1)
            {
               _loc2_ = MD5.hash(param1);
               _core.remote.call("magicWeaponResolve",new Responder(onMWResolve),MWResolve.slotData.id,_loc2_,0);
            }
         };
         onDel2 = function(param1:String):void
         {
            var _loc2_:String = null;
            if(param1)
            {
               _loc2_ = MD5.hash(param1);
               _core.remote.call("magicWeaponResolve",new Responder(onMWResolve),MWResolve2.slotData.id,_loc2_,1);
            }
         };
         if(type == 0 && Boolean(MWResolve.slotData))
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(_core.delPass)
                  {
                     _core.remote.call("magicWeaponResolve",new Responder(onMWResolve),MWResolve.slotData.id,_core.delPass,0);
                  }
                  else
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.EQUIPTFUNCPANEL_U[56],onDel);
                  }
               }
            };
            Alert.show(Language.EQUIPTFUNCPANEL_S[69],"",3,this,func);
         }
         else if(type == 1 && Boolean(MWResolve2.slotData))
         {
            func2 = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(_core.delPass)
                  {
                     _core.remote.call("magicWeaponResolve",new Responder(onMWResolve),MWResolve2.slotData.id,_core.delPass,1);
                  }
                  else
                  {
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.EQUIPTFUNCPANEL_U[56],onDel2);
                  }
               }
            };
            Alert.show(Language.EQUIPTFUNCPANEL_S[181],"",3,this,func2);
         }
         else
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[82]);
         }
      }
      
      private function getThisClassEquiptObject(param1:int) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:ArrayCollection = null;
         var _loc5_:* = undefined;
         var _loc6_:Boolean = false;
         var _loc7_:Object = null;
         _loc2_ = {};
         _loc3_ = {};
         for each(_loc4_ in useEquTypeInfo)
         {
            for(_loc5_ in _loc4_)
            {
               _loc2_ = _core.data.gameDataIndex[GamePredef.TBL_EQUIPT_TEMPLATE][Number(_loc4_[_loc5_])];
               _loc6_ = false;
               for each(_loc7_ in _loc2_)
               {
                  if(Boolean(_loc7_ && _loc7_.makable && _loc7_.reqClass) && Boolean(ToolKit.isEqual(_loc7_.makable,1)) && _loc7_.reqClass.indexOf("|" + param1 + "|") >= 0)
                  {
                     _loc6_ = true;
                     _loc3_[Number(_loc4_[_loc5_])] = {};
                     _loc3_[Number(_loc4_[_loc5_])] = Number(_loc4_[_loc5_]);
                     break;
                  }
               }
               if(_loc6_)
               {
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      [Bindable(event="propertyChange")]
      public function get makeRequire1() : ItemSlot
      {
         return this._929613690makeRequire1;
      }
      
      [Bindable(event="propertyChange")]
      public function get MWResetSkill() : ItemSlotEquFunc
      {
         return this._60813428MWResetSkill;
      }
      
      public function onJewelUpdate(param1:Object) : void
      {
         jewelUpdateButtonAll.enabled = true;
         jewelUpdateButtonOne.enabled = true;
         var _loc2_:String = "";
         if(param1)
         {
            if(ToolKit.isEqual(param1.slotId,jewelUpdateItem1.slotData.id))
            {
               if(ToolKit.isBigThan(param1.num,0))
               {
                  jewelUpdateItem1.stackNum = param1.num;
               }
               else
               {
                  jewelUpdateItem1.clean();
               }
            }
            if(param1.flag)
            {
               if(param1.finalNum)
               {
                  _loc2_ = Language.EQUIPTFUNCPANEL_S[15];
                  _loc2_ = _loc2_.replace("{finalNum}",param1.finalNum);
                  _core.sysMidNote(_loc2_);
               }
               else
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[17]);
               }
            }
            else
            {
               _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[18]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MWResolve2() : ItemSlot
      {
         return this._858071152MWResolve2;
      }
      
      [Bindable(event="propertyChange")]
      public function get materialMixNum() : NumericStepper
      {
         return this._1788135535materialMixNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelUpdateButtonAll() : BasicGlowButton
      {
         return this._1991722883jewelUpdateButtonAll;
      }
      
      [Bindable(event="propertyChange")]
      public function get maxPropTA() : TextArea
      {
         return this._664840300maxPropTA;
      }
      
      public function set petEquReadyPre(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._255603766petEquReadyPre;
         if(_loc2_ !== param1)
         {
            this._255603766petEquReadyPre = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquReadyPre",_loc2_,param1));
         }
      }
      
      public function set showBag(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2067262411showBag;
         if(_loc2_ !== param1)
         {
            this._2067262411showBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBag",_loc2_,param1));
         }
      }
      
      public function validateRestrainPet(param1:Number, param2:int) : void
      {
         var popStr:String = null;
         var closeHandler:Function = null;
         var slotId:Number = param1;
         var element:int = param2;
         if(_restrainPet)
         {
            PopUpManager.removePopUp(_restrainPet);
            _restrainPet = null;
         }
         popStr = LanguageUtil.replace(Language.EQUIPTFUNCPANEL_S[174],{"money":GamePredef.RESTRAIN_ITEM_PRICE});
         closeHandler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.NO)
            {
               return;
            }
            _core.remote.call("onValidateRestrainPet",new Responder(onRestrainPetEquip),slotId,element);
         };
         _restrainPet = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _restrainPet.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get isFirst() : String
      {
         return this._2058846118isFirst;
      }
      
      public function onSublimePetEquip(param1:Object = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!param1)
         {
            return;
         }
         _loc2_ = sublimeEquip.slotData;
         if(!_loc2_ || _loc2_.itemId != param1.itemId)
         {
            sublimePetClear();
            return;
         }
         _loc3_ = _dm.getGameData(_loc2_.type,_loc2_.itemId);
         if(_loc3_)
         {
            _loc3_.flag = param1.flagStr;
            _dm.updateData(_loc2_.type,_loc3_);
            sublimePetChange();
         }
         param1.hasOwnProperty("num") && (ToolKit.isBigThan(param1.num,0) && Boolean(sublimeItem) ? (sublimeItem.stackNum = param1.num) : sublimeItem.clean());
      }
      
      [Bindable(event="propertyChange")]
      public function get petEquLevelupMoney() : Label
      {
         return this._646631509petEquLevelupMoney;
      }
      
      public function set petEquModPreInfo(param1:Label) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._553151527petEquModPreInfo;
         if(_loc2_ !== param1)
         {
            this._553151527petEquModPreInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petEquModPreInfo",_loc2_,param1));
         }
      }
      
      private function tabBtnBClick(param1:int) : void
      {
         introText.htmlText = Language.EQUIPTFUNCPANEL_S[introArr3[param1]];
         equipChange.tabBtnBUpdate();
      }
      
      [Bindable(event="propertyChange")]
      public function get sublimeLeft() : AutoTextArea
      {
         return this._1885319236sublimeLeft;
      }
      
      private function onPetEquModBind(param1:Object) : void
      {
         var yesAlert:String = null;
         var noAlert:String = null;
         var func:Function = null;
         var title:String = null;
         var contentMsg:String = null;
         var suffix1:String = null;
         var color:String = null;
         var suffix2:String = null;
         var color1:String = null;
         var title1:String = null;
         var equTmp:Object = null;
         var msg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var obj:Object = param1;
         if(!obj)
         {
            return;
         }
         if(obj.f)
         {
            if(!obj.saveType && ToolKit.isEqual(petEquModBindItem.slotData.id,obj.ii))
            {
               if(obj.n < 0)
               {
                  petEquModBindItem.clean();
                  return;
               }
               if(obj.n == 0)
               {
                  petEquModBindItem.clean();
               }
               petEquModBindItem.stackNum = obj.n;
            }
            yesAlert = Alert.yesLabel;
            noAlert = Alert.noLabel;
            func = function(param1:CloseEvent):void
            {
               Alert.yesLabel = yesAlert;
               Alert.noLabel = noAlert;
               if(param1.detail == Alert.YES)
               {
                  if(obj.saveType)
                  {
                     _core.remote.nc.call("surepetEquModBind",null,1);
                  }
                  else
                  {
                     _core.remote.nc.call("surepetEquModBind",new Responder(onSurepetEquModBind),1);
                  }
               }
               else if(obj.saveType)
               {
                  _core.remote.nc.call("surepetEquModBind",null,-1);
               }
               else
               {
                  _core.remote.nc.call("surepetEquModBind",new Responder(onSurepetEquModBind),-1);
                  petEquModBindSucc.htmlText = "";
                  petEquModBindInfo.htmlText = "";
               }
            };
            title = Language.EQUIPTFUNCPANEL_S[135];
            contentMsg = "<b>" + Language.EQUIPTFUNCPANEL_S[135] + "</b>" + "    \n";
            suffix1 = "";
            suffix2 = "";
            if(!obj.saveType)
            {
               equTmp = _core.getTemplateData(petEquReadyModBind.slotData.type,petEquReadyModBind.slotData.itemId,false);
            }
            else
            {
               equTmp = new Object();
               equTmp.mainProp1 = obj.mainProp1;
               equTmp.mainProp2 = obj.mainProp2;
            }
            if(Number(obj.b1) < Number(obj.b11) && ToolKit.isBigThan(Number(obj.b11),0))
            {
               title = "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1];
               color = "<font color=\'#00ff00\'>";
               suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
            }
            else if(Number(obj.b1) > Number(obj.b11) && ToolKit.isBigThan(Number(obj.b11),0))
            {
               title = "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1];
               color = "<font color=\'#ff0000\'>";
               suffix1 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
            }
            else if(Number(obj.b1) == Number(obj.b11) && ToolKit.isBigThan(Number(obj.b11),0))
            {
               title = "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1];
               color = "<font color=\'#00ff00\'>";
               suffix1 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
            }
            if(Number(obj.b2) < Number(obj.b12) && ToolKit.isBigThan(Number(obj.b12),0))
            {
               title1 = "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2];
               color1 = "<font color=\'#00ff00\'>";
               suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
            }
            else if(Number(obj.b2) > Number(obj.b12) && ToolKit.isBigThan(Number(obj.b12),0))
            {
               title1 = "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2];
               color1 = "<font color=\'#ff0000\'>";
               suffix2 = "<font color=\'#ff0000\'>" + Language.EQUIPTFUNCPANEL_S[107] + "</font>";
            }
            else if(Number(obj.b2) == Number(obj.b12) && ToolKit.isBigThan(Number(obj.b12),0))
            {
               title1 = "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2];
               color1 = "<font color=\'#00ff00\'>";
               suffix2 = "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[108] + "</font>";
            }
            if(ToolKit.isBigThan(Number(obj.b11),0))
            {
               contentMsg += title + ": " + obj.b1 + "%" + Language.EQUIPTFUNCPANEL_S[129] + color + obj.b11 + "%</font>" + suffix1;
            }
            else if(ToolKit.isEqual(Number(data.b11),0) && ToolKit.isBigThan(Number(data.b1),0))
            {
               contentMsg += "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp1] + ": " + data.b1 + "%" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + data.b1 + "%</font>" + "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
            }
            if(ToolKit.isBigThan(Number(obj.b12),0))
            {
               contentMsg = contentMsg + title1 + ": " + obj.b2 + "%" + Language.EQUIPTFUNCPANEL_S[129] + color1 + obj.b12 + "%</font>" + suffix2;
            }
            else if(ToolKit.isEqual(Number(data.b12),0) && ToolKit.isBigThan(Number(data.b2),0))
            {
               contentMsg += "\n" + Language.BASICTOOLTIP_S[3] + GamePredef.EQUIPT_PROP_NAME[equTmp.mainProp2] + ": " + data.b2 + "%" + Language.EQUIPTFUNCPANEL_S[129] + "<font color=\'#00ff00\'>" + data.b2 + "%</font>" + "<font color=\'#00ff00\'>" + Language.EQUIPTFUNCPANEL_S[106] + "</font>";
            }
            msg = contentMsg.replace(/<font(.*?)>/g,"");
            msg = msg.replace(/<\/font>/g,"");
            msg = msg.replace(/<b>/g,"");
            msg = msg.replace(/<\/b>/g,"");
            Alert.yesLabel = Language.EQUIPTFUNCPANEL_S[113];
            Alert.noLabel = Language.EQUIPTFUNCPANEL_S[127];
            _alert = Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
            Alert.yesLabel = yesAlert;
            Alert.noLabel = noAlert;
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = contentMsg;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
         else
         {
            petEquModBindInfo.htmlText = Language.EQUIPTFUNCPANEL_S[31];
            if(obj.msgFlag)
            {
               petEquModBindInfo.htmlText = Language.EQUIPTFUNCPANEL_S[99];
            }
         }
      }
      
      public function __petEquLevelupBasic_change(param1:NumericStepperEvent) : void
      {
         petEquLevelupRate.label = petEquLevelupBasic.value * 20 + "%";
      }
      
      public function unselectAutoBuy() : void
      {
         if(Boolean(this.autoBuy) && this.autoBuy.selected)
         {
            this.autoBuy.selected = false;
         }
      }
      
      private function magicWeaponChangeLevel() : void
      {
         var mwEquip:Object = null;
         var onMWUpgrade:Function = function(param1:Object):void
         {
            if(param1)
            {
               if(param1.succ)
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[78].toString().replace("{level}",param1.level));
                  if(param1.require)
                  {
                     upgradeRequireLabel.text = Language.EQUIPTFUNCPANEL_U[165] + param1.require;
                  }
                  else
                  {
                     upgradeRequireLabel.text = Language.EQUIPTFUNCPANEL_U[173];
                  }
                  if(param1.color)
                  {
                     MWChangeLevel.setStyleName(Number(param1.color));
                     if(MWChangeLevel.dropSlot)
                     {
                        if(Slot(MWChangeLevel.dropSlot).giid == MWChangeLevel.giid)
                        {
                           Slot(MWChangeLevel.dropSlot).setStyleName(Number(param1.color));
                        }
                        else
                        {
                           trace("目标槽已经被移动，无法实时更新颜色");
                        }
                     }
                  }
               }
               else if(param1.failType == 1)
               {
                  _core.sysMidNote(param1.msg);
               }
               else if(param1.failType == 2)
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_U[173]);
               }
               else if(param1.failType == 3)
               {
                  _core.sysMidNote(Language.EQUIPTFUNCPANEL_U[174]);
               }
            }
         };
         if(MWChangeLevel.slotData)
         {
            mwEquip = _core.data.getGameData(MWChangeLevel.type,MWChangeLevel.giid);
            if(mwEquip)
            {
               if(ToolKit.isSmallThan(_core.player.level,100) && ToolKit.isBigOrEqual(mwEquip.upgradeNum,16))
               {
                  _core.sysMsg(Language.EQUIPTFUNCPANEL_S[180]);
                  return;
               }
               _core.remote.call("mWeaponUpgrade",new Responder(onMWUpgrade),MWChangeLevel.slotData.id);
            }
         }
         else
         {
            _core.sysMidNote(Language.EQUIPTFUNCPANEL_S[82]);
         }
      }
      
      public function __lock2_click(param1:MouseEvent) : void
      {
         chageSelected(2);
      }
      
      private function magicWeaponStageViewClear(param1:Boolean = false) : void
      {
         if(hintTxt)
         {
            hintTxt.visible = true;
            if(param1)
            {
               hintTxt.y = 225;
               hintTxt.text = Language.EQUIPTFUNCPANEL_U[241];
            }
            else
            {
               hintTxt.y = 195;
               hintTxt.text = Language.EQUIPTFUNCPANEL_U[240];
            }
         }
         stageEqu && stageEqu.clean();
         stageItem && stageItem.clean();
      }
      
      public function set MWTransFrom(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._2082390040MWTransFrom;
         if(_loc2_ !== param1)
         {
            this._2082390040MWTransFrom = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MWTransFrom",_loc2_,param1));
         }
      }
      
      public function onRestrainPetEquip(param1:Object = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!param1 || !restrainEquip)
         {
            return;
         }
         _loc2_ = restrainEquip.slotData;
         if(!_loc2_ || _loc2_.itemId != param1.itemId)
         {
            restrainPetClear();
            return;
         }
         _loc3_ = _dm.getGameData(_loc2_.type,_loc2_.itemId);
         if(_loc3_)
         {
            _loc3_.flag = param1.flagStr;
            _dm.updateData(_loc2_.type,_loc3_);
            restrainPetChange();
         }
         param1.hasOwnProperty("num") && (ToolKit.isBigThan(param1.num,0) ? (restrainItem.stackNum = param1.num) : restrainItem.clean());
      }
      
      private function jewelUpdateOne() : void
      {
         if(Boolean(jewelUpdateItem1.slotData) && ToolKit.isBigThan(jewelUpdateItem2.giid,0))
         {
            jewelUpdateButtonAll.enabled = false;
            jewelUpdateButtonOne.enabled = false;
            _core.remote.call("jewelUpdateOne",new Responder(onJewelUpdate),jewelUpdateNum.value,jewelUpdateItem1.slotData.id,jewelUpdateItem1.tempBagFlag);
         }
      }
      
      public function set jewelUpdateItem1(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1891128306jewelUpdateItem1;
         if(_loc2_ !== param1)
         {
            this._1891128306jewelUpdateItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelUpdateItem1",_loc2_,param1));
         }
      }
      
      public function set jewelUpdateItem2(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = null;
         _loc2_ = this._1891128307jewelUpdateItem2;
         if(_loc2_ !== param1)
         {
            this._1891128307jewelUpdateItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelUpdateItem2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MWTransFrom() : ItemSlotEquFunc
      {
         return this._2082390040MWTransFrom;
      }
      
      public function onActivateMWPro(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1)
         {
            return;
         }
         if(param1.f)
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _alert = Alert.show(Language.EQUIPTFUNCPANEL_U[230],"",Alert.YES,null,null);
            return;
         }
         oldSuccData["succ" + param1.index] = param1.flag;
         this["oldPro" + param1.index].htmlText = this.encodePropInfo(param1.flag,true);
         this["actBtn" + param1.index].visible = false;
         this["lock" + param1.index].visible = true;
         this["lock" + param1.index].selected = false;
         updateCostInfo();
         _loc2_ = _core.view.getUI(ViewManager.PANEL_VIP_SUCCINCT);
         if(_loc2_)
         {
            _loc2_.updateSuccData(this.MwSuccinct.giid,oldSuccData);
         }
      }
      
      private function materialMixNumCheck() : void
      {
         if(materialMixItem.stackNum >= materialMixNum.value)
         {
            materialButtonAll.enabled = true;
            materialButtonOne.enabled = true;
         }
         else
         {
            materialButtonAll.enabled = false;
            materialButtonOne.enabled = false;
         }
      }
      
      private function petEquModBindClear() : void
      {
         modBindReqNum.htmlText = "";
         petEquModBindSucc.text = "";
         petEquModBindInfo.text = "";
         petEquReadyModBind.clean();
         petEquModBindNeedItem.clean();
         petEquModBindItem.clean();
      }
      
      public function __petEquStarBasic_change(param1:NumericStepperEvent) : void
      {
         setStarInfo();
      }
   }
}

