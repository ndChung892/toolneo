package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RendererItemArray;
   import com.qeedoo.ui.view.comp.RendererItemButton;
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
   import mx.controls.DataGrid;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.VRule;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NewServerActPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const NEW_ICON:Class = NewServerActPanel_NEW_ICON;
      
      public static const LEVEL_ICON:Class = NewServerActPanel_LEVEL_ICON;
      
      public static const ACTIVE_ICON:Class = NewServerActPanel_ACTIVE_ICON;
      
      public static const GUILD_ICON:Class = NewServerActPanel_GUILD_ICON;
      
      public static const ACH_RANK_ICON:Class = NewServerActPanel_ACH_RANK_ICON;
      
      public static const MONEY_RANK_ICON:Class = NewServerActPanel_MONEY_RANK_ICON;
      
      public static const BATTLE_ICON:Class = NewServerActPanel_BATTLE_ICON;
      
      public static const TB_RANK_ICON:Class = NewServerActPanel_TB_RANK_ICON;
      
      public static const POP_RANK_ICON:Class = NewServerActPanel_POP_RANK_ICON;
      
      public static const LEVEL_UP_ICON:Class = NewServerActPanel_LEVEL_UP_ICON;
      
      private var lastSelectedIndex:int = -1;
      
      private var _1258276178awardBtn1:BasicGlowButton;
      
      private var _873453349title3:IntroText;
      
      private var _1258276182awardBtn5:BasicGlowButton;
      
      private var _1422987715actDG2:DataGrid;
      
      private var _873453352title0:IntroText;
      
      private var _1759725291idViewLists:List;
      
      private var _1422987709actDG8:DataGrid;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1258276184awardBtn7:BasicGlowButton;
      
      private var _873453346title6:IntroText;
      
      private var _1422987712actDG5:DataGrid;
      
      private var _core:Core = Core.getInstance();
      
      private var _1020731909myLevel3:Label;
      
      private var _1020731907myLevel5:Label;
      
      private var _1020731905myLevel7:Label;
      
      private var _873453343title9:IntroText;
      
      private var _1258276186awardBtn9:BasicGlowButton;
      
      public var _NewServerActPanel_Image1:Image;
      
      public var _NewServerActPanel_Image3:Image;
      
      public var _NewServerActPanel_Image5:Image;
      
      public var _NewServerActPanel_Image7:Image;
      
      public var _NewServerActPanel_Image2:Image;
      
      public var _NewServerActPanel_Image4:Image;
      
      public var _NewServerActPanel_Image6:Image;
      
      public var _NewServerActPanel_Image8:Image;
      
      private var _1422987717actDG0:DataGrid;
      
      public var _NewServerActPanel_Image9:Image;
      
      private var fieldList:Object = {
         "memberNum":Language.SERVERACTPANEL_S[25],
         "actPoint":Language.SERVERACTPANEL_S[24],
         "exp":Language.SERVERACTPANEL_S[21],
         "achPoint":Language.SERVERACTPANEL_S[28],
         "money":Language.SERVERACTPANEL_S[29],
         "expBattle":Language.SERVERACTPANEL_S[30],
         "totalBp":Language.SERVERACTPANEL_S[31],
         "pop":Language.SERVERACTPANEL_S[32],
         "pet":Language.SERVERACTPANEL_S[33]
      };
      
      private var _1020731912myLevel0:Label;
      
      private var _1020731903myLevel9:Label;
      
      private var _1020731910myLevel2:Label;
      
      private var _873453348title4:IntroText;
      
      private var _873453351title1:IntroText;
      
      private var _1258276177awardBtn0:BasicGlowButton;
      
      private var _1422987714actDG3:DataGrid;
      
      private var _1258276181awardBtn4:BasicGlowButton;
      
      private var _1422987708actDG9:DataGrid;
      
      private var _873453345title7:IntroText;
      
      private var _1577918118myLevel13:Label;
      
      public var _NewServerActPanel_DataGridColumn1:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn2:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn3:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn4:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn8:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn5:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn6:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn7:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn9:DataGridColumn;
      
      private var _1422987711actDG6:DataGrid;
      
      public var _NewServerActPanel_DataGridColumn10:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn11:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn12:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn13:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn14:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn15:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn16:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn17:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn18:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn19:DataGridColumn;
      
      private var actIndex:Array;
      
      private var _1422987716actDG1:DataGrid;
      
      private var _1307250054title13:IntroText;
      
      public var _NewServerActPanel_DataGridColumn20:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn21:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn22:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn23:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn24:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn25:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn26:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn27:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn28:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn29:DataGridColumn;
      
      private var allActArr:Array = [Language.SERVERACTPANEL_S[0],Language.SERVERACTPANEL_S[1],Language.SERVERACTPANEL_S[2],Language.SERVERACTPANEL_S[3],Language.SERVERACTPANEL_S[4],Language.SERVERACTPANEL_S[5],Language.SERVERACTPANEL_S[6],Language.SERVERACTPANEL_S[7],Language.SERVERACTPANEL_S[8],Language.SERVERACTPANEL_S[9],Language.SERVERACTPANEL_S[35],Language.SERVERACTPANEL_S[36],Language.SERVERACTPANEL_S[34],Language.SERVERACTPANEL_S[49],Language.GAMEINTROPANEL_U[51]];
      
      public var _NewServerActPanel_Image10:Image;
      
      public var _NewServerActPanel_Image11:Image;
      
      private var _1258276183awardBtn6:BasicGlowButton;
      
      private var _1258276185awardBtn8:BasicGlowButton;
      
      private var _1020731908myLevel4:Label;
      
      private var _1020731906myLevel6:Label;
      
      public var _NewServerActPanel_DataGridColumn30:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn31:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn32:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn33:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn35:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn36:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn37:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn38:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn39:DataGridColumn;
      
      private var _873453347title5:IntroText;
      
      public var _NewServerActPanel_DataGridColumn34:DataGridColumn;
      
      private var _1020731911myLevel1:Label;
      
      public var isInited:Boolean = false;
      
      private var _1020731904myLevel8:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _1422987713actDG4:DataGrid;
      
      public var _NewServerActPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1162946185actDG13:DataGrid;
      
      public var _NewServerActPanel_DataGridColumn40:DataGridColumn;
      
      public var _NewServerActPanel_DataGridColumn41:DataGridColumn;
      
      private var _873453350title2:IntroText;
      
      private var _1644172819idViews:ViewStack;
      
      private var wlListItemArr:Array;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1258276180awardBtn3:BasicGlowButton;
      
      private var _873453344title8:IntroText;
      
      private var _1422987710actDG7:DataGrid;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":672,
               "height":444,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_NewServerActPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"idViewLists",
                  "events":{
                     "change":"__idViewLists_change",
                     "creationComplete":"__idViewLists_creationComplete"
                  },
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "10";
                     this.backgroundAlpha = 0;
                     this.fontSize = 12;
                     this.fontWeight = "bold";
                     this.left = "9";
                     this.textRollOverColor = 16366965;
                     this.textSelectedColor = 1961723;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":107};
                  }
               }),new UIComponentDescriptor({
                  "type":VRule,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":120};
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"idViews",
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "10";
                     this.top = "40";
                     this.left = "130";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "events":{"show":"___NewServerActPanel_Canvas1_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image1",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title0",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel0",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn0",
                                          "events":{"click":"__awardBtn0_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG0",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn1_i(),_NewServerActPanel_DataGridColumn2_i(),_NewServerActPanel_DataGridColumn3_i(),_NewServerActPanel_DataGridColumn4_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas3_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image2",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title1",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel1",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn1",
                                          "events":{"click":"__awardBtn1_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG1",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "variableRowHeight":true,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn5_i(),_NewServerActPanel_DataGridColumn6_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas5_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image3",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel2",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG2",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "175";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "variableRowHeight":true,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn7_i(),_NewServerActPanel_DataGridColumn8_i(),_NewServerActPanel_DataGridColumn9_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas7_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image4",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title3",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel3",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn3",
                                          "events":{"click":"__awardBtn3_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG3",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "variableRowHeight":true,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn10_i(),_NewServerActPanel_DataGridColumn11_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas9_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image5",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title4",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel4",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn4",
                                          "events":{"click":"__awardBtn4_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG4",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn12_i(),_NewServerActPanel_DataGridColumn13_i(),_NewServerActPanel_DataGridColumn14_i(),_NewServerActPanel_DataGridColumn15_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas11_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image6",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title5",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel5",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn5",
                                          "events":{"click":"__awardBtn5_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG5",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn16_i(),_NewServerActPanel_DataGridColumn17_i(),_NewServerActPanel_DataGridColumn18_i(),_NewServerActPanel_DataGridColumn19_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas13_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image7",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title6",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel6",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn6",
                                          "events":{"click":"__awardBtn6_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG6",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn20_i(),_NewServerActPanel_DataGridColumn21_i(),_NewServerActPanel_DataGridColumn22_i(),_NewServerActPanel_DataGridColumn23_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas15_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image8",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title7",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel7",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn7",
                                          "events":{"click":"__awardBtn7_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG7",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn24_i(),_NewServerActPanel_DataGridColumn25_i(),_NewServerActPanel_DataGridColumn26_i(),_NewServerActPanel_DataGridColumn27_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas17_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image9",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title8",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel8",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn8",
                                          "events":{"click":"__awardBtn8_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG8",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn28_i(),_NewServerActPanel_DataGridColumn29_i(),_NewServerActPanel_DataGridColumn30_i(),_NewServerActPanel_DataGridColumn31_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas19_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image10",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title9",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel9",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":410,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicGlowButton,
                                          "id":"awardBtn9",
                                          "events":{"click":"__awardBtn9_click"},
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":430,
                                                "y":147,
                                                "height":25,
                                                "styleName":"BtnStdRed",
                                                "enabled":false,
                                                "width":80
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG9",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn32_i(),_NewServerActPanel_DataGridColumn33_i(),_NewServerActPanel_DataGridColumn34_i(),_NewServerActPanel_DataGridColumn35_i()]
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
                        "events":{"show":"___NewServerActPanel_Canvas21_show"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "label":"",
                              "percentWidth":100,
                              "percentHeight":100,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.left = "0";
                                    this.right = "10";
                                    this.top = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Image,
                                          "id":"_NewServerActPanel_Image11",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":5,
                                                "width":500,
                                                "height":75
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"title13",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":85,
                                                "width":500,
                                                "height":60
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":Label,
                                          "id":"myLevel13",
                                          "stylesFactory":function():void
                                          {
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "x":10,
                                                "y":150,
                                                "width":500,
                                                "height":30
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":DataGrid,
                                          "id":"actDG13",
                                          "stylesFactory":function():void
                                          {
                                             this.paddingTop = 1;
                                             this.paddingBottom = 1;
                                             this.left = "10";
                                             this.top = "180";
                                             this.right = "10";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "resizableColumns":false,
                                                "variableRowHeight":true,
                                                "draggableColumns":false,
                                                "columns":[_NewServerActPanel_DataGridColumn36_i(),_NewServerActPanel_DataGridColumn37_i(),_NewServerActPanel_DataGridColumn38_i(),_NewServerActPanel_DataGridColumn39_i(),_NewServerActPanel_DataGridColumn40_i(),_NewServerActPanel_DataGridColumn41_i()]
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
               })]
            };
         }
      });
      
      public function NewServerActPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 672;
         this.height = 444;
         this.styleName = "StandardContent";
         this.x = 135;
         this.y = 308;
         this.addEventListener("creationComplete",___NewServerActPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NewServerActPanel._watcherSetupUtil = param1;
      }
      
      public function ___NewServerActPanel_Canvas13_show(param1:FlexEvent) : void
      {
         initActPanel(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel4() : Label
      {
         return this._1020731908myLevel4;
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel5() : Label
      {
         return this._1020731907myLevel5;
      }
      
      public function set myLevel3(param1:Label) : void
      {
         var _loc2_:Object = this._1020731909myLevel3;
         if(_loc2_ !== param1)
         {
            this._1020731909myLevel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel7() : Label
      {
         return this._1020731905myLevel7;
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel0() : Label
      {
         return this._1020731912myLevel0;
      }
      
      public function __awardBtn7_click(param1:MouseEvent) : void
      {
         takeActRankAward(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel2() : Label
      {
         return this._1020731910myLevel2;
      }
      
      public function set myLevel1(param1:Label) : void
      {
         var _loc2_:Object = this._1020731911myLevel1;
         if(_loc2_ !== param1)
         {
            this._1020731911myLevel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel1",_loc2_,param1));
         }
      }
      
      public function set myLevel6(param1:Label) : void
      {
         var _loc2_:Object = this._1020731906myLevel6;
         if(_loc2_ !== param1)
         {
            this._1020731906myLevel6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel6",_loc2_,param1));
         }
      }
      
      public function set myLevel7(param1:Label) : void
      {
         var _loc2_:Object = this._1020731905myLevel7;
         if(_loc2_ !== param1)
         {
            this._1020731905myLevel7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel8() : Label
      {
         return this._1020731904myLevel8;
      }
      
      public function set myLevel4(param1:Label) : void
      {
         var _loc2_:Object = this._1020731908myLevel4;
         if(_loc2_ !== param1)
         {
            this._1020731908myLevel4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel1() : Label
      {
         return this._1020731911myLevel1;
      }
      
      public function set myLevel5(param1:Label) : void
      {
         var _loc2_:Object = this._1020731907myLevel5;
         if(_loc2_ !== param1)
         {
            this._1020731907myLevel5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get idViews() : ViewStack
      {
         return this._1644172819idViews;
      }
      
      public function set title8(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453344title8;
         if(_loc2_ !== param1)
         {
            this._873453344title8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title8",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn3 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 90;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn3",_NewServerActPanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function _NewServerActPanel_DataGridColumn20_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn20 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "index";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn20",_NewServerActPanel_DataGridColumn20);
         return _loc1_;
      }
      
      public function set myLevel8(param1:Label) : void
      {
         var _loc2_:Object = this._1020731904myLevel8;
         if(_loc2_ !== param1)
         {
            this._1020731904myLevel8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel8",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn28_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn28 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "index";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn28",_NewServerActPanel_DataGridColumn28);
         return _loc1_;
      }
      
      private function _NewServerActPanel_ClassFactory8_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel9() : Label
      {
         return this._1020731903myLevel9;
      }
      
      public function set myLevel9(param1:Label) : void
      {
         var _loc2_:Object = this._1020731903myLevel9;
         if(_loc2_ !== param1)
         {
            this._1020731903myLevel9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel9",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_BasicTitleCanvas1.text = param1;
         },"_NewServerActPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return wlListItemArr;
         },function(param1:Object):void
         {
            idViewLists.dataProvider = param1;
         },"idViewLists.dataProvider");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return NEW_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image1.source = param1;
         },"_NewServerActPanel_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title0.text = param1;
         },"title0.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel0.text = param1;
         },"myLevel0.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn0.label = param1;
         },"awardBtn0.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn1.headerText = param1;
         },"_NewServerActPanel_DataGridColumn1.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn2.headerText = param1;
         },"_NewServerActPanel_DataGridColumn2.headerText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn3.headerText = param1;
         },"_NewServerActPanel_DataGridColumn3.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn4.headerText = param1;
         },"_NewServerActPanel_DataGridColumn4.headerText");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return LEVEL_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image2.source = param1;
         },"_NewServerActPanel_Image2.source");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title1.text = param1;
         },"title1.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel1.text = param1;
         },"myLevel1.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn1.label = param1;
         },"awardBtn1.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn5.headerText = param1;
         },"_NewServerActPanel_DataGridColumn5.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn6.headerText = param1;
         },"_NewServerActPanel_DataGridColumn6.headerText");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return ACTIVE_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image3.source = param1;
         },"_NewServerActPanel_Image3.source");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title2.text = param1;
         },"title2.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel2.text = param1;
         },"myLevel2.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn7.headerText = param1;
         },"_NewServerActPanel_DataGridColumn7.headerText");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn8.headerText = param1;
         },"_NewServerActPanel_DataGridColumn8.headerText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn9.headerText = param1;
         },"_NewServerActPanel_DataGridColumn9.headerText");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return GUILD_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image4.source = param1;
         },"_NewServerActPanel_Image4.source");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title3.text = param1;
         },"title3.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel3.text = param1;
         },"myLevel3.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn3.label = param1;
         },"awardBtn3.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn10.headerText = param1;
         },"_NewServerActPanel_DataGridColumn10.headerText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn11.headerText = param1;
         },"_NewServerActPanel_DataGridColumn11.headerText");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return NEW_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image5.source = param1;
         },"_NewServerActPanel_Image5.source");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title4.text = param1;
         },"title4.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel4.text = param1;
         },"myLevel4.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn4.label = param1;
         },"awardBtn4.label");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn12.headerText = param1;
         },"_NewServerActPanel_DataGridColumn12.headerText");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn13.headerText = param1;
         },"_NewServerActPanel_DataGridColumn13.headerText");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn14.headerText = param1;
         },"_NewServerActPanel_DataGridColumn14.headerText");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn15.headerText = param1;
         },"_NewServerActPanel_DataGridColumn15.headerText");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return ACH_RANK_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image6.source = param1;
         },"_NewServerActPanel_Image6.source");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title5.text = param1;
         },"title5.text");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel5.text = param1;
         },"myLevel5.text");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn5.label = param1;
         },"awardBtn5.label");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn16.headerText = param1;
         },"_NewServerActPanel_DataGridColumn16.headerText");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn17.headerText = param1;
         },"_NewServerActPanel_DataGridColumn17.headerText");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn18.headerText = param1;
         },"_NewServerActPanel_DataGridColumn18.headerText");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn19.headerText = param1;
         },"_NewServerActPanel_DataGridColumn19.headerText");
         result[43] = binding;
         binding = new Binding(this,function():Object
         {
            return MONEY_RANK_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image7.source = param1;
         },"_NewServerActPanel_Image7.source");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title6.text = param1;
         },"title6.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel6.text = param1;
         },"myLevel6.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn6.label = param1;
         },"awardBtn6.label");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn20.headerText = param1;
         },"_NewServerActPanel_DataGridColumn20.headerText");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn21.headerText = param1;
         },"_NewServerActPanel_DataGridColumn21.headerText");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn22.headerText = param1;
         },"_NewServerActPanel_DataGridColumn22.headerText");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn23.headerText = param1;
         },"_NewServerActPanel_DataGridColumn23.headerText");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return BATTLE_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image8.source = param1;
         },"_NewServerActPanel_Image8.source");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title7.text = param1;
         },"title7.text");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel7.text = param1;
         },"myLevel7.text");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn7.label = param1;
         },"awardBtn7.label");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn24.headerText = param1;
         },"_NewServerActPanel_DataGridColumn24.headerText");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn25.headerText = param1;
         },"_NewServerActPanel_DataGridColumn25.headerText");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn26.headerText = param1;
         },"_NewServerActPanel_DataGridColumn26.headerText");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn27.headerText = param1;
         },"_NewServerActPanel_DataGridColumn27.headerText");
         result[59] = binding;
         binding = new Binding(this,function():Object
         {
            return TB_RANK_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image9.source = param1;
         },"_NewServerActPanel_Image9.source");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title8.text = param1;
         },"title8.text");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel8.text = param1;
         },"myLevel8.text");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn8.label = param1;
         },"awardBtn8.label");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn28.headerText = param1;
         },"_NewServerActPanel_DataGridColumn28.headerText");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn29.headerText = param1;
         },"_NewServerActPanel_DataGridColumn29.headerText");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn30.headerText = param1;
         },"_NewServerActPanel_DataGridColumn30.headerText");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn31.headerText = param1;
         },"_NewServerActPanel_DataGridColumn31.headerText");
         result[67] = binding;
         binding = new Binding(this,function():Object
         {
            return POP_RANK_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image10.source = param1;
         },"_NewServerActPanel_Image10.source");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title9.text = param1;
         },"title9.text");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel9.text = param1;
         },"myLevel9.text");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn9.label = param1;
         },"awardBtn9.label");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn32.headerText = param1;
         },"_NewServerActPanel_DataGridColumn32.headerText");
         result[72] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn33.headerText = param1;
         },"_NewServerActPanel_DataGridColumn33.headerText");
         result[73] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn34.headerText = param1;
         },"_NewServerActPanel_DataGridColumn34.headerText");
         result[74] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn35.headerText = param1;
         },"_NewServerActPanel_DataGridColumn35.headerText");
         result[75] = binding;
         binding = new Binding(this,function():Object
         {
            return LEVEL_UP_ICON;
         },function(param1:Object):void
         {
            _NewServerActPanel_Image11.source = param1;
         },"_NewServerActPanel_Image11.source");
         result[76] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title13.text = param1;
         },"title13.text");
         result[77] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myLevel13.text = param1;
         },"myLevel13.text");
         result[78] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn36.headerText = param1;
         },"_NewServerActPanel_DataGridColumn36.headerText");
         result[79] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn37.headerText = param1;
         },"_NewServerActPanel_DataGridColumn37.headerText");
         result[80] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn38.headerText = param1;
         },"_NewServerActPanel_DataGridColumn38.headerText");
         result[81] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn39.headerText = param1;
         },"_NewServerActPanel_DataGridColumn39.headerText");
         result[82] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn40.headerText = param1;
         },"_NewServerActPanel_DataGridColumn40.headerText");
         result[83] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SERVERACTPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NewServerActPanel_DataGridColumn41.headerText = param1;
         },"_NewServerActPanel_DataGridColumn41.headerText");
         result[84] = binding;
         return result;
      }
      
      private function _NewServerActPanel_ClassFactory13_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemButton;
         return _loc1_;
      }
      
      public function set idViewLists(param1:List) : void
      {
         var _loc2_:Object = this._1759725291idViewLists;
         if(_loc2_ !== param1)
         {
            this._1759725291idViewLists = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idViewLists",_loc2_,param1));
         }
      }
      
      public function set idViews(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1644172819idViews;
         if(_loc2_ !== param1)
         {
            this._1644172819idViews = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"idViews",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn31_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn31 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory10_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn31",_NewServerActPanel_DataGridColumn31);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG0() : DataGrid
      {
         return this._1422987717actDG0;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG2() : DataGrid
      {
         return this._1422987715actDG2;
      }
      
      private function _NewServerActPanel_DataGridColumn39_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn39 = _loc1_;
         _loc1_.dataField = "goldbind";
         _loc1_.width = 40;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn39",_NewServerActPanel_DataGridColumn39);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG5() : DataGrid
      {
         return this._1422987712actDG5;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG6() : DataGrid
      {
         return this._1422987711actDG6;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG7() : DataGrid
      {
         return this._1422987710actDG7;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG1() : DataGrid
      {
         return this._1422987716actDG1;
      }
      
      public function __awardBtn4_click(param1:MouseEvent) : void
      {
         takeActRankAward(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG4() : DataGrid
      {
         return this._1422987713actDG4;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG8() : DataGrid
      {
         return this._1422987709actDG8;
      }
      
      private function _NewServerActPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn2 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "rank";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn2",_NewServerActPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function _NewServerActPanel_DataGridColumn27_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn27 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory9_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn27",_NewServerActPanel_DataGridColumn27);
         return _loc1_;
      }
      
      private function _NewServerActPanel_DataGridColumn16_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn16 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "index";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn16",_NewServerActPanel_DataGridColumn16);
         return _loc1_;
      }
      
      public function ___NewServerActPanel_Canvas9_show(param1:FlexEvent) : void
      {
         initActPanel(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG9() : DataGrid
      {
         return this._1422987708actDG9;
      }
      
      private function _NewServerActPanel_ClassFactory7_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG3() : DataGrid
      {
         return this._1422987714actDG3;
      }
      
      private function _NewServerActPanel_ClassFactory12_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      public function ___NewServerActPanel_Canvas17_show(param1:FlexEvent) : void
      {
         initActPanel(8);
      }
      
      private function _NewServerActPanel_DataGridColumn30_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn30 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 90;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn30",_NewServerActPanel_DataGridColumn30);
         return _loc1_;
      }
      
      public function set actDG2(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987715actDG2;
         if(_loc2_ !== param1)
         {
            this._1422987715actDG2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG2",_loc2_,param1));
         }
      }
      
      public function __awardBtn1_click(param1:MouseEvent) : void
      {
         takeActRankAward(1);
      }
      
      public function set actDG3(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987714actDG3;
         if(_loc2_ !== param1)
         {
            this._1422987714actDG3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG3",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn15_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn15 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory6_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn15",_NewServerActPanel_DataGridColumn15);
         return _loc1_;
      }
      
      public function set actDG1(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987716actDG1;
         if(_loc2_ !== param1)
         {
            this._1422987716actDG1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG1",_loc2_,param1));
         }
      }
      
      public function set actDG5(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987712actDG5;
         if(_loc2_ !== param1)
         {
            this._1422987712actDG5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title13() : IntroText
      {
         return this._1307250054title13;
      }
      
      public function set actDG6(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987711actDG6;
         if(_loc2_ !== param1)
         {
            this._1422987711actDG6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG6",_loc2_,param1));
         }
      }
      
      public function __awardBtn9_click(param1:MouseEvent) : void
      {
         takeActRankAward(9);
      }
      
      private function _NewServerActPanel_DataGridColumn38_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn38 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 220;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory12_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn38",_NewServerActPanel_DataGridColumn38);
         return _loc1_;
      }
      
      public function set actDG8(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987709actDG8;
         if(_loc2_ !== param1)
         {
            this._1422987709actDG8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG8",_loc2_,param1));
         }
      }
      
      public function set actDG9(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987708actDG9;
         if(_loc2_ !== param1)
         {
            this._1422987708actDG9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG9",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn1 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "index";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn1",_NewServerActPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function set actDG4(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987713actDG4;
         if(_loc2_ !== param1)
         {
            this._1422987713actDG4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG4",_loc2_,param1));
         }
      }
      
      public function set actDG0(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987717actDG0;
         if(_loc2_ !== param1)
         {
            this._1422987717actDG0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG0",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn9_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn9 = _loc1_;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory4_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn9",_NewServerActPanel_DataGridColumn9);
         return _loc1_;
      }
      
      private function _NewServerActPanel_DataGridColumn26_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn26 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 90;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn26",_NewServerActPanel_DataGridColumn26);
         return _loc1_;
      }
      
      public function toggleLists() : void
      {
         var _loc1_:Object = null;
         if(actIndex[idViewLists.selectedIndex] > 9 && actIndex[idViewLists.selectedIndex] != 13)
         {
            _loc1_ = _core.view.getUI(ViewManager.PANEL_GAMEINTRO);
            if(_loc1_)
            {
               _loc1_.visible = true;
               _loc1_.newServerActLink(actIndex[idViewLists.selectedIndex]);
            }
            if(lastSelectedIndex)
            {
               idViewLists.selectedIndex = lastSelectedIndex;
            }
         }
         else if(actIndex[idViewLists.selectedIndex] == 13)
         {
            idViews.selectedIndex = 10;
            if(lastSelectedIndex != idViewLists.selectedIndex)
            {
               lastSelectedIndex = idViewLists.selectedIndex;
            }
         }
         else
         {
            idViews.selectedIndex = actIndex[idViewLists.selectedIndex];
            if(lastSelectedIndex != idViewLists.selectedIndex)
            {
               lastSelectedIndex = idViewLists.selectedIndex;
            }
         }
      }
      
      public function set awardBtn9(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276186awardBtn9;
         if(_loc2_ !== param1)
         {
            this._1258276186awardBtn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn9",_loc2_,param1));
         }
      }
      
      public function set awardBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276183awardBtn6;
         if(_loc2_ !== param1)
         {
            this._1258276183awardBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn6",_loc2_,param1));
         }
      }
      
      public function takeSectionAward(param1:int, param2:int) : void
      {
         _core.remote.call("takeSectionAward",null,param1,param2 - 1);
      }
      
      public function ___NewServerActPanel_Canvas3_show(param1:FlexEvent) : void
      {
         initActPanel(1);
      }
      
      public function set awardBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276177awardBtn0;
         if(_loc2_ !== param1)
         {
            this._1258276177awardBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn0",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn14_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn14 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 90;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn14",_NewServerActPanel_DataGridColumn14);
         return _loc1_;
      }
      
      public function set awardBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276184awardBtn7;
         if(_loc2_ !== param1)
         {
            this._1258276184awardBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn7",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_ClassFactory6_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      public function ___NewServerActPanel_Canvas11_show(param1:FlexEvent) : void
      {
         initActPanel(5);
      }
      
      private function _NewServerActPanel_DataGridColumn41_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn41 = _loc1_;
         _loc1_.width = 100;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory13_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn41",_NewServerActPanel_DataGridColumn41);
         return _loc1_;
      }
      
      public function __awardBtn6_click(param1:MouseEvent) : void
      {
         takeActRankAward(6);
      }
      
      public function set actDG7(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1422987710actDG7;
         if(_loc2_ !== param1)
         {
            this._1422987710actDG7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG7",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_ClassFactory11_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      public function set awardBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276182awardBtn5;
         if(_loc2_ !== param1)
         {
            this._1258276182awardBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn5",_loc2_,param1));
         }
      }
      
      public function set awardBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276178awardBtn1;
         if(_loc2_ !== param1)
         {
            this._1258276178awardBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn1",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn8_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn8 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 300;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn8",_NewServerActPanel_DataGridColumn8);
         return _loc1_;
      }
      
      public function set awardBtn8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276185awardBtn8;
         if(_loc2_ !== param1)
         {
            this._1258276185awardBtn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn8",_loc2_,param1));
         }
      }
      
      public function ___NewServerActPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set awardBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276181awardBtn4;
         if(_loc2_ !== param1)
         {
            this._1258276181awardBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title0() : IntroText
      {
         return this._873453352title0;
      }
      
      [Bindable(event="propertyChange")]
      public function get title1() : IntroText
      {
         return this._873453351title1;
      }
      
      [Bindable(event="propertyChange")]
      public function get title3() : IntroText
      {
         return this._873453349title3;
      }
      
      [Bindable(event="propertyChange")]
      public function get title5() : IntroText
      {
         return this._873453347title5;
      }
      
      private function _NewServerActPanel_DataGridColumn37_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn37 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 50;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn37",_NewServerActPanel_DataGridColumn37);
         return _loc1_;
      }
      
      public function set awardBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1258276180awardBtn3;
         if(_loc2_ !== param1)
         {
            this._1258276180awardBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn3",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn25_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn25 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn25",_NewServerActPanel_DataGridColumn25);
         return _loc1_;
      }
      
      private function _NewServerActPanel_ClassFactory5_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      private function _NewServerActPanel_ClassFactory10_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get title8() : IntroText
      {
         return this._873453344title8;
      }
      
      [Bindable(event="propertyChange")]
      public function get title9() : IntroText
      {
         return this._873453343title9;
      }
      
      public function set title13(param1:IntroText) : void
      {
         var _loc2_:Object = this._1307250054title13;
         if(_loc2_ !== param1)
         {
            this._1307250054title13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title13",_loc2_,param1));
         }
      }
      
      public function set actDG13(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1162946185actDG13;
         if(_loc2_ !== param1)
         {
            this._1162946185actDG13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actDG13",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title6() : IntroText
      {
         return this._873453346title6;
      }
      
      private function _NewServerActPanel_DataGridColumn40_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn40 = _loc1_;
         _loc1_.dataField = "remain";
         _loc1_.width = 80;
         _loc1_.setStyle("textAlign","center");
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn40",_NewServerActPanel_DataGridColumn40);
         return _loc1_;
      }
      
      public function set myLevel13(param1:Label) : void
      {
         var _loc2_:Object = this._1577918118myLevel13;
         if(_loc2_ !== param1)
         {
            this._1577918118myLevel13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel13",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn13_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn13 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn13",_NewServerActPanel_DataGridColumn13);
         return _loc1_;
      }
      
      public function __awardBtn3_click(param1:MouseEvent) : void
      {
         takeActRankAward(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get title4() : IntroText
      {
         return this._873453348title4;
      }
      
      public function __idViewLists_creationComplete(param1:FlexEvent) : void
      {
         idViewLists.selectedIndex = 0;
      }
      
      private function timeToDate2(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         if(param1)
         {
            _loc2_ = new Date(param1);
         }
         return _loc2_.getMonth() + 1 + "/" + _loc2_.getDate() + " " + (_loc2_.getHours() < 10 ? "0" + _loc2_.getHours() : _loc2_.getHours()) + ":" + (_loc2_.getMinutes() < 10 ? "0" + _loc2_.getMinutes() : _loc2_.getMinutes());
      }
      
      [Bindable(event="propertyChange")]
      public function get title2() : IntroText
      {
         return this._873453350title2;
      }
      
      private function _NewServerActPanel_DataGridColumn36_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn36 = _loc1_;
         _loc1_.dataField = "end";
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn36",_NewServerActPanel_DataGridColumn36);
         return _loc1_;
      }
      
      public function changeTakeBtnState(param1:String, param2:Object) : *
      {
         var _loc7_:String = null;
         var _loc3_:String = "";
         if(param1 != "2" && param1 != "13")
         {
            _loc3_ = "awardBtn";
         }
         if(_loc3_ != "")
         {
            if(param2.isTaken)
            {
               this[_loc3_ + param1].enabled = false;
               this[_loc3_ + param1].label = Language.SERVERACTPANEL_S[14];
            }
            else
            {
               if(param2.canTake)
               {
                  this[_loc3_ + param1].enabled = true;
               }
               else
               {
                  this[_loc3_ + param1].enabled = false;
               }
               this[_loc3_ + param1].label = Language.SERVERACTPANEL_S[13];
            }
         }
         var _loc4_:String = "";
         var _loc5_:String = "";
         if(Boolean(param1 != "13") && Boolean(param2.showRank) && Boolean(param2.rank))
         {
            _loc4_ += Language.SERVERACTPANEL_S[18].replace("{rank}",param2.rank < 0 ? Language.SERVERACTPANEL_S[15] : param2.rank);
         }
         if(param1 != "13" && (_loc4_.indexOf(Language.SERVERACTPANEL_S[15]) < 0 || _loc4_ == ""))
         {
            _loc5_ = Language.SERVERACTPANEL_S[12].replace("{name}",fieldList[param2.label]).replace("{num}",param2.point);
            _loc4_ += _loc5_;
         }
         if(param1 == "2")
         {
            _loc4_ += Language.SERVERACTPANEL_S[44];
         }
         else if(param1 == "13")
         {
            _loc4_ += Language.SERVERACTPANEL_S[12].replace("{name}",Language.SERVERACTPANEL_S[21]).replace("{num}",param2.point);
            _loc4_ = _loc4_ + Language.SERVERACTPANEL_S[55].replace("{time1}",timeToDate(param2.startTime)).replace("{time2}",timeToDate(param2.closeTime));
         }
         else
         {
            if(_loc5_ != "")
            {
               _loc4_ += "，";
            }
            if(param2.awardTime)
            {
               _loc4_ += Language.SERVERACTPANEL_S[47].replace("{time1}",timeToDate(param2.startTime)).replace("{time2}",timeToDate(param2.endTime)).replace("{time3}",timeToDate(param2.awardTime)).replace("{time4}",timeToDate(param2.closeTime));
            }
            else
            {
               _loc4_ += Language.SERVERACTPANEL_S[19].replace("{time1}",timeToDate(param2.startTime)).replace("{time2}",timeToDate(param2.endTime)).replace("{time3}",timeToDate(param2.closeTime));
            }
         }
         var _loc6_:int = ToolKit.getSpliceIndex(_loc4_,380);
         if(_loc6_ > 0 && param1 != "13")
         {
            _loc7_ = _loc4_.substr(0,_loc6_) + "\n";
            _loc4_ = _loc7_ + _loc4_.substring(_loc6_,_loc4_.length);
         }
         if(param1 == "13")
         {
            _loc4_ += Language.SERVERACTPANEL_S[57];
         }
         this["myLevel" + param1].text = _loc4_;
      }
      
      public function init() : void
      {
         _core.remote.call("getStartingActList",new Responder(onGetStartingActList),null);
      }
      
      private function _NewServerActPanel_DataGridColumn7_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn7 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn7",_NewServerActPanel_DataGridColumn7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get idViewLists() : List
      {
         return this._1759725291idViewLists;
      }
      
      private function _NewServerActPanel_DataGridColumn24_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn24 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "index";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn24",_NewServerActPanel_DataGridColumn24);
         return _loc1_;
      }
      
      private function _NewServerActPanel_ClassFactory4_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemButton;
         return _loc1_;
      }
      
      public function ___NewServerActPanel_Canvas15_show(param1:FlexEvent) : void
      {
         initActPanel(7);
      }
      
      private function _NewServerActPanel_DataGridColumn35_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn35 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory11_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn35",_NewServerActPanel_DataGridColumn35);
         return _loc1_;
      }
      
      public function __awardBtn0_click(param1:MouseEvent) : void
      {
         takeActRankAward(0);
      }
      
      public function takeActRankAward(param1:int) : *
      {
         _core.remote.call("takeActRankAward",null,param1);
      }
      
      private function _NewServerActPanel_DataGridColumn23_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn23 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory8_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn23",_NewServerActPanel_DataGridColumn23);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn6() : BasicGlowButton
      {
         return this._1258276183awardBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn1() : BasicGlowButton
      {
         return this._1258276178awardBtn1;
      }
      
      private function _NewServerActPanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      public function __awardBtn8_click(param1:MouseEvent) : void
      {
         takeActRankAward(8);
      }
      
      private function _NewServerActPanel_DataGridColumn12_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn12 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "index";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn12",_NewServerActPanel_DataGridColumn12);
         return _loc1_;
      }
      
      private function _NewServerActPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn6 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn6",_NewServerActPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function ___NewServerActPanel_Canvas1_show(param1:FlexEvent) : void
      {
         initActPanel(0);
      }
      
      public function ___NewServerActPanel_Canvas7_show(param1:FlexEvent) : void
      {
         initActPanel(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn9() : BasicGlowButton
      {
         return this._1258276186awardBtn9;
      }
      
      [Bindable(event="propertyChange")]
      public function get actDG13() : DataGrid
      {
         return this._1162946185actDG13;
      }
      
      private function _NewServerActPanel_DataGridColumn19_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn19 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory7_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn19",_NewServerActPanel_DataGridColumn19);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn4() : BasicGlowButton
      {
         return this._1258276181awardBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn5() : BasicGlowButton
      {
         return this._1258276182awardBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel13() : Label
      {
         return this._1577918118myLevel13;
      }
      
      private function _NewServerActPanel_DataGridColumn34_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn34 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 90;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn34",_NewServerActPanel_DataGridColumn34);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn0() : BasicGlowButton
      {
         return this._1258276177awardBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn3() : BasicGlowButton
      {
         return this._1258276180awardBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn7() : BasicGlowButton
      {
         return this._1258276184awardBtn7;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NewServerActPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NewServerActPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NewServerActPanelWatcherSetupUtil");
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
      
      private function _NewServerActPanel_DataGridColumn22_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn22 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 90;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn22",_NewServerActPanel_DataGridColumn22);
         return _loc1_;
      }
      
      public function __awardBtn5_click(param1:MouseEvent) : void
      {
         takeActRankAward(5);
      }
      
      private function _NewServerActPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn5",_NewServerActPanel_DataGridColumn5);
         return _loc1_;
      }
      
      private function _NewServerActPanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn8() : BasicGlowButton
      {
         return this._1258276185awardBtn8;
      }
      
      public function updateActAwardInfo(param1:Object) : void
      {
         var _loc2_:ArrayCollection = null;
         var _loc3_:int = 0;
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         if(param1)
         {
            if(param1.actInfo)
            {
               _loc2_ = new ArrayCollection();
               _loc3_ = 0;
               for(_loc4_ in param1.actInfo)
               {
                  _loc5_ = new Object();
                  _loc5_.index = _loc3_ + 1;
                  switch(param1.type)
                  {
                     case 0:
                     case 4:
                     case 5:
                     case 6:
                     case 7:
                     case 8:
                     case 9:
                        _loc5_.rank = param1.actInfo[_loc4_]["value"] ? param1.actInfo[_loc4_]["value"] : "";
                        _loc5_.name = param1.actInfo[_loc4_]["key"] ? param1.actInfo[_loc4_]["key"] : "";
                        break;
                     case 1:
                        _loc5_.name = Language.SERVERACTPANEL_S[10].replace("{num}",param1.actInfo[_loc4_]["limit"]);
                        break;
                     case 3:
                        _loc5_.name = Language.SERVERACTPANEL_S[16].replace("{num}",param1.actInfo[_loc4_]["limit"]);
                        break;
                     case 2:
                        _loc5_.name = Language.SERVERACTPANEL_S[26].replace("{num}",param1.actInfo[_loc4_]["limit"]);
                        break;
                     case 13:
                        _loc5_.name = Language.SERVERACTPANEL_S[56].replace("{num}",param1.actInfo[_loc4_]["limit"]);
                        _loc5_.remain = (param1.actInfo[_loc4_]["remain"] > 0 ? param1.actInfo[_loc4_]["remain"] : 0) + "/" + param1.actInfo[_loc4_]["total"];
                        _loc5_.end = timeToDate2(param1.actInfo[_loc4_]["end"]);
                        _loc5_.goldbind = param1.actInfo[_loc4_]["goldbind"];
                        if(param1.actInfo[_loc4_]["canTake"])
                        {
                           _loc5_.score = param1.actInfo[_loc4_]["limit"];
                           _loc5_.limit = param1.actInfo[_loc4_]["limit"];
                        }
                        else
                        {
                           _loc5_.score = 0;
                        }
                  }
                  if(param1.actInfo[_loc4_]["limit"])
                  {
                     _loc5_.limit = param1.actInfo[_loc4_]["limit"];
                  }
                  if(param1.type == 2 || param1.type == 13)
                  {
                     _loc5_.onClick = this.takeSectionAward;
                     if(param1.type == 2)
                     {
                        _loc5_.score = param1.myInfo.point;
                     }
                     _loc5_.isTaken = param1.actInfo[_loc4_]["isTaken"] ? param1.actInfo[_loc4_]["isTaken"] : false;
                     _loc5_.canTake = param1.actInfo[_loc4_]["canTake"] ? param1.actInfo[_loc4_]["canTake"] : false;
                     _loc5_.type = param1.type;
                  }
                  _loc3_++;
                  _loc5_.array = param1.actInfo[_loc4_]["award"];
                  _loc2_.addItem(_loc5_);
               }
               this["actDG" + param1.type].dataProvider = _loc2_;
            }
         }
         changeTakeBtnState(String(param1.type),param1.myInfo);
      }
      
      public function set title2(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453350title2;
         if(_loc2_ !== param1)
         {
            this._873453350title2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title2",_loc2_,param1));
         }
      }
      
      public function set title3(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453349title3;
         if(_loc2_ !== param1)
         {
            this._873453349title3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title3",_loc2_,param1));
         }
      }
      
      public function set title0(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453352title0;
         if(_loc2_ !== param1)
         {
            this._873453352title0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title0",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn10_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn10 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 80;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn10",_NewServerActPanel_DataGridColumn10);
         return _loc1_;
      }
      
      private function _NewServerActPanel_DataGridColumn33_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn33 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn33",_NewServerActPanel_DataGridColumn33);
         return _loc1_;
      }
      
      public function set title6(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453346title6;
         if(_loc2_ !== param1)
         {
            this._873453346title6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title6",_loc2_,param1));
         }
      }
      
      public function set title7(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453345title7;
         if(_loc2_ !== param1)
         {
            this._873453345title7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title7",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn11_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn11 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory5_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn11",_NewServerActPanel_DataGridColumn11);
         return _loc1_;
      }
      
      private function _NewServerActPanel_DataGridColumn18_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn18 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "name";
         _loc1_.width = 90;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn18",_NewServerActPanel_DataGridColumn18);
         return _loc1_;
      }
      
      public function set title1(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453351title1;
         if(_loc2_ !== param1)
         {
            this._873453351title1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title1",_loc2_,param1));
         }
      }
      
      public function set title4(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453348title4;
         if(_loc2_ !== param1)
         {
            this._873453348title4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title4",_loc2_,param1));
         }
      }
      
      public function initActPanel(param1:int) : void
      {
         _core.remote.call("getActAwardInfo",null,param1);
      }
      
      private function _NewServerActPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn4 = _loc1_;
         _loc1_.sortable = false;
         _loc1_.width = 200;
         _loc1_.itemRenderer = _NewServerActPanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn4",_NewServerActPanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function set title9(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453343title9;
         if(_loc2_ !== param1)
         {
            this._873453343title9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title9",_loc2_,param1));
         }
      }
      
      public function set title5(param1:IntroText) : void
      {
         var _loc2_:Object = this._873453347title5;
         if(_loc2_ !== param1)
         {
            this._873453347title5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title5",_loc2_,param1));
         }
      }
      
      public function ___NewServerActPanel_Canvas19_show(param1:FlexEvent) : void
      {
         initActPanel(9);
      }
      
      private function _NewServerActPanel_DataGridColumn21_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn21 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "rank";
         _loc1_.width = 70;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn21",_NewServerActPanel_DataGridColumn21);
         return _loc1_;
      }
      
      private function _NewServerActPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get title7() : IntroText
      {
         return this._873453345title7;
      }
      
      private function _NewServerActPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SERVERACTPANEL_S[27];
         _loc1_ = wlListItemArr;
         _loc1_ = NEW_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[11];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[20];
         _loc1_ = Language.SERVERACTPANEL_S[21];
         _loc1_ = Language.SERVERACTPANEL_S[22];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = LEVEL_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[38];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[21];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = ACTIVE_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[39];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[24];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = GUILD_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[40];
         _loc1_ = Language.SERVERACTPANEL_S[45];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[21];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = NEW_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[11];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[20];
         _loc1_ = Language.SERVERACTPANEL_S[33];
         _loc1_ = Language.SERVERACTPANEL_S[22];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = ACH_RANK_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[41];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[20];
         _loc1_ = Language.SERVERACTPANEL_S[28];
         _loc1_ = Language.SERVERACTPANEL_S[22];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = MONEY_RANK_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[42];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[20];
         _loc1_ = Language.SERVERACTPANEL_S[29];
         _loc1_ = Language.SERVERACTPANEL_S[22];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = BATTLE_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[43];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[20];
         _loc1_ = Language.SERVERACTPANEL_S[30];
         _loc1_ = Language.SERVERACTPANEL_S[22];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = TB_RANK_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[48];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[20];
         _loc1_ = Language.SERVERACTPANEL_S[31];
         _loc1_ = Language.SERVERACTPANEL_S[22];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = POP_RANK_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[11];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[13];
         _loc1_ = Language.SERVERACTPANEL_S[20];
         _loc1_ = Language.SERVERACTPANEL_S[32];
         _loc1_ = Language.SERVERACTPANEL_S[22];
         _loc1_ = Language.SERVERACTPANEL_S[23];
         _loc1_ = LEVEL_UP_ICON;
         _loc1_ = Language.SERVERACTPANEL_S[50];
         _loc1_ = Language.SERVERACTPANEL_S[46];
         _loc1_ = Language.SERVERACTPANEL_S[54];
         _loc1_ = Language.SERVERACTPANEL_S[21];
         _loc1_ = Language.SERVERACTPANEL_S[52];
         _loc1_ = Language.SERVERACTPANEL_S[51];
         _loc1_ = Language.SERVERACTPANEL_S[53];
         _loc1_ = Language.SERVERACTPANEL_S[13];
      }
      
      private function _NewServerActPanel_DataGridColumn29_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn29 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn29",_NewServerActPanel_DataGridColumn29);
         return _loc1_;
      }
      
      public function ___NewServerActPanel_Canvas5_show(param1:FlexEvent) : void
      {
         initActPanel(2);
      }
      
      private function _NewServerActPanel_ClassFactory9_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererItemArray;
         return _loc1_;
      }
      
      public function set myLevel0(param1:Label) : void
      {
         var _loc2_:Object = this._1020731912myLevel0;
         if(_loc2_ !== param1)
         {
            this._1020731912myLevel0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel0",_loc2_,param1));
         }
      }
      
      public function set myLevel2(param1:Label) : void
      {
         var _loc2_:Object = this._1020731910myLevel2;
         if(_loc2_ !== param1)
         {
            this._1020731910myLevel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel2",_loc2_,param1));
         }
      }
      
      private function _NewServerActPanel_DataGridColumn32_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn32 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "index";
         _loc1_.width = 30;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn32",_NewServerActPanel_DataGridColumn32);
         return _loc1_;
      }
      
      public function onGetStartingActList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         wlListItemArr = new Array();
         actIndex = new Array();
         for(_loc2_ in param1)
         {
            if(Boolean(param1[_loc2_]) && Number(_loc2_) < 100)
            {
               wlListItemArr.push(allActArr[_loc2_]);
               actIndex.push(Number(_loc2_));
            }
         }
         if(actIndex.length > 0)
         {
            _loc3_ = idViewLists.selectedIndex < 0 ? 0 : idViewLists.selectedIndex;
            idViewLists.dataProvider = wlListItemArr;
            idViewLists.selectedIndex = _loc3_;
            if(actIndex[idViewLists.selectedIndex] < idViews.numChildren)
            {
               idViews.selectedIndex = actIndex[idViewLists.selectedIndex];
               initActPanel(idViews.selectedIndex == 10 ? 13 : idViews.selectedIndex);
            }
         }
      }
      
      public function __idViewLists_change(param1:ListEvent) : void
      {
         toggleLists();
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel3() : Label
      {
         return this._1020731909myLevel3;
      }
      
      public function ___NewServerActPanel_Canvas21_show(param1:FlexEvent) : void
      {
         initActPanel(13);
      }
      
      private function timeToDate(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         if(param1)
         {
            _loc2_ = new Date(param1);
         }
         return _loc2_.getFullYear() + "/" + (_loc2_.getMonth() + 1) + "/" + _loc2_.getDate() + "/" + (_loc2_.getHours() < 10 ? "0" + _loc2_.getHours() : _loc2_.getHours()) + ":" + (_loc2_.getMinutes() < 10 ? "0" + _loc2_.getMinutes() : _loc2_.getMinutes());
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel6() : Label
      {
         return this._1020731906myLevel6;
      }
      
      private function _NewServerActPanel_DataGridColumn17_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _NewServerActPanel_DataGridColumn17 = _loc1_;
         _loc1_.sortable = true;
         _loc1_.dataField = "rank";
         _loc1_.width = 50;
         _loc1_.setStyle("fontSize",12);
         BindingManager.executeBindings(this,"_NewServerActPanel_DataGridColumn17",_NewServerActPanel_DataGridColumn17);
         return _loc1_;
      }
   }
}

