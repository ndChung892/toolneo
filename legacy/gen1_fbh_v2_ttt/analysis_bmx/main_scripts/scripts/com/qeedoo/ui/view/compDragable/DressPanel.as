package com.qeedoo.ui.view.compDragable
{
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.JSONUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.DressEvent;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DisplaySlot;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FilterButton;
   import com.qeedoo.ui.view.comp.GeneralTree;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RecipeCell;
   import com.qeedoo.ui.view.compGameStage.CreatureShowView;
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
   import mx.collections.ICollectionView;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.core.ClassFactory;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   import mx.utils.ObjectUtil;
   import style.Assets;
   
   use namespace mx_internal;
   
   public class DressPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const FREE_EXTRACT_TIME:int = 1;
      
      private var _1584105757viewStack:ViewStack;
      
      private var _819927962recipeBag:DressBag;
      
      private var _1429700080exchangeText:IntroText;
      
      private var _715179439dressBag:DressBag;
      
      public var _DressPanel_Image1:Image;
      
      public var _DressPanel_Image2:Image;
      
      public var _DressPanel_Image3:Image;
      
      public var _DressPanel_Image4:Image;
      
      public var _DressPanel_Image5:Image;
      
      public var _DressPanel_Image6:Image;
      
      public var _DressPanel_Image7:Image;
      
      public var _DressPanel_Image8:Image;
      
      public var _DressPanel_Image9:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1972807202recipeCell2:RecipeCell;
      
      private var _alert:Alert;
      
      private var _1538341031freeTime:Label;
      
      private var _1713694796flyerPlay:DressDisplay;
      
      private var _core:Core = Core.getInstance();
      
      public var _DressPanel_Label11:Label;
      
      public var _DressPanel_Label12:Label;
      
      public var _DressPanel_Label13:Label;
      
      public var _DressPanel_Label14:Label;
      
      public var _DressPanel_Label16:Label;
      
      private var _1177498631itemStat:Label;
      
      private var _tenAlert:Alert;
      
      private var _showView:CreatureShowView;
      
      private var _463381257showHolder:Canvas;
      
      private var _646343081autoBuy:CheckBox;
      
      private var _initFreeText:String;
      
      private var _1813919509illustrateTree:GeneralTree;
      
      private var _1972807201recipeCell1:RecipeCell;
      
      private var _1716875591transformText:IntroText;
      
      private var _ssdAlert:Alert;
      
      private var _tenssdAlert:Alert;
      
      private var _993660112propText:TextArea;
      
      public var _DressPanel_FilterButton1:FilterButton;
      
      public var _DressPanel_FilterButton2:FilterButton;
      
      public var _DressPanel_FilterButton3:FilterButton;
      
      public var _DressPanel_FilterButton4:FilterButton;
      
      public var _DressPanel_FilterButton5:FilterButton;
      
      public var _DressPanel_FilterButton6:FilterButton;
      
      public var _DressPanel_FilterButton7:FilterButton;
      
      public var _DressPanel_FilterButton8:FilterButton;
      
      public var _DressPanel_FilterButton9:FilterButton;
      
      public var _DressPanel_FilterButton11:FilterButton;
      
      public var _DressPanel_FilterButton10:FilterButton;
      
      private var _803559802pageTab:HButtonTab;
      
      private var _goldAlert:Alert;
      
      private var _1293666237jewelNum:Label;
      
      private var _1972807200recipeCell0:RecipeCell;
      
      private var _1396576659bagTab:HButtonTab;
      
      mx_internal var _watchers:Array = [];
      
      private var _352003056recipeCell:RecipeCell;
      
      private var _695298549dressPlay:DressDisplay;
      
      public var _DressPanel_Label1:Label;
      
      public var _DressPanel_Label2:Label;
      
      public var _DressPanel_Label4:Label;
      
      public var _DressPanel_Label5:Label;
      
      public var _DressPanel_Label6:Label;
      
      private var _2113119409viewHolder:UIComponent;
      
      public var _DressPanel_Label9:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _76902757dressScore:Label;
      
      public var _DressPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _61982977toActiveSlot:DisplaySlot;
      
      private var _657874032crystalNum:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":550,
               "height":400,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_DressPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":41,
                        "selectedIndex":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"viewStack",
                  "events":{"creationComplete":"__viewStack_creationComplete"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":60,
                        "width":520,
                        "height":325,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "events":{"creationComplete":"___DressPanel_Canvas1_creationComplete"},
                           "stylesFactory":function():void
                           {
                              this.left = "0";
                              this.right = "0";
                              this.top = "0";
                              this.bottom = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "x":10,
                                          "y":215,
                                          "width":150,
                                          "height":100,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_DressPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":5};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"propText",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.textAlign = "center";
                                                this.borderStyle = "none";
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":150,
                                                   "height":80,
                                                   "y":25,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DressDisplay,
                                    "id":"dressPlay",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "activeCall":activeTab,
                                          "x":165,
                                          "y":10,
                                          "dressCall":dressChangeHanlder
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DressDisplay,
                                    "id":"flyerPlay",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "activeCall":activeTab,
                                          "x":165,
                                          "y":165,
                                          "dressCall":flyerChangeHanlder
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"showHolder",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "x":10,
                                          "y":10,
                                          "width":150,
                                          "height":200,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_DressPanel_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16776960;
                                                this.textAlign = "center";
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":5};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":UIComponent,
                                             "id":"viewHolder",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":80,
                                                   "y":210,
                                                   "mouseEnabled":false,
                                                   "mouseChildren":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___DressPanel_Button1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-40";
                                                this.bottom = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "buttonMode":true,
                                                   "styleName":"BtnLoginTurnLeft"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___DressPanel_Button2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "40";
                                                this.bottom = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "buttonMode":true,
                                                   "styleName":"BtnLoginTurnRight"
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
                           "stylesFactory":function():void
                           {
                              this.left = "0";
                              this.right = "0";
                              this.top = "0";
                              this.bottom = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "x":10,
                                          "y":10,
                                          "width":235,
                                          "height":305,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":GeneralTree,
                                             "id":"illustrateTree",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.horizontalCenter = "0";
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":213,
                                                   "height":288,
                                                   "y":10,
                                                   "styleName":"TreeGeneral",
                                                   "itemRenderer":_DressPanel_ClassFactory1_c()
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
                                          "x":250,
                                          "y":10,
                                          "width":260,
                                          "height":305,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_DressPanel_Image1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":45};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"itemStat",
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
                                             "type":DisplaySlot,
                                             "id":"toActiveSlot",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":45};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.horizontalGap = 18;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":135,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_DressPanel_Label4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_DressPanel_Label5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_DressPanel_Label6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.horizontalGap = 36;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":155,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":34,
                                                            "height":34,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "clipContent":false,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"_DressPanel_Image2"
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"_DressPanel_Image3",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.horizontalCenter = "0";
                                                                  this.verticalCenter = "0";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"crystalNum",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16777215;
                                                                  this.bottom = "0";
                                                                  this.right = "0";
                                                                  this.fontSize = 8;
                                                                  this.fontFamily = "Arial";
                                                                  this.textAlign = "right";
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":34,
                                                            "height":34,
                                                            "horizontalScrollPolicy":"off",
                                                            "verticalScrollPolicy":"off",
                                                            "clipContent":false,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"_DressPanel_Image4"
                                                            }),new UIComponentDescriptor({
                                                               "type":Image,
                                                               "id":"_DressPanel_Image5",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.horizontalCenter = "0";
                                                                  this.verticalCenter = "0";
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":Label,
                                                               "id":"jewelNum",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.color = 16777215;
                                                                  this.bottom = "0";
                                                                  this.right = "0";
                                                                  this.fontSize = 8;
                                                                  this.fontFamily = "Arial";
                                                                  this.textAlign = "right";
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RecipeCell,
                                                      "id":"recipeCell"
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.horizontalGap = 2;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":220,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":CheckBox,
                                                      "id":"autoBuy"
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_DressPanel_Label9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.color = 16777215;
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_DressPanel_FilterButton1",
                                             "events":{"click":"___DressPanel_FilterButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "y":255,
                                                   "width":60,
                                                   "height":23
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
                           "stylesFactory":function():void
                           {
                              this.left = "0";
                              this.right = "0";
                              this.top = "0";
                              this.bottom = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "x":10,
                                          "y":10,
                                          "width":280,
                                          "height":214,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clipContent":false,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "x":7,
                                                   "y":10,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_DressPanel_Image6"
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"freeTime",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.horizontalCenter = "0";
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"y":110};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clipContent":false,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "x":95,
                                                   "y":10,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_DressPanel_Image7"
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_DressPanel_Label11",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.color = 16777215;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":110,
                                                            "visible":true
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
                                                   "clipContent":false,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "x":183,
                                                   "y":10,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_DressPanel_Image8"
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_DressPanel_Label12",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textAlign = "center";
                                                         this.color = 16777215;
                                                         this.horizontalCenter = "0";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":110,
                                                            "visible":true
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_DressPanel_FilterButton2",
                                             "events":{"click":"___DressPanel_FilterButton2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":10,
                                                   "y":144,
                                                   "width":84,
                                                   "height":23
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_DressPanel_FilterButton3",
                                             "events":{"click":"___DressPanel_FilterButton3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":98,
                                                   "y":144,
                                                   "width":84,
                                                   "height":23
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_DressPanel_FilterButton4",
                                             "events":{"click":"___DressPanel_FilterButton4_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":186,
                                                   "y":144,
                                                   "width":84,
                                                   "height":23
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_DressPanel_FilterButton5",
                                             "events":{"click":"___DressPanel_FilterButton5_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 11;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":98,
                                                   "y":168,
                                                   "width":84,
                                                   "height":23
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_DressPanel_FilterButton6",
                                             "events":{"click":"___DressPanel_FilterButton6_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 11;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":186,
                                                   "y":168,
                                                   "width":84,
                                                   "height":23
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_DressPanel_Label13",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.color = 16777215;
                                                this.left = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":192,
                                                   "width":72
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_DressPanel_Label14",
                                             "stylesFactory":function():void
                                             {
                                                this.textAlign = "left";
                                                this.color = 16777215;
                                                this.left = "80";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":192};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"exchangeText",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":232,
                                          "width":280,
                                          "height":83
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HButtonTab,
                                    "id":"bagTab",
                                    "events":{"tabChanged":"__bagTab_tabChanged"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":305,
                                          "y":10,
                                          "selectedIndex":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "x":295,
                                          "y":30,
                                          "width":215,
                                          "height":266,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DressBag,
                                             "id":"dressBag",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":10,
                                                   "height":227
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":FilterButton,
                                             "id":"_DressPanel_FilterButton7",
                                             "events":{"click":"___DressPanel_FilterButton7_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "width":60,
                                                   "height":23,
                                                   "y":238
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"dressScore",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.textAlign = "right";
                                       this.fontSize = 12;
                                       this.right = "130";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":23,
                                          "y":301
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":FilterButton,
                                    "id":"_DressPanel_FilterButton8",
                                    "events":{"click":"___DressPanel_FilterButton8_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdGreen",
                                          "width":60,
                                          "height":23,
                                          "x":392,
                                          "y":298
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "0";
                              this.right = "0";
                              this.top = "0";
                              this.bottom = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "x":10,
                                          "y":10,
                                          "width":280,
                                          "height":205,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "clipContent":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_DressPanel_Image9",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":22};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_DressPanel_Label16",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":55};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.horizontalGap = 11;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":85,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":RecipeCell,
                                                      "id":"recipeCell0",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"acceptable":true};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RecipeCell,
                                                      "id":"recipeCell1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"acceptable":true};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RecipeCell,
                                                      "id":"recipeCell2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"acceptable":true};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HBox,
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.horizontalGap = 8;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":145,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":FilterButton,
                                                      "id":"_DressPanel_FilterButton9",
                                                      "events":{"click":"___DressPanel_FilterButton9_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdGreen",
                                                            "width":60,
                                                            "height":23
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":FilterButton,
                                                      "id":"_DressPanel_FilterButton10",
                                                      "events":{"click":"___DressPanel_FilterButton10_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "styleName":"BtnStdGreen",
                                                            "width":60,
                                                            "height":23
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
                                    "id":"transformText",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":220,
                                          "width":280,
                                          "height":95
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":FilterButton,
                                    "id":"_DressPanel_FilterButton11",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "height":20,
                                          "x":305,
                                          "y":11,
                                          "styleName":"HorizontalTab",
                                          "selected":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CanvasBorder",
                                          "x":295,
                                          "y":30,
                                          "width":215,
                                          "height":285,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DressBag,
                                             "id":"recipeBag",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":10};
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
      
      public function DressPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 550;
         this.height = 400;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___DressPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DressPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemStat() : Label
      {
         return this._1177498631itemStat;
      }
      
      public function ___DressPanel_FilterButton5_click(param1:MouseEvent) : void
      {
         ssdHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get dressPlay() : DressDisplay
      {
         return this._695298549dressPlay;
      }
      
      private function turnHandler(param1:Boolean) : void
      {
         if(!_showView || !_showView.gameObject)
         {
            return;
         }
         var _loc2_:* = _showView.gameObject;
         if(param1)
         {
            ++_loc2_.dir;
         }
         else
         {
            --_loc2_.dir;
         }
         _loc2_.dir = (_loc2_.dir + 8) % 8;
         _loc2_.posDir = _loc2_.dir;
         _showView && _showView.faceTo(_loc2_.dir);
      }
      
      public function set itemStat(param1:Label) : void
      {
         var _loc2_:Object = this._1177498631itemStat;
         if(_loc2_ !== param1)
         {
            this._1177498631itemStat = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemStat",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell() : RecipeCell
      {
         return this._352003056recipeCell;
      }
      
      public function set showHolder(param1:Canvas) : void
      {
         var _loc2_:Object = this._463381257showHolder;
         if(_loc2_ !== param1)
         {
            this._463381257showHolder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showHolder",_loc2_,param1));
         }
      }
      
      public function set dressPlay(param1:DressDisplay) : void
      {
         var _loc2_:Object = this._695298549dressPlay;
         if(_loc2_ !== param1)
         {
            this._695298549dressPlay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dressPlay",_loc2_,param1));
         }
      }
      
      private function ensureTenssdExtract() : void
      {
         var onTenssdExtract:Function = function(param1:Object = null):void
         {
            var _loc4_:Object = null;
            var _loc5_:Number = NaN;
            var _loc6_:int = 0;
            if(param1 == null)
            {
               return;
            }
            DressLogic.updateDressInfo(param1.dressInfo);
            var _loc2_:Array = param1.planArr;
            var _loc3_:Array = [];
            for each(_loc4_ in _loc2_)
            {
               _loc5_ = Number(_loc4_.recipeId);
               _loc6_ = int(_loc4_.num);
               _loc3_.push({
                  "recipeId":_loc5_,
                  "recipeNum":_loc6_
               });
            }
            RecipeAlertTen.show(_loc3_);
         };
         _core.remote.call("largessdExtractRecipe",new Responder(onTenssdExtract));
      }
      
      public function set recipeCell(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._352003056recipeCell;
         if(_loc2_ !== param1)
         {
            this._352003056recipeCell = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell1() : RecipeCell
      {
         return this._1972807201recipeCell1;
      }
      
      private function bagHandler(param1:Event) : void
      {
         var _loc2_:int = bagTab.selectedIndex;
         var _loc3_:int = _loc2_ == 1 ? DressBag.TYPE_RECIPE : DressBag.TYPE_CHIP;
         dressBag.updateView(_loc3_);
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell0() : RecipeCell
      {
         return this._1972807200recipeCell0;
      }
      
      private function updatePageTwo(param1:Boolean) : void
      {
         var _loc3_:Object = null;
         var _loc4_:ArrayCollection = null;
         var _loc5_:Object = null;
         var _loc6_:Sort = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Sort = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Object = null;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         if(param1)
         {
            _loc3_ = {};
            _loc4_ = new ArrayCollection();
            _loc5_ = GameData.d[GamePredef.TBL_DRESS];
            _loc6_ = new Sort();
            _loc6_.fields = [new SortField("position",false,false,true)];
            for each(_loc7_ in _loc5_)
            {
               _loc10_ = int(_loc7_.type);
               if(!_loc3_[_loc10_])
               {
                  _loc12_ = {};
                  _loc12_.type = _loc10_;
                  _loc12_.position = _loc10_;
                  _loc12_.name = Language.DRESS_PANEL[12][_loc10_];
                  _loc12_.children = new ArrayCollection();
                  (_loc12_.children as ArrayCollection).sort = _loc6_;
                  _loc4_.addItem(_loc12_);
                  _loc3_[_loc10_] = _loc12_;
               }
               _loc11_ = _loc3_[_loc10_];
               (_loc11_.children as ArrayCollection).addItem(_loc7_);
            }
            for each(_loc8_ in _loc4_)
            {
               if(Boolean(_loc8_) && _loc8_.hasOwnProperty("children"))
               {
                  _loc13_ = _loc8_.children;
                  if((Boolean(_loc13_)) && _loc13_ is ICollectionView)
                  {
                     (_loc13_ as ICollectionView).refresh();
                  }
               }
            }
            _loc9_ = new Sort();
            _loc9_.fields = [new SortField("type",false,false,true)];
            _loc4_.sort = _loc9_;
            _loc4_.refresh();
            illustrateTree.dataProvider = _loc4_;
            _loc6_ = null;
            _loc9_ = null;
         }
         else
         {
            illustrateTree.invalidateList();
         }
         var _loc2_:Object = {
            "crystal":0,
            "jewel":0
         };
         if(_core.player.dressInfo)
         {
            _loc5_ = com.adobe.serialization.json.JSON.decode(_core.player.dressInfo);
            if((Boolean(_loc5_)) && Boolean(_loc5_.bag))
            {
               _loc14_ = _loc5_.bag;
               if(_loc14_.crystal)
               {
                  _loc2_["crystal"] = _loc14_.crystal;
               }
               if(_loc14_.jewel)
               {
                  _loc2_["jewel"] = _loc14_.jewel;
               }
            }
         }
         itemStat.text = LanguageUtil.replace(Language.DRESS_PANEL[25],_loc2_);
      }
      
      private function onComplete() : void
      {
         if(_initFreeText)
         {
            freeTime.text = _initFreeText;
         }
         _initFreeText = null;
         exchangeText.htmlText = Language.DRESS_PANEL[22];
         transformText.htmlText = Language.DRESS_PANEL[23];
         this.addEventListener(DressEvent.DRESS_DROP,dressDropHandler);
         this.addEventListener(DressEvent.TREE_SELECTED,treeSelectHanlder);
         DressLogic.dressProxy.addEventListener(DressEvent.DRESS_CHANGE,changeHandler);
         this.updateView(true);
      }
      
      [Bindable(event="propertyChange")]
      public function get recipeCell2() : RecipeCell
      {
         return this._1972807202recipeCell2;
      }
      
      private function updatePageFour() : void
      {
         var _loc2_:RecipeCell = null;
         var _loc1_:int = 0;
         while(_loc1_ < 3)
         {
            _loc2_ = this["recipeCell" + _loc1_];
            _loc2_.clean();
            _loc1_++;
         }
         recipeBag.updateView(DressBag.TYPE_RECIPE);
      }
      
      public function set recipeCell0(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807200recipeCell0;
         if(_loc2_ !== param1)
         {
            this._1972807200recipeCell0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell0",_loc2_,param1));
         }
      }
      
      public function set recipeCell1(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807201recipeCell1;
         if(_loc2_ !== param1)
         {
            this._1972807201recipeCell1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelNum() : Label
      {
         return this._1293666237jewelNum;
      }
      
      public function set recipeCell2(param1:RecipeCell) : void
      {
         var _loc2_:Object = this._1972807202recipeCell2;
         if(_loc2_ !== param1)
         {
            this._1972807202recipeCell2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeCell2",_loc2_,param1));
         }
      }
      
      private function transformHandler(param1:Event) : void
      {
         var recipeArr:Array;
         var i:int;
         var onTransform:Function;
         var recipeCell:RecipeCell = null;
         var event:Event = param1;
         event.stopImmediatePropagation();
         recipeArr = [];
         i = 0;
         while(i < 3)
         {
            recipeCell = this["recipeCell" + i];
            recipeCell.recipeId && recipeArr.push(recipeCell.recipeId);
            i++;
         }
         onTransform = function(param1:Object = null):void
         {
            if(param1 == null)
            {
               return;
            }
            DressLogic.updateDressInfo(param1.dressInfo);
            RecipeAlertFree.show(param1.recipeId,param1.recipeNum);
         };
         _core.remote.call("transformRecipe",new Responder(onTransform),recipeArr);
      }
      
      public function ___DressPanel_FilterButton2_click(param1:MouseEvent) : void
      {
         freeHandler(param1);
      }
      
      private function updatePageOne() : void
      {
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         if(!_showView)
         {
            _showView = new CreatureShowView();
            viewHolder.addChild(_showView);
            _loc3_ = ObjectUtil.copy(_core.player);
            _loc3_.wp = -1;
            _loc3_.name = "";
            _loc3_.wingResCode = -1;
            _loc3_.doubleFly = false;
            _loc3_.dir = 0;
            _loc3_.posDir = 0;
            _loc3_.flyingState = GamePredef.FLYING_STATE_TAKING_OFF;
            _showView.gameObject = _loc3_;
         }
         dressPlay.updateView(DressDisplay.TYPE_DRESS);
         flyerPlay.updateView(DressDisplay.TYPE_FLYER);
         var _loc1_:Object = {
            1:0,
            4:0,
            5:0,
            11:0
         };
         if(_core.player.dressInfo)
         {
            _loc4_ = com.adobe.serialization.json.JSON.decode(_core.player.dressInfo);
            _loc5_ = _loc4_.book;
            for(_loc6_ in _loc5_)
            {
               _loc7_ = GameData.d[GamePredef.TBL_DRESS][_loc6_];
               _loc8_ = 1;
               while(_loc8_ <= 4)
               {
                  _loc9_ = _loc7_ ? int(_loc7_["prop" + _loc8_]) : 0;
                  _loc10_ = _loc7_ ? int(_loc7_["propNum" + _loc8_]) : 0;
                  if(!_loc1_[_loc9_])
                  {
                     _loc1_[_loc9_] = _loc10_;
                  }
                  else
                  {
                     _loc1_[_loc9_] += _loc10_;
                  }
                  _loc8_++;
               }
            }
         }
         var _loc2_:Object = {
            "hp":_loc1_[1],
            "phAtt":_loc1_[4],
            "mgAtt":_loc1_[5],
            "sp":_loc1_[11]
         };
         propText.htmlText = LanguageUtil.replace(Language.DRESS_PANEL[11],_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get dressBag() : DressBag
      {
         return this._715179439dressBag;
      }
      
      public function dressActiveValidate(param1:Number) : void
      {
         var needJewelNum:int;
         var buyCrystalNum:int;
         var needGold:int;
         var popStr:String;
         var needCrystalNum:int;
         var buyJewelNum:int;
         var hasCrystalNum:int;
         var closeHandler:Function;
         var hasJewelNum:int;
         var dressDict:Object = null;
         var dressBag:Object = null;
         var dressId:Number = param1;
         var dressMeta:Object = GameData.d[GamePredef.TBL_DRESS][dressId];
         if(!dressMeta)
         {
            return;
         }
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         hasCrystalNum = 0;
         hasJewelNum = 0;
         needCrystalNum = int(dressMeta.num1);
         needJewelNum = int(dressMeta.num2);
         if(_core.player.dressInfo)
         {
            dressDict = com.adobe.serialization.json.JSON.decode(_core.player.dressInfo);
            if(Boolean(dressDict) && Boolean(dressDict.bag))
            {
               dressBag = dressDict.bag;
               hasCrystalNum = int(dressBag.crystal);
               hasJewelNum = int(dressBag.jewel);
            }
         }
         needGold = 0;
         buyCrystalNum = needCrystalNum - hasCrystalNum;
         buyJewelNum = needJewelNum - hasJewelNum;
         if(buyCrystalNum > 0)
         {
            needGold += buyCrystalNum * GamePredef.DRESS_CRYSTAL_PRICE;
         }
         if(buyJewelNum > 0)
         {
            needGold += buyJewelNum * GamePredef.DRESS_JEWEL_PRICE;
         }
         popStr = LanguageUtil.replace(Language.DRESS_PANEL[36],{"money":needGold});
         closeHandler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.NO)
            {
               return;
            }
            _core.remote.call("ensureBuyActive",new Responder(DressLogic.updateDressInfo),dressId);
         };
         _alert = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _alert.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get autoBuy() : CheckBox
      {
         return this._646343081autoBuy;
      }
      
      public function set propText(param1:TextArea) : void
      {
         var _loc2_:Object = this._993660112propText;
         if(_loc2_ !== param1)
         {
            this._993660112propText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText",_loc2_,param1));
         }
      }
      
      private function tenHandler(param1:Event) : void
      {
         var popStr:String;
         var closeHandler:Function;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(_tenAlert)
         {
            PopUpManager.removePopUp(_tenAlert);
            _tenAlert = null;
         }
         closeHandler = function(param1:CloseEvent):void
         {
            param1.detail == Alert.YES && ensureTenExtract();
         };
         popStr = Language.DRESS_PANEL[46];
         _tenAlert = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _tenAlert.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get crystalNum() : Label
      {
         return this._657874032crystalNum;
      }
      
      private function exchangeTab(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_RECIPE_EXCHANGE);
         _loc2_.show();
      }
      
      [Bindable(event="propertyChange")]
      public function get bagTab() : HButtonTab
      {
         return this._1396576659bagTab;
      }
      
      private function ensureTenExtract() : void
      {
         var onTenExtract:Function = function(param1:Object = null):void
         {
            var _loc4_:Object = null;
            var _loc5_:Number = NaN;
            var _loc6_:int = 0;
            if(param1 == null)
            {
               return;
            }
            DressLogic.updateDressInfo(param1.dressInfo);
            var _loc2_:Array = param1.planArr;
            var _loc3_:Array = [];
            for each(_loc4_ in _loc2_)
            {
               _loc5_ = Number(_loc4_.recipeId);
               _loc6_ = int(_loc4_.num);
               _loc3_.push({
                  "recipeId":_loc5_,
                  "recipeNum":_loc6_
               });
            }
            RecipeAlertTen.show(_loc3_);
         };
         _core.remote.call("tenExtractRecipe",new Responder(onTenExtract));
      }
      
      private function tenssdHandler(param1:Event) : void
      {
         var popStr:String;
         var closeHandler:Function;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(_tenssdAlert)
         {
            PopUpManager.removePopUp(_tenssdAlert);
            _tenssdAlert = null;
         }
         closeHandler = function(param1:CloseEvent):void
         {
            param1.detail == Alert.YES && ensureTenssdExtract();
         };
         popStr = Language.DRESS_PANEL[55];
         _tenssdAlert = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _tenssdAlert.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      public function set jewelNum(param1:Label) : void
      {
         var _loc2_:Object = this._1293666237jewelNum;
         if(_loc2_ !== param1)
         {
            this._1293666237jewelNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelNum",_loc2_,param1));
         }
      }
      
      public function __bagTab_tabChanged(param1:DressEvent) : void
      {
         bagHandler(param1);
      }
      
      private function viewStackComp() : void
      {
         viewStack.parent.setChildIndex(viewStack,0);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      private function ensuressdExtract() : void
      {
         var onssdExtract:Function = function(param1:Object = null):void
         {
            if(param1 == null)
            {
               return;
            }
            DressLogic.updateDressInfo(param1.dressInfo);
            RecipeAlertFree.show(param1.recipeId,param1.recipeNum);
         };
         _core.remote.call("ssdExtractRecipe",new Responder(onssdExtract));
      }
      
      public function ___DressPanel_Button2_click(param1:MouseEvent) : void
      {
         turnHandler(true);
      }
      
      private function treeSelectHanlder(param1:DressEvent) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Object = illustrateTree.selectedItem;
         var _loc3_:Number = Number(_loc2_.id);
         var _loc4_:Object = GameData.d[GamePredef.TBL_DRESS][_loc3_];
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Object = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc4_.equiptId];
         if(!_loc5_)
         {
            return;
         }
         var _loc6_:Object = {
            "slotData":_loc5_,
            "type":GamePredef.TBL_EQUIPT_TEMPLATE,
            "giid":_loc5_.id
         };
         toActiveSlot.setData(_loc6_);
         recipeCell.stackNum = 1;
         recipeCell.recipeId = _loc4_.recipeId;
         crystalNum.text = _loc4_.num1;
         jewelNum.text = _loc4_.num2;
      }
      
      public function set dressBag(param1:DressBag) : void
      {
         var _loc2_:Object = this._715179439dressBag;
         if(_loc2_ !== param1)
         {
            this._715179439dressBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dressBag",_loc2_,param1));
         }
      }
      
      private function dressDropHandler(param1:DressEvent) : void
      {
         var _loc4_:RecipeCell = null;
         var _loc2_:RecipeCell = param1.target as RecipeCell;
         if(!_loc2_.recipeId)
         {
            return;
         }
         var _loc3_:int = 0;
         while(_loc3_ < 3)
         {
            _loc4_ = this["recipeCell" + _loc3_];
            if(_loc4_ != _loc2_)
            {
               if(_loc4_.recipeId == _loc2_.recipeId)
               {
                  _loc4_.clean();
               }
            }
            _loc3_++;
         }
      }
      
      public function ___DressPanel_FilterButton7_click(param1:MouseEvent) : void
      {
         bagFuncHndler(param1);
      }
      
      private function ssdHandler(param1:Event) : void
      {
         var popStr:String;
         var closeHandler:Function;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(_ssdAlert)
         {
            PopUpManager.removePopUp(_ssdAlert);
            _ssdAlert = null;
         }
         closeHandler = function(param1:CloseEvent):void
         {
            param1.detail == Alert.YES && ensuressdExtract();
         };
         popStr = Language.DRESS_PANEL[54];
         _ssdAlert = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _ssdAlert.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      private function activeTab(param1:Number) : void
      {
         var _loc3_:Object = null;
         var _loc4_:ArrayCollection = null;
         var _loc5_:Object = null;
         pageTab.selectedIndex = 1;
         if(!illustrateTree.dataProvider)
         {
            return;
         }
         var _loc2_:ArrayCollection = illustrateTree.dataProvider as ArrayCollection;
         for each(_loc3_ in _loc2_)
         {
            if(_loc3_.hasOwnProperty("children"))
            {
               _loc4_ = _loc3_.children;
               for each(_loc5_ in _loc4_)
               {
                  if(_loc5_.id == param1)
                  {
                     illustrateTree.expandItem(_loc3_,true);
                     illustrateTree.selectedItem = _loc5_;
                     break;
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get viewHolder() : UIComponent
      {
         return this._2113119409viewHolder;
      }
      
      [Bindable(event="propertyChange")]
      public function get dressScore() : Label
      {
         return this._76902757dressScore;
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
      
      public function set freeTime(param1:Label) : void
      {
         var _loc2_:Object = this._1538341031freeTime;
         if(_loc2_ !== param1)
         {
            this._1538341031freeTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"freeTime",_loc2_,param1));
         }
      }
      
      public function ___DressPanel_FilterButton4_click(param1:MouseEvent) : void
      {
         tenHandler(param1);
      }
      
      public function ___DressPanel_FilterButton10_click(param1:MouseEvent) : void
      {
         transformAllHandler(param1);
      }
      
      private function goldHandler(param1:Event) : void
      {
         var popStr:String;
         var closeHandler:Function;
         var event:Event = param1;
         event.stopImmediatePropagation();
         if(_goldAlert)
         {
            PopUpManager.removePopUp(_goldAlert);
            _goldAlert = null;
         }
         closeHandler = function(param1:CloseEvent):void
         {
            param1.detail == Alert.YES && ensureGoldExtract();
         };
         popStr = Language.DRESS_PANEL[45];
         _goldAlert = Alert.show(LanguageUtil.html2PlainText(popStr),"",Alert.YES | Alert.NO,null,closeHandler);
         _goldAlert.mx_internal::alertForm.mx_internal::textField.htmlText = popStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get transformText() : IntroText
      {
         return this._1716875591transformText;
      }
      
      public function set bagTab(param1:HButtonTab) : void
      {
         var _loc2_:Object = this._1396576659bagTab;
         if(_loc2_ !== param1)
         {
            this._1396576659bagTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bagTab",_loc2_,param1));
         }
      }
      
      public function onUpdateDressInfo(param1:String) : void
      {
         DressLogic.updateDressInfo(param1);
      }
      
      public function set crystalNum(param1:Label) : void
      {
         var _loc2_:Object = this._657874032crystalNum;
         if(_loc2_ !== param1)
         {
            this._657874032crystalNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crystalNum",_loc2_,param1));
         }
      }
      
      private function ensureGoldExtract() : void
      {
         var onGoldExtract:Function = function(param1:Object = null):void
         {
            if(param1 == null)
            {
               return;
            }
            DressLogic.updateDressInfo(param1.dressInfo);
            RecipeAlertFree.show(param1.recipeId,param1.recipeNum);
         };
         _core.remote.call("goldExtractRecipe",new Responder(onGoldExtract));
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      [Bindable(event="propertyChange")]
      public function get illustrateTree() : GeneralTree
      {
         return this._1813919509illustrateTree;
      }
      
      public function __viewStack_creationComplete(param1:FlexEvent) : void
      {
         viewStackComp();
      }
      
      private function transformAllHandler(param1:Event) : void
      {
         var recipeArr:Array;
         var i:int;
         var onTransformAll:Function;
         var recipeCell:RecipeCell = null;
         var event:Event = param1;
         event.stopImmediatePropagation();
         recipeArr = [];
         i = 0;
         while(i < 3)
         {
            recipeCell = this["recipeCell" + i];
            recipeCell.recipeId && recipeArr.push(recipeCell.recipeId);
            i++;
         }
         onTransformAll = function(param1:Object = null):void
         {
            if(param1 == null)
            {
               return;
            }
            DressLogic.updateDressInfo(param1.dressInfo);
            RecipeAlertTen.show(param1.produceArr);
         };
         _core.remote.call("transformAllRecipe",new Responder(onTransformAll),recipeArr);
      }
      
      public function ___DressPanel_FilterButton1_click(param1:MouseEvent) : void
      {
         activeHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get toActiveSlot() : DisplaySlot
      {
         return this._61982977toActiveSlot;
      }
      
      public function ___DressPanel_FilterButton9_click(param1:MouseEvent) : void
      {
         transformHandler(param1);
      }
      
      private function changeIndex() : void
      {
         showHolder.parent.setChildIndex(showHolder,0);
      }
      
      [Bindable(event="propertyChange")]
      public function get showHolder() : Canvas
      {
         return this._463381257showHolder;
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
      
      private function updateView(param1:Boolean = false) : void
      {
         this.updatePageOne();
         this.updatePageTwo(param1);
         this.updatePageThree();
         this.updatePageFour();
      }
      
      override public function show() : void
      {
         var onCheckSameDay:Function = function(param1:String = null):void
         {
            if(!param1)
            {
               return;
            }
            _core.player.dressInfo = JSONUtil.JSONfy(param1);
            var _loc2_:String = LanguageUtil.replace(Language.DRESS_PANEL[16],{"time":1});
            if(!this.initialized)
            {
               _initFreeText = _loc2_;
            }
            else
            {
               freeTime.text = _loc2_;
            }
         };
         _core.remote.call("checkSameDay",new Responder(onCheckSameDay));
         this.initialized && this.updateView();
         super.show();
      }
      
      private function _DressPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DRESS_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[1];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = Language.DRESS_PANEL[10];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[2];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = ResManager.TOTEM_PET_FUNC1;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[26];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[27];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[28];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Assets.TRANSPARENT_SLOT;
         _loc1_ = ResManager.getIconUrl(4130220000436);
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Assets.TRANSPARENT_SLOT;
         _loc1_ = ResManager.getIconUrl(4130220000437);
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[29];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[5];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = ResManager.getIconUrl(4130220000485);
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = ResManager.getIconUrl(4130220000486);
         _loc1_ = Language.DRESS_PANEL[17];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = ResManager.getIconUrl(4130220000487);
         _loc1_ = Language.DRESS_PANEL[18];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[19];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[51];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[52];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[49];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[50];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[53];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = _core.player.shishangdian;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[24];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.DRESS_PANEL[bagTab.selectedIndex == 0 ? 44 : 39];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[21];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = ResManager.TOTEM_PET_FUNC1;
         _loc1_ = Language.DRESS_PANEL[30];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[32];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[33];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DRESS_PANEL[31];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      [Bindable(event="propertyChange")]
      public function get propText() : TextArea
      {
         return this._993660112propText;
      }
      
      public function set recipeBag(param1:DressBag) : void
      {
         var _loc2_:Object = this._819927962recipeBag;
         if(_loc2_ !== param1)
         {
            this._819927962recipeBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recipeBag",_loc2_,param1));
         }
      }
      
      public function set dressScore(param1:Label) : void
      {
         var _loc2_:Object = this._76902757dressScore;
         if(_loc2_ !== param1)
         {
            this._76902757dressScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dressScore",_loc2_,param1));
         }
      }
      
      private function freeHandler(param1:Event) : void
      {
         var onFreeExtract:Function;
         var event:Event = param1;
         event.stopImmediatePropagation();
         onFreeExtract = function(param1:Object = null):void
         {
            if(param1 == null)
            {
               return;
            }
            DressLogic.updateDressInfo(param1.dressInfo);
            RecipeAlertFree.show(param1.recipeId,param1.recipeNum);
         };
         _core.remote.call("freeExtractRecipe",new Responder(onFreeExtract));
      }
      
      private function bagFuncHndler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(dressBag.showType == DressBag.TYPE_RECIPE)
         {
            pageTab.selectedIndex = 3;
         }
         else if(dressBag.showType == DressBag.TYPE_CHIP)
         {
            dressBag.makeAll();
         }
      }
      
      public function ___DressPanel_FilterButton6_click(param1:MouseEvent) : void
      {
         tenssdHandler(param1);
      }
      
      private function activeHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(!illustrateTree.selectedItem)
         {
            return;
         }
         var _loc2_:Object = illustrateTree.selectedItem;
         _core.remote.call("activeDress",new Responder(DressLogic.updateDressInfo),_loc2_.id,autoBuy.selected);
      }
      
      private function _DressPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_BasicTitleCanvas1.text = param1;
         },"_DressPanel_BasicTitleCanvas1.text");
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
            return Language.DRESS_PANEL[1];
         },function(param1:Array):void
         {
            pageTab.dataArray = param1;
         },"pageTab.dataArray");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return pageTab.selectedIndex;
         },function(param1:int):void
         {
            viewStack.selectedIndex = param1;
         },"viewStack.selectedIndex");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label1.text = param1;
         },"_DressPanel_Label1.text");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label1.filters = param1;
         },"_DressPanel_Label1.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propText.filters = param1;
         },"propText.filters");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label2.text = param1;
         },"_DressPanel_Label2.text");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label2.filters = param1;
         },"_DressPanel_Label2.filters");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC1;
         },function(param1:Object):void
         {
            _DressPanel_Image1.source = param1;
         },"_DressPanel_Image1.source");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            itemStat.filters = param1;
         },"itemStat.filters");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label4.text = param1;
         },"_DressPanel_Label4.text");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label4.filters = param1;
         },"_DressPanel_Label4.filters");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label5.text = param1;
         },"_DressPanel_Label5.text");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label5.filters = param1;
         },"_DressPanel_Label5.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label6.text = param1;
         },"_DressPanel_Label6.text");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label6.filters = param1;
         },"_DressPanel_Label6.filters");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.TRANSPARENT_SLOT;
         },function(param1:Object):void
         {
            _DressPanel_Image2.source = param1;
         },"_DressPanel_Image2.source");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000436);
         },function(param1:Object):void
         {
            _DressPanel_Image3.source = param1;
         },"_DressPanel_Image3.source");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            crystalNum.filters = param1;
         },"crystalNum.filters");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.TRANSPARENT_SLOT;
         },function(param1:Object):void
         {
            _DressPanel_Image4.source = param1;
         },"_DressPanel_Image4.source");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000437);
         },function(param1:Object):void
         {
            _DressPanel_Image5.source = param1;
         },"_DressPanel_Image5.source");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            jewelNum.filters = param1;
         },"jewelNum.filters");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label9.text = param1;
         },"_DressPanel_Label9.text");
         result[23] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label9.filters = param1;
         },"_DressPanel_Label9.filters");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton1.label = param1;
         },"_DressPanel_FilterButton1.label");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton1.filters = param1;
         },"_DressPanel_FilterButton1.filters");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000485);
         },function(param1:Object):void
         {
            _DressPanel_Image6.source = param1;
         },"_DressPanel_Image6.source");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            freeTime.filters = param1;
         },"freeTime.filters");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000486);
         },function(param1:Object):void
         {
            _DressPanel_Image7.source = param1;
         },"_DressPanel_Image7.source");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label11.text = param1;
         },"_DressPanel_Label11.text");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label11.filters = param1;
         },"_DressPanel_Label11.filters");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000487);
         },function(param1:Object):void
         {
            _DressPanel_Image8.source = param1;
         },"_DressPanel_Image8.source");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label12.text = param1;
         },"_DressPanel_Label12.text");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label12.filters = param1;
         },"_DressPanel_Label12.filters");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton2.label = param1;
         },"_DressPanel_FilterButton2.label");
         result[35] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton2.filters = param1;
         },"_DressPanel_FilterButton2.filters");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton3.label = param1;
         },"_DressPanel_FilterButton3.label");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton3.filters = param1;
         },"_DressPanel_FilterButton3.filters");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton4.label = param1;
         },"_DressPanel_FilterButton4.label");
         result[39] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton4.filters = param1;
         },"_DressPanel_FilterButton4.filters");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton5.label = param1;
         },"_DressPanel_FilterButton5.label");
         result[41] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton5.filters = param1;
         },"_DressPanel_FilterButton5.filters");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton6.label = param1;
         },"_DressPanel_FilterButton6.label");
         result[43] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton6.filters = param1;
         },"_DressPanel_FilterButton6.filters");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label13.text = param1;
         },"_DressPanel_Label13.text");
         result[45] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label13.filters = param1;
         },"_DressPanel_Label13.filters");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.shishangdian;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label14.text = param1;
         },"_DressPanel_Label14.text");
         result[47] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label14.filters = param1;
         },"_DressPanel_Label14.filters");
         result[48] = binding;
         binding = new Binding(this,function():Array
         {
            return Language.DRESS_PANEL[24];
         },function(param1:Array):void
         {
            bagTab.dataArray = param1;
         },"bagTab.dataArray");
         result[49] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            bagTab.filters = param1;
         },"bagTab.filters");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[bagTab.selectedIndex == 0 ? 44 : 39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton7.label = param1;
         },"_DressPanel_FilterButton7.label");
         result[51] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton7.filters = param1;
         },"_DressPanel_FilterButton7.filters");
         result[52] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            dressScore.filters = param1;
         },"dressScore.filters");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton8.label = param1;
         },"_DressPanel_FilterButton8.label");
         result[54] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton8.filters = param1;
         },"_DressPanel_FilterButton8.filters");
         result[55] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_PET_FUNC1;
         },function(param1:Object):void
         {
            _DressPanel_Image9.source = param1;
         },"_DressPanel_Image9.source");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_Label16.text = param1;
         },"_DressPanel_Label16.text");
         result[57] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_Label16.filters = param1;
         },"_DressPanel_Label16.filters");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton9.label = param1;
         },"_DressPanel_FilterButton9.label");
         result[59] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton9.filters = param1;
         },"_DressPanel_FilterButton9.filters");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton10.label = param1;
         },"_DressPanel_FilterButton10.label");
         result[61] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton10.filters = param1;
         },"_DressPanel_FilterButton10.filters");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DRESS_PANEL[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DressPanel_FilterButton11.label = param1;
         },"_DressPanel_FilterButton11.label");
         result[63] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _DressPanel_FilterButton11.filters = param1;
         },"_DressPanel_FilterButton11.filters");
         result[64] = binding;
         return result;
      }
      
      public function ___DressPanel_Button1_click(param1:MouseEvent) : void
      {
         turnHandler(false);
      }
      
      public function set flyerPlay(param1:DressDisplay) : void
      {
         var _loc2_:Object = this._1713694796flyerPlay;
         if(_loc2_ !== param1)
         {
            this._1713694796flyerPlay = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flyerPlay",_loc2_,param1));
         }
      }
      
      public function set transformText(param1:IntroText) : void
      {
         var _loc2_:Object = this._1716875591transformText;
         if(_loc2_ !== param1)
         {
            this._1716875591transformText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"transformText",_loc2_,param1));
         }
      }
      
      private function dressChangeHanlder() : void
      {
         if(!dressPlay || !dressPlay.selectId)
         {
            return;
         }
         var _loc1_:Number = dressPlay.selectId;
         var _loc2_:Object = GameData.d[GamePredef.TBL_DRESS][_loc1_];
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:Object = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc2_.equiptId];
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:Number = _core.player.gender == 0 ? Number(_loc3_.resCodeMale) : Number(_loc3_.resCodeFemale);
         _showView && _showView.setResCode(_loc4_);
      }
      
      private function changeHandler(param1:Event) : void
      {
         this.updateView();
      }
      
      [Bindable(event="propertyChange")]
      public function get freeTime() : Label
      {
         return this._1538341031freeTime;
      }
      
      public function ___DressPanel_FilterButton3_click(param1:MouseEvent) : void
      {
         goldHandler(param1);
      }
      
      public function set viewHolder(param1:UIComponent) : void
      {
         var _loc2_:Object = this._2113119409viewHolder;
         if(_loc2_ !== param1)
         {
            this._2113119409viewHolder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewHolder",_loc2_,param1));
         }
      }
      
      private function updatePageThree() : void
      {
         var _loc4_:Object = null;
         var _loc1_:int = bagTab.selectedIndex == 0 ? DressBag.TYPE_CHIP : DressBag.TYPE_RECIPE;
         dressBag.updateView(_loc1_);
         var _loc2_:int = FREE_EXTRACT_TIME;
         var _loc3_:Number = 0;
         if(_core.player.dressInfo)
         {
            _loc4_ = com.adobe.serialization.json.JSON.decode(_core.player.dressInfo);
            if(_loc4_.extract)
            {
               _loc2_ = FREE_EXTRACT_TIME - _loc4_.extract;
               if(_loc2_ < 0)
               {
                  _loc2_ = 0;
               }
            }
            _loc3_ = _loc4_.score ? Number(_loc4_.score) : 0;
         }
         dressScore.text = LanguageUtil.replace(Language.DRESS_PANEL[20],{"score":_loc3_});
         freeTime.text = LanguageUtil.replace(Language.DRESS_PANEL[16],{"time":_loc2_});
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DressPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DressPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_DressPanelWatcherSetupUtil");
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
      public function get recipeBag() : DressBag
      {
         return this._819927962recipeBag;
      }
      
      public function ___DressPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         onComplete();
      }
      
      private function _DressPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DressItemRenderer;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get flyerPlay() : DressDisplay
      {
         return this._1713694796flyerPlay;
      }
      
      public function ___DressPanel_FilterButton8_click(param1:MouseEvent) : void
      {
         exchangeTab(param1);
      }
      
      public function set viewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1584105757viewStack;
         if(_loc2_ !== param1)
         {
            this._1584105757viewStack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewStack",_loc2_,param1));
         }
      }
      
      public function set illustrateTree(param1:GeneralTree) : void
      {
         var _loc2_:Object = this._1813919509illustrateTree;
         if(_loc2_ !== param1)
         {
            this._1813919509illustrateTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"illustrateTree",_loc2_,param1));
         }
      }
      
      public function set exchangeText(param1:IntroText) : void
      {
         var _loc2_:Object = this._1429700080exchangeText;
         if(_loc2_ !== param1)
         {
            this._1429700080exchangeText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exchangeText",_loc2_,param1));
         }
      }
      
      private function flyerChangeHanlder() : void
      {
         if(!flyerPlay || !flyerPlay.selectId)
         {
            return;
         }
         var _loc1_:Number = flyerPlay.selectId;
         var _loc2_:Object = GameData.d[GamePredef.TBL_DRESS][_loc1_];
         if(!_loc2_)
         {
            return;
         }
         var _loc3_:Object = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][_loc2_.equiptId];
         if(!_loc3_)
         {
            return;
         }
         var _loc4_:Object = {
            "flyerResCode":_loc3_.resCode,
            "flyerFrontResCode":_loc3_.wavCode
         };
         _showView && _showView.setFlyerCodes(_loc4_);
      }
      
      public function ___DressPanel_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         changeIndex();
      }
      
      [Bindable(event="propertyChange")]
      public function get exchangeText() : IntroText
      {
         return this._1429700080exchangeText;
      }
      
      public function set toActiveSlot(param1:DisplaySlot) : void
      {
         var _loc2_:Object = this._61982977toActiveSlot;
         if(_loc2_ !== param1)
         {
            this._61982977toActiveSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"toActiveSlot",_loc2_,param1));
         }
      }
   }
}

