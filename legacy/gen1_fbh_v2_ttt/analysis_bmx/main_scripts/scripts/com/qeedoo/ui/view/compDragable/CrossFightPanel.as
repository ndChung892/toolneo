package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.ButtonTree;
   import com.qeedoo.ui.view.comp.CrossFightResultInfo;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossFightPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var TEAM_URL:String = "profile/pk/5v5.txt";
      
      private static var MEMBER_URL:String = "profile/pk/5v5charactor.txt";
      
      private static var VS_URL:String = "profile/pk/vs.txt";
      
      private static var CONFIG_URL:String = "profile/pk/pkconfig.txt";
      
      private static var LAST_INFO:int = 0;
      
      private static var HOT_TEAM:int = 1;
      
      public var _CrossFightPanel_Image1:Image;
      
      public var _CrossFightPanel_Image2:Image;
      
      public var _CrossFightPanel_Image4:Image;
      
      public var _CrossFightPanel_Image3:Image;
      
      public var _CrossFightPanel_Image5:Image;
      
      private var _3586r4:CrossFightResultInfo;
      
      private var _111122r11:CrossFightResultInfo;
      
      private var vsData:Object = {};
      
      public var _CrossFightPanel_DataGrid1:DataGrid;
      
      public var _CrossFightPanel_DataGrid2:DataGrid;
      
      private var _3773vs:ViewStack;
      
      private var _1718430789leftTree:Canvas;
      
      private var _3585r3:CrossFightResultInfo;
      
      private var areaIndex:int = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _CrossFightPanel_LinkButton1:LinkButton;
      
      public var _CrossFightPanel_LinkButton2:LinkButton;
      
      public var _CrossFightPanel_LinkButton3:LinkButton;
      
      public var _CrossFightPanel_LinkButton4:LinkButton;
      
      public var _CrossFightPanel_LinkButton5:LinkButton;
      
      public var _CrossFightPanel_LinkButton6:LinkButton;
      
      public var _CrossFightPanel_LinkButton7:LinkButton;
      
      public var _CrossFightPanel_LinkButton8:LinkButton;
      
      public var _CrossFightPanel_LinkButton9:LinkButton;
      
      private var _941722388hotTeamData:ArrayCollection = new ArrayCollection();
      
      private var _111123r12:CrossFightResultInfo;
      
      private var _3584r2:CrossFightResultInfo;
      
      private var _core:Core = Core.getInstance();
      
      private var _1594265562lastGroupC:BasicGlowButton;
      
      private var _2002832738lastTitle:Label;
      
      private var teamInfo:CrossFightTeamInfo;
      
      private var _3568542tree:ButtonTree;
      
      private var _1459736476lastInfo:Canvas;
      
      private var _3583r1:CrossFightResultInfo;
      
      private var _111124r13:CrossFightResultInfo;
      
      private var _951530617content:Canvas;
      
      public var _CrossFightPanel_DataGridColumn1:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn2:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn3:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn4:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn5:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn6:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn7:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn8:DataGridColumn;
      
      public var _CrossFightPanel_DataGridColumn9:DataGridColumn;
      
      private var _3582r0:CrossFightResultInfo;
      
      private var load:URLLoader;
      
      private var _1594265560lastGroupA:BasicGlowButton;
      
      private var _57783177refreshScore:BasicDelayButton;
      
      private var _helpAlert:Alert;
      
      private var _1017286103lastGroupInfo:Canvas;
      
      private var _111125r14:CrossFightResultInfo;
      
      public var _CrossFightPanel_LinkButton10:LinkButton;
      
      public var _CrossFightPanel_LinkButton11:LinkButton;
      
      public var _CrossFightPanel_LinkButton12:LinkButton;
      
      public var _CrossFightPanel_LinkButton13:LinkButton;
      
      public var _CrossFightPanel_LinkButton14:LinkButton;
      
      public var _CrossFightPanel_LinkButton15:LinkButton;
      
      public var _CrossFightPanel_LinkButton16:LinkButton;
      
      public var _CrossFightPanel_LinkButton18:LinkButton;
      
      public var _CrossFightPanel_LinkButton19:LinkButton;
      
      private var _1098669130hotTeam:Canvas;
      
      public var _CrossFightPanel_LinkButton17:LinkButton;
      
      private var _3589r7:CrossFightResultInfo;
      
      public var _CrossFightPanel_LinkButton21:LinkButton;
      
      public var _CrossFightPanel_LinkButton22:LinkButton;
      
      public var _CrossFightPanel_LinkButton23:LinkButton;
      
      public var _CrossFightPanel_LinkButton24:LinkButton;
      
      public var _CrossFightPanel_LinkButton25:LinkButton;
      
      public var _CrossFightPanel_LinkButton26:LinkButton;
      
      public var _CrossFightPanel_LinkButton20:LinkButton;
      
      public var _CrossFightPanel_LinkButton28:LinkButton;
      
      public var _CrossFightPanel_LinkButton29:LinkButton;
      
      private var _1594265563lastGroupD:BasicGlowButton;
      
      public var _CrossFightPanel_LinkButton27:LinkButton;
      
      private var memberData:Object = {};
      
      public var _CrossFightPanel_DataGridColumn10:DataGridColumn;
      
      public var _CrossFightPanel_LinkButton30:LinkButton;
      
      public var _CrossFightPanel_LinkButton31:LinkButton;
      
      public var _CrossFightPanel_LinkButton32:LinkButton;
      
      public var _CrossFightPanel_LinkButton33:LinkButton;
      
      private var _956155768crossFightTitle:BasicTitleCanvas;
      
      public var _CrossFightPanel_Label1:Label;
      
      public var _CrossFightPanel_Label3:Label;
      
      private var _3588r6:CrossFightResultInfo;
      
      private var groupIndex:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var _3591r9:CrossFightResultInfo;
      
      private var teamData:Object;
      
      private var _111121r10:CrossFightResultInfo;
      
      private var _871376994hotTeamData2:ArrayCollection = new ArrayCollection();
      
      private var _3587r5:CrossFightResultInfo;
      
      private var _1594265561lastGroupB:BasicGlowButton;
      
      private var showType:int = -1;
      
      private var _3590r8:CrossFightResultInfo;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":800,
               "height":560,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"crossFightTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"leftTree",
                  "stylesFactory":function():void
                  {
                     this.top = "42";
                     this.left = "12";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "height":460,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_CrossFightPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.top = "3";
                              this.color = 16777215;
                           }
                        }),new UIComponentDescriptor({
                           "type":ButtonTree,
                           "id":"tree",
                           "events":{"itemClick":"__tree_itemClick"},
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":105,
                                 "x":3,
                                 "height":130,
                                 "y":25
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"content",
                  "stylesFactory":function():void
                  {
                     this.top = "42";
                     this.left = "120";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":680,
                        "height":508,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"vs",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":660,
                                 "height":512,
                                 "x":10,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"lastInfo",
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"lastGroupA",
                                          "events":{"click":"__lastGroupA_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.left = "15";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "selected":true,
                                                "styleName":"HorizontalTab",
                                                "width":68,
                                                "y":8
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"lastGroupB",
                                          "events":{"click":"__lastGroupB_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.left = "85";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "selected":false,
                                                "styleName":"HorizontalTab",
                                                "width":68,
                                                "y":8
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"lastGroupC",
                                          "events":{"click":"__lastGroupC_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.left = "155";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "selected":false,
                                                "styleName":"HorizontalTab",
                                                "width":68,
                                                "y":8
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"lastGroupD",
                                          "events":{"click":"__lastGroupD_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.left = "225";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "selected":false,
                                                "styleName":"HorizontalTab",
                                                "width":68,
                                                "y":8
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Canvas,
                                          "id":"lastGroupInfo",
                                          "stylesFactory":function():void
                                          {
                                             this.top = "30";
                                             this.left = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":650,
                                                "height":435,
                                                "styleName":"CanvasBorder",
                                                "horizontalScrollPolicy":"off",
                                                "verticalScrollPolicy":"off",
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":Image,
                                                   "id":"_CrossFightPanel_Image1",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":2,
                                                         "y":2
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":Label,
                                                   "id":"lastTitle",
                                                   "stylesFactory":function():void
                                                   {
                                                      this.horizontalCenter = "0";
                                                      this.color = 16776960;
                                                      this.fontSize = 18;
                                                      this.textAlign = "center";
                                                   },
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "width":398,
                                                         "height":32,
                                                         "y":10
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r0",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":25
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r1",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":65
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r2",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":125
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r3",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":165
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r4",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":225
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r5",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":265
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r6",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":325
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r7",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":10,
                                                         "y":365
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r8",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":170,
                                                         "y":48
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r9",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":170,
                                                         "y":150
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r10",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":170,
                                                         "y":248
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r11",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":170,
                                                         "y":345
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r12",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":330,
                                                         "y":101
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r13",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":330,
                                                         "y":297
                                                      };
                                                   }
                                                }),new UIComponentDescriptor({
                                                   "type":CrossFightResultInfo,
                                                   "id":"r14",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "x":490,
                                                         "y":192
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"hotTeam",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":500,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_CrossFightPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.color = 16776960;
                                                this.fontSize = 18;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":398,
                                                   "height":32,
                                                   "y":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "height":435,
                                                   "x":10,
                                                   "y":30,
                                                   "styleName":"CanvasBorder",
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_CrossFightPanel_Image2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":2,
                                                            "y":2
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":8,
                                                            "width":500,
                                                            "height":100,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":DataGrid,
                                                               "id":"_CrossFightPanel_DataGrid1",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textAlign = "center";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "selectable":false,
                                                                     "x":10,
                                                                     "y":0,
                                                                     "percentWidth":100,
                                                                     "rowHeight":24,
                                                                     "percentHeight":100,
                                                                     "verticalScrollPolicy":"off",
                                                                     "columns":[_CrossFightPanel_DataGridColumn1_i(),_CrossFightPanel_DataGridColumn2_i(),_CrossFightPanel_DataGridColumn3_i(),_CrossFightPanel_DataGridColumn4_i(),_CrossFightPanel_DataGridColumn5_i()]
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
                                                            "y":98,
                                                            "width":500,
                                                            "height":400,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":DataGrid,
                                                               "id":"_CrossFightPanel_DataGrid2",
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textAlign = "center";
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "selectable":false,
                                                                     "headerHeight":0,
                                                                     "x":10,
                                                                     "y":9,
                                                                     "percentWidth":100,
                                                                     "rowHeight":24,
                                                                     "height":320,
                                                                     "verticalScrollPolicy":"off",
                                                                     "columns":[_CrossFightPanel_DataGridColumn6_i(),_CrossFightPanel_DataGridColumn7_i(),_CrossFightPanel_DataGridColumn8_i(),_CrossFightPanel_DataGridColumn9_i(),_CrossFightPanel_DataGridColumn10_i()]
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_CrossFightPanel_Image3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":500,
                                                            "y":15
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_CrossFightPanel_Image4",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":500,
                                                            "y":39
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"_CrossFightPanel_Image5",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":500,
                                                            "y":60
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Canvas,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "y":33,
                                                            "childDescriptors":[new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton1",
                                                               "events":{"click":"___CrossFightPanel_LinkButton1_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":0,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton2",
                                                               "events":{"click":"___CrossFightPanel_LinkButton2_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":24,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton3",
                                                               "events":{"click":"___CrossFightPanel_LinkButton3_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":48,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton4",
                                                               "events":{"click":"___CrossFightPanel_LinkButton4_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":72,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton5",
                                                               "events":{"click":"___CrossFightPanel_LinkButton5_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":96,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton6",
                                                               "events":{"click":"___CrossFightPanel_LinkButton6_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":120,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton7",
                                                               "events":{"click":"___CrossFightPanel_LinkButton7_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":144,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton8",
                                                               "events":{"click":"___CrossFightPanel_LinkButton8_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":168,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton9",
                                                               "events":{"click":"___CrossFightPanel_LinkButton9_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":192,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton10",
                                                               "events":{"click":"___CrossFightPanel_LinkButton10_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":216,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton11",
                                                               "events":{"click":"___CrossFightPanel_LinkButton11_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":240,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton12",
                                                               "events":{"click":"___CrossFightPanel_LinkButton12_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":264,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton13",
                                                               "events":{"click":"___CrossFightPanel_LinkButton13_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":288,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton14",
                                                               "events":{"click":"___CrossFightPanel_LinkButton14_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":312,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton15",
                                                               "events":{"click":"___CrossFightPanel_LinkButton15_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":336,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton16",
                                                               "events":{"click":"___CrossFightPanel_LinkButton16_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":312,
                                                                     "y":360,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton17",
                                                               "events":{"click":"___CrossFightPanel_LinkButton17_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":0,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton18",
                                                               "events":{"click":"___CrossFightPanel_LinkButton18_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":24,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton19",
                                                               "events":{"click":"___CrossFightPanel_LinkButton19_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":48,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton20",
                                                               "events":{"click":"___CrossFightPanel_LinkButton20_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":72,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton21",
                                                               "events":{"click":"___CrossFightPanel_LinkButton21_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":96,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton22",
                                                               "events":{"click":"___CrossFightPanel_LinkButton22_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":120,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton23",
                                                               "events":{"click":"___CrossFightPanel_LinkButton23_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":144,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton24",
                                                               "events":{"click":"___CrossFightPanel_LinkButton24_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":168,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton25",
                                                               "events":{"click":"___CrossFightPanel_LinkButton25_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":192,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton26",
                                                               "events":{"click":"___CrossFightPanel_LinkButton26_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":216,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton27",
                                                               "events":{"click":"___CrossFightPanel_LinkButton27_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":240,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton28",
                                                               "events":{"click":"___CrossFightPanel_LinkButton28_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":264,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton29",
                                                               "events":{"click":"___CrossFightPanel_LinkButton29_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":288,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton30",
                                                               "events":{"click":"___CrossFightPanel_LinkButton30_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":312,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton31",
                                                               "events":{"click":"___CrossFightPanel_LinkButton31_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":336,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            }),new UIComponentDescriptor({
                                                               "type":LinkButton,
                                                               "id":"_CrossFightPanel_LinkButton32",
                                                               "events":{"click":"___CrossFightPanel_LinkButton32_click"},
                                                               "stylesFactory":function():void
                                                               {
                                                                  this.textDecoration = "underline";
                                                                  this.color = 16187149;
                                                                  this.fontSize = 12;
                                                               },
                                                               "propertiesFactory":function():Object
                                                               {
                                                                  return {
                                                                     "x":550,
                                                                     "y":360,
                                                                     "width":100,
                                                                     "height":20
                                                                  };
                                                               }
                                                            })]
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":LinkButton,
                                                      "id":"_CrossFightPanel_LinkButton33",
                                                      "events":{"click":"___CrossFightPanel_LinkButton33_click"},
                                                      "stylesFactory":function():void
                                                      {
                                                         this.textDecoration = "underline";
                                                         this.bottom = "3";
                                                         this.color = 16777215;
                                                         this.fontSize = 12;
                                                         this.right = "11";
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"height":17};
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "id":"refreshScore",
                                             "events":{"click":"__refreshScore_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnNormalRed",
                                                   "y":468
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
      
      public function CrossFightPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 800;
         this.height = 560;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
         this.addEventListener("creationComplete",___CrossFightPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossFightPanel._watcherSetupUtil = param1;
      }
      
      public function set r1(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3583r1;
         if(_loc2_ !== param1)
         {
            this._3583r1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r1",_loc2_,param1));
         }
      }
      
      private function getRemoteInfo() : void
      {
         load = new URLLoader();
         load.addEventListener(Event.COMPLETE,loadCompleteTeam);
         load.addEventListener(IOErrorEvent.IO_ERROR,errorHandler);
         load.load(new URLRequest(TEAM_URL));
      }
      
      [Bindable(event="propertyChange")]
      public function get r7() : CrossFightResultInfo
      {
         return this._3589r7;
      }
      
      private function _CrossFightPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn3 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 30;
         _loc1_.sortable = false;
         _loc1_.dataField = "orderStr";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",326404);
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn3",_CrossFightPanel_DataGridColumn3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get r2() : CrossFightResultInfo
      {
         return this._3584r2;
      }
      
      [Bindable(event="propertyChange")]
      public function get r11() : CrossFightResultInfo
      {
         return this._111122r11;
      }
      
      [Bindable(event="propertyChange")]
      public function get r13() : CrossFightResultInfo
      {
         return this._111124r13;
      }
      
      [Bindable(event="propertyChange")]
      public function get r14() : CrossFightResultInfo
      {
         return this._111125r14;
      }
      
      public function ___CrossFightPanel_LinkButton7_click(param1:MouseEvent) : void
      {
         toLookRep(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get r12() : CrossFightResultInfo
      {
         return this._111123r12;
      }
      
      [Bindable(event="propertyChange")]
      public function get r5() : CrossFightResultInfo
      {
         return this._3587r5;
      }
      
      public function set r9(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3591r9;
         if(_loc2_ !== param1)
         {
            this._3591r9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r9",_loc2_,param1));
         }
      }
      
      public function ___CrossFightPanel_LinkButton10_click(param1:MouseEvent) : void
      {
         toLookRep(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get r9() : CrossFightResultInfo
      {
         return this._3591r9;
      }
      
      [Bindable(event="propertyChange")]
      public function get r10() : CrossFightResultInfo
      {
         return this._111121r10;
      }
      
      private function errorHandler(param1:IOErrorEvent) : void
      {
         trace("ioError");
      }
      
      public function ___CrossFightPanel_LinkButton24_click(param1:MouseEvent) : void
      {
         openTeamInfo(7);
      }
      
      public function set r11(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._111122r11;
         if(_loc2_ !== param1)
         {
            this._111122r11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r11",_loc2_,param1));
         }
      }
      
      public function set r10(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._111121r10;
         if(_loc2_ !== param1)
         {
            this._111121r10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r10",_loc2_,param1));
         }
      }
      
      public function set r14(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._111125r14;
         if(_loc2_ !== param1)
         {
            this._111125r14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r14",_loc2_,param1));
         }
      }
      
      public function set r7(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3589r7;
         if(_loc2_ !== param1)
         {
            this._3589r7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r7",_loc2_,param1));
         }
      }
      
      public function ___CrossFightPanel_LinkButton18_click(param1:MouseEvent) : void
      {
         openTeamInfo(1);
      }
      
      public function set r13(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._111124r13;
         if(_loc2_ !== param1)
         {
            this._111124r13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r13",_loc2_,param1));
         }
      }
      
      public function __lastGroupD_click(param1:MouseEvent) : void
      {
         changeGroup(3);
      }
      
      private function set hotTeamData(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._941722388hotTeamData;
         if(_loc2_ !== param1)
         {
            this._941722388hotTeamData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotTeamData",_loc2_,param1));
         }
      }
      
      public function set r2(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3584r2;
         if(_loc2_ !== param1)
         {
            this._3584r2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r3() : CrossFightResultInfo
      {
         return this._3585r3;
      }
      
      public function set r3(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3585r3;
         if(_loc2_ !== param1)
         {
            this._3585r3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r3",_loc2_,param1));
         }
      }
      
      public function set r4(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3586r4;
         if(_loc2_ !== param1)
         {
            this._3586r4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r4",_loc2_,param1));
         }
      }
      
      public function ___CrossFightPanel_LinkButton21_click(param1:MouseEvent) : void
      {
         openTeamInfo(4);
      }
      
      public function __lastGroupA_click(param1:MouseEvent) : void
      {
         changeGroup(0);
      }
      
      public function ___CrossFightPanel_LinkButton29_click(param1:MouseEvent) : void
      {
         openTeamInfo(12);
      }
      
      public function set r12(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._111123r12;
         if(_loc2_ !== param1)
         {
            this._111123r12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r12",_loc2_,param1));
         }
      }
      
      private function _CrossFightPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn2 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 40;
         _loc1_.sortable = false;
         _loc1_.dataField = "tarea";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn2",_CrossFightPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function ___CrossFightPanel_LinkButton4_click(param1:MouseEvent) : void
      {
         toLookRep(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get hotTeam() : Canvas
      {
         return this._1098669130hotTeam;
      }
      
      public function set r8(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3590r8;
         if(_loc2_ !== param1)
         {
            this._3590r8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leftTree() : Canvas
      {
         return this._1718430789leftTree;
      }
      
      [Bindable(event="propertyChange")]
      public function get r4() : CrossFightResultInfo
      {
         return this._3586r4;
      }
      
      [Bindable(event="propertyChange")]
      public function get r6() : CrossFightResultInfo
      {
         return this._3588r6;
      }
      
      public function set r5(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3587r5;
         if(_loc2_ !== param1)
         {
            this._3587r5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r5",_loc2_,param1));
         }
      }
      
      private function changeArea(param1:int) : void
      {
         areaIndex = param1;
         if(areaIndex == 0)
         {
            areaIndex = 1;
         }
         refreshGroupInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get r8() : CrossFightResultInfo
      {
         return this._3590r8;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastInfo() : Canvas
      {
         return this._1459736476lastInfo;
      }
      
      public function ___CrossFightPanel_LinkButton32_click(param1:MouseEvent) : void
      {
         openTeamInfo(15);
      }
      
      private function changeView(param1:Object) : void
      {
         if(param1.type == LAST_INFO)
         {
            vs.selectedIndex = 0;
            if(param1.kind == 0)
            {
               groupIndex = 0;
               lastGroupA.selected = true;
               lastGroupB.selected = false;
               lastGroupC.selected = false;
               lastGroupD.selected = false;
               areaIndex = 0;
               tree.expandItem(tree.selectedItem,!tree.isItemOpen(tree.selectedItem));
            }
            changeArea(param1.kind);
         }
         else if(param1.type == HOT_TEAM)
         {
            vs.selectedIndex = 1;
            refreshHotInfo();
         }
      }
      
      private function loadCompleteConfig(param1:Event) : void
      {
         var _loc6_:XML = null;
         var _loc7_:ArrayCollection = null;
         var _loc2_:String = load.data;
         var _loc3_:XML = new XML(_loc2_);
         var _loc4_:XMLList = _loc3_.children();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length())
         {
            _loc6_ = _loc4_[_loc5_];
            showType = int(_loc6_.type);
            _loc5_++;
         }
         load.removeEventListener(Event.COMPLETE,loadCompleteConfig);
         load.removeEventListener(IOErrorEvent.IO_ERROR,errorHandler);
         if(0 != showType)
         {
            _loc7_ = tree.dataProvider as ArrayCollection;
            if(_loc7_)
            {
               _loc7_.removeItemAt(_loc7_.length - 1);
            }
            tree.dataProvider = _loc7_;
            vs.selectedIndex = 1;
            tree.expandItem(tree.selectedItem,!tree.isItemOpen(tree.selectedItem));
            changeArea(0);
         }
         else
         {
            refreshHotInfo();
            getLastScore();
         }
      }
      
      public function ___CrossFightPanel_LinkButton15_click(param1:MouseEvent) : void
      {
         toLookRep(14);
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : Canvas
      {
         return this._951530617content;
      }
      
      private function toLookRep(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc4_:String = null;
         if(param1 > 2)
         {
            _loc2_ = hotTeamData.getItemAt(param1 - 3);
         }
         else
         {
            _loc2_ = hotTeamData2.getItemAt(param1);
         }
         if(_loc2_)
         {
            _loc4_ = _loc2_.treplayid;
            if((Boolean(_loc4_)) && _loc4_.length > 0)
            {
               _core.remote.call("crossPKLookReplay",new Responder(onLookRep),_loc4_);
               return;
            }
         }
         var _loc3_:String = Language.CROSS_FIGHT_PANEL_U[60];
         Alert.show(_loc3_,_loc3_,Alert.YES,null,null);
      }
      
      public function ___CrossFightPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         toLookRep(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get refreshScore() : BasicDelayButton
      {
         return this._57783177refreshScore;
      }
      
      public function onGetLastScore(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:int = 0;
         while(_loc2_ < hotTeamData.length)
         {
            _loc3_ = hotTeamData.getItemAt(_loc2_);
            if(Boolean(_loc3_) && param1[_loc3_.tid] != null)
            {
               _loc3_.tpoll = param1[_loc3_.tid];
               _loc3_.tpollStr = _loc3_.tpoll + Language.CROSS_FIGHT_PANEL_U[51];
            }
            _loc2_++;
         }
         _loc2_ = 0;
         while(_loc2_ < hotTeamData2.length)
         {
            _loc3_ = hotTeamData2.getItemAt(_loc2_);
            if(Boolean(_loc3_) && param1[_loc3_.tid] != null)
            {
               _loc3_.tpoll = param1[_loc3_.tid];
               _loc3_.tpollStr = _loc3_.tpoll + Language.CROSS_FIGHT_PANEL_U[51];
            }
            _loc2_++;
         }
         refreshHotInfo();
         vs.selectedIndex = 1;
         this.visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get crossFightTitle() : BasicTitleCanvas
      {
         return this._956155768crossFightTitle;
      }
      
      private function _CrossFightPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn1 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 50;
         _loc1_.sortable = false;
         _loc1_.dataField = "tname";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",16407301);
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn1",_CrossFightPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function ___CrossFightPanel_LinkButton9_click(param1:MouseEvent) : void
      {
         toLookRep(8);
      }
      
      private function treeClick(param1:Event) : void
      {
         var _loc2_:Object = tree.selectedItem;
         if(!_loc2_)
         {
            return;
         }
         changeView(_loc2_);
      }
      
      public function ___CrossFightPanel_LinkButton26_click(param1:MouseEvent) : void
      {
         openTeamInfo(9);
      }
      
      private function _CrossFightPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn9 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 30;
         _loc1_.sortable = false;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn9",_CrossFightPanel_DataGridColumn9);
         return _loc1_;
      }
      
      public function set leftTree(param1:Canvas) : void
      {
         var _loc2_:Object = this._1718430789leftTree;
         if(_loc2_ !== param1)
         {
            this._1718430789leftTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leftTree",_loc2_,param1));
         }
      }
      
      public function set hotTeam(param1:Canvas) : void
      {
         var _loc2_:Object = this._1098669130hotTeam;
         if(_loc2_ !== param1)
         {
            this._1098669130hotTeam = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotTeam",_loc2_,param1));
         }
      }
      
      private function onLookRep(param1:Object) : void
      {
         if(!param1)
         {
            _core.sysMsg(Language.CROSS_FIGHT_PANEL_U[50]);
         }
      }
      
      public function ___CrossFightPanel_LinkButton12_click(param1:MouseEvent) : void
      {
         toLookRep(11);
      }
      
      private function changeGroup(param1:int) : void
      {
         lastGroupA.selected = param1 == 0;
         lastGroupB.selected = param1 == 1;
         lastGroupC.selected = param1 == 2;
         lastGroupD.selected = param1 == 3;
         groupIndex = param1;
         refreshGroupInfo();
      }
      
      public function set r6(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3588r6;
         if(_loc2_ !== param1)
         {
            this._3588r6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r6",_loc2_,param1));
         }
      }
      
      public function ___CrossFightPanel_LinkButton23_click(param1:MouseEvent) : void
      {
         openTeamInfo(6);
      }
      
      public function set lastTitle(param1:Label) : void
      {
         var _loc2_:Object = this._2002832738lastTitle;
         if(_loc2_ !== param1)
         {
            this._2002832738lastTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastTitle",_loc2_,param1));
         }
      }
      
      public function __tree_itemClick(param1:ListEvent) : void
      {
         treeClick(param1);
      }
      
      private function initTree() : void
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         var _loc2_:ArrayCollection = new ArrayCollection();
         _loc2_.addItem({
            "label":Language.CROSS_FIGHT_PANEL_U[6],
            "type":LAST_INFO,
            "kind":1
         });
         _loc2_.addItem({
            "label":Language.CROSS_FIGHT_PANEL_U[7],
            "type":LAST_INFO,
            "kind":2
         });
         _loc2_.addItem({
            "label":Language.CROSS_FIGHT_PANEL_U[8],
            "type":LAST_INFO,
            "kind":3
         });
         _loc1_.addItem({
            "label":Language.CROSS_FIGHT_PANEL_U[4],
            "type":LAST_INFO,
            "kind":0,
            "children":_loc2_
         });
         _loc1_.addItem({
            "label":Language.CROSS_FIGHT_PANEL_U[61],
            "type":HOT_TEAM
         });
         var _loc3_:ArrayCollection = new ArrayCollection();
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_.length)
         {
            _loc3_.addItem(_loc1_.getItemAt(_loc4_));
            _loc4_++;
         }
         tree.dataProvider = _loc3_;
      }
      
      public function set lastInfo(param1:Canvas) : void
      {
         var _loc2_:Object = this._1459736476lastInfo;
         if(_loc2_ !== param1)
         {
            this._1459736476lastInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastInfo",_loc2_,param1));
         }
      }
      
      public function ___CrossFightPanel_LinkButton6_click(param1:MouseEvent) : void
      {
         toLookRep(5);
      }
      
      public function __lastGroupC_click(param1:MouseEvent) : void
      {
         changeGroup(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CROSS_FIGHT_PANEL_U[59].toString();
         _helpAlert = Alert.show(_loc1_,Language.ASTROLOGIC_PANEL_U[38].toString(),Alert.YES,null,null);
      }
      
      public function set refreshScore(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._57783177refreshScore;
         if(_loc2_ !== param1)
         {
            this._57783177refreshScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"refreshScore",_loc2_,param1));
         }
      }
      
      public function set content(param1:Canvas) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
         }
      }
      
      private function _CrossFightPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn8 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 30;
         _loc1_.sortable = false;
         _loc1_.dataField = "orderStr";
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("color",326404);
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn8",_CrossFightPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function ___CrossFightPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initTree();
      }
      
      public function ___CrossFightPanel_LinkButton17_click(param1:MouseEvent) : void
      {
         openTeamInfo(0);
      }
      
      public function ___CrossFightPanel_LinkButton20_click(param1:MouseEvent) : void
      {
         openTeamInfo(3);
      }
      
      public function ___CrossFightPanel_LinkButton28_click(param1:MouseEvent) : void
      {
         openTeamInfo(11);
      }
      
      public function ___CrossFightPanel_LinkButton3_click(param1:MouseEvent) : void
      {
         toLookRep(2);
      }
      
      public function showPanel() : void
      {
         if(load)
         {
            vs.selectedIndex = 1;
            if(0 != showType)
            {
               tree.expandItem(tree.selectedItem,!tree.isItemOpen(tree.selectedItem));
               changeArea(0);
            }
            this.visible = true;
         }
         else
         {
            getRemoteInfo();
         }
      }
      
      private function getLastScore() : void
      {
         if(teamData)
         {
            _core.remote.call("crossPKMobaiGetScore",null);
         }
      }
      
      public function set crossFightTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._956155768crossFightTitle;
         if(_loc2_ !== param1)
         {
            this._956155768crossFightTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"crossFightTitle",_loc2_,param1));
         }
      }
      
      private function openTeamInfo(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc4_:Object = null;
         if(param1 > 2)
         {
            _loc2_ = hotTeamData.getItemAt(param1 - 3);
         }
         else
         {
            _loc2_ = hotTeamData2.getItemAt(param1);
         }
         if(!_loc2_)
         {
            return;
         }
         if(!teamInfo)
         {
            teamInfo = ViewManager.getInstance().getUI(ViewManager.PANEL_CROSS_FIGHT_TEAM) as CrossFightTeamInfo;
         }
         var _loc3_:Object = {};
         for each(_loc4_ in memberData)
         {
            if(_loc4_.tid == _loc2_.tid)
            {
               _loc3_[_loc4_.corder] = _loc4_;
            }
         }
         teamInfo.open(_loc2_,_loc3_);
         teamInfo.visible = true;
      }
      
      private function _CrossFightPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn7 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 40;
         _loc1_.sortable = false;
         _loc1_.dataField = "tarea";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn7",_CrossFightPanel_DataGridColumn7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get hotTeamData() : ArrayCollection
      {
         return this._941722388hotTeamData;
      }
      
      public function ___CrossFightPanel_LinkButton31_click(param1:MouseEvent) : void
      {
         openTeamInfo(14);
      }
      
      public function ___CrossFightPanel_LinkButton14_click(param1:MouseEvent) : void
      {
         toLookRep(13);
      }
      
      private function refreshGroupInfo() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         lastTitle.text = Language.CROSS_FIGHT_PANEL_U[63] + Language.CROSS_FIGHT_PANEL_U[5 + areaIndex] + Language.CROSS_FIGHT_PANEL_U[18 + groupIndex] + Language.CROSS_FIGHT_PANEL_U[22];
         var _loc1_:int = 0;
         while(_loc1_ < 15)
         {
            if(this["r" + _loc1_])
            {
               this["r" + _loc1_].init();
            }
            _loc1_++;
         }
         for each(_loc2_ in vsData)
         {
            if(Boolean(_loc2_ && _loc2_.type != -1) && Boolean(_loc2_.group == groupIndex) && _loc2_.match == areaIndex - 1)
            {
               if(this["r" + _loc2_.bid])
               {
                  _loc3_ = teamData[_loc2_.tid];
                  this["r" + _loc2_.bid].refresh(_loc2_,_loc3_);
               }
            }
         }
      }
      
      private function loadCompleteVS(param1:Event) : void
      {
         var _loc6_:XML = null;
         var _loc7_:Object = null;
         var _loc2_:String = load.data;
         var _loc3_:XML = new XML(_loc2_);
         var _loc4_:XMLList = _loc3_.children();
         vsData = {};
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length())
         {
            _loc6_ = _loc4_[_loc5_];
            _loc7_ = {};
            _loc7_.id = int(_loc6_.id);
            _loc7_.tid = int(_loc6_.tid);
            _loc7_.bid = int(_loc6_.bid);
            _loc7_.rid = String(_loc6_.rid);
            _loc7_.type = int(_loc6_.type);
            _loc7_.group = int(_loc6_.group);
            _loc7_.match = int(_loc6_.match);
            vsData[_loc7_.id] = _loc7_;
            _loc5_++;
         }
         load.removeEventListener(Event.COMPLETE,loadCompleteVS);
         load.addEventListener(Event.COMPLETE,loadCompleteConfig);
         load.load(new URLRequest(CONFIG_URL));
      }
      
      public function ___CrossFightPanel_LinkButton25_click(param1:MouseEvent) : void
      {
         openTeamInfo(8);
      }
      
      private function refreshHotInfo() : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         hotTeamData.removeAll();
         hotTeamData2.removeAll();
         var _loc1_:Array = new Array();
         for each(_loc2_ in teamData)
         {
            if(Boolean(_loc2_ && _loc2_.tarea != "-1") && Boolean(_loc2_.ttorder >= 1) && _loc2_.ttorder <= 4)
            {
               _loc1_.push(_loc2_);
            }
         }
         _loc1_.sort(sortByType);
         _loc3_ = 0;
         while(_loc3_ < _loc1_.length)
         {
            _loc4_ = _loc1_[_loc3_];
            if(hotTeamData2.length < 3)
            {
               hotTeamData2.addItem(_loc4_);
            }
            else
            {
               hotTeamData.addItem(_loc4_);
            }
            _loc3_++;
         }
      }
      
      private function _CrossFightPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn6 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 50;
         _loc1_.sortable = false;
         _loc1_.dataField = "tname";
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn6",_CrossFightPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function ___CrossFightPanel_LinkButton8_click(param1:MouseEvent) : void
      {
         toLookRep(7);
      }
      
      private function loadCompleteTeam(param1:Event) : void
      {
         var _loc6_:XML = null;
         var _loc7_:Object = null;
         var _loc2_:String = load.data;
         var _loc3_:XML = new XML(_loc2_);
         var _loc4_:XMLList = _loc3_.children();
         teamData = {};
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length())
         {
            _loc6_ = _loc4_[_loc5_];
            _loc7_ = {};
            _loc7_.id = int(_loc6_.id);
            _loc7_.tid = int(_loc6_.tid);
            _loc7_.tname = String(_loc6_.tname);
            _loc7_.tarea = String(_loc6_.tarea);
            _loc7_.torder = int(_loc6_.torder);
            _loc7_.ttorder = int(_loc6_.ttorder);
            _loc7_.orderStr = Language.CROSS_FIGHT_PANEL_U[18 + int(_loc6_.tgroup)] + "-" + Language.CROSS_FIGHT_PANEL_U[44 + _loc7_.ttorder];
            _loc7_.treplayid = String(_loc6_.treplayid);
            _loc7_.tgroup = Language.CROSS_FIGHT_PANEL_U[18 + int(_loc6_.tgroup)];
            _loc7_.tside = int(_loc6_.tside);
            _loc7_.tpoll = 0;
            _loc7_.tpollStr = _loc7_.tpoll + Language.CROSS_FIGHT_PANEL_U[51];
            teamData[_loc7_.tid] = _loc7_;
            _loc5_++;
         }
         load.removeEventListener(Event.COMPLETE,loadCompleteTeam);
         load.addEventListener(Event.COMPLETE,loadCompleteMember);
         load.load(new URLRequest(MEMBER_URL));
      }
      
      public function set tree(param1:ButtonTree) : void
      {
         var _loc2_:Object = this._3568542tree;
         if(_loc2_ !== param1)
         {
            this._3568542tree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tree",_loc2_,param1));
         }
      }
      
      public function ___CrossFightPanel_LinkButton11_click(param1:MouseEvent) : void
      {
         toLookRep(10);
      }
      
      public function ___CrossFightPanel_LinkButton19_click(param1:MouseEvent) : void
      {
         openTeamInfo(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get lastTitle() : Label
      {
         return this._2002832738lastTitle;
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
      
      private function sortByType(param1:Object, param2:Object) : Number
      {
         if(param1.tpoll == param2.tpoll)
         {
            return 0;
         }
         if(param1.tpoll < param2.tpoll)
         {
            return 1;
         }
         return -1;
      }
      
      public function ___CrossFightPanel_LinkButton22_click(param1:MouseEvent) : void
      {
         openTeamInfo(5);
      }
      
      public function __lastGroupB_click(param1:MouseEvent) : void
      {
         changeGroup(1);
      }
      
      public function addTeamPoll(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc3_:int = 0;
         while(_loc3_ < hotTeamData.length)
         {
            _loc4_ = hotTeamData.getItemAt(_loc3_);
            if((Boolean(_loc4_)) && _loc4_.tid == param1)
            {
               _loc4_.tpoll += param2;
               _loc4_.tpollStr = _loc4_.tpoll + Language.CROSS_FIGHT_PANEL_U[51];
            }
            _loc3_++;
         }
         _loc3_ = 0;
         while(_loc3_ < hotTeamData2.length)
         {
            _loc4_ = hotTeamData2.getItemAt(_loc3_);
            if((Boolean(_loc4_)) && _loc4_.tid == param1)
            {
               _loc4_.tpoll += param2;
               _loc4_.tpollStr = _loc4_.tpoll + Language.CROSS_FIGHT_PANEL_U[51];
            }
            _loc3_++;
         }
         refreshHotInfo();
      }
      
      public function ___CrossFightPanel_LinkButton5_click(param1:MouseEvent) : void
      {
         toLookRep(4);
      }
      
      private function _CrossFightPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn5 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 35;
         _loc1_.sortable = false;
         _loc1_.dataField = "tpollStr";
         _loc1_.setStyle("textAlign","right");
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn5",_CrossFightPanel_DataGridColumn5);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossFightPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossFightPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossFightPanelWatcherSetupUtil");
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
      
      private function _CrossFightPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn10 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 35;
         _loc1_.sortable = false;
         _loc1_.dataField = "tpollStr";
         _loc1_.setStyle("textAlign","right");
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn10",_CrossFightPanel_DataGridColumn10);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tree() : ButtonTree
      {
         return this._3568542tree;
      }
      
      public function ___CrossFightPanel_LinkButton33_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      public function ___CrossFightPanel_LinkButton16_click(param1:MouseEvent) : void
      {
         toLookRep(15);
      }
      
      private function _CrossFightPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            crossFightTitle.text = param1;
         },"crossFightTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[63];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_Label1.text = param1;
         },"_CrossFightPanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lastGroupA.label = param1;
         },"lastGroupA.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lastGroupB.label = param1;
         },"lastGroupB.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lastGroupC.label = param1;
         },"lastGroupC.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lastGroupD.label = param1;
         },"lastGroupD.label");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000233);
         },function(param1:Object):void
         {
            _CrossFightPanel_Image1.source = param1;
         },"_CrossFightPanel_Image1.source");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[62];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_Label3.text = param1;
         },"_CrossFightPanel_Label3.text");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000233);
         },function(param1:Object):void
         {
            _CrossFightPanel_Image2.source = param1;
         },"_CrossFightPanel_Image2.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return hotTeamData2;
         },function(param1:Object):void
         {
            _CrossFightPanel_DataGrid1.dataProvider = param1;
         },"_CrossFightPanel_DataGrid1.dataProvider");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn1.headerText = param1;
         },"_CrossFightPanel_DataGridColumn1.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn2.headerText = param1;
         },"_CrossFightPanel_DataGridColumn2.headerText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn3.headerText = param1;
         },"_CrossFightPanel_DataGridColumn3.headerText");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn4.headerText = param1;
         },"_CrossFightPanel_DataGridColumn4.headerText");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn5.headerText = param1;
         },"_CrossFightPanel_DataGridColumn5.headerText");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return hotTeamData;
         },function(param1:Object):void
         {
            _CrossFightPanel_DataGrid2.dataProvider = param1;
         },"_CrossFightPanel_DataGrid2.dataProvider");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn6.headerText = param1;
         },"_CrossFightPanel_DataGridColumn6.headerText");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn7.headerText = param1;
         },"_CrossFightPanel_DataGridColumn7.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn8.headerText = param1;
         },"_CrossFightPanel_DataGridColumn8.headerText");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn9.headerText = param1;
         },"_CrossFightPanel_DataGridColumn9.headerText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_DataGridColumn10.headerText = param1;
         },"_CrossFightPanel_DataGridColumn10.headerText");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000222);
         },function(param1:Object):void
         {
            _CrossFightPanel_Image3.source = param1;
         },"_CrossFightPanel_Image3.source");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000223);
         },function(param1:Object):void
         {
            _CrossFightPanel_Image4.source = param1;
         },"_CrossFightPanel_Image4.source");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000224);
         },function(param1:Object):void
         {
            _CrossFightPanel_Image5.source = param1;
         },"_CrossFightPanel_Image5.source");
         result[23] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton1.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton1.overSkin");
         result[24] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton1.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton1.upSkin");
         result[25] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton1.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton1.downSkin");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton1.label = param1;
         },"_CrossFightPanel_LinkButton1.label");
         result[27] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton2.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton2.overSkin");
         result[28] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton2.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton2.upSkin");
         result[29] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton2.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton2.downSkin");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton2.label = param1;
         },"_CrossFightPanel_LinkButton2.label");
         result[31] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton3.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton3.overSkin");
         result[32] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton3.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton3.upSkin");
         result[33] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton3.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton3.downSkin");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton3.label = param1;
         },"_CrossFightPanel_LinkButton3.label");
         result[35] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton4.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton4.overSkin");
         result[36] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton4.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton4.upSkin");
         result[37] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton4.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton4.downSkin");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton4.label = param1;
         },"_CrossFightPanel_LinkButton4.label");
         result[39] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton5.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton5.overSkin");
         result[40] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton5.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton5.upSkin");
         result[41] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton5.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton5.downSkin");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton5.label = param1;
         },"_CrossFightPanel_LinkButton5.label");
         result[43] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton6.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton6.overSkin");
         result[44] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton6.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton6.upSkin");
         result[45] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton6.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton6.downSkin");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton6.label = param1;
         },"_CrossFightPanel_LinkButton6.label");
         result[47] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton7.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton7.overSkin");
         result[48] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton7.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton7.upSkin");
         result[49] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton7.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton7.downSkin");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton7.label = param1;
         },"_CrossFightPanel_LinkButton7.label");
         result[51] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton8.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton8.overSkin");
         result[52] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton8.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton8.upSkin");
         result[53] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton8.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton8.downSkin");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton8.label = param1;
         },"_CrossFightPanel_LinkButton8.label");
         result[55] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton9.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton9.overSkin");
         result[56] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton9.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton9.upSkin");
         result[57] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton9.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton9.downSkin");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton9.label = param1;
         },"_CrossFightPanel_LinkButton9.label");
         result[59] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton10.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton10.overSkin");
         result[60] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton10.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton10.upSkin");
         result[61] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton10.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton10.downSkin");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton10.label = param1;
         },"_CrossFightPanel_LinkButton10.label");
         result[63] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton11.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton11.overSkin");
         result[64] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton11.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton11.upSkin");
         result[65] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton11.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton11.downSkin");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton11.label = param1;
         },"_CrossFightPanel_LinkButton11.label");
         result[67] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton12.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton12.overSkin");
         result[68] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton12.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton12.upSkin");
         result[69] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton12.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton12.downSkin");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton12.label = param1;
         },"_CrossFightPanel_LinkButton12.label");
         result[71] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton13.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton13.overSkin");
         result[72] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton13.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton13.upSkin");
         result[73] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton13.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton13.downSkin");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton13.label = param1;
         },"_CrossFightPanel_LinkButton13.label");
         result[75] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton14.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton14.overSkin");
         result[76] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton14.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton14.upSkin");
         result[77] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton14.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton14.downSkin");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton14.label = param1;
         },"_CrossFightPanel_LinkButton14.label");
         result[79] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton15.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton15.overSkin");
         result[80] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton15.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton15.upSkin");
         result[81] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton15.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton15.downSkin");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton15.label = param1;
         },"_CrossFightPanel_LinkButton15.label");
         result[83] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton16.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton16.overSkin");
         result[84] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton16.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton16.upSkin");
         result[85] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton16.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton16.downSkin");
         result[86] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton16.label = param1;
         },"_CrossFightPanel_LinkButton16.label");
         result[87] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton17.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton17.overSkin");
         result[88] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton17.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton17.upSkin");
         result[89] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton17.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton17.downSkin");
         result[90] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton17.label = param1;
         },"_CrossFightPanel_LinkButton17.label");
         result[91] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton18.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton18.overSkin");
         result[92] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton18.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton18.upSkin");
         result[93] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton18.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton18.downSkin");
         result[94] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton18.label = param1;
         },"_CrossFightPanel_LinkButton18.label");
         result[95] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton19.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton19.overSkin");
         result[96] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton19.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton19.upSkin");
         result[97] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton19.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton19.downSkin");
         result[98] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton19.label = param1;
         },"_CrossFightPanel_LinkButton19.label");
         result[99] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton20.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton20.overSkin");
         result[100] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton20.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton20.upSkin");
         result[101] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton20.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton20.downSkin");
         result[102] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton20.label = param1;
         },"_CrossFightPanel_LinkButton20.label");
         result[103] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton21.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton21.overSkin");
         result[104] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton21.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton21.upSkin");
         result[105] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton21.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton21.downSkin");
         result[106] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton21.label = param1;
         },"_CrossFightPanel_LinkButton21.label");
         result[107] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton22.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton22.overSkin");
         result[108] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton22.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton22.upSkin");
         result[109] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton22.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton22.downSkin");
         result[110] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton22.label = param1;
         },"_CrossFightPanel_LinkButton22.label");
         result[111] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton23.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton23.overSkin");
         result[112] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton23.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton23.upSkin");
         result[113] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton23.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton23.downSkin");
         result[114] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton23.label = param1;
         },"_CrossFightPanel_LinkButton23.label");
         result[115] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton24.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton24.overSkin");
         result[116] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton24.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton24.upSkin");
         result[117] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton24.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton24.downSkin");
         result[118] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton24.label = param1;
         },"_CrossFightPanel_LinkButton24.label");
         result[119] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton25.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton25.overSkin");
         result[120] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton25.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton25.upSkin");
         result[121] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton25.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton25.downSkin");
         result[122] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton25.label = param1;
         },"_CrossFightPanel_LinkButton25.label");
         result[123] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton26.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton26.overSkin");
         result[124] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton26.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton26.upSkin");
         result[125] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton26.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton26.downSkin");
         result[126] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton26.label = param1;
         },"_CrossFightPanel_LinkButton26.label");
         result[127] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton27.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton27.overSkin");
         result[128] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton27.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton27.upSkin");
         result[129] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton27.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton27.downSkin");
         result[130] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton27.label = param1;
         },"_CrossFightPanel_LinkButton27.label");
         result[131] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton28.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton28.overSkin");
         result[132] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton28.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton28.upSkin");
         result[133] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton28.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton28.downSkin");
         result[134] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton28.label = param1;
         },"_CrossFightPanel_LinkButton28.label");
         result[135] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton29.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton29.overSkin");
         result[136] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton29.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton29.upSkin");
         result[137] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton29.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton29.downSkin");
         result[138] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton29.label = param1;
         },"_CrossFightPanel_LinkButton29.label");
         result[139] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton30.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton30.overSkin");
         result[140] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton30.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton30.upSkin");
         result[141] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton30.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton30.downSkin");
         result[142] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton30.label = param1;
         },"_CrossFightPanel_LinkButton30.label");
         result[143] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton31.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton31.overSkin");
         result[144] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton31.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton31.upSkin");
         result[145] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton31.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton31.downSkin");
         result[146] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton31.label = param1;
         },"_CrossFightPanel_LinkButton31.label");
         result[147] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton32.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton32.overSkin");
         result[148] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton32.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton32.upSkin");
         result[149] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton32.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton32.downSkin");
         result[150] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton32.label = param1;
         },"_CrossFightPanel_LinkButton32.label");
         result[151] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton33.setStyle("overSkin",param1);
         },"_CrossFightPanel_LinkButton33.overSkin");
         result[152] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton33.setStyle("upSkin",param1);
         },"_CrossFightPanel_LinkButton33.upSkin");
         result[153] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _CrossFightPanel_LinkButton33.setStyle("downSkin",param1);
         },"_CrossFightPanel_LinkButton33.downSkin");
         result[154] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ASTROLOGIC_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightPanel_LinkButton33.label = param1;
         },"_CrossFightPanel_LinkButton33.label");
         result[155] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            refreshScore.label = param1;
         },"refreshScore.label");
         result[156] = binding;
         return result;
      }
      
      private function closeAllNodes() : void
      {
         var _loc1_:* = undefined;
         for each(_loc1_ in tree.openItems)
         {
            tree.expandItem(_loc1_,false);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get hotTeamData2() : ArrayCollection
      {
         return this._871376994hotTeamData2;
      }
      
      public function __refreshScore_click(param1:MouseEvent) : void
      {
         getLastScore();
      }
      
      public function set lastGroupA(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1594265560lastGroupA;
         if(_loc2_ !== param1)
         {
            this._1594265560lastGroupA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastGroupA",_loc2_,param1));
         }
      }
      
      public function set lastGroupC(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1594265562lastGroupC;
         if(_loc2_ !== param1)
         {
            this._1594265562lastGroupC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastGroupC",_loc2_,param1));
         }
      }
      
      public function set lastGroupInfo(param1:Canvas) : void
      {
         var _loc2_:Object = this._1017286103lastGroupInfo;
         if(_loc2_ !== param1)
         {
            this._1017286103lastGroupInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastGroupInfo",_loc2_,param1));
         }
      }
      
      public function set lastGroupD(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1594265563lastGroupD;
         if(_loc2_ !== param1)
         {
            this._1594265563lastGroupD = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastGroupD",_loc2_,param1));
         }
      }
      
      private function loadCompleteMember(param1:Event) : void
      {
         var _loc6_:XML = null;
         var _loc7_:Object = null;
         var _loc2_:String = load.data;
         var _loc3_:XML = new XML(_loc2_);
         var _loc4_:XMLList = _loc3_.children();
         memberData = {};
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length())
         {
            _loc6_ = _loc4_[_loc5_];
            _loc7_ = {};
            _loc7_.id = int(_loc6_.id);
            _loc7_.tid = int(_loc6_.tid);
            _loc7_.cid = int(_loc6_.cid);
            _loc7_.cname = String(_loc6_.cname);
            _loc7_.corder = int(_loc6_.corder);
            _loc7_.ccode = String(_loc6_.ccode);
            _loc7_.level = String(_loc6_.level);
            _loc7_.job = String(_loc6_.job);
            memberData[_loc7_.cid] = _loc7_;
            _loc5_++;
         }
         load.removeEventListener(Event.COMPLETE,loadCompleteMember);
         load.addEventListener(Event.COMPLETE,loadCompleteVS);
         load.load(new URLRequest(VS_URL));
      }
      
      private function set hotTeamData2(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._871376994hotTeamData2;
         if(_loc2_ !== param1)
         {
            this._871376994hotTeamData2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotTeamData2",_loc2_,param1));
         }
      }
      
      public function set lastGroupB(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1594265561lastGroupB;
         if(_loc2_ !== param1)
         {
            this._1594265561lastGroupB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastGroupB",_loc2_,param1));
         }
      }
      
      public function ___CrossFightPanel_LinkButton2_click(param1:MouseEvent) : void
      {
         toLookRep(1);
      }
      
      public function ___CrossFightPanel_LinkButton27_click(param1:MouseEvent) : void
      {
         openTeamInfo(10);
      }
      
      private function _CrossFightPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossFightPanel_DataGridColumn4 = _loc1_;
         _loc1_.resizable = false;
         _loc1_.draggable = false;
         _loc1_.width = 30;
         _loc1_.sortable = false;
         _loc1_.setStyle("textAlign","center");
         BindingManager.executeBindings(this,"_CrossFightPanel_DataGridColumn4",_CrossFightPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastGroupA() : BasicGlowButton
      {
         return this._1594265560lastGroupA;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastGroupB() : BasicGlowButton
      {
         return this._1594265561lastGroupB;
      }
      
      private function _CrossFightPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[0];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[63];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[18];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[19];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[20];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[21];
         _loc1_ = ResManager.getIconUrl(4130220000233);
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[62];
         _loc1_ = ResManager.getIconUrl(4130220000233);
         _loc1_ = hotTeamData2;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[11];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[12];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[13];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[14];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[15];
         _loc1_ = hotTeamData;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[11];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[12];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[13];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[14];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[15];
         _loc1_ = ResManager.getIconUrl(4130220000222);
         _loc1_ = ResManager.getIconUrl(4130220000223);
         _loc1_ = ResManager.getIconUrl(4130220000224);
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[16];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[17];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = Language.ASTROLOGIC_PANEL_U[38];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[43];
      }
      
      public function ___CrossFightPanel_LinkButton30_click(param1:MouseEvent) : void
      {
         openTeamInfo(13);
      }
      
      public function ___CrossFightPanel_LinkButton13_click(param1:MouseEvent) : void
      {
         toLookRep(12);
      }
      
      [Bindable(event="propertyChange")]
      public function get lastGroupD() : BasicGlowButton
      {
         return this._1594265563lastGroupD;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastGroupInfo() : Canvas
      {
         return this._1017286103lastGroupInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get lastGroupC() : BasicGlowButton
      {
         return this._1594265562lastGroupC;
      }
      
      public function set r0(param1:CrossFightResultInfo) : void
      {
         var _loc2_:Object = this._3582r0;
         if(_loc2_ !== param1)
         {
            this._3582r0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"r0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get r0() : CrossFightResultInfo
      {
         return this._3582r0;
      }
      
      [Bindable(event="propertyChange")]
      public function get r1() : CrossFightResultInfo
      {
         return this._3583r1;
      }
   }
}

