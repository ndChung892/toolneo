package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.EnemyHBox;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.Menu;
   import mx.controls.TextArea;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.DataGridEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.MenuEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class IMPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1966193968newFriendButton:Button;
      
      private var _436740689newBlackButton:Button;
      
      private var _1659364272teacherInfo:TextArea;
      
      private var _541082870tsTabBtn0:BasicGlowButton;
      
      private var _1554141552tabBtn7:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1413572990brotherList:DataGrid;
      
      private var blackAC:ArrayCollection;
      
      private var _1483226179groupList:DataGrid;
      
      private var _335479685findTeacherButton:BasicGlowButton;
      
      private var blackAR:Object;
      
      private var _core:Core = Core.getInstance();
      
      private var _1269957788connectionList:List;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      public var _IMPanel_BasicDelayButton1:BasicDelayButton;
      
      public var _IMPanel_DataGridColumn10:DataGridColumn;
      
      public var _IMPanel_DataGridColumn11:DataGridColumn;
      
      public var _IMPanel_DataGridColumn12:DataGridColumn;
      
      public var _IMPanel_DataGridColumn13:DataGridColumn;
      
      public var _IMPanel_DataGridColumn14:DataGridColumn;
      
      public var _IMPanel_DataGridColumn15:DataGridColumn;
      
      public var _IMPanel_DataGridColumn16:DataGridColumn;
      
      public var _IMPanel_DataGridColumn17:DataGridColumn;
      
      public var _IMPanel_DataGridColumn18:DataGridColumn;
      
      private var _163943896vTabNavigator:ViewStack;
      
      private var _2095530956btnQuery:BasicGlowButton;
      
      public var _IMPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _IMPanel_DataGridColumn19:DataGridColumn;
      
      private var brotherAC:ArrayCollection;
      
      public var _IMPanel_DataGridColumn21:DataGridColumn;
      
      public var _IMPanel_DataGridColumn23:DataGridColumn;
      
      public var _IMPanel_DataGridColumn24:DataGridColumn;
      
      private var targetX:Number;
      
      private var targetY:Number;
      
      public var _IMPanel_DataGridColumn20:DataGridColumn;
      
      public var _IMPanel_DataGridColumn25:DataGridColumn;
      
      public var _IMPanel_DataGridColumn22:DataGridColumn;
      
      public var _IMPanel_DataGridColumn1:DataGridColumn;
      
      public var _IMPanel_DataGridColumn2:DataGridColumn;
      
      public var _IMPanel_DataGridColumn3:DataGridColumn;
      
      public var _IMPanel_DataGridColumn5:DataGridColumn;
      
      public var _IMPanel_DataGridColumn6:DataGridColumn;
      
      public var _IMPanel_DataGridColumn7:DataGridColumn;
      
      public var _IMPanel_DataGridColumn8:DataGridColumn;
      
      public var _IMPanel_DataGridColumn9:DataGridColumn;
      
      public var _IMPanel_DataGridColumn4:DataGridColumn;
      
      private var _1554141553tabBtn6:BasicGlowButton;
      
      private var _1185989481delTeacherButton:BasicGlowButton;
      
      private var curItem:Object = null;
      
      private var studentList:Object;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _1302685476tsViewStack:ViewStack;
      
      private var _554409723loverInfoTA:LinkTextArea;
      
      private var enemyAC:ArrayCollection;
      
      private var _96327450newEnemyButton:Button;
      
      private var enemyAR:Object;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var tutorAC:ArrayCollection;
      
      private var tutorAR:Object;
      
      public var _IMPanel_SimpleCanvas2:SimpleCanvas;
      
      public var _IMPanel_SimpleCanvas3:SimpleCanvas;
      
      public var _IMPanel_SimpleCanvas4:SimpleCanvas;
      
      public var _IMPanel_SimpleCanvas5:SimpleCanvas;
      
      public var _IMPanel_SimpleCanvas6:SimpleCanvas;
      
      public var _IMPanel_SimpleCanvas7:SimpleCanvas;
      
      public var _IMPanel_SimpleCanvas1:SimpleCanvas;
      
      public var _IMPanel_BasicGlowButton13:BasicGlowButton;
      
      public var _IMPanel_BasicGlowButton14:BasicGlowButton;
      
      public var _IMPanel_BasicGlowButton17:BasicGlowButton;
      
      public var _IMPanel_BasicGlowButton12:BasicGlowButton;
      
      public var _IMPanel_SimpleCanvas9:SimpleCanvas;
      
      public var _IMPanel_BasicGlowButton11:BasicGlowButton;
      
      public var _IMPanel_SimpleCanvas8:SimpleCanvas;
      
      private var allGroupAC:ArrayCollection = new ArrayCollection();
      
      private var _1554141554tabBtn5:BasicGlowButton;
      
      private var _1756909476friendList:DataGrid;
      
      private var lineGroupList:Object;
      
      private var _260999996selfTeacherInfo:Label;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      public var _IMPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _IMPanel_BasicGlowButton2:BasicGlowButton;
      
      public var _IMPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _IMPanel_BasicGlowButton7:BasicGlowButton;
      
      private var firstTimeFlag:Boolean = true;
      
      private var tsInitialized:Boolean = false;
      
      private var _893258425stGrid:DataGrid;
      
      private var panelNum:int = 8;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      private var relationShipList:Object;
      
      private var _1050415034enemyList:DataGrid;
      
      private var _1323557593upTeacherButton:BasicGlowButton;
      
      private var friendAC:ArrayCollection;
      
      private var _551112863btnReqAdd:BasicGlowButton;
      
      private var friendAR:Object;
      
      private var _117682566reportButton:BasicGlowButton;
      
      public var _IMPanel_SimpleCanvas10:SimpleCanvas;
      
      private var connectionAC:ArrayCollection = new ArrayCollection();
      
      private var _541082869tsTabBtn1:BasicGlowButton;
      
      private var connectionAR:Array = new Array();
      
      mx_internal var _watchers:Array = [];
      
      private var _1332059453blackList:List;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":440,
               "height":415,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_IMPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vTabNavigator",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":340,
                        "creationPolicy":"all",
                        "y":60,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas1",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":400,
                                          "height":290,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"friendList",
                                             "events":{"itemClick":"__friendList_itemClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "width":374,
                                                   "height":274,
                                                   "x":8,
                                                   "y":8,
                                                   "columns":[_IMPanel_DataGridColumn1_i(),_IMPanel_DataGridColumn2_i(),_IMPanel_DataGridColumn3_i(),_IMPanel_DataGridColumn4_i(),_IMPanel_DataGridColumn5_i(),_IMPanel_DataGridColumn6_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"newFriendButton",
                                    "events":{"click":"__newFriendButton_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "width":20,
                                          "styleName":"BtnAdd",
                                          "height":20,
                                          "x":115
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___IMPanel_Button2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "width":20,
                                          "styleName":"BtnReduce",
                                          "height":20,
                                          "x":143
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton1",
                                    "events":{"click":"___IMPanel_BasicGlowButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas2",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"blackList",
                                    "events":{"itemClick":"__blackList_itemClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "iconField":"icon",
                                          "labelField":"name",
                                          "width":403,
                                          "height":289,
                                          "x":5,
                                          "y":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"newBlackButton",
                                    "events":{"click":"__newBlackButton_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "width":20,
                                          "styleName":"BtnAdd",
                                          "height":20,
                                          "x":115
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___IMPanel_Button4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "width":20,
                                          "styleName":"BtnReduce",
                                          "height":20,
                                          "x":143
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton2",
                                    "events":{"click":"___IMPanel_BasicGlowButton2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas3",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"connectionList",
                                    "events":{"itemClick":"__connectionList_itemClick"},
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "iconField":"icon",
                                          "labelField":"name",
                                          "width":403,
                                          "height":289,
                                          "x":5,
                                          "y":2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton3",
                                    "events":{"click":"___IMPanel_BasicGlowButton3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas4",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"tsViewStack",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentHeight":100,
                                          "percentWidth":100,
                                          "creationPolicy":"all",
                                          "x":0,
                                          "y":30,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":SimpleCanvas,
                                             "id":"_IMPanel_SimpleCanvas5",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":TextArea,
                                                      "id":"teacherInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.backgroundAlpha = 0;
                                                         this.fontSize = 12;
                                                         this.borderStyle = "none";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":38,
                                                            "editable":false,
                                                            "width":337,
                                                            "height":214,
                                                            "x":10
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"reportButton",
                                                      "events":{"click":"__reportButton_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":275,
                                                            "enabled":false,
                                                            "styleName":"BtnStdGreen",
                                                            "x":159,
                                                            "width":52.2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"delTeacherButton",
                                                      "events":{"click":"__delTeacherButton_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":275.1,
                                                            "styleName":"BtnStdRed",
                                                            "x":219.2,
                                                            "width":52.2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"findTeacherButton",
                                                      "events":{"click":"__findTeacherButton_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":275.1,
                                                            "styleName":"BtnStdRed",
                                                            "x":98.8,
                                                            "width":52.2
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":SimpleCanvas,
                                             "id":"_IMPanel_SimpleCanvas6",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"selfTeacherInfo",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.top = "5";
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":DataGrid,
                                                      "id":"stGrid",
                                                      "events":{"itemClick":"__stGrid_itemClick"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.left = "10";
                                                         this.right = "10";
                                                         this.top = "25";
                                                         this.bottom = "50";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "resizableColumns":false,
                                                            "draggableColumns":false,
                                                            "columns":[_IMPanel_DataGridColumn7_i(),_IMPanel_DataGridColumn8_i(),_IMPanel_DataGridColumn9_i()]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_IMPanel_BasicGlowButton7",
                                                      "events":{"click":"___IMPanel_BasicGlowButton7_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":271,
                                                            "styleName":"BtnStdRed",
                                                            "x":159,
                                                            "width":52.2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"upTeacherButton",
                                                      "events":{"click":"__upTeacherButton_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":307,
                                                            "y":5,
                                                            "styleName":"BtnNormalGreen",
                                                            "width":38.6,
                                                            "height":18.2
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tsTabBtn0",
                                    "events":{"click":"__tsTabBtn0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":6,
                                          "y":7,
                                          "styleName":"HorizontalTab",
                                          "width":38.4
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tsTabBtn1",
                                    "events":{"click":"__tsTabBtn1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":43,
                                          "y":7,
                                          "styleName":"HorizontalTab",
                                          "width":38.4
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton11",
                                    "events":{"click":"___IMPanel_BasicGlowButton11_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas7",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":LinkTextArea,
                                    "id":"loverInfoTA",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.color = 16251643;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "editable":false,
                                          "enabled":true,
                                          "selectable":false,
                                          "mouseEnabled":true,
                                          "x":22,
                                          "y":25,
                                          "width":313,
                                          "height":243
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton12",
                                    "events":{"click":"___IMPanel_BasicGlowButton12_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton13",
                                    "events":{"click":"___IMPanel_BasicGlowButton13_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "90";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas8",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":400,
                                          "height":290,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"enemyList",
                                             "events":{"itemClick":"__enemyList_itemClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "width":374,
                                                   "height":274,
                                                   "x":8,
                                                   "y":8,
                                                   "columns":[_IMPanel_DataGridColumn10_i(),_IMPanel_DataGridColumn11_i(),_IMPanel_DataGridColumn12_i(),_IMPanel_DataGridColumn13_i(),_IMPanel_DataGridColumn14_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"newEnemyButton",
                                    "events":{"click":"__newEnemyButton_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "width":20,
                                          "styleName":"BtnAdd",
                                          "height":20,
                                          "x":115
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "events":{"click":"___IMPanel_Button6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "width":20,
                                          "styleName":"BtnReduce",
                                          "height":20,
                                          "x":143
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton14",
                                    "events":{"click":"___IMPanel_BasicGlowButton14_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas9",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":400,
                                          "height":290,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"groupList",
                                             "events":{"itemClick":"__groupList_itemClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "width":374,
                                                   "height":274,
                                                   "x":8,
                                                   "y":8,
                                                   "columns":[_IMPanel_DataGridColumn15_i(),_IMPanel_DataGridColumn16_i(),_IMPanel_DataGridColumn17_i(),_IMPanel_DataGridColumn18_i(),_IMPanel_DataGridColumn19_i(),_IMPanel_DataGridColumn20_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnReqAdd",
                                    "events":{"click":"__btnReqAdd_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnQuery",
                                    "events":{"click":"__btnQuery_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":83,
                                          "y":302,
                                          "styleName":"BtnStdRed",
                                          "width":70,
                                          "height":27,
                                          "visible":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_IMPanel_BasicDelayButton1",
                                    "events":{"click":"___IMPanel_BasicDelayButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":3000,
                                          "x":250,
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_IMPanel_BasicGlowButton17",
                                    "events":{"click":"___IMPanel_BasicGlowButton17_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":330,
                                          "y":305,
                                          "styleName":"BtnStdRed",
                                          "width":70
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "id":"_IMPanel_SimpleCanvas10",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":400,
                                          "height":320,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"brotherList",
                                             "events":{"itemClick":"__brotherList_itemClick"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "none";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "width":374,
                                                   "height":274,
                                                   "x":8,
                                                   "y":8,
                                                   "columns":[_IMPanel_DataGridColumn21_i(),_IMPanel_DataGridColumn22_i(),_IMPanel_DataGridColumn23_i(),_IMPanel_DataGridColumn24_i(),_IMPanel_DataGridColumn25_i()]
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
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":75,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn2",
                  "events":{"click":"__tabBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":125,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn3",
                  "events":{"click":"__tabBtn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":175,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn4",
                  "events":{"click":"__tabBtn4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":225,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn5",
                  "events":{"click":"__tabBtn5_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":275,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn6",
                  "events":{"click":"__tabBtn6_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":325,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn7",
                  "events":{"click":"__tabBtn7_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":375,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":49
                     };
                  }
               })]
            };
         }
      });
      
      public function IMPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 440;
         this.height = 415;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         IMPanel._watcherSetupUtil = param1;
      }
      
      public function __newEnemyButton_click(param1:MouseEvent) : void
      {
         addEnemyBtnClick();
      }
      
      private function getEneNum() : int
      {
         var _loc2_:* = undefined;
         var _loc1_:int = 0;
         if(enemyAR)
         {
            for each(_loc2_ in blackAR)
            {
               if(_loc2_)
               {
                  _loc1_++;
               }
            }
         }
         return _loc1_;
      }
      
      private function _IMPanel_DataGridColumn21_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn21 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn21",_IMPanel_DataGridColumn21);
         return _loc1_;
      }
      
      public function ___IMPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         refreshGroupList();
      }
      
      private function getFriNum() : int
      {
         var _loc2_:* = undefined;
         var _loc1_:int = 0;
         if(friendAR)
         {
            for each(_loc2_ in friendAR)
            {
               if(Boolean(_loc2_) && _loc2_.type == 1)
               {
                  _loc1_++;
               }
            }
         }
         return _loc1_;
      }
      
      public function onInitViewImC(param1:Object) : void
      {
         this.relationShipList = param1;
         updateView();
      }
      
      public function ___IMPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_CHATMANAGER);
      }
      
      public function __tsTabBtn0_click(param1:MouseEvent) : void
      {
         tsTabClick(0);
      }
      
      private function _IMPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn7 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn7",_IMPanel_DataGridColumn7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get enemyList() : DataGrid
      {
         return this._1050415034enemyList;
      }
      
      private function _IMPanel_DataGridColumn20_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn20 = _loc1_;
         _loc1_.dataField = "pos";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn20",_IMPanel_DataGridColumn20);
         return _loc1_;
      }
      
      public function ___IMPanel_Button4_click(param1:MouseEvent) : void
      {
         delBlackBtnClick();
      }
      
      private function updateViewGroupList(param1:Object, param2:ArrayCollection) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         lineGroupList[param1] = param2;
         allGroupAC = new ArrayCollection();
         for(_loc3_ in lineGroupList)
         {
            for each(_loc4_ in lineGroupList[_loc3_])
            {
               allGroupAC.addItem(_loc4_);
            }
         }
         groupList.dataProvider = allGroupAC;
      }
      
      public function __groupList_itemClick(param1:ListEvent) : void
      {
         selectGroupTeam();
      }
      
      [Bindable(event="propertyChange")]
      public function get friendList() : DataGrid
      {
         return this._1756909476friendList;
      }
      
      public function isFriend(param1:String) : Boolean
      {
         if(!friendAR)
         {
            return false;
         }
         if(!friendAR[param1])
         {
            return false;
         }
         return true;
      }
      
      private function menuPop(param1:Object) : void
      {
         var _loc2_:Menu = CustomMenu.createMenu(null,param1);
         _loc2_.show(stage.mouseX,stage.mouseY);
         _loc2_.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get findTeacherButton() : BasicGlowButton
      {
         return this._335479685findTeacherButton;
      }
      
      private function _IMPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "revenge";
         _loc1_.itemRenderer = _IMPanel_ClassFactory1_c();
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn6",_IMPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function isEnemy(param1:String) : Boolean
      {
         if(!enemyAR)
         {
            return false;
         }
         if(!enemyAR[param1])
         {
            return false;
         }
         return true;
      }
      
      public function onFindTeacher(param1:Object) : void
      {
         if(param1)
         {
            if(param1.t == 1)
            {
               _core.addWarn({
                  "warnType":GamePredef.WARN_TYPE_FINDTEACHER,
                  "studentId":param1.i,
                  "studentName":param1.n
               });
            }
            else if(param1.t == 2)
            {
               if(param1.f == 1)
               {
                  _core.sysMsg(Language.IMPANEL_S[30]);
               }
               else if(param1.f == 2)
               {
                  _core.sysMsg(Language.IMPANEL_S[31]);
               }
               else if(param1.f == 3)
               {
                  _core.sysMsg(Language.IMPANEL_S[32]);
               }
               else if(param1.f == 4)
               {
                  _core.sysMsg(Language.IMPANEL_S[33]);
               }
               else if(param1.f == 5)
               {
                  _core.sysMsg(Language.IMPANEL_S[34]);
               }
               else if(param1.f == 6)
               {
                  _core.sysMsg(Language.IMPANEL_S[35]);
               }
               else if(param1.f == 7)
               {
                  _core.sysMsg(Language.IMPANEL_S[36]);
               }
            }
         }
      }
      
      public function set enemyList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1050415034enemyList;
         if(_loc2_ !== param1)
         {
            this._1050415034enemyList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"enemyList",_loc2_,param1));
         }
      }
      
      private function initGroupList() : void
      {
         lineGroupList = {};
         _core.remote.groupListOfMap(_core.player.posMapId);
      }
      
      [Bindable(event="propertyChange")]
      public function get connectionList() : List
      {
         return this._1269957788connectionList;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnReqAdd() : BasicGlowButton
      {
         return this._551112863btnReqAdd;
      }
      
      public function set newBlackButton(param1:Button) : void
      {
         var _loc2_:Object = this._436740689newBlackButton;
         if(_loc2_ !== param1)
         {
            this._436740689newBlackButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newBlackButton",_loc2_,param1));
         }
      }
      
      private function brotherClick() : void
      {
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO}]);
      }
      
      public function __tabBtn5_click(param1:MouseEvent) : void
      {
         tabClick(5);
      }
      
      private function _IMPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "num";
         _loc1_.sortCompareFunction = friendlySortFunc;
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn5",_IMPanel_DataGridColumn5);
         return _loc1_;
      }
      
      public function set friendList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1756909476friendList;
         if(_loc2_ !== param1)
         {
            this._1756909476friendList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"friendList",_loc2_,param1));
         }
      }
      
      private function upTeacher() : void
      {
         _core.remote.nc.call("upTeacher",new Responder(onUpTeacher));
      }
      
      public function __brotherList_itemClick(param1:ListEvent) : void
      {
         brotherClick();
      }
      
      private function blackClick() : void
      {
         menuPop([{"label":GamePredef.MENU_INFO},{"label":GamePredef.GUILD_DEL}]);
      }
      
      public function __upTeacherButton_click(param1:MouseEvent) : void
      {
         upTeacher();
      }
      
      public function ___IMPanel_BasicGlowButton14_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_CHATMANAGER);
      }
      
      private function isSameLine() : Boolean
      {
         return curItem["line"].toString() == (Number(_core.lineInfo.id) + 1).toString() + Language.IMPANEL_U[27];
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            initView();
            if(firstTimeFlag)
            {
               firstTimeFlag = false;
               if(vTabNavigator.selectedIndex == 3)
               {
                  initTS();
               }
            }
         }
      }
      
      public function ___IMPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_CHATMANAGER);
      }
      
      [Bindable(event="propertyChange")]
      public function get selfTeacherInfo() : Label
      {
         return this._260999996selfTeacherInfo;
      }
      
      public function isBlack(param1:String) : Boolean
      {
         if(!blackAR)
         {
            return false;
         }
         if(!blackAR[param1])
         {
            return false;
         }
         return true;
      }
      
      public function set findTeacherButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._335479685findTeacherButton;
         if(_loc2_ !== param1)
         {
            this._335479685findTeacherButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"findTeacherButton",_loc2_,param1));
         }
      }
      
      private function _IMPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "state";
         _loc1_.sortDescending = true;
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn4",_IMPanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function onInitGroupList(param1:Object) : void
      {
         var _loc5_:Object = null;
         var _loc2_:* = param1.lineid;
         var _loc3_:* = param1.grplist.head;
         var _loc4_:ArrayCollection = new ArrayCollection();
         while(_loc3_)
         {
            _loc5_ = {};
            _loc5_["line"] = Number(_loc3_.obj.lineId) + 1 + Language.IMPANEL_U[27];
            _loc5_["map"] = GameData.d[GamePredef.TBL_MAP][_core.player.posMapId].name;
            _loc5_["lid"] = _loc3_.obj.lId;
            _loc5_["lname"] = _loc3_.obj.lName;
            _loc5_["llevel"] = _loc3_.obj.lLevel;
            _loc5_["gnum"] = _loc3_.obj.num;
            _loc5_["pos"] = "(" + Number(_loc3_.obj.posX / 10) + "," + Number(_loc3_.obj.posY / 10) + ")";
            _loc4_.addItem(_loc5_);
            _loc3_ = _loc3_.next;
         }
         updateViewGroupList(_loc2_,_loc4_);
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      public function __delTeacherButton_click(param1:MouseEvent) : void
      {
         Alert.show(Language.IMPANEL_S[61],"",3,this,delTeacher);
      }
      
      public function addEnemyBtnClick() : void
      {
         var _loc1_:InputPanel = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
         _loc1_.showInput(Language.IMPANEL_S[77],Language.IMPANEL_S[78],addEnemy);
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
      
      public function onDelST(param1:Object) : void
      {
         var _loc2_:String = "";
         if(param1)
         {
            if(param1.t == 1)
            {
               if(studentList)
               {
                  delete studentList[param1.i];
                  updateViewTS();
               }
            }
            else if(param1.t == 2)
            {
               _core.player.ti = -1;
               _core.player.tn = "";
               updateViewTS();
            }
            _loc2_ = Language.IMPANEL_S[29];
            _loc2_ = _loc2_.replace("{nameLink}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.i + "|" + param1.n + "|0|0|0]"));
            _core.sysMsg(_loc2_);
         }
      }
      
      public function __stGrid_itemClick(param1:ListEvent) : void
      {
         stClick();
      }
      
      public function set tabBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141553tabBtn6;
         if(_loc2_ !== param1)
         {
            this._1554141553tabBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn6",_loc2_,param1));
         }
      }
      
      public function set tabBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141552tabBtn7;
         if(_loc2_ !== param1)
         {
            this._1554141552tabBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn7",_loc2_,param1));
         }
      }
      
      public function set tabBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      private function reqAddGroup() : void
      {
         var _loc1_:Number = NaN;
         if(isSameLine())
         {
            _loc1_ = ToolKit.getDisByXY(targetX,targetY,_core.player.normalView.posX / 10,_core.player.normalView.posY / 10);
            if(_loc1_ <= GamePredef.VALID_DIS_ADD_GROUP)
            {
               _core.remote.groupRequest(_core.player.id,Number(curItem["lid"]));
            }
            else
            {
               Alert.show(Language.IMPANEL_U[29],"");
            }
         }
         else
         {
            Alert.show(Language.IMPANEL_U[28].toString().replace("{line}",curItem["line"]),"");
         }
      }
      
      private function levelSortFunc(param1:Object, param2:Object) : int
      {
         if(int(param1.level) > int(param2.level))
         {
            return 1;
         }
         if(int(param1.level) == int(param2.level))
         {
            return 0;
         }
         return -1;
      }
      
      public function __findTeacherButton_click(param1:MouseEvent) : void
      {
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.IMPANEL_S[62],"",findTeacher,"");
      }
      
      public function set tabBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141554tabBtn5;
         if(_loc2_ !== param1)
         {
            this._1554141554tabBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn5",_loc2_,param1));
         }
      }
      
      private function openMarriagePanel() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_MARRIAGE);
         if(!_loc1_.visible)
         {
            _loc1_.show();
         }
         else
         {
            _loc1_.hide();
         }
      }
      
      public function ___IMPanel_BasicGlowButton7_click(param1:MouseEvent) : void
      {
         _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.IMPANEL_S[67],"",findStudent,"");
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
      
      [Bindable(event="propertyChange")]
      public function get newFriendButton() : Button
      {
         return this._1966193968newFriendButton;
      }
      
      public function set connectionList(param1:List) : void
      {
         var _loc2_:Object = this._1269957788connectionList;
         if(_loc2_ !== param1)
         {
            this._1269957788connectionList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"connectionList",_loc2_,param1));
         }
      }
      
      private function _IMPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.sortCompareFunction = levelSortFunc;
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn3",_IMPanel_DataGridColumn3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get blackList() : List
      {
         return this._1332059453blackList;
      }
      
      public function set btnReqAdd(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._551112863btnReqAdd;
         if(_loc2_ !== param1)
         {
            this._551112863btnReqAdd = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnReqAdd",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stGrid() : DataGrid
      {
         return this._893258425stGrid;
      }
      
      private function connectionClick() : void
      {
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO},{"label":GamePredef.MENU_ADDF}]);
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
         tsInitialized = false;
         studentList = null;
      }
      
      private function delTeacher(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            if(_core.player.ti > 0)
            {
               _core.remote.delTeacher();
            }
         }
      }
      
      private function addFriBtnClick() : void
      {
         var _loc1_:InputPanel = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
         _loc1_.showInput(Language.IMPANEL_S[10],Language.IMPANEL_S[11],addFriend);
      }
      
      public function __reportButton_click(param1:MouseEvent) : void
      {
         reportTS();
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabClick(4);
      }
      
      private function _IMPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "class";
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn2",_IMPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function initCP(param1:Object) : void
      {
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:String = "";
         if(!param1)
         {
            if(loverInfoTA)
            {
               loverInfoTA.htmlText = Language.IMPANEL_S[56];
            }
         }
         else
         {
            _loc3_ = [];
            if(_core.player.gender == 0)
            {
               _loc3_[0] = param1.femaleId;
               _loc3_[1] = param1.femaleName;
            }
            else
            {
               _loc3_[0] = param1.maleId;
               _loc3_[1] = param1.maleName;
            }
            _core.player.cpid = _loc3_[0];
            _loc4_ = _loc3_[0] + "|" + _loc3_[1];
            if(loverInfoTA)
            {
               _loc5_ = "";
               _loc6_ = String(param1.time).substr(0,10);
               switch(Number(param1.type))
               {
                  case 1:
                     _loc5_ = Language.ACTIVEPANEL_S[42];
                     break;
                  case 2:
                     _loc5_ = Language.ACTIVEPANEL_S[43];
                     break;
                  case 3:
                     _loc5_ = Language.ACTIVEPANEL_S[44];
                     break;
                  default:
                     _loc6_ = "";
               }
               _loc2_ = Language.IMPANEL_S[57];
               _loc2_ = _loc2_.replace("{player.cp}",_loc4_).replace("{arr[1]}",_loc3_[1]);
               _loc2_ += "\n" + Language.IMPANEL_S[87].replace("{dateStr}",_loc6_);
               _loc2_ += "\n" + Language.IMPANEL_S[88].replace("{wedType}",_loc5_);
               loverInfoTA.htmlText = _loc2_;
            }
         }
      }
      
      private function addRelationship(param1:String, param2:int) : void
      {
         _core.remote.addRelationByName(param1,param2);
      }
      
      [Bindable(event="propertyChange")]
      public function get brotherList() : DataGrid
      {
         return this._1413572990brotherList;
      }
      
      [Bindable(event="propertyChange")]
      public function get reportButton() : BasicGlowButton
      {
         return this._117682566reportButton;
      }
      
      public function set selfTeacherInfo(param1:Label) : void
      {
         var _loc2_:Object = this._260999996selfTeacherInfo;
         if(_loc2_ !== param1)
         {
            this._260999996selfTeacherInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfTeacherInfo",_loc2_,param1));
         }
      }
      
      private function friendClick(param1:ListEvent) : void
      {
         if(param1.columnIndex == 5)
         {
            return;
         }
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO},{"label":GamePredef.GUILD_DEL}]);
      }
      
      public function __enemyList_itemClick(param1:ListEvent) : void
      {
         enemyClick(param1);
      }
      
      public function onAddRelationship(param1:Object) : void
      {
         if(!relationShipList)
         {
            relationShipList = {};
         }
         relationShipList[param1.id] = param1;
         updateView();
         if(param1.type == GamePredef.RELATIONSHIP_TYPE[0])
         {
            _core.sysMidNote(GamePredef.SYS_MSG_ADDFRIEND + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.otherId + "|" + param1.name + "|0|0|0]");
         }
         else if(param1.type == GamePredef.RELATIONSHIP_TYPE[1])
         {
            _core.sysMidNote(GamePredef.SYS_MSG_ADDBLACK + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.otherId + "|" + param1.name + "|0|0|0]");
         }
         else if(param1.type == GamePredef.RELATIONSHIP_TYPE[2])
         {
            _core.sysMidNote(GamePredef.SYS_MSG_ADDENEMY + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.otherId + "|" + param1.name + "|0|0|0]");
         }
      }
      
      private function getBlaNum() : int
      {
         var _loc2_:* = undefined;
         var _loc1_:int = 0;
         if(blackAR)
         {
            for each(_loc2_ in blackAR)
            {
               if(_loc2_)
               {
                  _loc1_++;
               }
            }
         }
         return _loc1_;
      }
      
      private function onUpTeacher(param1:Object) : void
      {
      }
      
      public function ___IMPanel_BasicGlowButton13_click(param1:MouseEvent) : void
      {
         openMarriagePanel();
      }
      
      public function ___IMPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_CHATMANAGER);
      }
      
      public function set upTeacherButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1323557593upTeacherButton;
         if(_loc2_ !== param1)
         {
            this._1323557593upTeacherButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"upTeacherButton",_loc2_,param1));
         }
      }
      
      public function onSetClose(param1:String, param2:Number) : void
      {
         if(isFriend(param1) && Boolean(friendList))
         {
            if(param2 < 0)
            {
               friendAR[param1].num -= -param2;
            }
            else
            {
               friendAR[param1].num = param2;
            }
            friendList.dataProvider = friendAC;
         }
      }
      
      private function _IMPanel_DataGridColumn19_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn19 = _loc1_;
         _loc1_.dataField = "gnum";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn19",_IMPanel_DataGridColumn19);
         return _loc1_;
      }
      
      private function traceGroupTeam() : void
      {
         if(isSameLine())
         {
            _core.player.closeTo(targetX * 10,targetY * 10);
         }
         else
         {
            Alert.show(Language.IMPANEL_U[28].toString().replace("{line}",curItem["line"]),"");
         }
      }
      
      public function onReportTS(param1:Object) : void
      {
         var _loc2_:String = "";
         if(param1)
         {
            if(param1.t == 1)
            {
               _loc2_ = Language.IMPANEL_S[49];
               _loc2_ = _loc2_.replace("{charactor}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.i + "|" + param1.n + "|0|0|0]"));
               _core.sysMsg(_loc2_);
               _core.player.tp = param1.tp;
               if(Boolean(studentList) && Boolean(studentList[param1.i]))
               {
                  studentList[param1.i].ll = param1.ll;
               }
               updateViewTS();
            }
            else if(param1.t == 2)
            {
               if(param1.f == 1)
               {
                  _core.sysMsg(Language.IMPANEL_S[51]);
                  _core.player.ll = param1.ll;
                  updateViewTS();
               }
               else if(param1.f == 2)
               {
                  _core.sysMsg(Language.IMPANEL_S[52]);
               }
               else if(param1.f == 3)
               {
                  _core.sysMsg(Language.IMPANEL_S[53]);
               }
               else if(param1.f == 4)
               {
                  _core.sysMsg(Language.IMPANEL_S[54]);
               }
               else if(param1.f == 5)
               {
                  _core.sysMsg(Language.IMPANEL_S[55]);
               }
               else if(param1.f == 6)
               {
                  _core.sysMsg(Language.IMPANEL_S[85]);
               }
            }
         }
      }
      
      private function _IMPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn1",_IMPanel_DataGridColumn1);
         return _loc1_;
      }
      
      private function qeuryGroupInfo() : void
      {
      }
      
      public function ___IMPanel_Button2_click(param1:MouseEvent) : void
      {
         delFriBtnClick();
      }
      
      public function __blackList_itemClick(param1:ListEvent) : void
      {
         blackClick();
      }
      
      [Bindable(event="propertyChange")]
      public function get vTabNavigator() : ViewStack
      {
         return this._163943896vTabNavigator;
      }
      
      public function __newFriendButton_click(param1:MouseEvent) : void
      {
         addFriBtnClick();
      }
      
      private function delRelationship(param1:Number, param2:Number) : void
      {
         var func:Function = null;
         var msgString:String = null;
         var id:Number = param1;
         var type:Number = param2;
         if(relationShipList[id])
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.delRelationship(id);
               }
            };
            msgString = "";
            if(type == GamePredef.RELATIONSHIP_TYPE[0])
            {
               msgString = Language.IMPANEL_S[71].toString();
               msgString = msgString.replace("{relationShipListNum}",relationShipList[id].num);
               msgString = msgString.replace("{relationShipListName}",relationShipList[id].name);
            }
            else if(type == GamePredef.RELATIONSHIP_TYPE[1])
            {
               msgString = Language.IMPANEL_S[83].toString();
               msgString = msgString.replace("{relationShipListName}",relationShipList[id].name);
            }
            else if(type == GamePredef.RELATIONSHIP_TYPE[2])
            {
               msgString = Language.IMPANEL_S[82].toString();
               msgString = msgString.replace("{relationShipListName}",relationShipList[id].name);
            }
            Alert.show(msgString,"",Alert.YES | Alert.NO,this,func);
         }
      }
      
      public function delEnemyBtnClick() : void
      {
         if(enemyList.selectedItem)
         {
            delRelationship(enemyList.selectedItem.id,GamePredef.RELATIONSHIP_TYPE[2]);
         }
         else
         {
            Alert.show(Language.IMPANEL_S[81]);
         }
      }
      
      public function set loverInfoTA(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._554409723loverInfoTA;
         if(_loc2_ !== param1)
         {
            this._554409723loverInfoTA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loverInfoTA",_loc2_,param1));
         }
      }
      
      public function __friendList_itemClick(param1:ListEvent) : void
      {
         friendClick(param1);
      }
      
      public function __newBlackButton_click(param1:MouseEvent) : void
      {
         addBlackBtnClick();
      }
      
      private function _IMPanel_DataGridColumn18_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn18 = _loc1_;
         _loc1_.dataField = "llevel";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn18",_IMPanel_DataGridColumn18);
         return _loc1_;
      }
      
      public function onDelRelationship(param1:Number) : void
      {
         if(relationShipList[param1].type == GamePredef.RELATIONSHIP_TYPE[0])
         {
            _core.sysMidNote(GamePredef.SYS_MSG_DELFRIEND + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + relationShipList[param1].otherId + "|" + relationShipList[param1].name + "|0|0|0]");
         }
         else if(relationShipList[param1].type == GamePredef.RELATIONSHIP_TYPE[1])
         {
            _core.sysMidNote(GamePredef.SYS_MSG_DELBLACK + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + relationShipList[param1].otherId + "|" + relationShipList[param1].name + "|0|0|0]");
         }
         else if(relationShipList[param1].type == GamePredef.RELATIONSHIP_TYPE[2])
         {
            _core.sysMidNote(GamePredef.SYS_MSG_DELENEMY + "[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + relationShipList[param1].otherId + "|" + relationShipList[param1].name + "|0|0|0]");
         }
         delete relationShipList[param1];
         updateView();
      }
      
      public function __btnReqAdd_click(param1:MouseEvent) : void
      {
         reqAddGroup();
      }
      
      public function updateViewTS() : void
      {
         var _loc3_:int = 0;
         var _loc4_:ArrayCollection = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc1_:String = "";
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(_core.player.ti > 0)
         {
            _loc3_ = int(_core.player.ll.split("|")[0]);
            teacherInfo.htmlText = Language.IMPANEL_S[16] + _core.player.tn + "<br>" + Language.IMPANEL_S[17] + _loc3_ + "<br>" + Language.IMPANEL_S[18] + _core.player.level + "<br>";
            reportButton.visible = true;
            if(_core.player.level > _loc3_)
            {
               reportButton.enabled = true;
            }
            else
            {
               reportButton.enabled = false;
            }
            delTeacherButton.visible = true;
            delTeacherButton.includeInLayout = true;
            findTeacherButton.visible = false;
            findTeacherButton.includeInLayout = false;
         }
         else
         {
            teacherInfo.htmlText = Language.IMPANEL_S[19];
            reportButton.visible = false;
            delTeacherButton.visible = false;
            delTeacherButton.includeInLayout = false;
            findTeacherButton.visible = true;
            findTeacherButton.includeInLayout = true;
         }
         _loc1_ = Language.IMPANEL_S[20];
         _loc1_ = _loc1_.replace("{teacherTitle}",GamePredef.TEACHER_TITLE[_core.player.tl]);
         _loc1_ = _loc1_.replace("{player.tp}",_core.player.tp);
         selfTeacherInfo.htmlText = _loc1_.replace("{studentNum}",GamePredef.STUDENT_NUM[_core.player.tl]);
         var _loc2_:String = "";
         if(_core.player.tl > 0 && _core.player.tl < 6)
         {
            upTeacherButton.visible = true;
            switch(_core.player.tl)
            {
               case 1:
                  _loc2_ = Language.IMPANEL_S[23];
                  if(_core.player.tp >= 200000)
                  {
                     upTeacherButton.enabled = true;
                  }
                  else
                  {
                     upTeacherButton.enabled = false;
                  }
                  break;
               case 2:
                  _loc2_ = Language.IMPANEL_S[24];
                  if(_core.player.tp >= 800000)
                  {
                     upTeacherButton.enabled = true;
                  }
                  else
                  {
                     upTeacherButton.enabled = false;
                  }
                  break;
               case 3:
                  _loc2_ = Language.IMPANEL_S[25];
                  if(_core.player.tp >= 20000000)
                  {
                     upTeacherButton.enabled = true;
                  }
                  else
                  {
                     upTeacherButton.enabled = false;
                  }
                  break;
               case 4:
                  _loc2_ = Language.IMPANEL_S[26];
                  if(_core.player.tp >= 200000000)
                  {
                     upTeacherButton.enabled = true;
                  }
                  else
                  {
                     upTeacherButton.enabled = false;
                  }
                  break;
               case 5:
                  _loc2_ = Language.IMPANEL_S[27];
                  if(_core.player.tp >= 1000000000)
                  {
                     upTeacherButton.enabled = true;
                  }
                  else
                  {
                     upTeacherButton.enabled = false;
                  }
                  break;
               case 6:
                  upTeacherButton.visible = true;
            }
         }
         else
         {
            upTeacherButton.visible = false;
         }
         upTeacherButton.toolTip = _loc2_;
         if(studentList)
         {
            _loc4_ = new ArrayCollection();
            for each(_loc5_ in studentList)
            {
               if(_loc5_)
               {
                  _loc6_ = _loc5_.ll.split("|");
                  _loc4_.addItem({
                     "data":_loc5_,
                     "name":_loc5_.name,
                     "lastLevel":_loc6_[0],
                     "exp":_loc6_[1],
                     "honor":_loc5_.honor
                  });
               }
            }
            stGrid.dataProvider = _loc4_;
         }
         else
         {
            stGrid.dataProvider = null;
         }
      }
      
      public function set tsTabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._541082870tsTabBtn0;
         if(_loc2_ !== param1)
         {
            this._541082870tsTabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tsTabBtn0",_loc2_,param1));
         }
      }
      
      public function set tsTabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._541082869tsTabBtn1;
         if(_loc2_ !== param1)
         {
            this._541082869tsTabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tsTabBtn1",_loc2_,param1));
         }
      }
      
      public function __connectionList_itemClick(param1:ListEvent) : void
      {
         connectionClick();
      }
      
      private function _IMPanel_DataGridColumn17_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn17 = _loc1_;
         _loc1_.dataField = "lname";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn17",_IMPanel_DataGridColumn17);
         return _loc1_;
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabClick(3);
      }
      
      public function set newEnemyButton(param1:Button) : void
      {
         var _loc2_:Object = this._96327450newEnemyButton;
         if(_loc2_ !== param1)
         {
            this._96327450newEnemyButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newEnemyButton",_loc2_,param1));
         }
      }
      
      private function findStudent(param1:String) : void
      {
         if(_core.player.tl > 0)
         {
            _core.remote.call("findStudent",new Responder(onFindStudent),param1);
         }
         else
         {
            _core.sysMsg(Language.IMPANEL_S[37]);
         }
      }
      
      public function set tsViewStack(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1302685476tsViewStack;
         if(_loc2_ !== param1)
         {
            this._1302685476tsViewStack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tsViewStack",_loc2_,param1));
         }
      }
      
      public function onInitTS(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            studentList = {};
            for each(_loc2_ in param1)
            {
               if(_loc2_)
               {
                  studentList[_loc2_.id] = _loc2_;
               }
            }
            tsInitialized = true;
            updateViewTS();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newBlackButton() : Button
      {
         return this._436740689newBlackButton;
      }
      
      public function ___IMPanel_BasicGlowButton12_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_CHATMANAGER);
      }
      
      public function set newFriendButton(param1:Button) : void
      {
         var _loc2_:Object = this._1966193968newFriendButton;
         if(_loc2_ !== param1)
         {
            this._1966193968newFriendButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newFriendButton",_loc2_,param1));
         }
      }
      
      private function _IMPanel_DataGridColumn16_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn16 = _loc1_;
         _loc1_.width = 70;
         _loc1_.dataField = "map";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn16",_IMPanel_DataGridColumn16);
         return _loc1_;
      }
      
      public function set blackList(param1:List) : void
      {
         var _loc2_:Object = this._1332059453blackList;
         if(_loc2_ !== param1)
         {
            this._1332059453blackList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"blackList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      private function addBlackBtnClick() : void
      {
         var _loc1_:InputPanel = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
         _loc1_.showInput(Language.IMPANEL_S[12],Language.IMPANEL_S[13],addBlack);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicGlowButton
      {
         return this._1554141556tabBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicGlowButton
      {
         return this._1554141555tabBtn4;
      }
      
      public function set stGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._893258425stGrid;
         if(_loc2_ !== param1)
         {
            this._893258425stGrid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stGrid",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn6() : BasicGlowButton
      {
         return this._1554141553tabBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn7() : BasicGlowButton
      {
         return this._1554141552tabBtn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function tsTabClick(param1:uint) : void
      {
         tsViewStack.selectedIndex = param1;
         tsTabBtn0.selected = false;
         tsTabBtn1.selected = false;
         this["tsTabBtn" + param1].selected = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn5() : BasicGlowButton
      {
         return this._1554141554tabBtn5;
      }
      
      public function addFriend(param1:String) : void
      {
         var _loc2_:String = "";
         if(isBlack(param1))
         {
            Alert.show(Language.IMPANEL_S[0],"",Alert.OK);
         }
         else
         {
            if(!friendAR)
            {
               friendAR = {};
            }
            if(!friendAR[param1])
            {
               if(getFriNum() < GamePredef.RELATIONSHIP_SIZE[0])
               {
                  addRelationship(param1,GamePredef.RELATIONSHIP_TYPE[0]);
               }
               else
               {
                  _loc2_ = Language.IMPANEL_S[1];
                  _loc2_ = _loc2_.replace("{num}",GamePredef.RELATIONSHIP_SIZE[0]);
                  Alert.show(_loc2_,"",Alert.OK);
               }
            }
            else
            {
               Alert.show(Language.IMPANEL_S[3],"",Alert.OK);
            }
         }
      }
      
      public function ___IMPanel_BasicGlowButton17_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private function _IMPanel_DataGridColumn15_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn15 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "line";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn15",_IMPanel_DataGridColumn15);
         return _loc1_;
      }
      
      private function reportTS() : void
      {
         var _loc1_:int = 0;
         if(_core.player.ti > 0)
         {
            _loc1_ = int(_core.player.ll.split("|")[0]);
            if(_core.player.level > _loc1_)
            {
               _core.remote.call("reportTS",new Responder(onReportTS));
            }
         }
      }
      
      public function addConnectionAC(param1:Object) : void
      {
         if(connectionAR[param1.id] == null)
         {
            if(connectionAC.length < GamePredef.RELATIONSHIP_SIZE[2])
            {
               connectionAC.addItem(param1);
               connectionAR[param1.id] = param1;
            }
            else
            {
               connectionAR[connectionAC.source.shift().id] = null;
               delete connectionAR[param1.id];
               connectionAC.addItem(param1);
               connectionAR[param1.id] = param1;
            }
            updateView();
         }
      }
      
      public function ___IMPanel_Button6_click(param1:MouseEvent) : void
      {
         delEnemyBtnClick();
      }
      
      private function _IMPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicTitleCanvas1.text = param1;
         },"_IMPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas1.label = param1;
         },"_IMPanel_SimpleCanvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn1.headerText = param1;
         },"_IMPanel_DataGridColumn1.headerText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn2.headerText = param1;
         },"_IMPanel_DataGridColumn2.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[73];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn3.headerText = param1;
         },"_IMPanel_DataGridColumn3.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[74];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn4.headerText = param1;
         },"_IMPanel_DataGridColumn4.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn5.headerText = param1;
         },"_IMPanel_DataGridColumn5.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[90];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn6.headerText = param1;
         },"_IMPanel_DataGridColumn6.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton1.label = param1;
         },"_IMPanel_BasicGlowButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas2.label = param1;
         },"_IMPanel_SimpleCanvas2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton2.label = param1;
         },"_IMPanel_BasicGlowButton2.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas3.label = param1;
         },"_IMPanel_SimpleCanvas3.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton3.label = param1;
         },"_IMPanel_BasicGlowButton3.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas4.label = param1;
         },"_IMPanel_SimpleCanvas4.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas5.label = param1;
         },"_IMPanel_SimpleCanvas5.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reportButton.label = param1;
         },"reportButton.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            delTeacherButton.label = param1;
         },"delTeacherButton.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            findTeacherButton.label = param1;
         },"findTeacherButton.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas6.label = param1;
         },"_IMPanel_SimpleCanvas6.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[63];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn7.headerText = param1;
         },"_IMPanel_DataGridColumn7.headerText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[64];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn8.headerText = param1;
         },"_IMPanel_DataGridColumn8.headerText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[65];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn9.headerText = param1;
         },"_IMPanel_DataGridColumn9.headerText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton7.label = param1;
         },"_IMPanel_BasicGlowButton7.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[68];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upTeacherButton.toolTip = param1;
         },"upTeacherButton.toolTip");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            upTeacherButton.label = param1;
         },"upTeacherButton.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tsTabBtn0.label = param1;
         },"tsTabBtn0.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tsTabBtn1.label = param1;
         },"tsTabBtn1.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton11.label = param1;
         },"_IMPanel_BasicGlowButton11.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas7.label = param1;
         },"_IMPanel_SimpleCanvas7.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton12.label = param1;
         },"_IMPanel_BasicGlowButton12.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton13.label = param1;
         },"_IMPanel_BasicGlowButton13.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas8.label = param1;
         },"_IMPanel_SimpleCanvas8.label");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[75];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn10.headerText = param1;
         },"_IMPanel_DataGridColumn10.headerText");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn11.headerText = param1;
         },"_IMPanel_DataGridColumn11.headerText");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[73];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn12.headerText = param1;
         },"_IMPanel_DataGridColumn12.headerText");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[74];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn13.headerText = param1;
         },"_IMPanel_DataGridColumn13.headerText");
         result[35] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[76];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn14.headerText = param1;
         },"_IMPanel_DataGridColumn14.headerText");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton14.label = param1;
         },"_IMPanel_BasicGlowButton14.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas9.label = param1;
         },"_IMPanel_SimpleCanvas9.label");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn15.headerText = param1;
         },"_IMPanel_DataGridColumn15.headerText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn16.headerText = param1;
         },"_IMPanel_DataGridColumn16.headerText");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn17.headerText = param1;
         },"_IMPanel_DataGridColumn17.headerText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn18.headerText = param1;
         },"_IMPanel_DataGridColumn18.headerText");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn19.headerText = param1;
         },"_IMPanel_DataGridColumn19.headerText");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn20.headerText = param1;
         },"_IMPanel_DataGridColumn20.headerText");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnReqAdd.label = param1;
         },"btnReqAdd.label");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnQuery.label = param1;
         },"btnQuery.label");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicDelayButton1.label = param1;
         },"_IMPanel_BasicDelayButton1.label");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_BasicGlowButton17.label = param1;
         },"_IMPanel_BasicGlowButton17.label");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_SimpleCanvas10.label = param1;
         },"_IMPanel_SimpleCanvas10.label");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[89];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn21.headerText = param1;
         },"_IMPanel_DataGridColumn21.headerText");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn22.headerText = param1;
         },"_IMPanel_DataGridColumn22.headerText");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[73];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn23.headerText = param1;
         },"_IMPanel_DataGridColumn23.headerText");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[74];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn24.headerText = param1;
         },"_IMPanel_DataGridColumn24.headerText");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_S[60];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _IMPanel_DataGridColumn25.headerText = param1;
         },"_IMPanel_DataGridColumn25.headerText");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn5.label = param1;
         },"tabBtn5.label");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn6.label = param1;
         },"tabBtn6.label");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.IMPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn7.label = param1;
         },"tabBtn7.label");
         result[62] = binding;
         return result;
      }
      
      public function set delTeacherButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1185989481delTeacherButton;
         if(_loc2_ !== param1)
         {
            this._1185989481delTeacherButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"delTeacherButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get upTeacherButton() : BasicGlowButton
      {
         return this._1323557593upTeacherButton;
      }
      
      public function enemyClick(param1:ListEvent) : void
      {
         if(param1.columnIndex == 4)
         {
            return;
         }
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO},{"label":GamePredef.GUILD_DEL}]);
      }
      
      public function onFindStudent(param1:Object) : void
      {
         if(param1)
         {
            if(param1.t == 1)
            {
               if(param1.f == 1)
               {
                  _core.sysMsg(Language.IMPANEL_S[38]);
               }
               else if(param1.f == 2)
               {
                  _core.sysMsg(Language.IMPANEL_S[39]);
               }
               else if(param1.f == 3)
               {
                  _core.sysMsg(Language.IMPANEL_S[40]);
               }
               else if(param1.f == 4)
               {
                  _core.sysMsg(Language.IMPANEL_S[41]);
               }
               else if(param1.f == 5)
               {
                  _core.sysMsg(Language.IMPANEL_S[42]);
               }
               else if(param1.f == 6)
               {
                  _core.sysMsg(Language.IMPANEL_S[43]);
               }
               else if(param1.f == 7)
               {
                  _core.sysMsg(Language.IMPANEL_S[44]);
               }
               else if(param1.f == 8)
               {
                  _core.sysMsg(Language.IMPANEL_S[86]);
               }
            }
            else if(param1.t == 2)
            {
               _core.addWarn({
                  "warnType":GamePredef.WARN_TYPE_FINDSTUDENT,
                  "teacherId":param1.i,
                  "teacherName":param1.n
               });
            }
         }
      }
      
      private function _IMPanel_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn14 = _loc1_;
         _loc1_.dataField = "revenge";
         _loc1_.itemRenderer = _IMPanel_ClassFactory2_c();
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn14",_IMPanel_DataGridColumn14);
         return _loc1_;
      }
      
      private function tabClick(param1:uint) : void
      {
         vTabNavigator.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < panelNum)
         {
            this["tabBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["tabBtn" + param1].selected = true;
         if(param1 == 3)
         {
            if(!tsInitialized)
            {
               initTS();
            }
            else
            {
               updateViewTS();
            }
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get loverInfoTA() : LinkTextArea
      {
         return this._554409723loverInfoTA;
      }
      
      public function set brotherList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1413572990brotherList;
         if(_loc2_ !== param1)
         {
            this._1413572990brotherList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"brotherList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tsTabBtn0() : BasicGlowButton
      {
         return this._541082870tsTabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tsTabBtn1() : BasicGlowButton
      {
         return this._541082869tsTabBtn1;
      }
      
      public function set reportButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._117682566reportButton;
         if(_loc2_ !== param1)
         {
            this._117682566reportButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reportButton",_loc2_,param1));
         }
      }
      
      private function _IMPanel_DataGridColumn25_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn25 = _loc1_;
         _loc1_.dataField = "num";
         _loc1_.sortCompareFunction = friendlySortFunc;
         _loc1_.width = 65;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn25",_IMPanel_DataGridColumn25);
         return _loc1_;
      }
      
      private function wisperChat(param1:String) : void
      {
         _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(param1);
      }
      
      public function updateView() : void
      {
         var _loc2_:* = undefined;
         friendAR = {};
         friendAC = new ArrayCollection();
         blackAR = {};
         blackAC = new ArrayCollection();
         enemyAR = {};
         enemyAC = new ArrayCollection();
         tutorAR = {};
         tutorAC = new ArrayCollection();
         brotherAC = new ArrayCollection();
         if(relationShipList != null)
         {
            for each(_loc2_ in relationShipList)
            {
               if(_loc2_ != undefined && _loc2_ != null)
               {
                  _loc2_["level"] = null;
                  _loc2_["class"] = null;
                  if(_loc2_.type == GamePredef.RELATIONSHIP_TYPE[0] || _loc2_.type == GamePredef.RELATIONSHIP_TYPE[5])
                  {
                     if(_loc2_.data)
                     {
                        _loc2_["level"] = String(_core.basic.expToLevel(_loc2_["data"]["exp"]));
                        _loc2_["class"] = GameData.d[GamePredef.TBL_CLASS][_loc2_["data"]["classId"]].name;
                        _loc2_["state"] = Language.IMPANEL_S[69];
                     }
                     else
                     {
                        _loc2_["state"] = Language.IMPANEL_S[70];
                     }
                     _loc2_["isFriend"] = true;
                     _loc2_["revenge"] = _loc2_;
                     friendAC.addItem(_loc2_);
                     friendAR[_loc2_.name] = _loc2_;
                  }
                  else if(_loc2_.type == GamePredef.RELATIONSHIP_TYPE[1])
                  {
                     blackAC.addItem(_loc2_);
                     blackAR[_loc2_.name] = _loc2_;
                  }
                  else if(_loc2_.type == GamePredef.RELATIONSHIP_TYPE[2])
                  {
                     if(_loc2_.data)
                     {
                        _loc2_["level"] = String(_core.basic.expToLevel(_loc2_["data"]["exp"]));
                        _loc2_["class"] = GameData.d[GamePredef.TBL_CLASS][_loc2_["data"]["classId"]].name;
                        _loc2_["state"] = Language.IMPANEL_S[69];
                     }
                     else
                     {
                        _loc2_["state"] = Language.IMPANEL_S[70];
                     }
                     _loc2_["revenge"] = _loc2_;
                     enemyAC.addItem(_loc2_);
                     enemyAR[_loc2_.name] = _loc2_;
                  }
                  else if(_loc2_.type == GamePredef.RELATIONSHIP_TYPE[4])
                  {
                     if(_loc2_.data)
                     {
                        _loc2_["level"] = String(_core.basic.expToLevel(_loc2_["data"]["exp"]));
                        _loc2_["class"] = GameData.d[GamePredef.TBL_CLASS][_loc2_["data"]["classId"]].name;
                        _loc2_["state"] = Language.IMPANEL_S[69];
                     }
                     else
                     {
                        _loc2_["state"] = Language.IMPANEL_S[70];
                     }
                     tutorAC.addItem(_loc2_);
                     tutorAR[_loc2_.name] = _loc2_;
                  }
                  if(_loc2_.type == GamePredef.RELATIONSHIP_TYPE[5])
                  {
                     if(_loc2_.data)
                     {
                        _loc2_["level"] = String(_core.basic.expToLevel(_loc2_["data"]["exp"]));
                        _loc2_["class"] = GameData.d[GamePredef.TBL_CLASS][_loc2_["data"]["classId"]].name;
                        _loc2_["state"] = Language.IMPANEL_S[69];
                     }
                     else
                     {
                        _loc2_["state"] = Language.IMPANEL_S[70];
                     }
                     brotherAC.addItem(_loc2_);
                  }
               }
            }
         }
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         friendList.dataProvider = friendAC;
         blackList.dataProvider = blackAC;
         connectionList.dataProvider = connectionAC;
         enemyList.dataProvider = enemyAC;
         brotherList.dataProvider = brotherAC;
         var _loc1_:DataGridEvent = new DataGridEvent(DataGridEvent.HEADER_RELEASE,false,true,3,"state",0,null,null,0);
         friendList.dispatchEvent(_loc1_);
      }
      
      private function _IMPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.IMPANEL_U[14];
         _loc1_ = Language.IMPANEL_U[7];
         _loc1_ = Language.IMPANEL_S[59];
         _loc1_ = Language.IMPANEL_S[72];
         _loc1_ = Language.IMPANEL_S[73];
         _loc1_ = Language.IMPANEL_S[74];
         _loc1_ = Language.IMPANEL_S[60];
         _loc1_ = Language.IMPANEL_S[90];
         _loc1_ = Language.IMPANEL_U[15];
         _loc1_ = Language.IMPANEL_U[8];
         _loc1_ = Language.IMPANEL_U[15];
         _loc1_ = Language.IMPANEL_U[9];
         _loc1_ = Language.IMPANEL_U[15];
         _loc1_ = Language.IMPANEL_U[10];
         _loc1_ = Language.IMPANEL_U[5];
         _loc1_ = Language.IMPANEL_U[0];
         _loc1_ = Language.IMPANEL_U[1];
         _loc1_ = Language.IMPANEL_U[2];
         _loc1_ = Language.IMPANEL_U[6];
         _loc1_ = Language.IMPANEL_S[63];
         _loc1_ = Language.IMPANEL_S[64];
         _loc1_ = Language.IMPANEL_S[65];
         _loc1_ = Language.IMPANEL_U[3];
         _loc1_ = Language.IMPANEL_S[68];
         _loc1_ = Language.IMPANEL_U[4];
         _loc1_ = Language.IMPANEL_U[5];
         _loc1_ = Language.IMPANEL_U[6];
         _loc1_ = Language.IMPANEL_U[15];
         _loc1_ = Language.IMPANEL_U[11];
         _loc1_ = Language.IMPANEL_U[15];
         _loc1_ = Language.IMPANEL_U[32];
         _loc1_ = Language.IMPANEL_U[12];
         _loc1_ = Language.IMPANEL_S[75];
         _loc1_ = Language.IMPANEL_S[72];
         _loc1_ = Language.IMPANEL_S[73];
         _loc1_ = Language.IMPANEL_S[74];
         _loc1_ = Language.IMPANEL_S[76];
         _loc1_ = Language.IMPANEL_U[15];
         _loc1_ = Language.IMPANEL_U[31];
         _loc1_ = Language.IMPANEL_U[17];
         _loc1_ = Language.IMPANEL_U[18];
         _loc1_ = Language.IMPANEL_U[19];
         _loc1_ = Language.IMPANEL_U[20];
         _loc1_ = Language.IMPANEL_U[21];
         _loc1_ = Language.IMPANEL_U[22];
         _loc1_ = Language.IMPANEL_U[23];
         _loc1_ = Language.IMPANEL_U[25];
         _loc1_ = Language.IMPANEL_U[24];
         _loc1_ = Language.IMPANEL_U[26];
         _loc1_ = Language.IMPANEL_U[33];
         _loc1_ = Language.IMPANEL_S[89];
         _loc1_ = Language.IMPANEL_S[72];
         _loc1_ = Language.IMPANEL_S[73];
         _loc1_ = Language.IMPANEL_S[74];
         _loc1_ = Language.IMPANEL_S[60];
         _loc1_ = Language.IMPANEL_U[7];
         _loc1_ = Language.IMPANEL_U[8];
         _loc1_ = Language.IMPANEL_U[9];
         _loc1_ = Language.IMPANEL_U[10];
         _loc1_ = Language.IMPANEL_U[11];
         _loc1_ = Language.IMPANEL_U[12];
         _loc1_ = Language.IMPANEL_U[16];
         _loc1_ = Language.IMPANEL_U[33];
      }
      
      public function ___IMPanel_BasicGlowButton11_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_CHATMANAGER);
      }
      
      [Bindable(event="propertyChange")]
      public function get newEnemyButton() : Button
      {
         return this._96327450newEnemyButton;
      }
      
      private function refreshGroupList() : void
      {
         initGroupList();
      }
      
      [Bindable(event="propertyChange")]
      public function get tsViewStack() : ViewStack
      {
         return this._1302685476tsViewStack;
      }
      
      private function _IMPanel_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn13 = _loc1_;
         _loc1_.dataField = "state";
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn13",_IMPanel_DataGridColumn13);
         return _loc1_;
      }
      
      public function __btnQuery_click(param1:MouseEvent) : void
      {
         qeuryGroupInfo();
      }
      
      public function __tabBtn7_click(param1:MouseEvent) : void
      {
         tabClick(7);
      }
      
      private function friendlySortFunc(param1:Object, param2:Object) : int
      {
         if(int(param1.num) > int(param2.num))
         {
            return 1;
         }
         if(int(param1.num) == int(param2.num))
         {
            return 0;
         }
         return -1;
      }
      
      private function _IMPanel_DataGridColumn24_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn24 = _loc1_;
         _loc1_.dataField = "state";
         _loc1_.sortDescending = true;
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn24",_IMPanel_DataGridColumn24);
         return _loc1_;
      }
      
      private function delBlackBtnClick() : void
      {
         if(blackList.selectedItem)
         {
            delRelationship(blackList.selectedItem.id,GamePredef.RELATIONSHIP_TYPE[1]);
         }
         else
         {
            Alert.show(Language.IMPANEL_S[15]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get delTeacherButton() : BasicGlowButton
      {
         return this._1185989481delTeacherButton;
      }
      
      public function addEnemy(param1:String) : void
      {
         var _loc2_:String = null;
         if(!isEnemy(param1))
         {
            if(getEneNum() < GamePredef.RELATIONSHIP_SIZE[3])
            {
               addRelationship(param1,GamePredef.RELATIONSHIP_TYPE[2]);
            }
            else
            {
               _loc2_ = Language.IMPANEL_S[80].toString().replace("{number}",GamePredef.RELATIONSHIP_SIZE[3]);
               Alert.show(_loc2_,"",Alert.OK);
            }
         }
         else
         {
            Alert.show(Language.IMPANEL_S[79],"",Alert.OK);
         }
      }
      
      private function _IMPanel_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn12 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.sortCompareFunction = levelSortFunc;
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn12",_IMPanel_DataGridColumn12);
         return _loc1_;
      }
      
      public function __tsTabBtn1_click(param1:MouseEvent) : void
      {
         tsTabClick(1);
      }
      
      public function set teacherInfo(param1:TextArea) : void
      {
         var _loc2_:Object = this._1659364272teacherInfo;
         if(_loc2_ !== param1)
         {
            this._1659364272teacherInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teacherInfo",_loc2_,param1));
         }
      }
      
      public function set groupList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1483226179groupList;
         if(_loc2_ !== param1)
         {
            this._1483226179groupList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupList",_loc2_,param1));
         }
      }
      
      public function onAddRelationByName(param1:Number, param2:int) : void
      {
         if(param1 == -1)
         {
            Alert.show(Language.IMPANEL_S[9],"",Alert.OK);
         }
      }
      
      private function _IMPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = EnemyHBox;
         return _loc1_;
      }
      
      private function _IMPanel_DataGridColumn23_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn23 = _loc1_;
         _loc1_.dataField = "level";
         _loc1_.sortCompareFunction = levelSortFunc;
         _loc1_.width = 50;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn23",_IMPanel_DataGridColumn23);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:IMPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _IMPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_IMPanelWatcherSetupUtil");
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
      
      private function initTS() : void
      {
         _core.remote.initTS();
      }
      
      private function menuClickHandler(param1:MenuEvent) : void
      {
         if(vTabNavigator.selectedIndex == 0)
         {
            initView();
            if(!friendList.selectedItem)
            {
               return;
            }
            if(param1.index == 0)
            {
               wisperChat(friendList.selectedItem.name);
            }
            else if(param1.index == 1)
            {
               ChatPanelUtil.createChatPanel(friendList.selectedItem.otherId);
            }
            else if(param1.index == 2)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(friendList.selectedItem.otherId);
            }
            else if(param1.index == 3)
            {
               delRelationship(friendList.selectedItem.id,GamePredef.RELATIONSHIP_TYPE[0]);
            }
         }
         else if(vTabNavigator.selectedIndex == 1)
         {
            if(!blackList.selectedItem)
            {
               return;
            }
            if(param1.index == 0)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(blackList.selectedItem.otherId);
            }
            else if(param1.index == 1)
            {
               delRelationship(blackList.selectedItem.id,GamePredef.RELATIONSHIP_TYPE[1]);
            }
         }
         else if(vTabNavigator.selectedIndex == 2)
         {
            if(param1.index == 0)
            {
               wisperChat(connectionList.selectedItem.name);
            }
            else if(param1.index == 1)
            {
               ChatPanelUtil.createChatPanel(connectionList.selectedItem.id);
            }
            else if(param1.index == 2)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(connectionList.selectedItem.id);
            }
            else if(param1.index == 3)
            {
               addFriend(connectionList.selectedItem.name);
            }
         }
         else if(vTabNavigator.selectedIndex == 3)
         {
            if(param1.index == 0)
            {
               _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(stGrid.selectedItem.name);
            }
            else if(param1.index == 1)
            {
               ChatPanelUtil.createChatPanel(stGrid.selectedItem.data.id);
            }
            else if(param1.index == 2)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(stGrid.selectedItem.data.id);
            }
            else if(param1.item.flag == "delST")
            {
               Alert.show(Language.IMPANEL_S[8],"",3,this,delST);
            }
         }
         else if(vTabNavigator.selectedIndex == 5)
         {
            initView();
            if(!enemyList.selectedItem)
            {
               return;
            }
            if(param1.index == 0)
            {
               wisperChat(enemyList.selectedItem.name);
            }
            else if(param1.index == 1)
            {
               ChatPanelUtil.createChatPanel(enemyList.selectedItem.otherId);
            }
            else if(param1.index == 2)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(enemyList.selectedItem.otherId);
            }
            else if(param1.index == 3)
            {
               delRelationship(enemyList.selectedItem.id,GamePredef.RELATIONSHIP_TYPE[2]);
            }
         }
         else if(vTabNavigator.selectedIndex == 6)
         {
            traceGroupTeam();
         }
         else if(vTabNavigator.selectedIndex == 7)
         {
            initView();
            if(!brotherList.selectedItem)
            {
               return;
            }
            if(param1.index == 0)
            {
               wisperChat(brotherList.selectedItem.name);
            }
            else if(param1.index == 1)
            {
               ChatPanelUtil.createChatPanel(brotherList.selectedItem.otherId);
            }
            else if(param1.index == 2)
            {
               _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(brotherList.selectedItem.otherId);
            }
            else if(param1.index == 3)
            {
            }
         }
         Menu(param1.target).removeEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
      }
      
      private function addRelationByName(param1:String, param2:int) : void
      {
         _core.remote.addRelationByName(param1,param2);
      }
      
      private function stClick() : void
      {
         var _loc1_:Array = null;
         if(Boolean(stGrid) && Boolean(stGrid.selectedItem))
         {
            _loc1_ = [];
            _loc1_.push({"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO});
            _loc1_.push({"type":"separator"},{
               "label":Language.IMPANEL_S[28],
               "flag":"delST"
            });
            menuPop(_loc1_);
         }
      }
      
      private function delST(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES && Boolean(stGrid.selectedItem))
         {
            _core.remote.delST(stGrid.selectedItem.data.id);
         }
      }
      
      private function _IMPanel_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn11 = _loc1_;
         _loc1_.dataField = "class";
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn11",_IMPanel_DataGridColumn11);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get teacherInfo() : TextArea
      {
         return this._1659364272teacherInfo;
      }
      
      public function onMakeTS(param1:Object) : void
      {
         var _loc2_:String = "";
         if(param1)
         {
            if(param1.t == 1)
            {
               _loc2_ = Language.IMPANEL_S[45];
               _loc2_ = _loc2_.replace("{charactor}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.i + "|" + param1.n + "|0|0|0]"));
               _core.sysMsg(_loc2_);
               if(!studentList)
               {
                  studentList = {};
               }
               studentList[param1.i] = {};
               studentList[param1.i].id = param1.i;
               studentList[param1.i].name = param1.n;
               studentList[param1.i].ll = param1.l + "|0";
               studentList[param1.i].honor = 0;
            }
            else if(param1.t == 2)
            {
               _loc2_ = Language.IMPANEL_S[47];
               _loc2_ = _loc2_.replace("{charactor}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CHARACTOR] + "|" + param1.i + "|" + param1.n + "|0|0|0]"));
               _core.sysMsg(_loc2_);
               _core.player.ti = param1.i;
               _core.player.tn = param1.n;
               _core.player.ll = param1.l + "|0";
            }
            updateViewTS();
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get groupList() : DataGrid
      {
         return this._1483226179groupList;
      }
      
      private function delFriBtnClick() : void
      {
         if(friendList.selectedItem)
         {
            delRelationship(friendList.selectedItem.id,GamePredef.RELATIONSHIP_TYPE[0]);
         }
         else
         {
            Alert.show(Language.IMPANEL_S[14]);
         }
      }
      
      private function _IMPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn9 = _loc1_;
         _loc1_.dataField = "exp";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn9",_IMPanel_DataGridColumn9);
         return _loc1_;
      }
      
      private function _IMPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = EnemyHBox;
         return _loc1_;
      }
      
      public function set vTabNavigator(param1:ViewStack) : void
      {
         var _loc2_:Object = this._163943896vTabNavigator;
         if(_loc2_ !== param1)
         {
            this._163943896vTabNavigator = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vTabNavigator",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnQuery() : BasicGlowButton
      {
         return this._2095530956btnQuery;
      }
      
      public function set btnQuery(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2095530956btnQuery;
         if(_loc2_ !== param1)
         {
            this._2095530956btnQuery = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnQuery",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.initViewImC();
         btnQuery.enabled = false;
         btnReqAdd.enabled = false;
      }
      
      private function _IMPanel_DataGridColumn22_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn22 = _loc1_;
         _loc1_.dataField = "class";
         _loc1_.width = 60;
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn22",_IMPanel_DataGridColumn22);
         return _loc1_;
      }
      
      public function addBlack(param1:String) : void
      {
         var _loc2_:String = "";
         if(isFriend(param1))
         {
            Alert.show(Language.IMPANEL_S[4],"",Alert.OK);
         }
         else
         {
            if(!blackAR)
            {
               blackAR = {};
            }
            if(!blackAR[param1])
            {
               if(getBlaNum() < GamePredef.RELATIONSHIP_SIZE[1])
               {
                  addRelationship(param1,GamePredef.RELATIONSHIP_TYPE[1]);
               }
               else
               {
                  _loc2_ = Language.IMPANEL_S[5];
                  _loc2_ = _loc2_.replace("{num}",GamePredef.RELATIONSHIP_SIZE[1]);
                  Alert.show(_loc2_,"",Alert.OK);
               }
            }
            else
            {
               Alert.show(Language.IMPANEL_S[7],"",Alert.OK);
            }
         }
      }
      
      private function selectGroupTeam() : void
      {
         curItem = groupList.selectedItem;
         var _loc1_:String = curItem["pos"];
         targetX = Number(_loc1_.substring(1,_loc1_.indexOf(",")));
         targetY = Number(_loc1_.substring(_loc1_.indexOf(",") + 1,_loc1_.indexOf(")")));
         if(!isSameLine() || Number(groupList.selectedItem["gnum"]) >= GamePredef.MAX_GROUP_MEM_NUM || _core.getCharactor(Number(curItem["lid"])).state == GamePredef.ST_BATTLE)
         {
            btnReqAdd.enabled = false;
         }
         else
         {
            btnReqAdd.enabled = true;
         }
         menuPop([{"label":Language.IMPANEL_U[30]}]);
      }
      
      private function findTeacher(param1:String) : void
      {
         if(_core.player.ti < 0)
         {
            _core.remote.call("findTeacher",new Responder(onFindTeacher),param1);
         }
      }
      
      private function tutorClick() : void
      {
         menuPop([{"label":GamePredef.MENU_WISPER},{"label":GamePredef.MENU_P2PWISPER},{"label":GamePredef.MENU_INFO}]);
      }
      
      private function _IMPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn10 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn10",_IMPanel_DataGridColumn10);
         return _loc1_;
      }
      
      public function __tabBtn6_click(param1:MouseEvent) : void
      {
         tabClick(6);
      }
      
      private function _IMPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _IMPanel_DataGridColumn8 = _loc1_;
         _loc1_.dataField = "lastLevel";
         BindingManager.executeBindings(this,"_IMPanel_DataGridColumn8",_IMPanel_DataGridColumn8);
         return _loc1_;
      }
   }
}

