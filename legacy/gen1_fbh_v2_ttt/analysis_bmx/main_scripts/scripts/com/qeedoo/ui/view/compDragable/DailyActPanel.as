package com.qeedoo.ui.view.compDragable
{
   import com.adobe.serialization.json.JSON;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LinkEventUtil;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.RendererItemArray;
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
   import mx.controls.Button;
   import mx.controls.DataGrid;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.controls.dataGridClasses.DataGridItemRenderer;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DailyActPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var onlineTimer:Timer;
      
      private static var initDate:Number = 0;
      
      private static var timerDate:Number = 0;
      
      private var _115591369idTimerText:BasicTxtButton;
      
      private var _sortForDiary:Sort = new Sort();
      
      private var seletedItem:Object;
      
      private var _3773vs:ViewStack;
      
      private var _1405038220award1:RendererItemArray;
      
      private var _1010221498gameintro:Button;
      
      private var _1162960633actBtn1:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      public var _DailyActPanel_DataGridColumn10:DataGridColumn;
      
      private var _core:Core = Core.getInstance();
      
      private var _1438717908autoTask:Button;
      
      private var activityItemList:ArrayCollection;
      
      private var _1162960631actBtn3:BasicGlowButton;
      
      private var _1521020673diaryList:ArrayCollection;
      
      private var _1405038219award2:RendererItemArray;
      
      private var _939851610actAward1:ItemSlot;
      
      public var _DailyActPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _DailyActPanel_BasicTxtButton11:BasicTxtButton;
      
      public var _DailyActPanel_DataGridColumn1:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn2:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn3:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn4:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn5:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn6:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn7:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn8:DataGridColumn;
      
      public var _DailyActPanel_DataGridColumn9:DataGridColumn;
      
      public var _DailyActPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _DailyActPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _DailyActPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _DailyActPanel_BasicTxtButton6:BasicTxtButton;
      
      public var _DailyActPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _DailyActPanel_BasicTxtButton8:BasicTxtButton;
      
      public var _DailyActPanel_BasicTxtButton9:BasicTxtButton;
      
      private var _886424096txkcBtn:Button;
      
      private var _58843066xmlActivity:XML;
      
      private var _939851608actAward3:ItemSlot;
      
      private var _534379936_haveDiaryAwarded:Boolean = false;
      
      private var selectedID:Number;
      
      private var _344383225DG_diary:DataGrid;
      
      private var element:Class = DailyActPanel_element;
      
      private var activeVbInitFlag:Boolean = false;
      
      private var _1162960634actBtn0:BasicGlowButton;
      
      private var flListItemArr:Array = [Language.GAMEINTROPANEL_U[19],Language.GAMEINTROPANEL_U[20],Language.GAMEINTROPANEL_U[21],Language.GAMEINTROPANEL_U[22],Language.GAMEINTROPANEL_U[49]];
      
      private var _116765vip:Button;
      
      private var _678791648findback:Button;
      
      private var _1162960632actBtn2:BasicGlowButton;
      
      private var flag:Object = {};
      
      private var isInited:Boolean = false;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _975828627activityDescription:String = Language.ACTIVEPANEL_S[8];
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var circleList:* = {
         "txkc":{},
         "gameintro":{},
         "findback":{},
         "vip":{},
         "autoTask":{}
      };
      
      private var _849924434totalAct:BasicTxtButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _1162960630actBtn4:BasicGlowButton;
      
      private var _755507832xmlPet:XML;
      
      private var _939851607actAward4:ItemSlot;
      
      private var selectedName:String;
      
      private var _939851611actAward0:ItemSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _DailyActPanel_Label1:Label;
      
      public var _DailyActPanel_Label2:Label;
      
      private var _2118150722DG_active:DataGrid;
      
      public var _DailyActPanel_LinkTextArea1:LinkTextArea;
      
      private var dailyActOnlineObj:Object = {
         "time":0,
         "times":0
      };
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":520,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"bg",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":482,
                        "y":33,
                        "width":690,
                        "x":5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":16,
                        "width":71,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "46";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":86,
                        "width":51,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vs",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "65";
                     this.bottom = "70";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___DailyActPanel_Canvas1_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.right = "198";
                                    this.left = "10";
                                    this.bottom = "10";
                                    this.top = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"DG_active",
                                          "events":{"itemClick":"__DG_active_itemClick"},
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "10";
                                             this.left = "10";
                                             this.right = "10";
                                             this.top = "20";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_DailyActPanel_DataGridColumn1_i(),_DailyActPanel_DataGridColumn2_i(),_DailyActPanel_DataGridColumn3_i(),_DailyActPanel_DataGridColumn4_i(),_DailyActPanel_DataGridColumn5_i(),_DailyActPanel_DataGridColumn6_i()]
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.right = "10";
                                    this.bottom = "10";
                                    this.top = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":180,
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_DailyActPanel_Label1",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "65";
                                             this.color = 16501317;
                                             this.fontSize = 13;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "y":8,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":LinkTextArea,
                                          "id":"_DailyActPanel_LinkTextArea1",
                                          "stylesFactory":function():void
                                          {
                                             this.backgroundAlpha = 0;
                                             this.fontSize = 12;
                                             this.left = "10";
                                             this.top = "27";
                                             this.right = "10";
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"height":197};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":HRule,
                                          "stylesFactory":function():void
                                          {
                                             this.left = "10";
                                             this.right = "10";
                                             this.top = "227";
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"_DailyActPanel_Label2",
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "90";
                                             this.left = "65";
                                             this.color = 16501317;
                                             this.fontSize = 13;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"width":80};
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RendererItemArray,
                                          "id":"award1",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "15";
                                             this.bottom = "50";
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RendererItemArray,
                                          "id":"award2",
                                          "stylesFactory":function():void
                                          {
                                             this.left = "15";
                                             this.bottom = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {"visible":false};
                                          }
                                       })]
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{
                           "show":"___DailyActPanel_Canvas4_show",
                           "hide":"___DailyActPanel_Canvas4_hide"
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "percentWidth":100,
                              "percentHeight":100,
                              "styleName":"CanvasBorder",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.bottom = "10";
                                    this.top = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":10,
                                       "width":470,
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"DG_diary",
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "10";
                                             this.left = "10";
                                             this.right = "10";
                                             this.top = "10";
                                             this.textAlign = "center";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_DailyActPanel_DataGridColumn7_i(),_DailyActPanel_DataGridColumn8_i(),_DailyActPanel_DataGridColumn9_i(),_DailyActPanel_DataGridColumn10_i()]
                                             };
                                          }
                                       })]
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Canvas,
                                 "events":{"creationComplete":"___DailyActPanel_Canvas6_creationComplete"},
                                 "stylesFactory":function():void
                                 {
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":485,
                                       "width":184,
                                       "styleName":"CanvasBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":BasicTxtButton,
                                          "id":"_DailyActPanel_BasicTxtButton1",
                                          "stylesFactory":function():void
                                          {
                                             this.horizontalCenter = "0";
                                             this.fontSize = 16;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "y":5,
                                                "mouseEnabled":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicTxtButton,
                                          "id":"_DailyActPanel_BasicTxtButton2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 65280;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":38.5,
                                                "y":33,
                                                "width":85
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicTxtButton,
                                          "id":"totalAct",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":128.5,
                                                "y":33,
                                                "text":"0"
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicTxtButton,
                                          "id":"_DailyActPanel_BasicTxtButton4",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":56,
                                                "width":70
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicTxtButton,
                                          "id":"idTimerText",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16711680;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":72,
                                                "y":56,
                                                "width":70
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":VBox,
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":5,
                                                "y":80,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Canvas,
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemSlot,
                                                         "id":"actAward0",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":5,
                                                               "type":29,
                                                               "giid":3255
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicTxtButton,
                                                         "id":"_DailyActPanel_BasicTxtButton6",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":50,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicGlowButton,
                                                         "id":"actBtn0",
                                                         "events":{"click":"__actBtn0_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"BtnStdRed",
                                                               "x":135,
                                                               "y":5
                                                            };
                                                         }
                                                      })]};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Canvas,
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemSlot,
                                                         "id":"actAward1",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":5,
                                                               "type":29,
                                                               "giid":3256
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicTxtButton,
                                                         "id":"_DailyActPanel_BasicTxtButton7",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":50,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicGlowButton,
                                                         "id":"actBtn1",
                                                         "events":{"click":"__actBtn1_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"BtnStdRed",
                                                               "x":135,
                                                               "y":5
                                                            };
                                                         }
                                                      })]};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Canvas,
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemSlot,
                                                         "id":"actAward2",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":5,
                                                               "type":29,
                                                               "giid":3257
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicTxtButton,
                                                         "id":"_DailyActPanel_BasicTxtButton8",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":50,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicGlowButton,
                                                         "id":"actBtn2",
                                                         "events":{"click":"__actBtn2_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"BtnStdRed",
                                                               "x":135,
                                                               "y":5
                                                            };
                                                         }
                                                      })]};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Canvas,
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemSlot,
                                                         "id":"actAward3",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":5,
                                                               "type":29,
                                                               "giid":3258
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicTxtButton,
                                                         "id":"_DailyActPanel_BasicTxtButton9",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":50,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicGlowButton,
                                                         "id":"actBtn3",
                                                         "events":{"click":"__actBtn3_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"BtnStdRed",
                                                               "x":135,
                                                               "y":5
                                                            };
                                                         }
                                                      })]};
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Canvas,
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {"childDescriptors":[new UIComponentDescriptor({
                                                         "type":ItemSlot,
                                                         "id":"actAward4",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":5,
                                                               "type":29,
                                                               "giid":3259
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicTxtButton,
                                                         "id":"_DailyActPanel_BasicTxtButton10",
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "x":50,
                                                               "y":10
                                                            };
                                                         }
                                                      }),new UIComponentDescriptor({
                                                         "type":BasicGlowButton,
                                                         "id":"actBtn4",
                                                         "events":{"click":"__actBtn4_click"},
                                                         "propertiesFactory":function():Object
                                                         {
                                                            return {
                                                               "styleName":"BtnStdRed",
                                                               "x":135,
                                                               "y":5
                                                            };
                                                         }
                                                      })]};
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicTxtButton,
                                          "id":"_DailyActPanel_BasicTxtButton11",
                                          "stylesFactory":function():void
                                          {
                                             this.horizontalCenter = "0";
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "y":282,
                                                "height":53
                                             };
                                          }
                                       })]
                                    };
                                 }
                              })]
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.left = "10";
                     this.bottom = "10";
                     this.paddingLeft = 7;
                     this.paddingTop = 7;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "height":60,
                        "visible":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "id":"vip",
                           "events":{"click":"__vip_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnZuanshitequan",
                                 "width":48,
                                 "height":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"gameintro",
                           "events":{"click":"__gameintro_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnMeirifuli",
                                 "width":48,
                                 "height":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"autoTask",
                           "events":{"click":"__autoTask_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnAutoTaskAct",
                                 "width":48,
                                 "height":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"findback",
                           "events":{"click":"__findback_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnJiangLiZhaoHui",
                                 "width":48,
                                 "height":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"txkcBtn",
                           "events":{"click":"__txkcBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"texunkecheng",
                                 "width":48,
                                 "height":48,
                                 "visible":true
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _939851609actAward2:ItemSlot;
      
      private var _3141bg:Image;
      
      public function DailyActPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 520;
         this.styleName = "StandardContent";
         _DailyActPanel_XML1_i();
         _DailyActPanel_XML2_i();
         this.addEventListener("creationComplete",___DailyActPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DailyActPanel._watcherSetupUtil = param1;
      }
      
      private function set diaryList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1521020673diaryList;
         if(_loc2_ !== param1)
         {
            this._1521020673diaryList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"diaryList",_loc2_,param1));
         }
      }
      
      public function ___DailyActPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set actBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1162960634actBtn0;
         if(_loc2_ !== param1)
         {
            this._1162960634actBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn0",_loc2_,param1));
         }
      }
      
      public function set DG_diary(param1:DataGrid) : void
      {
         var _loc2_:Object = this._344383225DG_diary;
         if(_loc2_ !== param1)
         {
            this._344383225DG_diary = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"DG_diary",_loc2_,param1));
         }
      }
      
      public function findback1() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_FINDBACK);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function set actBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1162960631actBtn3;
         if(_loc2_ !== param1)
         {
            this._1162960631actBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn3",_loc2_,param1));
         }
      }
      
      public function set actBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1162960630actBtn4;
         if(_loc2_ !== param1)
         {
            this._1162960630actBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn4",_loc2_,param1));
         }
      }
      
      public function set actBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1162960633actBtn1;
         if(_loc2_ !== param1)
         {
            this._1162960633actBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vip() : Button
      {
         return this._116765vip;
      }
      
      public function set actBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1162960632actBtn2;
         if(_loc2_ !== param1)
         {
            this._1162960632actBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get findback() : Button
      {
         return this._678791648findback;
      }
      
      private function _DailyActPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "Line";
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn3",_DailyActPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function openTXKC() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_TEXUNKECHENG_ACTIVITY);
         if(_loc1_)
         {
            _loc1_.showPanel();
            buttonCricle(txkcBtn,false,"txkc");
         }
      }
      
      private function getAwardState() : void
      {
         _core.remote.call("getDailyPanelAwardState",new Responder(setButtonState),null);
      }
      
      private function closeTimer() : void
      {
         if(onlineTimer != undefined)
         {
            onlineTimer.stop();
            onlineTimer.removeEventListener(TimerEvent.TIMER,onTimer);
            onlineTimer = null;
         }
      }
      
      public function __actBtn4_click(param1:MouseEvent) : void
      {
         getActAward(param1);
      }
      
      private function _DailyActPanel_XML2_i() : XML
      {
         var _loc1_:XML = <PetList><Pet Name="Kỳ Kỳ" ID="3624" CID="1270" Description="Kỳ Kỳ là một tinh linh của tộc người Naga truyền thuyết, nắm giữ sức mạnh hắc ám vô biên của vùng biển cổ xưa và chỉ có Kỳ Kỳ mới có khả năng thi triển năng lực huyền bí của tộc Naga"></Pet><Pet Name="Camy" ID="3254" CID="1088" Description="Camy là truyền nhân của dòng tộc ác ma. Nhờ vào những ca khúc 《Linh Hồn Khúc》 ai oán, thần bí mà có thể trói buộc được linh hồn của đối phương, làm kẻ thù mất đi khả năng tự hồi phục và trị liệu. Đây cũng là kỹ năng làm cho người khác khiếp sợ trong hệ Ác Ma."></Pet><Pet Name="Linh Long" ID="3615" CID="902" Description="Linh Long, một cô gái năng động của dòng dõi nhà Rồng, rất thích được cùng em gái ra tay nghĩa hiệp, trừ gian diệt bạo. Linh Long không những có thể làm kẻ địch phải khốn đốn mà còn có cách tự bảo vệ bản thân mình."></Pet><Pet Name="Tiểu Linh Long" ID="3616" CID="921" Description="Cô em gái, Tiểu Linh Long, rất giống chị mình, thừa hưởng sức mạnh thần kỳ, có khả năng chống sát thương thấp nhất."></Pet><Pet Name="Pony" ID="3402" CID="1177" Description="Pony là một truyền nhân nhí dễ thương của gia tộc Ngựa Một Sừng, luôn mong muốn đem lại hòa bình cho thế giới. Sở hữu ma pháp trị liệu thần thánh của gia tộc và rất ghét chiến tranh."></Pet><Pet Name="Loni" ID="3312" CID="1151" Description="Loni vốn là con gái của Đông Hải Long Vương, thông minh đáng yêu, hiền lành, tốt bụng, và đặc biệt luôn hiếu kỳ với cuộc sống của nhân gian. Sở hữu kỹ năng ma pháp bí chú lợi hại, nhưng do tuổi còn quá nhỏ, công lực bí chú chưa được phát huy ổn định."></Pet><Pet Name="Nấm Điện" ID="2815" CID="953" Description="Nấm Điện xuất thân từ vương quốc nấm xa xôi, nghe nói bọn yêu ma từng dụ dỗ Nấm Điện chống lại các gia tộc, nhưng Nấm Điện chính nghĩa đã không nghe theo. Nấm Điện có đòn tấn công sát thương quy mô lớn, là pet thích hợp dùng để luyện cấp 50 - 80."></Pet><Pet Name="Thỏ Baby" ID="2789" CID="903" Description="Tuy có vẻ ngoài vô cùng đáng yêu nhưng sức chiến đấu của pet này thật sự rất đáng nể. Với bản chất thông minh, kế thừa và phát huy được các ưu thế của pet hệ người, ngoài ra còn sở hữu 2 kỹ năng tấn công ma pháp liên tục và ngăn chặn sát thương, Thỏ Baby thực sự là một đối thủ đáng gờm trên chiến trường."></Pet><Pet Name="Nhím Xanh" ID="2516" CID="876" Description="Nhím Xanh là tinh linh cao cấp, tuy vẻ ngoài đáng yêu và có chút yếu ớt nhưng bên trong lại có sức mạnh kinh hồn mà bản thân chưa biết. Có thể học được tất cả kỹ năng hệ thực vật. Hai kỹ năng đặc biệt nhất là Tiêu Nhược và Phản Xạ. Khi lâm vào hoàn cảnh sinh tử, Nhím Xanh sẽ phát huy tối đa sức mạnh của mình."></Pet><Pet Name="Momo" ID="2262" CID="776" Description="Là người thừa kế duy nhất của hoàng tộc vương quốc máy móc, vẻ mặt đáng yêu thánh thiện, Momo sở hữu những kỹ năng sử dụng năng lượng sóng điện như Mê Tâm hay Khóa Mục Tiêu, khiến đối thương trúng sát thương trong chớp mắt. Ngoài ra các kỹ năng hệ máy như Da Kháng Tính, Tự Hồi Phục cũng khiến Momo trở thành một pet đáng yêu nhưng không kém phần nguy hiểm."></Pet><Pet Name="Kim Hổ" ID="2128" CID="735" Description="Chúa sơn lâm đã xuất hiện! Đừng nhìn vẻ bề ngoài đáng yêu của pet mà xem thường nhé. Các kỹ năng hấp thu HP của Kim Hổ tạo sát thương cực mạnh, khiến cho pet này có năng lực chiến đấu mạnh mẽ trên chiến trường và sức chịu đựng bền bỉ."></Pet><Pet Name="Dứa Mật" ID="1532" CID="488" Description="Không nên xem thường quả dứa bé nhỏ này, chất độc trên người nó khiến cho loài rồng cũng phải kiêng dè. Các kỹ năng độc và hồi HP của pet này đều rất đáng nể."></Pet><Pet Name="Hoàng Tử Thiên Sứ" ID="2084" CID="721" Description="Hoàng Tử Thiên Sứ là niềm tự hào của Tộc Thiên Sứ, có khả năng dẫn dắt sức mạnh thần thánh, bảo vệ và tăng sức chiến đấu cho bản thân và đồng đội."></Pet><Pet Name="Công Chúa Ác Ma" ID="2085" CID="722" Description="Đừng để vẻ đẹp của Công Chúa Ác Ma đánh lừa bạn, khả năng phá hoại của cô ấy khiến cho Ma Vương cũng phải ngán ngẩm, bản lĩnh dẫn dắt sức mạnh ma giới sẽ tạo sát thương cực mạnh cho kẻ địch."></Pet><Pet Name="Thần Long Viễn Cổ" ID="1529" CID="487" Description="Long tộc là chủng tộc pet cao quý trên Vô Ưu Đại Lục, khả năng miễn 70% sát thương khiến cho kẻ địch phải chùn bước. Nếu có thêm các kỹ năng hỗ trợ, pet rồng sẽ khiến cho kẻ nào dám đương đầu đều sẽ hối hận!"></Pet><Pet Name="Thiên Sứ Mít Ướt" ID="1326" CID="19" Description="Thiên Sứ Mít Ướt là hóa thân của thần Tình Yêu, vì thế có nhiều kỹ năng rất kỳ diệu. Nếu sở hữu Hào Quang Ái Thần, pet sẽ có khả năng trị liệu cho nhiều người, nếu có kỹ năng Mũi Tên Cupid, pet sẽ khiến cho nhiều địch thủ rơi vào trạng thái hỗn loạn, đặc biệt là kỹ năng Lời Ngọt Ngào có thể cùng lúc gây sát thương cho 10 mục tiêu, là kỹ năng cực kỳ lợi hại khi luyện cấp."></Pet><Pet Name="Ác Ma Quấy Phá" ID="1326" CID="20" Description="Ác Ma Quấy Phá có năng lực phá hoại cực mạnh. Nếu sở hữu Ác Ma Chi Kích, pet sẽ có năng lực sát thương cực mạnh, nếu có Tình Yêu Ngụy Kế, pet sẽ tạo sát thương cho số đông, đặc biệt là kỹ năng Lời Ngọt Ngào có thể cùng lúc gây sát thương cho 10 mục tiêu, là kỹ năng cực kỳ lợi hại khi luyện cấp."></Pet><Pet Name="Kim Ngưu" ID="1178" CID="367" Description="Thực lực của Kim Ngưu là quá rõ ràng, các điểm tư chất cao, sức tấn công mạnh và lượng HP dồi dào, cộng thêm vẻ ngoài đáng sợ đã khiến Kim Ngưu trở thành 1 trong những pet đáng gờm trên Vô Ưu Đại Lục. Một pet Kim Ngưu có kỹ năng Dã Thú Cuồng Vũ chính là mục tiêu mà nhiều người muốn đạt đến."></Pet><Pet Name="Đinh Long" ID="1877" CID="486" Description="Long tộc là chủng tộc pet cao quý trên Vô Ưu Đại Lục, khả năng miễn 70% sát thương khiến cho kẻ địch phải chùn bước. Nếu có thêm các kỹ năng hỗ trợ, pet rồng sẽ khiến cho kẻ nào dám đương đầu đều sẽ hối hận!"></Pet><Pet Name="Y Tá MM" ID="2019" CID="71" Description="Y Tá MM là một y tá đẳng cấp của gia tộc Đông Huyền, vừa tận tâm, vừa ôn hòa, dễ mến. Bằng tài năng và sự chân thành, có Y Tá MM bên cạnh, mọi vết thương trên người đều sẽ được trị khỏi. Tuy nhiên trong những cuộc chiến sinh tử, Y Tá MM luôn có năng lực sinh tồn hơn bất kỳ ai cả.Đây là đặc điểm khiến cho đối thủ phải e dè."></Pet><Pet Name="Tinh Linh Hộ Thú" ID="1398" CID="447" Description="Tinh Linh Hộ Thú tuy không sở hữu sức tấn công mạnh mẽ, cũng không có ma pháp huyền diệu, nhưng độ trung thành của pet này là không thể xem thường. Khả năng liều mình ngăn chặn tấn công vật lý cho chủ nhân và đồng đội chắc chắn sẽ khiến bạn yên tâm trên bước đường chiến đấu."></Pet><Pet Name="Hổ Bì Dương" ID="1310" CID="91" Description="Chú dê con bé nhỏ này rất thích hợp cho những người chơi mới do có sức tấn công mạnh, tốc độ nhanh, bạo kích cao, lại có thuộc tính ám hỗ trợ, điểm yếu là lượng HP tương đối thấp và dễ bị pet thuộc tính quang khắc chế."></Pet><Pet Name="Chim Ưng" ID="3574" CID="91" Description="Loài chim có sức mạnh phi thường, khi săn mồi có tốc độ nhanh như chớp làm đối phương không kịp né tránh~"></Pet><Pet Name="Hắc Nhân Mã" ID="4190" CID="1672" Description="Thần thú trong truyền thuyết, là đứa con tụ hợp sức mạnh của đất trời"></Pet><Pet Name="Đại Thánh Chí Tôn" ID="5937" CID="2145" Description="Tề Thiên Đại Thánh, nhất thế chí tôn, đi nam về bắc, lên trời xuống đất, thần kỳ bách biến."></Pet><Pet Name="Moltres" ID="6132" CID="2221" Description="Chim phượng hoàng sinh là từ ngọn lửa bất tử phương nam. Mỗi lần chết đi, quanh thân sẽ xuất hiện vòng lửa, sau đó tiếp tiếp tục từ lửa mà tái sinh, đồng thời sức mạnh càng tăng gấp bội phần"></Pet><Pet Name="Võ Sĩ Shiba" ID="6297" CID="2246" Description="Vì tấm lòng yêu thương nhân loại, Shiba được xem là sứ giả hòa bình may mắn"></Pet></PetList>;
         xmlPet = _loc1_;
         return _loc1_;
      }
      
      public function set findback(param1:Button) : void
      {
         var _loc2_:Object = this._678791648findback;
         if(_loc2_ !== param1)
         {
            this._678791648findback = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"findback",_loc2_,param1));
         }
      }
      
      public function set vip(param1:Button) : void
      {
         var _loc2_:Object = this._116765vip;
         if(_loc2_ !== param1)
         {
            this._116765vip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vip",_loc2_,param1));
         }
      }
      
      private function levelSortCompareFunction(param1:Object, param2:Object) : int
      {
         var _loc3_:RegExp = /\d+/;
         var _loc4_:Number = Number(_loc3_.exec(param1.Level)[0]);
         var _loc5_:Number = Number(_loc3_.exec(param2.Level)[0]);
         if(_loc4_ > _loc5_)
         {
            return -1;
         }
         if(_loc4_ == _loc5_)
         {
            return 0;
         }
         return 1;
      }
      
      public function initPenalConfig() : void
      {
         var _loc4_:XML = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:Boolean = false;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc18_:Array = null;
         var _loc19_:Array = null;
         var _loc20_:int = 0;
         var _loc21_:Date = null;
         var _loc22_:Date = null;
         var _loc23_:Date = null;
         var _loc24_:Array = null;
         var _loc25_:Array = null;
         var _loc26_:String = null;
         var _loc27_:String = null;
         var _loc28_:Array = null;
         var _loc29_:int = 0;
         var _loc30_:String = null;
         var _loc31_:int = 0;
         var _loc32_:String = null;
         var _loc33_:String = null;
         var _loc34_:String = null;
         var _loc35_:String = null;
         var _loc36_:String = null;
         var _loc37_:String = null;
         var _loc38_:String = null;
         var _loc39_:String = null;
         if(activityItemList)
         {
            activityItemList.removeAll();
         }
         else
         {
            activityItemList = new ArrayCollection();
         }
         var _loc1_:XML = new XML(xmlActivity);
         var _loc2_:XMLList = _loc1_.Node;
         var _loc3_:Boolean = false;
         for each(_loc4_ in _loc2_.Activity)
         {
            _loc5_ = new Object();
            _loc5_.Time = _loc4_.@Time.toString().split("|")[1];
            _loc5_.timeStr = _loc4_.@Time.toString();
            _loc6_ = TimeUtil.getTimeStr2(_loc5_.timeStr);
            _loc7_ = TimeUtil.decodeTimeObj(_loc6_);
            _loc8_ = _loc7_ ? true : false;
            if(!(!_loc7_ || _loc7_ == ""))
            {
               if(!_loc3_ && _loc7_ == Language.DAILYACT_U[5])
               {
                  _loc21_ = new Date();
                  _loc22_ = new Date();
                  _loc23_ = new Date();
                  _loc24_ = _loc6_.startTime.split(":");
                  _loc22_.setHours(Number(_loc24_[0]));
                  _loc22_.setMinutes(Number(_loc24_[1]));
                  _loc25_ = _loc6_.startTime.split(":");
                  _loc23_.setHours(Number(_loc25_[0]));
                  _loc23_.setMinutes(Number(_loc25_[1]));
                  if(_loc23_.getTime() > _loc21_.getTime() && _loc22_.getTime() - _loc21_.getTime() <= 10 * 60 * 1000)
                  {
                     _loc3_ = true;
                  }
               }
               _loc5_.idx = parseInt(_loc4_.@idx.toString());
               _loc5_.Name = _loc4_.@Name.toString();
               _loc9_ = "";
               _loc5_.NPC = _loc4_.@NPC.toString();
               _loc10_ = _loc4_.@NID.toString().split(",")[0];
               _loc11_ = _loc4_.@MID.toString().split(",")[0];
               _loc12_ = "";
               if(_loc4_.@LINE != Language.DAILYACT_U[14])
               {
                  _loc26_ = _loc4_.@LINE.toString();
                  _loc27_ = _loc26_.substr(0,_loc26_.length - 1);
                  if(_loc27_.length > 1)
                  {
                     _loc28_ = _loc27_.split("-");
                     _loc29_ = int(_loc28_[0]);
                     while(_loc29_ < _loc28_[1])
                     {
                        _loc12_ = _loc12_ + _loc29_ + ",";
                        _loc29_++;
                     }
                     _loc12_ += _loc28_[1];
                  }
                  else
                  {
                     _loc12_ = _loc27_;
                  }
               }
               switch(Number(_loc4_.@linkType))
               {
                  case 1:
                     if(_loc12_ != "")
                     {
                        _loc9_ = "L_N|" + _loc10_ + "|" + _loc4_.@NPC.toString() + "|" + _loc12_;
                     }
                     else
                     {
                        _loc9_ = "L_N|" + _loc10_ + "|" + _loc4_.@NPC.toString();
                     }
                     break;
                  case 2:
                     if(_loc12_ != "")
                     {
                        _loc9_ = "L_OPEN_PANEL|" + _loc10_ + "|系统|" + _loc12_;
                     }
                     else
                     {
                        _loc9_ = "L_OPEN_PANEL|" + _loc10_;
                     }
                     _loc5_.NPC = Language.DAILYACT_U[0];
                     break;
                  case 3:
                     _loc30_ = _loc4_.@Time.toString().replace("|","#");
                     _loc9_ = "L_ENTER_ACT|" + _loc5_.Name + "|" + _loc30_ + "|" + (_loc10_ ? _loc10_ : "");
                     _loc5_.NPC = Language.DAILYACT_U[1];
                     break;
                  case 4:
                     if(_loc12_ != "")
                     {
                        _loc9_ = "L_MA|" + _loc11_ + "|" + _loc5_.Name + "|" + _loc12_;
                     }
                     else
                     {
                        _loc9_ = "L_MA|" + _loc11_;
                     }
               }
               _loc5_._npcLink = _loc9_;
               _loc5_.Level = _loc4_.@Level.toString();
               _loc5_.Nid = _loc4_.@NID.toString();
               _loc5_.Line = _loc4_.@LINE.toString();
               _loc5_.Description = _loc4_.@Description.toString();
               _loc13_ = StringReplaceAll(_loc4_.@Award.toString(),"\'","\"");
               if(_loc13_ != "")
               {
                  _loc5_.Award = com.adobe.serialization.json.JSON.decode(_loc13_);
               }
               else
               {
                  _loc5_.Award = null;
               }
               _loc5_.url = ResManager.getIconUrl(parseInt(_loc4_.@resCode.toString()));
               _loc14_ = _loc4_.@NID.toString();
               _loc15_ = _loc4_.@MID.toString();
               _loc16_ = _loc4_.@HID.toString();
               _loc17_ = _loc14_ == "" ? new Array() : _loc14_.split(",");
               _loc18_ = _loc15_ == "" ? new Array() : _loc15_.split(",");
               _loc19_ = _loc16_ == "" ? new Array() : _loc16_.split(",");
               _loc20_ = 0;
               while(_loc20_ < _loc17_.length)
               {
                  _loc31_ = _loc20_ + 1;
                  _loc32_ = "|npc" + _loc31_ + "|";
                  _loc33_ = GameData.d[GamePredef.TBL_NPC][_loc17_[_loc20_]] ? GameData.d[GamePredef.TBL_NPC][_loc17_[_loc20_]].name : "系统";
                  _loc34_ = "<font color=\"#FF0000\"> <a href=\"event:L_N|" + _loc17_[_loc20_] + "|" + _loc33_ + "\">[" + _loc33_ + "]</a></font>";
                  _loc5_.Description = _loc5_.Description.replace(_loc32_,_loc34_);
                  _loc20_++;
               }
               _loc20_ = 0;
               while(_loc20_ < _loc18_.length)
               {
                  _loc31_ = _loc20_ + 1;
                  _loc35_ = "|map" + _loc31_ + "|";
                  _loc36_ = GameData.d[GamePredef.TBL_MAP][_loc18_[_loc20_]].name;
                  _loc37_ = "<font color=\"#0000FF\"> <a href=\"event:L_MA|" + _loc18_[_loc20_] + "|" + _loc36_ + "\">[" + _loc36_ + "]</a></font>";
                  _loc5_.Description = _loc5_.Description.replace(_loc35_,_loc37_);
                  _loc20_++;
               }
               _loc20_ = 0;
               while(_loc20_ < _loc19_.length)
               {
                  _loc31_ = _loc20_ + 1;
                  _loc38_ = "|help" + _loc31_ + "|";
                  _loc36_ = Language.ACTIVEPANEL_S[41];
                  _loc39_ = "<font color=\"#00FF00\"><a href=\"event:L_HELP|" + _loc19_[_loc20_] + "|" + _loc5_.Name + "\">[" + _loc36_ + "]</a></font>";
                  _loc5_.Description = _loc5_.Description.replace(_loc38_,_loc39_);
                  _loc20_++;
               }
               activityItemList.addItem(_loc5_);
            }
         }
         if(isInited)
         {
            DG_active.dataProvider = activityItemList;
         }
         if(isInited)
         {
            initDefaultViews();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xmlActivity() : XML
      {
         return this._58843066xmlActivity;
      }
      
      private function setAwardSlotColr() : void
      {
         var _loc2_:ItemSlot = null;
         var _loc1_:int = 0;
         while(_loc1_ <= 4)
         {
            _loc2_ = this["actAward" + _loc1_];
            if(_loc2_)
            {
               _loc2_.setStyleName(_loc1_);
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : Image
      {
         return this._3141bg;
      }
      
      [Bindable(event="propertyChange")]
      public function get DG_active() : DataGrid
      {
         return this._2118150722DG_active;
      }
      
      private function timeSortCompareFunction(param1:Object, param2:Object) : int
      {
         var _loc3_:String = param1.Time.split("-")[0];
         var _loc4_:String = param2.Time.split("-")[0];
         var _loc5_:String = param1.Time.split("-")[1];
         var _loc6_:String = param2.Time.split("-")[1];
         if(_loc5_.split(":")[0] > _loc6_.split(":")[0] || _loc5_.split(":")[0] == _loc6_.split(":")[0] && _loc5_.split(":")[1] > _loc6_.split(":")[1])
         {
            return -1;
         }
         if(_loc5_.split(":")[0] < _loc6_.split(":")[0] || _loc5_.split(":")[0] == _loc6_.split(":")[0] && _loc5_.split(":")[1] < _loc6_.split(":")[1])
         {
            return 1;
         }
         return 0;
      }
      
      public function canGetDiaryAward() : Boolean
      {
         if(Boolean(totalAct) && Boolean(totalAct.text) && Number(totalAct.text) >= 30)
         {
            if(!_haveDiaryAwarded)
            {
               return true;
            }
         }
         return false;
      }
      
      private function getActAward(param1:Event) : void
      {
         var event:Event = param1;
         var btn:Object = event.currentTarget;
         var id:Number = Number(String(btn.id).substr(-1));
         var func:Function = function(param1:Object):void
         {
            if(param1)
            {
               _haveDiaryAwarded = param1.f;
            }
         };
         _core.remote.call("getDailyActAward",new Responder(func),id);
      }
      
      private function _DailyActPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn10 = _loc1_;
         _loc1_.width = 70;
         _loc1_.itemRenderer = _DailyActPanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn10",_DailyActPanel_DataGridColumn10);
         return _loc1_;
      }
      
      private function _DailyActPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 100;
         _loc1_.dataField = "Time";
         _loc1_.sortCompareFunction = timeSortCompareFunction;
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn2",_DailyActPanel_DataGridColumn2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get _haveDiaryAwarded() : Boolean
      {
         return this._534379936_haveDiaryAwarded;
      }
      
      public function set idTimerText(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._115591369idTimerText;
         if(_loc2_ !== param1)
         {
            this._115591369idTimerText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idTimerText",_loc2_,param1));
         }
      }
      
      public function __actBtn1_click(param1:MouseEvent) : void
      {
         getActAward(param1);
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      private function _DailyActPanel_XML1_i() : XML
      {
         var _loc1_:XML = <Panel><Node name="Activity"><Activity Name="Mê Trận" linkType="2" resCode="3130090000062" idx="" NID="881" NPC="Hệ Thống" MID="2007" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="120" Description="Người chơi nhấp chọn Icon trên cùng để mở giao diện Mê Trận. Theo truyền thuyết, đây là 1 hang động thần bí được phát hiện tại Mã Thạch Tuyết, bên trong chứa nhiều kho báu giá trị! Tuy nhiên, các cạm bẫy, cơ quan ở đây cũng thuộc loại nguy hiểm nhất Đại Lục. Hãy cẩn thận!" Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200170016','description':'Công trạng'},'2':{'itemId':'-1','iconCode':'4030200180205','description':'Vật Phẩm liên quan đến Thú Cưỡi&#10;Ấn Chương, Nguyên Tố Quả Thực'}}"></Activity><Activity Name="Ma Binh Giáng Thế" linkType="4" resCode="3130090000060" idx="" NID="" NPC="Thiên Đường Thần Thánh" MID="71" LINE="6-7" Time="-1|00:00-23:59" Level="120" Description="Trong thời gian sự kiện, tại |map1| sẽ xuất hiện 1 đám ma binh, người chơi sau khi chuyển sinh có thể đánh bại bọn ma binh này (đề nghị lập nhọm người), sau khi đánh bại chúng sẽ nhận được Nguyên Tố Quả Thực và phần thưởng công trạng. Mọi người hãy có gắng nhé!" Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180041','description':'Ngân phiếu'},'2':{'itemId':'-1','iconCode':'4030200170016','description':'Công trạng'},'3':{'itemId':'-1','iconCode':'4030200180205','description':'Nguyên Tố Quả Thực'}}"></Activity><Activity Name="Chiến Trường Dũng Sĩ" linkType="2" resCode="3130090000058" idx="" NID="861" NPC="Hệ Thống" MID="" LINE="Kênh 1" HID="1405" Time="4|21:00-22:00" Level="50" Description="Chiến Trường Dũng Sĩ là sự kiện thi đấu 3v3 giữa những dũng sĩ sức mạnh vô song của Đại Lục Vô Ưu. Phần thưởng sự kiện có thể đến Shop Điểm Thưởng Giác Đấu Đông Huyền Thành(296,160) để nhận. Ngoài ra còn có những danh hiệu vinh danh dũng sĩ xuất sắc, chi tiết có thể nhấn |help1| để xem." Award="{'0':{'itemId':'-1','iconCode':'4030200180041','description':'Đá Tẩy Luyện'}}"></Activity><Activity Name="BOSS Thế Giới" linkType="3" resCode="3130090000037" idx="" NID="" NPC="Hệ Thống" MID="3" LINE="Kênh 3" Time="1,3,5|14:30-15:00" Level="50" Description="Ngày Tận Thế đã gần kề! Một lần nữa tai họa lại ập xuống Đại Lục Vô Ưu, các dũng sĩ cấp độ 50 trở lên hãy mau đến kênh 3 Đăng Vân Địa để tiêu diệt BOSS Thế Giới Hydra!" Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180041','description':'Ngân phiếu'},'2':{'itemId':'-1','iconCode':'4030200170016','description':'Chiến tích'},'3':{'itemId':'-1','iconCode':'4030200180205','description':'Vật phẩm phong phú: Thẻ Biến Hình độc đáo&#10;Bảo Thạch, Nội Đơn Nhiên Thiêu'}}"></Activity><Activity Name="Võ Đài Đông Huyền" linkType="1" resCode="3130090000036" idx="" NID="1799" NPC="Vệ Sĩ Gia Tộc" MID="9" LINE="Kênh 7" HID="1404" Time="0|19:00-20:00" Level="50" Description="Từng tốp quái vật lũ lượt xâm nhập vào Đại Lục Vô Ưu, cần phải có năng lực siêu phàm mới có thể tiêu diệt được đám quái vật này. Tộc Trưởng Bối Tư đã chia thành 2 đội quân để quyết đấu cùng bọn chúng, hãy đến |map1| gặp |npc1| để tham gia, thông tin chi tiết nhấn |help1|." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200170015','description':'Kim phiếu'}}"></Activity><Activity Name="Chu Ma Điện" linkType="1" resCode="3130090000035" idx="" NID="1776" NPC="Sứ Giả Ma Điện" MID="61" LINE="7" Time="-1|13:00-14:00" Level="120" Description="Trong thời gian sự kiện, các cư dân có thể đến |map1| gặp |npc1| để tham gia sự kiện. Đánh bại các quái vật trong Chu Ma Điện sẽ nhận được vô số phần thường giá trị." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180041','description':'Ngân phiếu'},'2':{'itemId':'-1','iconCode':'4030200180205','description':'Vật phẩm phong phú: các loại Linh Hồn Thạch, Cánh Ánh Sáng, vật phẩm liên quan đến cánh.'}}"></Activity><Activity Name="Cường đạo bang hội" linkType="3" resCode="3130090000033" idx="" NID="949" NPC="Hệ Thống" MID="" LINE="Kênh 2" Time="-1|12:00-22:00" Level="30" Description="Khi có 5 bang hội cấp 3 trở lên trong server, sau một khoảng thời gian nhất định hệ thống sẽ chọn ngẫu nhiên một đám cường đạo quấy phá. Bang hội phải có ít nhất nhóm 3 người mới có thể đánh đuổi được cường đạo. Đánh đuổi thành công sẽ nhận được các phần thưởng cống hiến cho bang hội. Sau 1 giờ vẫn không đánh đuổi được chúng xem như thất bại và bị trừ mất một số tiền." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200170015','description':'Cống hiến bang'}}"></Activity><Activity Name="Đấu trường Pet" linkType="2" resCode="3130090000032" idx="" NID="834" NPC="Hệ Thống" MID="" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="35" Description="rong thời gian sự kiện, người chơi có cấp độ 35 trở lên đều có thể tham gia đấu trường pet liên server. Người chiến thắng có thể nhận được điểm thưởng cho pet và đổi được kinh nghiệm." Award="{'0':{'itemId':'-1','iconCode':'4030200170054','description':'Điểm thưởng đấu pet, có thể dùng để mua&#10;các loại sách kỹ năng siêu cấp'}}"></Activity><Activity Name="Thi câu cá" linkType="1" resCode="3130090000031" idx="" NID="1572" NPC="Sứ Giả Thi Câu Cá" MID="9" LINE="Kênh 1" Time="6|14:00-15:00" Level="50" Description="Trong thời gian sự kiện người chơi có thể đến |map1| gặp |npc1| vào Nơi Thi Câu Cá, phải đổi điểm thưởng thi câu trong thời gian quy định. 3 người có điểm cao nhất sẽ nhận được phần thưởng." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180041','description':'Ngân phiếu'},'2':{'itemId':'-1','iconCode':'4030200170016','description':'Danh hiệu câu cá đặc biệt&#10;có thể gia tăng thuộc tính'}}"></Activity><Activity Name="Đoạt bảo kỳ binh" linkType="1" resCode="3130090000006" idx="" NID="47" NPC="Sứ Giả Đoạt Bảo" MID="9" LINE="Kênh 3-7" HID="1403" Time="5|19:00-20:10" Level="40" Description="Trong Đấu Trường Đoạt Bảo có rất nhiều mỏ khoáng trữ lượng lớn, các cổ vật của những dũng sĩ năm xưa còn sót lại cũng rất nhiều, đang chờ đợi người có duyên đến sở hữu. Hiện tại đấu trường đã mở cửa cho các thành viên vào khám phá. Có thể đến |map1| gặp |npc1| để vào. Chi tiết vui lòng nhấn |help1| để biết thêm." Award="{'0':{'itemId':'-1','iconCode':'4030200180205','description':'Các nguyên liệu cao cấp&#10;và pet thần thú, còn có cơ hội&#10;nhận trang bị cam.'}}"></Activity><Activity Name="Đố vui có thưởng" linkType="2" resCode="3130090000002" idx="" NID="825" NPC="Hệ Thống" MID="" LINE="Tất cả kênh" Time="1,3,5|20:00-20:20" Level="10" Description="Trong thời gian sự kiện sẽ tổ chức cuộc thi trả lời câu hỏi trên toàn server, tất cả người chơi online đều có thể đăng ký tham gia, tùy vào số điểm nhận được mà người chơi sẽ nhận được phần thưởng kinh nghiệm tương ứng." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200170016','description':'Phần thưởng thành tựu dành riêng sự kiện.'}}"></Activity><Activity Name="Tiệm thuốc Đông Huyền" linkType="1" resCode="3130090000030" idx="" NID="412" NPC="Tiệm thuốc Bác Sĩ Vương" MID="9" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="50" Description="Ở |map1|, |npc1| cần thêm một số dược liệu quý hiếm cho tiệm thuốc, người chơi cần giúp ông ấy thu thập, sau khi hoàn thành nhiệm vụ sẽ nhận được phần thưởng kinh nghiệm hậu hĩnh. Mỗi ngày có thể làm 2 lần." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'}}"></Activity><Activity Name="Nông trường pháp thuật" linkType="1" esCode="3130090000029" idx="" NID="1263" NPC="Nông Dân" MID="57" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="50" Description="Ở |map1|, |npc1| cần một lượng nông sản, người chơi cần giúp ông ấy trồng thêm một số nông sản, sau khi hoàn thành nhiệm vụ sẽ nhận được phần thưởng kinh nghiệm hậu hĩnh, còn có xác suất nhận được hạt giống quý hiếm và vật phẩm nhuộm. Mỗi ngày có thể làm 2 lần." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180293','description':'Phần thưởng nhuộm màu cho pet và nhân vật'}}"></Activity><Activity Name="Hồ Đông Huyền" linkType="1" resCode="3130090000025" idx="" NID="280" NPC="Tiệm Pet Tôn Lệ" MID="9" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="50" Description="Tại |map1|, |npc1| cần làm đẹp các ao hồ ở Đông Huyền Thành, người chơi cần giúp đỡ thu thập các loại cá cảnh, sau khi hoàn thành nhiệm vụ sẽ nhận được kinh nghiệm và dụng cụ bắt cá. Mỗi ngày có thể làm 2 lần." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'}}"></Activity><Activity Name="Nhiệm vụ 200 vòng" linkType="1" resCode="3130090000001" idx="" NID="48" NPC="Trưởng Lão Quyến Cố" MID="30" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="70" Description="Người chơi có thể đến |map1| gặp |npc1| trả một lượng bạc nhất định (tùy thuộc cấp độ nhân vật) và nhận nhiệm vụ, sau khi hoàn thành sẽ nhận được kinh nghiệm và vật phẩm quý (chẳng hạn như nội đơn pet cao cấp, ma thú yếu quyết cho pet cao cấp). Nếu bỏ cuộc giữa chừng hoặc đã làm xong 200 vòng thì cần chờ 72 giờ sau mới có thể nhận lại." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Các loại nội đơn pet cao cấp và&#10;yếu quyết ma thú cao cấp'}}"></Activity><Activity Name="Nhiệm vụ gia tộc" linkType="-1" resCode="3130090000022" idx="" NID="310,311,312,427,489,639" NPC="Đạo Sư Gia Tộc" MID="" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="20" Description="Giúp Đạo Sư (Chiến Binh:|npc1|, Danh Y:|npc2|, Nhạc Cộng:|npc3|, Thợ Săn:|npc4|, Xạ Thủ:|npc5|, Hiệp Sĩ:|npc6|) hoàn thành các loại nhiệm vụ tìm người, bắt pet, tìm vật, tuần tra để nhận phần thưởng, mỗi ngày có thể hoàn thành 2 vòng (mỗi vòng 10 nhiệm vụ). Khi hoàn thành nhiệm vụ thứ 10 sẽ nhận được Bảo Rương Thần Bí." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Bảo Rương Thần Bí'}}"></Activity><Activity Name="Cây Ước Nguyện" linkType="1" resCode="3130090000027" idx="" NID="387" NPC="Cây Ước Nguyện" MID="34" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="10" Description="Tại vùng đất |map1| tươi đẹp có 1 |npc1| thần kỳ, tương truyền chỉ cần đến đây treo Kết Ước Nguyện lên cây thì sẽ có thể nhận được vật phẩm mà mình mơ ước, cơ hội nhận được vật phẩm, trang bị và pet tùy thuộc vào cách người chơi ước nguyện. Người chơi mỗi ngày có thể ước miễn phí 5 lần. Kết Ước Nguyện có thể nhận được khi đánh quái." Award="{'0':{'itemId':'-1','iconCode':'4030200180205','description':'Các vật phẩm, trang bị,&#10;pet và thần khí quý hiếm'}}"></Activity><Activity Name="Bang hội chiến" linkType="1" resCode="3130090000034" idx="" NID="211,211" NPC="Quản Lý Bang Hội Chiến" MID="9,9" LINE="Kênh 2" HID="0904" Time="4|20:00-21:00" Level="30" Description="Bang hội chiến là hình thức PK theo nhóm được tiến hành sau khi các thành viên của các bang hội đăng ký tham gia và được chia nhóm, từ thứ 2 đến thứ 5 hàng tuần, bang chủ có thể đến kênh 2 |map1| gặp |npc1| để đăng ký tham gia. Đến kênh 2 |map1| gặp |npc1| để vào. Sau khi chiến thắng sẽ nhận được phần thưởng kinh nghiệm và vật phẩm. Nhấn vào |help1| để xem thông tin chi tiết." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm nhân vật và&#10;kinh nghiệm bang'},'1':{'itemId':'-1','iconCode':'4030200180041','description':'Ngân phiếu'},'2':{'itemId':'-1','iconCode':'4030200170015','description':'điểm cống hiến bang'},'3':{'itemId':'-1','iconCode':'4030200180205','description':'Thăng Tinh Thạch và&#10;các loại sách kỹ năng, pet thần thú'}}"></Activity><Activity Name="Giác đấu Đông Huyền" linkType="1" resCode="3130090000005" idx="3" NID="1514" NPC="Hướng Dẫn Giác Đấu" MID="9" LINE="Kênh 6" HID="1401" Time="6|20:00-21:00" Level="30" Description="Đấu trường Đông Huyền là sự kiện để người chơi thi đấu với nhau, đặc điểm chính của sự kiện này là hệ thống sẽ tự sắp xếp đối thủ thích hợp cho người chơi, việc này sẽ đảm bảo được tính công bằng khi thi đấu, người chơi ở mọi cấp độ đều có thể tìm thấy niềm vui nơi đây. Đã sẵn sàng rồi chứ? Hãy mau đến |map1| gặp |npc1| để vào. Điểm thưởng và huy chương sau khi nhận được có thể đến Đông Huyền Thành (296,160) gặp Cửa Hàng Điểm Thưởng Giác Đấu để đổi lấy phần thưởng. Nhấn vào |help1| để xem thêm thông tin chi tiết." Award="{'0':{'itemId':'-1','iconCode':'4030200170054','description':'Điểm thưởng giác đấu, huy chương&#10;Có thể dùng để đổi các bảo thạch kháng,&#10;thần khí phụ và cánh ánh sáng.'}}"></Activity><Activity Name="Đấu trường Achilles" linkType="1" resCode="3130090000011" idx="4" NID="1522" NPC="Quản Lý Đấu Liên Server" MID="30" LINE="Kênh 1" HID="1402" Time="5|19:00-22:00" Level="50" Description="Đấu trường Achilles là sự kiện thi đấu liên server, người chơi ở các server khác nhau có thể đến đây so tài với nhau, từ đó nhận được điểm thưởng và Huy chương Achilles. Đã sẵn sàng rồi chứ? Hãy mau đến |map1| gặp |npc1| để vào. Điểm thưởng và huy chương sau khi nhận được có thể đến Đông Huyền Thành (296,160) gặp Cửa Hàng Điểm Thưởng Giác Đấu để đổi lấy phần thưởng. Nhấn vào |help1| để xem thêm thông tin chi tiết." Award="{'0':{'itemId':'-1','iconCode':'4030200170054','description':'Điểm thưởng và huy chương&#10;Có thể dùng để đổi các bảo thạch kháng,&#10;thần khí phụ và cánh ánh sáng.'}}"></Activity><Activity Name="Nhiệm Vụ Trừ Ma" linkType="1" resCode="3130090000007" idx="" NID="3" NPC="Quan Quân Nhu" MID="9" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="50" Description="Có thể đến |map1| gặp |npc1| để nhận nhiệm vụ, mỗi ngày thực hiện 1 vòng nhiệm vụ (1 vòng là 10 nhiệm vụ), mỗi lần hoàn thành nhiệm vụ sẽ có cơ hội nhận thần khí chính, Thâm Hồng Tinh, Hoán Thần Thạch. Hoàn thành 3 nhiệm vụ sẽ có cơ hội nhận Kết Tinh Trí Thạch, dùng để đổi trang bị pet ở Tiệm Pet Tôn Lệ. Hoàn thành nhiệm vụ thứ 5, 10 sẽ nhận được Bảo Rương Thần Bí, hoàn thành nhiệm vụ thứ 10 sẽ nhận được Ấn Chương Bất Khuất, xác suất nhận Ấn Chương Huy Nguyệt." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Trang bị pet, thần khí chính, Thầm Hồng Tinh&#10;Hoán Thần Thạch, Bảo Rương Thần Bí, Ấn Chương Bất Khuất, Ấn Chương Huy Nguyệt'}}"></Activity><Activity Name="Không Gian Đa Chiều" linkType="1" resCode="3130090000019" idx="" NID="1166" NPC="Reck" MID="55" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="50" Description="Có thể đến |map1| gặp |npc1| nhận nhiệm vụ. Điêu Linh Thôn dạo này phát ra một khe năng lượng vô cùng thần bí. Nghe nói bên trong khe năng lượng ấy là vô vàn kỳ trân dị bảo！Reck - Cháu Trai Thôn Trưởng có thể giúp bạn đến không gian kỳ diệu này để thám hiểm, hãy nhớ mang theo vật phẩm ohi hành nhé." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm,'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Phần thưởng'}}"></Activity><Activity Name="Nhiệm Vụ Thần Tu" linkType="1" resCode="3130090000018" idx="" NID="929" NPC="Thành Chủ Quyến Cố" MID="30" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="50" Description="Người chơi có thể tự mình hoặc lập nhóm đến |map1| gặp |npc1| để nhận nhiệm vụ， căn cứ vào chỉ thị hãy tìm và tiêu diệt 72 ma thần của Solomon. Hoàn thành nhiệm vụ sẽ nhận được rất nhiều điểm thần tu." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200160012','description':'Điểm thần tu'},'2':{'itemId':'-1','iconCode':'4030200180205','description':'Kết Tinh Thần Tu'}}"></Activity><Activity Name="Nhiệm Vụ Trị An" linkType="1" resCode="3130090000008" idx="" NID="277" NPC="Trưởng Cận Vệ Đông Huyền" MID="9" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="30" Description="Có thể đến |map1| gặp |npc1| để nhận nhiệm vụ, mỗi thực hiện 1 vòng nhiệm vụ (1 vòng là 10 nhiệm vụ), dựa vào chỉ thị trên Mật Lệnh Hải Tặc để tìm và tiêu diệt quái vật. Sau khi hoàn thành nhiệm vụ, nếu may mắn bạn sẽ nhận được Bản Đồ Kho Báu và Bản Đồ Kho Báu Cao Cấp. Hoàn thành nhiệm vụ thứ 3 sẽ nhận được chiến tích. Hoàn thành nhiệm vụ thứ 5, 10 sẽ nhận được Bảo Rương Thần Bí. Hoàn thành nhiệm vụ thứ 10 còn được nhận Ấn Chương Bất Khuất." Award="{'0':{'itemId':'-1','iconCode':'4030200180041','description':'Ngân phiếu, Bạc'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Bản Đồ Kho Báu, Bản Đồ Kho Báu Cao Cấp, Bảo Rương Thần Bí,&#10;Ấn Chương Bất Khuất'}}"></Activity><Activity Name="Luyện Pet" linkType="1" resCode="3130090000025" idx="" NID="280" NPC="Tiệm Pet Tôn Lệ" MID="9" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="50" Description="Tại |map1|, |npc1| đang huấn luyện pet, chỉ cần giúp cô ấy làm 1 số nhiệm vụ, cô ấy sẽ giúp pet của bạn tinh anh hơn. Mỗi ngày có thể làm 1 vòng nhiệm vụ (tương đương 20 nhiệm vụ). Hoàn thành nhiệm vụ 10, 20 sẽ nhận được Bảo Rương Thần Bí." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Bảo Rương Thần Bí'}}"></Activity><Activity Name="Nhiệm Vụ Tu Hành" linkType="1" resCode="3130090000020" idx="" NID="434" NPC="Trưởng Lão Vô Ưu Tộc" MID="4" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="70" Description="Đến |map1| gặp |npc1| để nhận nhiệm vụ. Mỗi ngày có thể làm 1 vòng nhiệm vụ (tương đương 20 nhiệm vụ). Hoàn thành nhiệm vụ 10, 20 sẽ nhận được Bảo Rương Thần Bí." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Bảo Rương Thần Bí'}}"></Activity><Activity Name="Nhiệm Vụ Treo Thưởng" linkType="1" resCode="3130090000021" idx="" NID="568,569" NPC="Bảng Nhiệm Vụ Treo Thưởng" MID="9,10" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="10" Description="Hãy đến |map1| tìm |npc1| và đến |map2| tìm |npc2|, ở đây có rất nhiều nhiệm vụ treo thưởng với độ khó và phần thưởng khác nhau, nếu hoàn thành sẽ nhận được phần thưởng kinh nghiệm hậu hĩnh, hoàn thành các nhiệm vụ cấp 30 trở lên còn có thể nhận được Lệnh Bài Treo Thưởng và nguyên liệu chế tạo. Mỗi ngày có thể làm miễn phí 10 lần, có thể dùng Đông Huyền Lệnh Kỳ để làm mới bảng nhiệm vụ, tối đa có thể làm mới 4 lần." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'}}"></Activity><Activity Name="Truyền thuyết thủ hộ" linkType="1" resCode="3130090000003" idx="" NID="936" NPC="Vệ Sĩ Quyến Cố" MID="30" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="20" Description="Vô Ưu Đại Lục từng là một mảnh đất tràn đầy linh khí, nhưng gần đây do yêu ma xâm nhập mà linh khí nơi đây bị suy giảm, ảnh hưởng đến sự tu luyện của các thành viên. Vì thế, để giúp cho các thành viên mới có thể dễ dàng luyện cấp, trách nhiệm của các thành viên cấp độ cao là phải đánh bại Yêu thú ở các bản đồ. Mỗi ngày có thể đến |map1| gặp |npc1| để nhận 5 lần nhiệm vụ “Khiêu chiến Yêu thú”. Tại mỗi bản đồ hoang dã đều có 1 Yêu thú, đánh bại Yêu thú nơi nào sẽ trở thành Thủ hộ của nơi đó. Cấp độ tối thiểu để khiêu chiến Yêu thú = Cấp độ tối thiểu vào bản đồ + 20, cấp độ tối đa để khiêu chiến Yêu thú = cấp độ tối thiểu vào bản đồ + 40, có thể xem cấp độ tối thiểu vào bản đồ trên bản đồ thế giới. Có thể khiêu chiến 1 người hoặc lập nhóm 2 người. Mỗi khi tiêu diệt Yêu thú đều có xác suất nhận được Linh Hồn Thạch." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Sau khi hoàn thành nhiệm vụ sẽ nhận&#10;các loại Linh Hồn Thạch.'}}"></Activity><Activity Name="Thương Nhân Đạo Cụ" linkType="1" resCode="3130090000017" idx="" NID="411" NPC="Thương Nhân Đạo Cụ" MID="" LINE="Tất cả kênh" Time="-1|00:00-23:59" Level="10" Description="Thương Nhân Đạo Cụ là người có hành tung bất định, thích phiêu dạt khắp nơi, muốn gặp được ông ta không phải là chuyện dễ dàng. Rất nhiều người muốn gặp được ông ấy do ông ta luôn mang theo bên mình rất nhiều bảo thạch quý giá. Chỉ cần gặp được ông ấy, bạn sẽ có thể đổi miễn phí bảo thạch với ông ấy. Gần đây mọi người còn đồn đại ông ấy đang mở một dịch vụ buôn bán mới, đó là dùng vàng mua vật phẩm bán đổi lấy bạc." Award="{'0':{'itemId':'-1','iconCode':'4030200180205','description':'Các loại sách kỹ năng pet,&#10;các loại bảo thạch, còn được tham gia&#10;nhiệm vụ đổi bảo thạch.'}}"></Activity><Activity Name="Bảo Vệ Vô Ưu" linkType="4" resCode="3130090000010" idx="" NID="" NPC="Liên Minh Tà Ác" MID="11,12,13,15,25,32,39" LINE="Kênh 3-5" Time="0,1,2,3,4|19:00-20:00" Level="30" Description="Trong thời gian sự kiện，tại |map1|，|map2|，|map3|，|map4|，|map5|，|map6|，|map7| sẽ xuất hiện 1 đám hải tặc quấy phá. Tiêu diệt được chúng sẽ nhận được'Kinh nghiệm'và nhiều phần thưởng quý." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180205','description':'Có cơ hội nhận Bản Đồ Kho Báu,&#10;Ngũ Sắc Thần Thạch và&#10;nhiều vật phẩm khác'}}"></Activity><Activity Name="Hái nấm và trái cây" linkType="1" resCode="3130090000013" idx="" NID="376" NPC="Nhà Hàng Âu Dương" MID="9" LINE="Kênh 3-5" Time="0,2,4,6|15:00-15:30" Level="20" Description="Sau những trận mưa rào, ở các khu vực màu mỡ như Đông Xuất Vân, Lê Dương Bắc, Lê Dương Đảo... sẽ xuất hiện rất nhiều nấm và trái cây, khi ấy |npc1| ở |map1| sẽ nhờ người giúp đi thu thập, nếu muốn kiếm thêm chút thu nhập thì hãy nhanh đến đó báo danh đi! Có lúc sẽ có bọn cướp đến cướp trái cây và nấm, vì thế nếu muốn yên tâm hái nấm thì trước tiên nên đuổi bọn cướp đi trước, có thể còn có cơ hội nhận được nhiều vật phẩm quý trên người bọn cướp đấy." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200180041','description':'Ngân phiếu'}}"></Activity><Activity Name="Ác Linh Hiện Thế" linkType="4" resCode="3130090000009" idx="" NID="" NPC="Ác Linh" MID="14,14,42" LINE="Kênh 3-5" Time="6|19:00-20:00" Level="50" Description="|map1| luôn là nơi tụ tập của bọn cô hồn dạ quỷ! Các tộc trưởng phải tốn nhiều công sức mỗi năm phong ấn lại nơi này. Nhưng lúc này tại kênh 3, 4, 5 map |map2|, phong ấn bị phá vỡ và bọn chúng đã chạy thoát đến |map3| chuẩn bị làm loạn! Hãy nhanh chóng thu phục chúng." Award="{'0':{'itemId':'-1','iconCode':'4030200180347','description':'Kinh nghiệm'},'1':{'itemId':'-1','iconCode':'4030200020001','description':'Phần thưởng nguyên liệu.'}}"></Activity></Node><Node name="Boss"><Boss Name="Thất Sắc Kê" NID="706" MID="3" LINE="Tất cả kênh" Level="5" Description="Giới thiệu BOSS: Lông đuôi của loại Thất Kê Sắc này có 7 màu sặc sỡ, là loại quái có mức độ nguy hiểm giống như Kê Vương ở Vân Đài.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Thỏ Điên Răng Vổ" NID="707" MID="2" LINE="Tất cả kênh" Level="10" Description="Giới thiệu BOSS: Thỏ Răng Vố vốn là một sinh vật nhỏ bé đáng yêu ở Vô Ưu Đại Lục, nhưng từ khi bị tác động của một sức mạnh thần bí nào đó, chúng ngày càng trở nên điên cuồng, chúng thường tấn công người qua đường một cách hung tợn, dần dần, mọi người gọi chúng là Thỏ Điên.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Trưởng Lão Sơn Quái" NID="708" MID="4" LINE="Tất cả kênh" Level="15" Description="Giới thiệu BOSS: Thật ra loại tiểu quái độc nhãn này không phải là quái vật, chúng vốn là các Tinh Linh Nham Thạch tu hành trong núi, sống thành quần thể trong rừng sâu, mỗi quần thể do một vị trưởng lão dẫn đầu. Loại tinh linh này không thích tấn công, nhưng lại có ý thức mạnh mẽ về lãnh địa, chúng sẽ dồn hết sức tấn công con người nếu họ xâm chiếm lãnh địa của chúng.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Ma Vương Bát Giác" NID="709" MID="15" LINE="Tất cả kênh" Level="20" Description="Giới thiệu BOSS: Người thống trị toàn bộ Lê Dương Hồ chính là bộ tộc Bạch Tuộc, tộc trưởng của họ là một con Bạch Tuộc khổng lồ tự xưng là Ma Vương Bát Giác, tên này có dã tâm vô cùng to lớn, hắn không chỉ xưng bá ở Lê Dương Hồ mà còn tuyên bố muốn thống trị thế giới dưới nước ở trên toàn Đại Lục.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Quân Sư Cẩu Đầu" NID="710" MID="40" LINE="Tất cả kênh" Level="20" Description="Giới thiệu BOSS: Nhóm Đạo Tặc Sa Mạc tàn sát bừa bãi ở phía Tây của Vô Ưu Đại Lục, là cơn ác mộng của mọi thương nhân, hai tên Quân Sư Cẩu Đầu của chúng là những kẻ rất biết bày mưu tính kế, chúng đã thống lĩnh nhóm đạo tặc chiếm cứ Thiên Lục Châu duy nhất trên sa mạc.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Gấu Tuyết Tàn Bạo" NID="713" MID="33" LINE="Tất cả kênh" Level="25" Description="Giới thiệu BOSS: Gấu Tuyết Tàn Bạo chính là vương giả trong Lạp Tuyết Địa, lớp da lông dày đã tạo nên khả năng phòng ngự tuyệt vời cho chúng, những cái vuốt sắc bén chính là vũ khí tấn công tạo ra sức sát thương cao nhất.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Ốc Giáo Quan" NID="711" MID="17" LINE="Tất cả kênh" Level="30" Description="Giới thiệu BOSS: Tập đoàn Ốc là kẻ bám đuôi bộ tộc Bạch Tuộc tren Lê Dương Hồ, Ốc Giáo Quan lợi dụng ưu thế của lớp vỏ cứng cáp vốn có của ốc để huấn luyện ra nhiều nhóm Cận Vệ giỏi cho Đại Vương Bạch Tuộc.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Cổ Thụ Lão Yêu" NID="712" MID="26" LINE="Tất cả kênh" Level="30" Description="Giới thiệu BOSS: Sống trong rừng cổ thụ ở Quang Bình Nguyên, có một số cổ thụ lâu đời đã hóa thành tinh, nhưng bản tính của những cổ thụ này vốn rất ôn hòa, chỉ khi nào gặp nguy hiểm mới tấn công.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Chiến Thần Sói" NID="714" MID="41" LINE="Tất cả kênh" Level="35" Description="Giới thiệu BOSS: Sói là một sinh vật hung tàn và khát máu, nhưng Sói cũng có nguyên tắc riêng của Sói, chúng tôn thờ sức mạnh, chúng sẽ phục tùng cho sức mạnh lớn hơn chúng, vì vậy phải có một con đứng đầu trong bộ tộc Sói, đây là con sói mạnh mẽ nhất, được gọi là Chiến Thần Sói.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Miêu Vương" NID="716" MID="34" LINE="Tất cả kênh" Level="35" Description="Giới thiệu BOSS: Miêu Vương là một Tinh Linh thoắt ẩn thoắt hiện mà thiên nhiên ban cho Anh Vũ Cảnh, nó rất hiền lành và không xảo trá, khi bạn gặp nguy hiểm, nó sẽ âm thầm giúp đỡ bạn, nhưng khi tính trẻ con trỗi dậy thì nó cũng sẽ lén true chọc bạn đấy.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Nấm Yêu Huyết Hồng" NID="717" MID="27" LINE="Tất cả kênh" Level="40" Description="Giới thiệu BOSS: Đây là loại Nấm Yêu được tạo thành do hấp thụ khí tà ác, toàn thân có màu đỏ rực, độc của nó không có gì so sánh được, nó luôn sử dụng những màu sắc sặc sỡ, bắt mắt để cám dỗ người qua đường để họ trở thành miếng mồi ngon giúp nó tiến hóa.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Hấp Huyết Hoa Yêu" NID="719" MID="34" LINE="Tất cả kênh" Level="40" Description="Giới thiệu BOSS: Loại hoa khổng lồ này vốn không phải là yêu quái, nhưng thức ăn của nó là máu, nó luôn ẩn nấp trong rừng cây để săn bắt những loài động vật nhỏ để sinh sống, do sợ hãi nên con người đã gọi chúng là Hấp Huyết Hoa Yêu.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Gấu Đen" NID="715" MID="27" LINE="Tất cả kênh" Level="45" Description="Giới thiệu BOSS: Gấu Đen là một loại mạnh nhất trong họ Gấu, sức mạnh của nó cao hơn 5 lần so với Gấu Tuyết, nếu bạn không địch lại Gấu Tuyết mà muốn khiêu chiến với Gấu Đen thì chẳng khác nào tự tìm cái chết.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Dạ Xoa Vương" NID="718" MID="8" LINE="Tất cả kênh" Level="45" Description="Giới thiệu BOSS: Dạ Xoa là yêu quái bóng đêm, chúng thường đi loanh quanh khắp nơi trong đêm tối, mỗi khi ăn được thịt người thì chúng rất vui, Dạ Xoa Vương là kẻ duy nhất có hai cánh trong lũ Dạ Xoa, nó có thể bay lên trời cao.&#10;BOSSVật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Thủy Tinh Bào" NID="822" MID="5" LINE="Tất cả kênh" Level="55" Description="Giới thiệu BOSS: Tuy Thủy Tinh Bào sống ở Lê Dương Hồ, nhưng nó không hề lệ thuộc vào Bạch Tuộc Vương, nó là một loại sinh vật sống đan xen giữa động vật và thực vật, sở hữu một sức mạnh không thể tưởng tượng nổi.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Cự Nhân Ma" NID="823" MID="14" LINE="Tất cả kênh" Level="60" Description="Giới thiệu BOSS: Tộc Cự Nhân là Man tộc sinh sống trong sa mạc từ thời viễn cổ đến nay, Cự Nhân Ma là người đứng đầu tộc, chiến tranh và  thảo phạt chính là ý nghĩa cuộc sống của họ.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Hải Tinh Phệ Hồn" NID="824" MID="6" LINE="Tất cả kênh" Level="65" Description="Giới thiệu BOSS: Hải Tinh Phệ Hồn là đại phù thủy của bộ tộc Bạch Tuộc trong Lê Dương Thôn, ma lực phù phép của nó có thể giúp cho các chiến sĩ của đại quân Bạch Tuộc không biết mệt mỏi, không sợ mất mạng để chiến đấu tới cùng.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Ác Ma Thượng Cổ" NID="825" MID="42" LINE="Tất cả kênh" Level="70" Description="Giới thiệu BOSS: Vào thời viễn cổ, Thái Thản của tộc người khổng lồ gây ra tội nghiệt và bị đày đến địa ngục, hóa thân thành Ác Ma, nó sở hữu sức mạnh to lớn từ sự căm phẫn đủ để hủy diệt mọi thứ.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Ong Cửu Li Kịch Độc" NID="826" MID="16" LINE="Tất cả kênh" Level="75" Description="Giới thiệu BOSS: Ong Cửu Li Kịch Độc được đặt tên dựa vào độc tính của nó, tương truyền rằng chỉ cần bị gai độc của nó làm bị thương thì phải sau thời gian đủ để đi hết 9 dặm đường, độc tính của nó mới phát tác và gây tử vong, trong thời gian đó, cơ thể sẽ phải chịu nhiều giày vò, đau đớn.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Thần Cuồng Bạo" NID="827" MID="35" LINE="Tất cả kênh" Level="75" Description="Giới thiệu BOSS: Vị thần bị ác ma Abate nô dịch và điều khiển, Abate đã cải tạo hắn, giúp hắn có được sức mạnh to lớn, nhưng hắn phải mất đi tất cả lý trí và chỉ nghe lệnh của Abate mà thôi.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Ác Hổ Ma Giới" NID="828" MID="28" LINE="Tất cả kênh" Level="80" Description="Giới thiệu BOSS: Đây là nhóm binh sĩ mạnh mẽ dưới trướng của Tử Thần, có hình dạng như hổ nhưng thật ra không phải hổ, hình dạng hổ của chúng được tạo thành bằng cách tập hợp những linh hồn ai oán ở sâu dưới địa ngục, nhưng chúng rất hiếm khí xuất hiện ở thế giới loài người.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Băng Cung Chiến Thần" NID="829" MID="22" LINE="Tất cả kênh" Level="85" Description="Giới thiệu BOSS: Là chiến sĩ có sức chiến đấu mạnh mẽ nhất trong thế giới băng tuyết, toàn thân được bao bọc bởi một lớp băng cứng, tay cầm Búa khổng lồ, là totem tinh thần cho các sinh linh trong thế giới  băng tuyết.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Yêu Quái Ẩn Trúc" NID="1545" MID="7" LINE="Tất cả kênh" Level="90" Description="Giới thiệu BOSS: Là loại Trúc Yêu ẩn thân ở Quân Cổ Đạo, tuy nó có vẻ ốm yếu nhưng lại có sức mạnh tinh thần vô cùng to lớn, nếu không có sự kiên định mạnh mẽ thì sẽ dễ dàng bị nó khống chế.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Cự Ma Ảo Thạch" NID="1546" MID="18" LINE="Tất cả kênh" Level="95" Description="Giới thiệu BOSS: Là loại quái vật khổng lồ sở hữu sức mạnh của trái đất, nó là biểu tượng của thế lực ma quái, trên thế gian hiếm có ai chịu được một đòn tấn công của nó.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Ma Cát Chỉ Phong" NID="1547" MID="21" LINE="Tất cả kênh" Level="95" Description="Giới thiệu BOSS: Là loại quái vật kỳ dị sở hữu sức mạnh cuồng phong, nó không có hình dáng cụ thể, lúc ẩn lúc hiện, vì vậy sức phá hủy vật lý của nó không mạnh lắm, có điều sức mạnh ma pháp của nó đủ để làm cho người khác phải khiếp sợ.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Siêu Nhân Gấu Trúc" NID="1548" MID="19" LINE="Tất cả kênh" Level="100" Description="Giới thiệu BOSS: Không ai biết loài gấu trúc đáng yêu này đã đi đến Vô Ưu Đại Lục vào lúc nào, tuy có dáng vẻ ngây thơ, nhưng nó lại được kế thừa võ thuật thần bí của một quốc gia phương Đông nào đó.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Tư Tế Ma Cốc" NID="1549" MID="23" LINE="Tất cả kênh" Level="105" Description="Giới thiệu BOSS: Là Đại Tư Tế duy nhất trên thế gian của Ma Vương Abate, trấn thủ ở sâu bên trong Ma Cốc, hắn luôn nghĩ đủ cách để giải phong ấn cho Abate, vì vậy hắn đã đến trần gian một lần nữa.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="U Hồn Mê Quang" NID="1550" MID="29" LINE="Tất cả kênh" Level="110" Description="Giới thiệu BOSS: Được tạo ra từ năng lượng nguyên tố tích tụ trong Mê Quang Tự, nó có khả năng điều khiển 4 nguyên tố để tạo thành trận pháp bảo vệ bản thân.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Bóng Đen Thủ Hộ" NID="1551" MID="24" LINE="Tất cả kênh" Level="115" Description="Giới thiệu BOSS: Là linh hồn lưu lạc trong chiến trường cổ ở Thủ Hộ Địa, nó không có suy nghĩ và ý thức, chỉ mang đầy ý niệm thù hận và bảo vệ, sẽ tiêu diệt tất cả những ai có ý muốn tiếp cận với nó.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Lôi Nộ Chiến Ma" NID="1552" MID="61" LINE="Tất cả kênh" Level="115" Description="Giới thiệu BOSS: Lôi Nộ Chiến Ma vốn là con người, sau đó được các vị thần chọn làm người phán quyết, ban cho sức mạnh của sấm chớp, trở thành cỗ máy chuyên đi tiêu diệt những kẻ tà ác.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Đoạt Mộng Ma Linh" NID="1553" MID="36" LINE="Tất cả kênh" Level="120" Description="Giới thiệu BOSS: Là quái vật lạ lấy giấc mơ của con người làm thức ăn, chỉ cần đặt chân vào Thần Di Cảnh thì sẽ bị Ma Linh chiếm đoạt, nó chính là nguồn gốc của giấc mơ của con người.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Phệ Quang Dạ Ma" NID="1606" MID="67" LINE="Tất cả kênh" Level="121" Description="Giới thiệu BOSS: Là một loại ma xà xuất hiện ở Vĩnh Dạ Cảng, vô cùng hung ác, sống trong bóng tối, ma lực vô biên làm cho con người khiếp đảm trong bóng tối.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Phù Thủy Thánh Ước" NID="1554" MID="20" LINE="Tất cả kênh" Level="125" Description="Giới thiệu BOSS: Vốn là sứ giả lập khế ước với Thần, sau đó do khát khao sức mạnh ma pháp nên đã đi vào thế giới hắc ám, trở thành phù thủy, sự tồn tại của nó tượng trưng cho sự dung hợp giữa hai thế lực sáng và tối.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Ma Vương Cực Địa" NID="1555" MID="43" LINE="Tất cả kênh" Level="130" Description="Giới thiệu BOSS: Kẻ thống trị Đoạn Cốc, dã tâm của hắn rất lớn, huấn luyện Ma Binh ở Đoạn Cốc, tăng cường thực lực, mưu đồ lật đổ Abate để trở thành Ma Đế mới, thống lĩnh tam giới.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Yêu Quái Mị Hoặc" NID="1556" MID="56" LINE="Tất cả kênh" Level="140" Description="Giới thiệu BOSS: Mị Hoặc Lâm vốn là quê hương của Ảo Thuật Sư, trong một lần xảy ra kiếp nạn, các Ảo Thuật Sư ở trong rừng đã bị vong mạng, các vong hồn cứ lưu lại không chịu tan đi, rồi biến thành yêu quái cứ mãi ẩn dật trong rừng sâu.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Kỵ Sĩ Cơ Giáp" NID="1695" MID="44" LINE="Tất cả kênh" Level="145" Description="Giới thiệu BOSS: Đã từng là kỵ sĩ bảo vệ Vô Ưu nhưng trong đại chiến ác ma, đã bị nhiễm độc ma làm biến chất trái tim người dũng sĩ.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Phản Quân Cổ Thành" NID="1697" MID="37" LINE="Tất cả kênh" Level="150" Description="Giới thiệu BOSS: Mãnh tướng dưới trướng Thành Chủ, được xưng tụng là thần chết Cổ Thành, không biết bao nhiêu dũng sĩ đã chết dưới tay tên thủ ác này.&#10;Vật phẩm rớt: nguyên liệu, bảo thạch, thần khí phụ ..."></Boss><Boss Name="Chiến Thần" NID="182" MID="42" LINE="Kênh 1" Level="60" Description="Giới thiệu BOSS: 1 trong số ngũ đại yêu ma đối đầu với phe chính nghĩa, khi xuất hiện thì toàn thân tỏa ra ngọn lửa yêu ma quái dị, chân tướng thật sự đến nay vẫn chưa ai biết."></Boss><Boss Name="Ma Thần" NID="183" MID="35" LINE="Kênh 1" Level="70" Description="Giới thiệu BOSS: 1 trong số ngũ đại yêu ma đối đầu với phe chính nghĩa, khi xuất hiện thì toàn thân tỏa ra ngọn lửa yêu ma quái dị, chân tướng thật sự đến nay vẫn chưa ai biết."></Boss><Boss Name="Tà Thần" NID="184" MID="22" LINE="Kênh 1" Level="80" Description="Giới thiệu BOSS: 1 trong số ngũ đại yêu ma đối đầu với phe chính nghĩa, khi xuất hiện thì toàn thân tỏa ra ngọn lửa yêu ma quái dị, chân tướng thật sự đến nay vẫn chưa ai biết."></Boss><Boss Name="Tử Thần" NID="185" MID="23" LINE="Kênh 1" Level="90" Description="Giới thiệu BOSS: 1 trong số ngũ đại yêu ma đối đầu với phe chính nghĩa, khi xuất hiện thì toàn thân tỏa ra ngọn lửa yêu ma quái dị, chân tướng thật sự đến nay vẫn chưa ai biết."></Boss><Boss Name="Ác Thần" NID="920" MID="29" LINE="Kênh 1" Level="120" Description="Giới thiệu BOSS: 1 trong số ngũ đại yêu ma đối đầu với phe chính nghĩa, khi xuất hiện thì toàn thân tỏa ra ngọn lửa yêu ma quái dị, chân tướng thật sự đến nay vẫn chưa ai biết."></Boss><Boss Name="Thạch Yêu" NID="923" MID="18" LINE="Kênh 1" Level="90" Description="Giới thiệu BOSS: Quái vật cực mạnh hình thành nhờ hấp thu sức mạnh hắc ám của trời đất, có thân hình cứng như đá và cực kỳ hung hãn, tốt nhất đừng nên chọc giận hắn."></Boss><Boss Name="Bách Thảo Tinh" NID="169" MID="19" LINE="Kênh 1" Level="95" Description="Giới thiệu BOSS: Vua thực vật sinh sống tại Linh Lan, cực mạnh và đầy quyền lực, gần đây hắn đang triệu tập lực lượng để chống lại các gia tộc."></Boss><Boss Name="Phủ Ma" NID="170" MID="21" LINE="Kênh 1" Level="95" Description="Giới thiệu BOSS: Yêu thú hấp thụ sự hắc ám, vẻ ngoài cực kỳ hung ác khiến cho không ai dám đến gần, khi hắn vung chiếc rìu khổng lồ trên tay là lúc Vô Ưu Đại Lục đối diện với đạn nạn."></Boss><Boss Name="Ma Chiến" NID="171" MID="23" LINE="Kênh 1" Level="110" Description="Giới thiệu BOSS: Ma chiến sĩ có thể điều khiển được hiện thực và giấc mơ, tính cách kỳ dị, pháp thuật vô biên."></Boss><Boss Name="Quỷ Vương" NID="918" MID="24" LINE="Kênh 1" Level="120" Description="Giới thiệu BOSS: Yêu ma trong truyền thuyết đã từng hoành hành khắp Vô Ưu Đại Lục mấy trăm năm trước, sau đó bị các dũng sĩ Vô Ưu phong ấn lại. Thời gian trôi qua, phong ấn ngày càng yếu đi, với sức mạnh của mình, hắn đã phá vỡ phong ấn và quay lại quấy phá đại lục."></Boss><Boss Name="Avatar" NID="1132" MID="36" LINE="Kênh 1" Level="130" Description="Giới thiệu BOSS: Sứ giả thần bí từ một thế giới thần bí vượt không gian đến đây, có sức mạnh kỳ lạ và có ý thù địch với cư dân Vô Ưu Đại Lục."></Boss><Boss Name="Atula Vương" NID="1151" MID="20" LINE="Kênh 1" Level="135" Description="Giới thiệu BOSS: Hiếu chiến, khát máu, muốn nuốt chửng tất cả, Atula Vương đại diện cho bóng tối, cho sự độc ác."></Boss><Boss Name="Solomon" NID="1163" MID="56" LINE="Kênh 1" Level="140" Description="Giới thiệu BOSS: Vua ma thần vĩ đại, không chỉ cực mạnh mà còn là kẻ đứng đầu ma giới, lãnh đạo 72 ma thần."></Boss><Boss Name="Mehdi" NID="1747" MID="37" LINE="Kênh 1" Level="150" Description="Giới thiệu BOSS: Đây là con trai của thần Sấm Sét, vì bị thần Hắc Ám đầu độc nên cùng với đứa em trai của mình - thần Sức Mạnh liên kết giết chết cha ruột của mình và sai khiến Solomon hủy diệt Đại Lục Vô Ưu."></Boss><Boss Name="Gấu Siêu Mập" NID="1638" MID="6" LINE="Tất cả kênh" Level="65" Description="Giới thiệu BOSS： Là loại gấu xuất thân từ vùng thảo nguyên xa xôi, dưới trướng của Ma Tinh, có sức mạnh phi thường và khả năng bay lượn.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ...."></Boss><Boss Name="Thầy Tế Lễ" NID="1639" MID="42" LINE="Tất cả kênh" Level="70" Description="Giới thiệu BOSS： Sinh thời là thầy tế ở Vô Ưu, khi chết đi ma tâm oán hờn nhân gian nên thường lởn vởn trên không trung tấn công người khác.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ...."></Boss><Boss Name="Yêu Bướm Mộng Ma" NID="1640" MID="16" LINE="Tất cả kênh" Level="75" Description="Giới thiệu BOSS：Là thuộc hạ của Phong Điệp Cuồng Vũ. Tương truyền mấy ngàn năm trước, đây là biến thân của bươm bướm bị nguyền rủa. Vẻ bề ngoài xinh đẹp nhưng lại là một loại mộng ma đáng sợ.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Băng Thạch Tuyết Thần" NID="1641" MID="35" LINE="Tất cả kênh" Level="80" Description="Giới thiệu BOSS： Là quái vật có sức mạnh Băng Tuyết và Tuyết Nguyên lớn mạnh. Tính tình nóng nảy, thường xuyên tạo sấm sét.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Bá Chủ Bù Nhìn" NID="1642" MID="28" LINE="Tất cả kênh" Level="85" Description="Giới thiệu BOSS： Là bù nhìn được từ sức mạnh thần thánh, có thể cử động linh hoạt, có sức mạnh cực lớn.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Băng Xuyên Thủ Hộ" NID="1643" MID="22" LINE="Tất cả kênh" Level="90" Description="Giới thiệu BOSS： Là người canh giữ trung thành, không ngại khó, tính tình ôn hòa nhưng chỉ cần có người đột nhập vào Tuyết Lâm thì sẽ phải chịu sự trừng phạt khủng khiếp.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Thần Chết" NID="1644" MID="7" LINE="Tất cả kênh" Level="95" Description="Giới thiệu BOSS： Có khả năng làm cho người chết đi sống lại bằng các oán khí của linh hồn. Cho nên nơi đây phủ đầy ám khí.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Tên Tan Sương Mù" NID="1645" MID="18" LINE="Tất cả kênh" Level="97" Description="Giới thiệu BOSS： Là thủ hạ của Abate, cung pháp vượt trội. Những linh hồn trúng phải mũi tên này đều bị tiêu diệt.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Pháp Khí Apollo" NID="1646" MID="21" LINE="Tất cả kênh" Level="100" Description="Giới thiệu BOSS： Là pháp khí ánh sáng của Apollo. Khi rớt xuống trần bị vẩn đục ma khí, dẫn dắt ma linh tạo nên ma lực cực lớn.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Đại Sư Hổ Vô" NID="1647" MID="19" LINE="Tất cả kênh" Level="105" Description="Giới thiệu BOSS： Tồn tại trong không gian thần bí ở Linh Lan. Khi 2 khoảng không giao hòa sẽ xuất hiện không gian hư không.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Thanatos" NID="1648" MID="23" LINE="Tất cả kênh" Level="110" Description="Giới thiệu BOSS： Còn gọi là Vị thần bóng đêm, thích sự tối tăm, kỳ dị, thường hay lấy mạng người khác vào đêm khuya nên được gọi là Thần chết.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Ánh Sáng Thanh Khiết" NID="1649" MID="29" LINE="Tất cả kênh" Level="115" Description="Giới thiệu BOSS： Được biến thân từ vết nứt ánh sáng mê ảo và trở thành quái vật đáng sợ.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Vị Thần Sa Ngã" NID="1650" MID="24" LINE="Tất cả kênh" Level="117" Description="Giới thiệu BOSS： Là vị thần nắm giữ pháp luật tối cáo nhưng bị ma giới quyến rũ lầm đường lạc lối, trở thành sinh vật khát máu đáng sợ.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Thầy Mo Nghịch Pháp" NID="1651" MID="61" LINE="Tất cả kênh" Level="120" Description="Giới thiệu BOSS： Là người canh giữ cổ xưa nhất, do học những ma pháp kỳ quái nên bị đuổi khỏi sư môn. Từ đó hắn hút máu người mà sống, luôn ấp ủ mưu đồ tiêu diệt Vô Ưu。Giới thiệu BOSS： Là người canh giữ cổ xưa nhất, do học những ma pháp kỳ quái nên bị đuổi khỏi sư môn. Từ đó hắn hút máu người mà sống, luôn ấp ủ mưu đồ tiêu diệt Vô Ưu.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Diệt Thần Chi Thủ" NID="1652" MID="36" LINE="Tất cả kênh" Level="125" Description="Giới thiệu BOSS： Là vị thần bị vứt bỏ, oán hận chất chồng, luôn muốn phá hủy mọi thứ. Ngay cả Abate còn phải nể hắn 3 phần.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Nữ Vương Phá Hoại" NID="1656" MID="67" LINE="Tất cả kênh" Level="127" Description="Giới thiệu BOSS： Nữ Vương đã nguyền rủa Vĩnh Dạ Cảng mãi mãi chìm vào bóng tối, phá hoại là sở thích của ả. Thậm chí ả còn lập cả đội quân trên không mưu đồ thôn tính Vô Ưu.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Ma Linh Dị Thú" NID="1653" MID="20" LINE="Tất cả kênh" Level="130" Description="Giới thiệu BOSS： Là pet yêu quý nhất của Atula Vương. Theo truyền thuyết, có một thần thú kỳ dị xuất hiện đại diện cho tội ác, có khả năng chiến đấu trên không&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Ảo Mộng Nữ Yêu" NID="1654" MID="43" LINE="Tất cả kênh" Level="135" Description="Giới thiệu BOSS： Là nữ yêu được sinh ra trong băng tuyết, có năng lực làm người khác thần siêu phách lạc.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="harrell Omnic" NID="1655" MID="56" LINE="Tất cả kênh" Level="140" Description="Giới thiệu BOSS： Là thuộc hạ đắc lực của Solomon, có thể chinh phục được hết các vũ khí ở Vô Ưu Đại Lục.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Cự Ma Thạch Tượng" NID="1694" MID="44" LINE="Tất cả kênh" Level="145" Description="Giới thiệu BOSS: Solomon đã dùng tà khí của mình để truyền vào 1 tảng đá lớn, khiến nó trở nên cứng rắn, đao thương bất nhập. Tính cách của tên yêu quái này vô cùng tàn bạo và hiếu chiến.&#10;Vật phẩm rớt: nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss><Boss Name="Vong Linh Ma Thuẫn" NID="1696" MID="37" LINE="Tất cả kênh" Level="150" Description="Giới thiệu BOSS: Vốn là cánh tay đắc lực của Vua Cổ Thành, nhưng vì hút phải quá nhiều ma khí, cuối cùng sa ngã trở thành linh hồn ác quỷ, quái vật ác độc nhất ở Cổ Thành.&#10;Vật phẩm rớt:nguyên liệu, lông vũ, cánh, thần khí phụ ..."></Boss></Node><Node name="FB"><FB Name="Mê Huyễn Động" NID="200" NPC="Sứ Giả Mở Phụ Bản" MID="31" Level="50" resCode="3130090000026" Description="Người chơi có thể đến |map1| gặp |npc|để nhận. Lão yêu quái ở Mê Huyễn Động đã sinh ra nhiều biến dị yêu quái cực mạnh. Đánh bại chúng, Mê Huyễn Động sẽ trở về vẻ thanh bình vốn có."></FB><FB Name="Ảo Ma Tháp" NID="200" NPC="Sứ Giả Mở Phụ Bản" MID="31" Level="60" resCode="3130090000026" Description="Người chơi có thể đến |map1| gặp |npc| để nhận. Trong Ảo Ma Tháp có rất nhiều quái vật cực mạnh, những người có năng lực có thể vào đây để thử thách bản thân, từ đó nâng cao tài nghệ."></FB><FB Name="Kho Báu Đại Mạc" NID="200" NPC="Sứ Giả Mở Phụ Bản" MID="31" Level="60" resCode="3130090000026" Description="Người chơi có thể đến |map1| gặp |npc| để nhận. Trong kho báu ở Hư Không Mạc từ lâu đã ẩn chứa vô vàn báu vật cũng như các yêu ma nguy hiểm, trải qua nhiều năm, Pharaoh bị phong ấn tại đây cũng dần dần thức tỉnh, mưu đồ thống lĩnh yêu ma làm loạn. Các dũng sĩ hãy mau đến đó thám hiểm 1 phen."></FB><FB Name="Lục Tiên Cảnh" NID="200" NPC="Sứ Giả Mở Phụ Bản" MID="31" Level="80" resCode="3130090000026" Description="Người chơi có thể đến |map1| gặp |npc| để nhận. Ẩn sâu trong vùng đất băng giá là một ốc đảo xanh tươi rực rỡ! Đây chính là lời đồn thổi được lan truyền khắp đại lục, nơi đó rốt cuộc ẩn chứa bí mật gì, hãy mau đi tìm hiểu thôi nào."></FB><FB Name="Liệt Diễm Thâm Uyên" NID="200" NPC="Sứ Giả Mở Phụ Bản" MID="31" Level="90" resCode="3130090000026" Description="Người chơi có thể đến |map1| gặp |npc| để nhận. Sâu trong Liệt Diễm Thâm Uyên là thế lực ác ma bị phong ấn, gần đây một thế lực đặc biệt đã hóa giải phong ấn, giải thoát cho Ma Vương Abate. Người chơi cần phải vào trong hang, tiêu diệt Ma Vương, ngăn chặn âm mưu xâm chiếm thế giới của hắn."></FB><FB Name="Trở Về Lang Huyệt" NID="200" NPC="Sứ Giả Mở Phụ Bản" MID="31" Level="100" resCode="3130090000026" Description="Người chơi có thể đến |map1| gặp |npc| để nhận. Tương truyền sâu trong hang động ở Vân Lộc Sơn có 1 con Sói Phù Thủy và rất nhiều yêu ma tu luyện ngàn năm. Gần đây Sói Phù Thủy tập hợp thuộc hạ làm loạn ở Vân Lộc Sơn, khiến cho người dân lo lắng... Người chơi muốn dẹp loạn cần lập nhóm và hỗ trợ nhau để hoàn thành nhiệm vụ."></FB><FB Name="Quỷ Hút Máu" NID="200" NPC="Sứ Giả Mở Phụ Bản" MID="31" Level="120" resCode="3130090000026" Description="Người chơi có thể đến |map1| gặp |npc| nhận nhiệm vụ. Nơi thâm sâu, u tối nhất của Vĩnh Dạ Cảng là vùng đất ngự trị bởi lũ quỷ hút máu. Chúng không ngừng tìm cách xưng bá Đại Lục Vô Ưu, gieo rắc bện tật. Phải vất vả lắm những thợ săn muỗi dũng cảm mới có thể lần ra sào huyệt của chúng. Ông hy vọng rằng các chiến sĩ có thể giúp ông tiêu diệt tận gốc lũ quỷ độc ác này."></FB></Node><Node name="LevelUp"><LevelUp Name="Đố vui có thưởng" Level="10" NID="" Time="1,3,5|20:00-20:20" Exp="4" Money="0" Hard="2" ResCode="4130220000007" Description="Người chơi cấp 10 trở lên có thể đến gặp |npc1| để tham gia. Trả lời đúng sẽ nhận được điểm thưởng dùng để đổi kinh nghiệm."></LevelUp><LevelUp Name="Tiệm thuốc Đông Huyền" Level="50" NID="412" Time="-1|00:00-23:59" Exp="3" Money="0" Hard="3" ResCode="4130220000004" Description="Người chơi cấp 50 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ thu thập, sau khi hoàn thành sẽ nhận được điểm kinh nghiệm."></LevelUp><LevelUp Name="Hồ Đông Huyền" Level="50" NID="280" Time="-1|00:00-23:59" Exp="3" Money="0" Hard="3" ResCode="4130220000004" Description="Người chơi cấp 50 trở lên có thể đến gặp |npc1| để nhận nhiệm vụ. Hoàn thành nhiệm vụ sẽ nhận được kinh nghiệm."></LevelUp><LevelUp Name="Nông trường pháp thuật" Level="50" NID="1263" Time="-1|00:00-23:59" Exp="3" Money="0" Hard="3" ResCode="4130220000004" Description="Người chơi cấp 50 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ trồng trọt, sau khi hoàn thành sẽ nhận được điểm kinh nghiệm."></LevelUp><LevelUp Name="Nhiệm vụ treo thưởng" Level="10" NID="568,569" Time="-1|00:00-23:59" Exp="4" Money="0" Hard="2" ResCode="4130220000006" Description="Người chơi cấp 10 trở lên mỗi ngày có thể đến Đông Huyền Thành gặp|npc1| hoặc đến Tinh Linh Thành gặp |npc2|nhận nhiệm vụ, sau khi hoàn thành sẽ nhận được điểm kinh nghiệm."></LevelUp><LevelUp Name="Nhiệm vụ gia tộc" Level="20" NID="" Time="-1|00:00-23:59" Exp="3" Money="3" Hard="1" ResCode="4130220000004" Description="Người chơi cấp 20 trở lên có thể đến gặp đạo sư của gia tộc mình để nhận nhiệm vụ. Hoàn thành nhiệm vụ sẽ nhận được kinh nghiệm."></LevelUp><LevelUp Name="Truyền thuyết thủ hộ" Level="20" NID="936" Time="-1|00:00-23:59" Exp="3" Money="0" Hard="3" ResCode="4130220000003" Description="Người chơi cấp 20 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ giết yêu thú, sau khi hoàn thành sẽ nhận được điểm kinh nghiệm, Linh Hồn Thạch."></LevelUp><LevelUp Name="Nhiệm Vụ Trị An" Level="30" NID="277" Time="-1|00:00-23:59" Exp="3" Money="0" Hard="2" ResCode="4130220000009" Description="Người chơi cấp 30 trở lên, mỗi ngày, có thể đến gặp |npc1| để nhận nhiệm vu. Hoàn thành nhiệm vụ sẽ nhận được kinh nghiệm."></LevelUp><LevelUp Name="Nhiệm Vụ Trừ Ma" Level="50" NID="3" Time="-1|00:00-23:59" Exp="3" Money="0" Hard="2" ResCode="4130220000003" Description="Người chơi cấp 50 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ. Sau khi hoàn thành nhiệm vụ sẽ nhận được kinh nghiệm."></LevelUp><LevelUp Name="Nhiệm Vụ Thần Tu" Level="50" NID="929" Time="-1|00:00-23:59" Sx="5" Money="0" Hard="3" ResCode="4130220000001" Description="Người chơi cấp 50 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ. Sau khi hoàn thành nhiệm vụ sẽ nhận được điểm thần tu."></LevelUp><LevelUp Name="Luyện pet" Level="50" NID="280" Time="-1|00:00-23:59" Exp="5" Money="0" Hard="3" ResCode="4130220000012" Description="Người chơi cấp 50 trở lên mỗi ngày có thể đến gặp |npc1| nhận nhiệm vụ. sau khi hoàn thành sẽ nhận được điểm kinh nghiệm pet."></LevelUp><LevelUp Name="Nhiệm vụ tu hành" Level="70" NID="434" Time="-1|00:00-23:59" Exp="4" Money="0" Hard="3" ResCode="4130220000001" Description="Người chơi cấp 70 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ, sau khi hoàn thành sẽ nhận được điểm kinh nghiệm."></LevelUp><LevelUp Name="Nhiệm vụ 200 vòng" Level="70" NID="48" Time="-1|00:00-23:59" Exp="5" Money="0" Hard="5" ResCode="4130220000006" Description="Người chơi cấp 70 trở lên cứ cách 3 ngày có thể đến gặp |npc1| nhận nhiệm vụ liên tục, sau khi hoàn thành sẽ nhận được điểm kinh nghiệm."></LevelUp><LevelUp Name="Ảo Ma Tháp" Level="60" NID="1135" Time="-1|00:00-23:59" Exp="5" Money="0" Hard="4" ResCode="4130220000003" Description="Người chơi cấp 60 trở lên có thể đến gặp |npc1| nhận nhiệm vụ tiêu diệt Ma Ảnh Thủ Hộ, sau khi hoàn thành sẽ nhận được điểm kinh nghiệm."></LevelUp></Node><Node name="EarnMoney"><EarnMoney Name="Hái nấm và trái cây" Level="20" NID="376" MID="9" Time="0,2,4,6|15:00-15:30" Exp="4" Money="4" Hard="1" ResCode="4130220000008" Description="Sau khi sự kiện bắt đầu, người chơi cấp 20 trở lên có thể đến gặp |npc1| để nhận nhiệm vụ thu thập nấm và trái cây, sau khi hoàn thành sẽ nhận được ngân phiếu."></EarnMoney><EarnMoney Name="Nhiệm Vụ Trị An" Level="30" NID="277" MID="9" Time="-1|00:00-23:59" Exp="1" Money="4" Hard="2" ResCode="4130220000009" Description="Người chơi cấp 30 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ. Sau khi hoàn thành nhiệm vụ sẽ nhận được Ngân phiếu và Bạc."></EarnMoney><EarnMoney Name="Thi Câu Cá" Level="50" NID="1572" MID="9" Time="6|14:00-15:00" Exp="3" Money="3" Hard="1" ResCode="4130220000008" Description="Người chơi cấp 50 trong thời gian sự kiện ngoài việc câu cá bình thường có thể câu được những loại cá đặc biệt, sử dụng chúng sẽ nhận được ngân phiếu."></EarnMoney></Node><Node name="Treasure"><Treasure Name="Thương nhân đạo cụ" Level="10" NID="" MID="" Time="-1|00:00-23:59" Quality="4" Exp="0" Hard="3" ResCode="4130220000006" Description="Thương Nhân Đạo Cụ cứ cách một khoảng thời gian sẽ xuất hiện ở các bản đồ hoang dã, có thể gặp ông ấy để đổi bảo thạch cần thiết hoặc dùng bạc để mua 1 số vật phẩm vốn chỉ bán trên shop."></Treasure><Treasure Name="Cây Ước Nguyện" Level="10" NID="387" MID="34" Time="-1|00:00-23:59" Quality="5" Exp="0" Hard="1" ResCode="4130220000010" Description="Người chơi có thể đến chỗ |npc1| và dùng các hình thức ước nguyện để nhận được các thần khí chính cao cấp, Ma Thú Yếu Quyết, các công thức kỹ năng sinh hoạt..."></Treasure><Treasure Name="Bảo Vệ Vô Ưu" Level="30" NID="" MID="11,12,13,15,25,32,39" Time="0,1,2,3,4|19:00-20:00" Quality="4" Exp="3" Hard="4" ResCode="4130220000009" Description="Trong thời gian sự kiện，tại |map1|，|map2|，|map3|，|map4|，|map5|，|map6|，|map7| sẽ xuất hiện 1 đám hải tặc quấy phá. Tiêu diệt được chúng sẽ nhận được'Kinh nghiệm'và nhiều phần thưởng quý."></Treasure><Treasure Name="Nhiệm Vụ Trừ Ma" Level="50" NID="3" MID="10,31,38" Time="-1|00:00-23:59" Quality="4" Exp="2" Hard="4" ResCode="4130220000003" Description="Người chơi cấp 50 trở lên mỗi ngày có thể đến gặp |npc1| để nhận nhiệm vụ. Hoàn thành nhiệm vụ có cơ họi nhận Kết Tinh Trí Thạch dùng để đổi lấy trang bị pet."></Treasure><Treasure Name="Không Gian Đa Chiều" Level="50" NID="1166" MID="55" Time="-1|00:00-23:59" Quality="3" Exp="1" Hard="3" ResCode="4130220000005" Description="Người chơi có thể đến |map1| gặp |npc1| để nhận nhiệm vụ. Ở gần Điêu Linh Thôn có 1 hang động sâu hun hút, bên trong có rất nhiều quái vật bay lượn kỳ dị, đánh bại chúng sẽ nhận được các bảo thạch thần kỳ, chỉ cần mang theo 1 tấm bản đồ đặc biệt là có thể bay vào đó thám hiểm. Nhớ là phải có vật phẩm bay thì mới có thể đấu với các quái vật bay lượn."></Treasure><Treasure Name="Ác Linh Hiện Thế" Level="50" NID="" MID="14,42" Time="5|15:00-16:00#6|19:00-20:00" Quality="3" Exp="3" Hard="4" ResCode="4130220000001" Description="Khi sự kiện bắt đầu, người chơi cấp 50 trở lên có thể tìm tiêu diệt ác linh tại |map1| và |map2|, kênh 3 4 5. Sau khi hoàn thành nhiệm vụ sẽ nhận được nhiều phần thưởng."></Treasure><Treasure Name="Nhiệm Vụ 200 vòng" Level="70" NID="48" MID="" Time="-1|00:00-23:59" Quality="5" Exp="5" Hard="5" ResCode="4130220000006" Description="Người chơi cấp 70 trở lên, cứ cách 3 ngày thì có thể đến gặp |npc1| để nhận chuỗi nhiệm vụ, sau khi hoàn thành sẽ nhận được kinh nghiệm, có xác suất nhận được nguyên liệu cao cấp, bảo thạch và Ma Thú Yếu Quyết."></Treasure></Node><Node name="Sports"><Sports Name="Đấu Trường Pet" Level="35" NID="" MID="" Time="-1|00:00-23:59" Quality="0" Exp="0" Hard="3" ResCode="4130220000002" Description="Người chơi cấp 35, sau khi ấn nút [Đấu Pet] để tiến hành báo danh tham gia thi đấu trong tuần đó. Nếu pet của bạn thắng có thể đem điểm thưởng nhận được đến Đông Huyền Thành tọa độ(296,160)để đổi phần thưởng."></Sports><Sports Name="Bang Hội Chiến" Level="30" NID="211,211" MID="9,9" Time="4|20:00-21:00" Quality="0" Exp="0" Hard="3" ResCode="4130220000002" Description="Sau khi sự kiện bắt đầu, người chơi cấp 30 trở lên có thể đến kênh 2 tại |map1| và gặp |npc1| để vào."></Sports><Sports Name="Đoạt Bảo Kỳ Binh" Level="40" NID="47" MID="9" Time="5|19:00-20:10" Quality="0" Exp="0" Hard="4" ResCode="4130220000002" Description="Sau khi sự kiện bắt đầu, người chơi cấp 40 trở lên có thể đến |map1| và gặp |npc1| để đăng ký tham gia đấu trường đoạt bảo. Nếu thắng lợi sẽ có quyền đào kho báu trong đấu trường."></Sports><Sports Name="Giác Đấu Đông Huyền" Level="30" NID="1514" MID="9" Time="6|20:00-21:00" Quality="0" Exp="0" Hard="4" ResCode="4130220000002" Description="Sau khi sự kiện bắt đầu, người chơi cấp 30 trở lên có thể đến kênh 6 tại |map1| và gặp |npc1| để vào đấu trường. Sau khi thắng lợi sẽ được nhận điểm thưởng và huy chương, có thể đến Cửa hàng điểm thưởng đấu trường (296,160) ở Đông Huyền Thành để đổi phần thưởng."></Sports><Sports Name="Đấu Trường Achilles" Level="50" NID="1522" MID="30" Time="5|19:00-22:00" Quality="0" Exp="0" Hard="5" ResCode="4130220000002" Description="Sau khi sự kiện bắt đầu, người chơi cấp 50 trở lên có thể đến kênh 1 tại |map1| và gặp |npc1| để vào đấu trường liên server. Sau khi thắng lợi sẽ được nhận điểm thưởng và huy chương, có thể đến Shop điểm thưởng giác đấu (296,160) ở Đông Huyền Thành để đổi phần thưởng."></Sports><Sports Name="Chiến Trường Dũng Sĩ" Level="50" NID="" MID="" Time="4|21:00-22:00" Quality="0" Exp="0" Hard="5" ResCode="4130220000002" Description="Người chơi cấp 50 trở lên, sau khi sự kiện bắt đầu, đến kênh 1 và nhấp vào biểu tượng Chiến Trường Dũng Sĩ để vào chiến trường. Sau khi thi đấu thành công sẽ nhận được huy chương dùng để đổi phần thưởng ở Shop Điểm Thưởng Giác Đấu Đông Huyền Thành (296,160)."></Sports></Node></Panel>;
         xmlActivity = _loc1_;
         return _loc1_;
      }
      
      public function set DG_active(param1:DataGrid) : void
      {
         var _loc2_:Object = this._2118150722DG_active;
         if(_loc2_ !== param1)
         {
            this._2118150722DG_active = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"DG_active",_loc2_,param1));
         }
      }
      
      public function __txkcBtn_click(param1:MouseEvent) : void
      {
         openTXKC();
      }
      
      public function set bg(param1:Image) : void
      {
         var _loc2_:Object = this._3141bg;
         if(_loc2_ !== param1)
         {
            this._3141bg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
         }
      }
      
      public function set xmlActivity(param1:XML) : void
      {
         var _loc2_:Object = this._58843066xmlActivity;
         if(_loc2_ !== param1)
         {
            this._58843066xmlActivity = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xmlActivity",_loc2_,param1));
         }
      }
      
      public function __findback_click(param1:MouseEvent) : void
      {
         findback1();
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      public function __DG_active_itemClick(param1:ListEvent) : void
      {
         onActItemClickHandler(param1);
      }
      
      private function onDiaryItemClickHandler(param1:ListEvent) : void
      {
      }
      
      private function _DailyActPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 85;
         _loc1_.dataField = "Name";
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn1",_DailyActPanel_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward3() : ItemSlot
      {
         return this._939851608actAward3;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward4() : ItemSlot
      {
         return this._939851607actAward4;
      }
      
      private function _DailyActPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn9 = _loc1_;
         _loc1_.width = 60;
         _loc1_.dataField = "_numStr";
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn9",_DailyActPanel_DataGridColumn9);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      private function initVBox(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               if(!flag["diary"])
               {
                  clearDiaryProgress();
                  _core.remote.call("getCharDiaryData",new Responder(onGetDiaryData));
                  flag["diary"] = true;
               }
         }
      }
      
      private function onTimer(param1:TimerEvent) : void
      {
         var _loc2_:Date = new Date();
         timerDate = _loc2_.getDate();
         if(initDate != timerDate)
         {
            dailyActOnlineObj = {
               "time":0,
               "times":0
            };
            initDate = timerDate;
         }
         dailyActOnlineObj.time += 1;
         setOnlineActiveTimerText();
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward2() : ItemSlot
      {
         return this._939851609actAward2;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward0() : ItemSlot
      {
         return this._939851611actAward0;
      }
      
      [Bindable(event="propertyChange")]
      public function get actAward1() : ItemSlot
      {
         return this._939851610actAward1;
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      public function setButtonState(param1:*) : void
      {
         if(param1)
         {
            if(param1.gameintro)
            {
               buttonCricle(gameintro,true,"gameintro");
            }
            else
            {
               buttonCricle(gameintro,false,"gameintro");
            }
            if(int(_core.player.level) < 50)
            {
               findback.visible = false;
               txkcBtn.visible = false;
            }
            else
            {
               if(param1.txkcBtn)
               {
                  txkcBtn.visible = true;
                  if(param1.txkcBtn2)
                  {
                     buttonCricle(txkcBtn,true,"txkc");
                  }
                  else
                  {
                     buttonCricle(txkcBtn,false,"txkc");
                  }
               }
               else
               {
                  txkcBtn.visible = false;
               }
               findback.visible = true;
               if(param1.fback)
               {
                  buttonCricle(findback,true,"findback");
               }
               else
               {
                  buttonCricle(findback,false,"findback");
               }
            }
            if(int(_core.player.level) < 20)
            {
               autoTask.visible = false;
            }
            else
            {
               autoTask.visible = true;
               if(param1.autot)
               {
                  buttonCricle(autoTask,true,"autoTask");
               }
               else
               {
                  buttonCricle(autoTask,false,"autoTask");
               }
            }
            if(param1.vip)
            {
               buttonCricle(vip,true,"vip");
            }
            else
            {
               buttonCricle(vip,false,"vip");
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get totalAct() : BasicTxtButton
      {
         return this._849924434totalAct;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      public function buttonCricle(param1:*, param2:*, param3:*) : void
      {
         var _loc4_:MovieClip = null;
         if(param2)
         {
            if(param1)
            {
               if(Boolean(circleList[param3]) && !circleList[param3].hasCircle)
               {
                  _loc4_ = new (element as Class)();
                  _loc4_.x = -7;
                  _loc4_.y = -5;
                  param1.addChild(_loc4_);
                  circleList[param3].hasCircle = _loc4_;
               }
            }
         }
         else if(Boolean(circleList[param3]) && Boolean(circleList[param3].hasCircle))
         {
            param1.removeChild(circleList[param3].hasCircle);
            delete circleList[param3].hasCircle;
         }
      }
      
      public function autoTask1() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_AUTOTASK);
         if(_loc1_)
         {
            _loc1_.clickTaskSweep();
         }
      }
      
      private function set activityDescription(param1:String) : void
      {
         var _loc2_:Object = this._975828627activityDescription;
         if(_loc2_ !== param1)
         {
            this._975828627activityDescription = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activityDescription",_loc2_,param1));
         }
      }
      
      public function __gameintro_click(param1:MouseEvent) : void
      {
         gameintro1();
      }
      
      private function onGetDiaryData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         if(param1)
         {
            _loc2_ = _core.data.gameData[GamePredef.TBL_DIARY];
            _loc3_ = false;
            for(_loc4_ in param1)
            {
               if(Boolean(param1[_loc4_]) && _loc2_.hasOwnProperty(_loc4_))
               {
                  _loc2_[_loc4_]._num = param1[_loc4_];
                  if(_loc2_[_loc4_].max > 0)
                  {
                     _loc2_[_loc4_]._numStr = _loc2_[_loc4_]._num + "/" + _loc2_[_loc4_].max;
                  }
                  else
                  {
                     _loc2_[_loc4_]._numStr = _loc2_[_loc4_]._num + "/" + Language.GAMEINTROPANEL_U[41];
                  }
                  if(_loc2_[_loc4_]._num == _loc2_[_loc4_].max)
                  {
                     _loc2_[_loc4_]._st = 1;
                     _loc3_ = true;
                  }
               }
            }
            if(_loc3_)
            {
               diaryList.sort = _sortForDiary;
               diaryList.refresh();
            }
            DG_diary.dataProvider = diaryList;
            if(Boolean(param1.act) && param1.act > 0)
            {
               totalAct.text = String(param1.act);
            }
            _haveDiaryAwarded = Boolean(param1.ad);
         }
      }
      
      public function set award1(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._1405038220award1;
         if(_loc2_ !== param1)
         {
            this._1405038220award1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award1",_loc2_,param1));
         }
      }
      
      private function initDailyAct() : void
      {
         _core.remote.call("getTodayOnlineTime",new Responder(onGetTodayOnlineTime));
      }
      
      public function set award2(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._1405038219award2;
         if(_loc2_ !== param1)
         {
            this._1405038219award2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"award2",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         closeTimer();
         if(param1)
         {
            if(vs.selectedIndex == 1)
            {
               initDailyAct();
            }
         }
         if(initialized)
         {
            if(param1)
            {
               getAwardState();
            }
         }
      }
      
      public function ___DailyActPanel_Canvas6_creationComplete(param1:FlexEvent) : void
      {
         setAwardSlotColr();
      }
      
      private function set _haveDiaryAwarded(param1:Boolean) : void
      {
         var _loc2_:Object = this._534379936_haveDiaryAwarded;
         if(_loc2_ !== param1)
         {
            this._534379936_haveDiaryAwarded = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_haveDiaryAwarded",_loc2_,param1));
         }
      }
      
      public function __actBtn3_click(param1:MouseEvent) : void
      {
         getActAward(param1);
      }
      
      private function _DailyActPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn8 = _loc1_;
         _loc1_.width = 60;
         _loc1_.dataField = "act";
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn8",_DailyActPanel_DataGridColumn8);
         return _loc1_;
      }
      
      private function _DailyActPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DailyActPanel_inlineComponent3;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function __vip_click(param1:MouseEvent) : void
      {
         vip1();
      }
      
      [Bindable(event="propertyChange")]
      public function get DG_diary() : DataGrid
      {
         return this._344383225DG_diary;
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn2() : BasicGlowButton
      {
         return this._1162960632actBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn3() : BasicGlowButton
      {
         return this._1162960631actBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn0() : BasicGlowButton
      {
         return this._1162960634actBtn0;
      }
      
      public function init() : void
      {
         var _loc1_:Date = new Date();
         initDate = _loc1_.getDate();
         isInited = true;
         initPenalConfig();
         _sortForDiary.fields = [new SortField("_st",false,false,true),new SortField("pos",false,false,true),new SortField("id",false,false,true)];
      }
      
      [Bindable(event="propertyChange")]
      public function get actBtn4() : BasicGlowButton
      {
         return this._1162960630actBtn4;
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
      
      [Bindable(event="propertyChange")]
      public function get actBtn1() : BasicGlowButton
      {
         return this._1162960633actBtn1;
      }
      
      public function set xmlPet(param1:XML) : void
      {
         var _loc2_:Object = this._755507832xmlPet;
         if(_loc2_ !== param1)
         {
            this._755507832xmlPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"xmlPet",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get diaryList() : ArrayCollection
      {
         return this._1521020673diaryList;
      }
      
      private function _DailyActPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn7 = _loc1_;
         _loc1_.width = 150;
         _loc1_.dataField = "name";
         _loc1_.itemRenderer = _DailyActPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn7",_DailyActPanel_DataGridColumn7);
         return _loc1_;
      }
      
      public function __actBtn0_click(param1:MouseEvent) : void
      {
         getActAward(param1);
      }
      
      private function _DailyActPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DailyActPanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get idTimerText() : BasicTxtButton
      {
         return this._115591369idTimerText;
      }
      
      private function _DailyActPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILYACT_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003705);
         },function(param1:Object):void
         {
            bg.source = param1;
         },"bg.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILYACT_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn1.headerText = param1;
         },"_DailyActPanel_DataGridColumn1.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn2.headerText = param1;
         },"_DailyActPanel_DataGridColumn2.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn3.headerText = param1;
         },"_DailyActPanel_DataGridColumn3.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_S[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn4.headerText = param1;
         },"_DailyActPanel_DataGridColumn4.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILYACT_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn5.headerText = param1;
         },"_DailyActPanel_DataGridColumn5.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILYACT_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn6.headerText = param1;
         },"_DailyActPanel_DataGridColumn6.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILYACT_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_Label1.text = param1;
         },"_DailyActPanel_Label1.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = activityDescription;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_LinkTextArea1.htmlText = param1;
         },"_DailyActPanel_LinkTextArea1.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _DailyActPanel_LinkTextArea1.setStyle("borderSkin",param1);
         },"_DailyActPanel_LinkTextArea1.borderSkin");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.DAILYACT_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_Label2.text = param1;
         },"_DailyActPanel_Label2.text");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return diaryList;
         },function(param1:Object):void
         {
            DG_diary.dataProvider = param1;
         },"DG_diary.dataProvider");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn7.headerText = param1;
         },"_DailyActPanel_DataGridColumn7.headerText");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn8.headerText = param1;
         },"_DailyActPanel_DataGridColumn8.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn9.headerText = param1;
         },"_DailyActPanel_DataGridColumn9.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_DataGridColumn10.headerText = param1;
         },"_DailyActPanel_DataGridColumn10.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton1.label = param1;
         },"_DailyActPanel_BasicTxtButton1.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton2.text = param1;
         },"_DailyActPanel_BasicTxtButton2.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton4.text = param1;
         },"_DailyActPanel_BasicTxtButton4.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[37].replace("{num}",30);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton6.text = param1;
         },"_DailyActPanel_BasicTxtButton6.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn0.label = param1;
         },"actBtn0.label");
         result[23] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _haveDiaryAwarded ? false : Number(totalAct.text) >= 30;
         },function(param1:Boolean):void
         {
            actBtn0.enabled = param1;
         },"actBtn0.enabled");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[37].replace("{num}",60);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton7.text = param1;
         },"_DailyActPanel_BasicTxtButton7.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn1.label = param1;
         },"actBtn1.label");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _haveDiaryAwarded ? false : Number(totalAct.text) >= 60;
         },function(param1:Boolean):void
         {
            actBtn1.enabled = param1;
         },"actBtn1.enabled");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[37].replace("{num}",120);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton8.text = param1;
         },"_DailyActPanel_BasicTxtButton8.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn2.label = param1;
         },"actBtn2.label");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _haveDiaryAwarded ? false : Number(totalAct.text) >= 120;
         },function(param1:Boolean):void
         {
            actBtn2.enabled = param1;
         },"actBtn2.enabled");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[37].replace("{num}",210);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton9.text = param1;
         },"_DailyActPanel_BasicTxtButton9.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn3.label = param1;
         },"actBtn3.label");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _haveDiaryAwarded ? false : Number(totalAct.text) >= 210;
         },function(param1:Boolean):void
         {
            actBtn3.enabled = param1;
         },"actBtn3.enabled");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[37].replace("{num}",360);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton10.text = param1;
         },"_DailyActPanel_BasicTxtButton10.text");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actBtn4.label = param1;
         },"actBtn4.label");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _haveDiaryAwarded ? false : Number(totalAct.text) >= 360;
         },function(param1:Boolean):void
         {
            actBtn4.enabled = param1;
         },"actBtn4.enabled");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _DailyActPanel_BasicTxtButton11.htmlText = param1;
         },"_DailyActPanel_BasicTxtButton11.htmlText");
         result[37] = binding;
         return result;
      }
      
      public function __autoTask_click(param1:MouseEvent) : void
      {
         autoTask1();
      }
      
      public function tabBtnClick(param1:int) : void
      {
         vs.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            this["tabBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["tabBtn" + param1].selected = true;
         initVBox(param1);
      }
      
      public function updateDiaryData(param1:String, param2:int, param3:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Boolean = false;
         if(param1)
         {
            _loc4_ = _core.data.gameData[GamePredef.TBL_DIARY];
            _loc5_ = false;
            if(Boolean(_loc4_[param1]) && Boolean(_loc4_[param1].hasOwnProperty("_num")) && _loc4_[param1]._num != param2)
            {
               _loc4_[param1]._num = param2;
               if(_loc4_[param1].max > 0)
               {
                  _loc4_[param1]._numStr = _loc4_[param1]._num + "/" + _loc4_[param1].max;
               }
               else
               {
                  _loc4_[param1]._numStr = _loc4_[param1]._num + "/" + Language.GAMEINTROPANEL_U[41];
               }
               if(_loc4_[param1]._num == _loc4_[param1].max)
               {
                  _loc4_[param1]._st = 1;
                  _loc5_ = true;
               }
            }
            if(_loc5_)
            {
               diaryList.sort = _sortForDiary;
               diaryList.refresh();
            }
            DG_diary.dataProvider = diaryList;
         }
         if(ToolKit.isBigOrEqual(param3,0))
         {
            totalAct.text = param3.toString();
         }
      }
      
      public function reset() : void
      {
         flag = new Object();
         _haveDiaryAwarded = false;
         if(isInited)
         {
            totalAct.text = "0";
         }
      }
      
      public function set actAward3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._939851608actAward3;
         if(_loc2_ !== param1)
         {
            this._939851608actAward3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward3",_loc2_,param1));
         }
      }
      
      public function set actAward0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._939851611actAward0;
         if(_loc2_ !== param1)
         {
            this._939851611actAward0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward0",_loc2_,param1));
         }
      }
      
      public function set actAward4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._939851607actAward4;
         if(_loc2_ !== param1)
         {
            this._939851607actAward4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward4",_loc2_,param1));
         }
      }
      
      public function set actAward2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._939851609actAward2;
         if(_loc2_ !== param1)
         {
            this._939851609actAward2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward2",_loc2_,param1));
         }
      }
      
      private function _DailyActPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.DAILYACT_U[12];
         _loc1_ = ResManager.getIconUrl(4130220003705);
         _loc1_ = Language.DAILYACT_U[13];
         _loc1_ = Language.GAMEINTROPANEL_U[31];
         _loc1_ = Language.ACTIVEPANEL_S[27];
         _loc1_ = Language.ACTIVEPANEL_S[29];
         _loc1_ = Language.ACTIVEPANEL_S[52];
         _loc1_ = Language.ACTIVEPANEL_S[30];
         _loc1_ = Language.DAILYACT_U[2];
         _loc1_ = Language.DAILYACT_U[11];
         _loc1_ = Language.DAILYACT_U[16];
         _loc1_ = activityDescription;
         _loc1_ = null;
         _loc1_ = Language.DAILYACT_U[17];
         _loc1_ = diaryList;
         _loc1_ = Language.GAMEINTROPANEL_U[32];
         _loc1_ = Language.GAMEINTROPANEL_U[34];
         _loc1_ = Language.GAMEINTROPANEL_U[33];
         _loc1_ = Language.GAMEINTROPANEL_U[50];
         _loc1_ = Language.GAMEINTROPANEL_U[39];
         _loc1_ = Language.GAMEINTROPANEL_U[36];
         _loc1_ = Language.GAMEINTROPANEL_U[43];
         _loc1_ = Language.GAMEINTROPANEL_U[37].replace("{num}",30);
         _loc1_ = Language.GAMEINTROPANEL_U[38];
         _loc1_ = _haveDiaryAwarded ? false : Number(totalAct.text) >= 30;
         _loc1_ = Language.GAMEINTROPANEL_U[37].replace("{num}",60);
         _loc1_ = Language.GAMEINTROPANEL_U[38];
         _loc1_ = _haveDiaryAwarded ? false : Number(totalAct.text) >= 60;
         _loc1_ = Language.GAMEINTROPANEL_U[37].replace("{num}",120);
         _loc1_ = Language.GAMEINTROPANEL_U[38];
         _loc1_ = _haveDiaryAwarded ? false : Number(totalAct.text) >= 120;
         _loc1_ = Language.GAMEINTROPANEL_U[37].replace("{num}",210);
         _loc1_ = Language.GAMEINTROPANEL_U[38];
         _loc1_ = _haveDiaryAwarded ? false : Number(totalAct.text) >= 210;
         _loc1_ = Language.GAMEINTROPANEL_U[37].replace("{num}",360);
         _loc1_ = Language.GAMEINTROPANEL_U[38];
         _loc1_ = _haveDiaryAwarded ? false : Number(totalAct.text) >= 360;
         _loc1_ = Language.GAMEINTROPANEL_U[40];
      }
      
      public function set totalAct(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._849924434totalAct;
         if(_loc2_ !== param1)
         {
            this._849924434totalAct = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalAct",_loc2_,param1));
         }
      }
      
      public function set actAward1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._939851610actAward1;
         if(_loc2_ !== param1)
         {
            this._939851610actAward1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actAward1",_loc2_,param1));
         }
      }
      
      private function StringReplaceAll(param1:String, param2:String, param3:String) : String
      {
         return param1.split(param2).join(param3);
      }
      
      private function _DailyActPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn6 = _loc1_;
         _loc1_.width = 100;
         _loc1_.itemRenderer = _DailyActPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn6",_DailyActPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get activityDescription() : String
      {
         return this._975828627activityDescription;
      }
      
      public function ___DailyActPanel_Canvas4_show(param1:FlexEvent) : void
      {
         initDailyAct();
      }
      
      [Bindable(event="propertyChange")]
      public function get award2() : RendererItemArray
      {
         return this._1405038219award2;
      }
      
      private function _DailyActPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = DailyActPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get award1() : RendererItemArray
      {
         return this._1405038220award1;
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
      
      public function set gameintro(param1:Button) : void
      {
         var _loc2_:Object = this._1010221498gameintro;
         if(_loc2_ !== param1)
         {
            this._1010221498gameintro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameintro",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get xmlPet() : XML
      {
         return this._755507832xmlPet;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DailyActPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DailyActPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_DailyActPanelWatcherSetupUtil");
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
      
      public function ___DailyActPanel_Canvas1_show(param1:FlexEvent) : void
      {
         initPenalConfig();
      }
      
      private function onActItemClickHandler(param1:ListEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         activityDescription = param1.itemRenderer.data.Description;
         if(param1.itemRenderer.data.Award)
         {
            _loc2_ = 0;
            _loc3_ = new Array();
            _loc4_ = new Array();
            for(_loc5_ in param1.itemRenderer.data.Award)
            {
               if(_loc2_ > 3)
               {
                  _loc4_.push(param1.itemRenderer.data.Award[_loc5_]);
               }
               else
               {
                  _loc3_.push(param1.itemRenderer.data.Award[_loc5_]);
               }
               _loc2_++;
            }
            award1.data = {"array":_loc3_};
            if(_loc4_.length > 0)
            {
               award2.data = {"array":_loc4_};
            }
         }
      }
      
      public function DBLinkClickEvent(param1:Object) : void
      {
         if(param1._npcLink)
         {
            LinkEventUtil.linkTextHandler(param1._npcLink,stage);
         }
      }
      
      private function _DailyActPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "state";
         _loc1_.labelFunction = stateLabelFunction;
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn5",_DailyActPanel_DataGridColumn5);
         return _loc1_;
      }
      
      public function __actBtn2_click(param1:MouseEvent) : void
      {
         getActAward(param1);
      }
      
      public function vip1() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PM);
         if(_loc1_)
         {
            _loc1_.initPanelData(null);
         }
      }
      
      public function gameintro1() : void
      {
         _core.view.getUI(ViewManager.PANEL_GAMEINTRO).visible = true;
         _core.view.getUI(ViewManager.PANEL_GAMEINTRO).autoClick(8);
         buttonCricle(gameintro,false,"gameintro");
      }
      
      public function ___DailyActPanel_Canvas4_hide(param1:FlexEvent) : void
      {
         closeTimer();
      }
      
      private function setOnlineActiveTimerText() : void
      {
         var _loc1_:Number = Math.floor(dailyActOnlineObj.time / 60);
         _loc1_ = _loc1_ ? _loc1_ : 0;
         var _loc2_:Number = dailyActOnlineObj.time - _loc1_ * 60;
         _loc2_ = _loc2_ ? _loc2_ : 0;
         var _loc3_:String = _loc1_ + Language.GAMEINTROPANEL_U[44] + _loc2_ + Language.GAMEINTROPANEL_U[45];
         idTimerText.text = _loc3_;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get gameintro() : Button
      {
         return this._1010221498gameintro;
      }
      
      public function clearDiaryProgress() : void
      {
         var _loc3_:String = null;
         var _loc4_:Sort = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_DIARY];
         for(_loc3_ in _loc2_)
         {
            _loc5_ = _loc2_[_loc3_];
            if(_loc5_)
            {
               _loc6_ = _loc5_;
               if(_loc5_.max > 0)
               {
                  _loc6_._numStr = "0/" + _loc5_.max;
               }
               else
               {
                  _loc6_._numStr = "0/" + Language.GAMEINTROPANEL_U[41];
               }
               _loc6_._num = 0;
               _loc6_._st = 0;
               if(_loc5_.nid > 0)
               {
                  if(_loc5_.linkType == 1)
                  {
                     _loc7_ = GameData.d[GamePredef.TBL_NPC][_loc5_.nid].name;
                     _loc6_._npcLink = "L_N|" + _loc5_.nid + "|" + _loc7_;
                     _loc6_._npc = _loc7_;
                  }
                  else if(_loc5_.linkType == 2)
                  {
                     _loc6_._npcLink = "L_OPEN_PANEL|" + _loc5_.nid;
                     _loc6_._npc = Language.DAILYACT_U[0];
                  }
                  else
                  {
                     _loc6_._npcLink = "L_MA|" + _loc5_.nid;
                     _loc6_._npc = Language.DAILYACT_U[1];
                  }
               }
               _loc1_.addItem(_loc6_);
            }
         }
         _loc4_ = new Sort();
         _loc4_.fields = [new SortField("pos",false,false,true),new SortField("id",false,false,true)];
         _loc1_.sort = _loc4_;
         _loc1_.refresh();
         diaryList = _loc1_;
      }
      
      public function set txkcBtn(param1:Button) : void
      {
         var _loc2_:Object = this._886424096txkcBtn;
         if(_loc2_ !== param1)
         {
            this._886424096txkcBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txkcBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get autoTask() : Button
      {
         return this._1438717908autoTask;
      }
      
      public function set autoTask(param1:Button) : void
      {
         var _loc2_:Object = this._1438717908autoTask;
         if(_loc2_ !== param1)
         {
            this._1438717908autoTask = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoTask",_loc2_,param1));
         }
      }
      
      private function stateLabelFunction(param1:Object, param2:DataGridColumn) : String
      {
         var _loc3_:Object = TimeUtil.getTimeStr2(param1.timeStr);
         return TimeUtil.decodeTimeObj(_loc3_);
      }
      
      private function initDefaultViews() : void
      {
         var _loc1_:Object = activityItemList.getItemAt(0);
         var _loc2_:ListEvent = new ListEvent(ListEvent.ITEM_CLICK);
         _loc2_.itemRenderer = new DataGridItemRenderer();
         _loc2_.itemRenderer.data = _loc1_;
         onActItemClickHandler(_loc2_);
      }
      
      [Bindable(event="propertyChange")]
      public function get txkcBtn() : Button
      {
         return this._886424096txkcBtn;
      }
      
      private function _DailyActPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _DailyActPanel_DataGridColumn4 = _loc1_;
         _loc1_.width = 40;
         _loc1_.dataField = "Level";
         _loc1_.sortCompareFunction = levelSortCompareFunction;
         BindingManager.executeBindings(this,"_DailyActPanel_DataGridColumn4",_DailyActPanel_DataGridColumn4);
         return _loc1_;
      }
      
      private function onGetTodayOnlineTime(param1:Object) : void
      {
         dailyActOnlineObj.time = param1.t;
         dailyActOnlineObj.times = param1.f != undefined ? param1.f : 0;
         setOnlineActiveTimerText();
         closeTimer();
         onlineTimer = new Timer(60000);
         onlineTimer.addEventListener(TimerEvent.TIMER,onTimer,false,0,false);
         onlineTimer.start();
      }
   }
}

