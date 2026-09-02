package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ExplorerMedalPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _272913862EMPropLbl1_3:RoundedLabel;
      
      private var _1078038500medal3:Image;
      
      private var _440572518medalLabel7:RoundedLabel;
      
      public var _ExplorerMedalPanel_RoundedLabel29:RoundedLabel;
      
      private var _1652929113EMTotalPropLbl1_13:RoundedLabel;
      
      private var _1078038499medal4:Image;
      
      private var eMedalDark:Array = [4130220001051,4130220001052,4130220001053,4130220001054,4130220001055,4130220001056,4130220001057,4130220001058,4130220001059,4130220001060];
      
      private var _3116781embg:Image;
      
      private var _440572522medalLabel3:RoundedLabel;
      
      private var _468962284EMTotalPropLbl1_9:RoundedLabel;
      
      private var _272912899EMPropLbl2_5:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1078038496medal7:Image;
      
      private var _alert:Alert;
      
      private var _272912902EMPropLbl2_2:RoundedLabel;
      
      private var _1652929112EMTotalPropLbl1_14:RoundedLabel;
      
      private var _468962285EMTotalPropLbl1_8:RoundedLabel;
      
      private var _1078038502medal1:Image;
      
      private var _468962286EMTotalPropLbl1_7:RoundedLabel;
      
      private var _272913863EMPropLbl1_2:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _emInfo:Array;
      
      private var _1652929111EMTotalPropLbl1_15:RoundedLabel;
      
      private var _468962287EMTotalPropLbl1_6:RoundedLabel;
      
      private var _440572517medalLabel8:RoundedLabel;
      
      private var eMedalLight:Array = [4130220001061,4130220001062,4130220001063,4130220001064,4130220001065,4130220001066,4130220001067,4130220001068,4130220001069,4130220001070];
      
      private var _468962288EMTotalPropLbl1_5:RoundedLabel;
      
      private var _272912896EMPropLbl2_8:RoundedLabel;
      
      private var _468962289EMTotalPropLbl1_4:RoundedLabel;
      
      private var _1652929110EMTotalPropLbl1_16:RoundedLabel;
      
      private var _1078038498medal5:Image;
      
      private var _272912903EMPropLbl2_1:RoundedLabel;
      
      private var _1133593465nextLevelTitle:RoundedLabel;
      
      private var _272913857EMPropLbl1_8:RoundedLabel;
      
      private var _440572521medalLabel4:RoundedLabel;
      
      private var _272913860EMPropLbl1_5:RoundedLabel;
      
      private var _440572524medalLabel1:RoundedLabel;
      
      private var _378573758nextLevelCost:RoundedLabel;
      
      private var _550778329canvas1:Canvas;
      
      private var _272913864EMPropLbl1_1:RoundedLabel;
      
      private var _1078038495medal8:Image;
      
      private var _helpAlert:Alert;
      
      public var _ExplorerMedalPanel_LinkButton1:LinkButton;
      
      private var _1078038501medal2:Image;
      
      private var _1088999281currentEMP:RoundedLabel;
      
      private var _440572516medalLabel9:RoundedLabel;
      
      private var _272912897EMPropLbl2_7:RoundedLabel;
      
      private var _1652929116EMTotalPropLbl1_10:RoundedLabel;
      
      private var _440572519medalLabel6:RoundedLabel;
      
      private var _272912900EMPropLbl2_4:RoundedLabel;
      
      private var _272913858EMPropLbl1_7:RoundedLabel;
      
      private var _272913861EMPropLbl1_4:RoundedLabel;
      
      private var _468962290EMTotalPropLbl1_3:RoundedLabel;
      
      private var _440572520medalLabel5:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _1652929115EMTotalPropLbl1_11:RoundedLabel;
      
      private var _440572523medalLabel2:RoundedLabel;
      
      private var _468962291EMTotalPropLbl1_2:RoundedLabel;
      
      private var _1078038497medal6:Image;
      
      private var _468962292EMTotalPropLbl1_1:RoundedLabel;
      
      private var _nextLevelCost:int;
      
      private var _272912898EMPropLbl2_6:RoundedLabel;
      
      private var _1141243789currentLevelTitle:RoundedLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _ExplorerMedalPanel_BasicDelayButton1:BasicDelayButton;
      
      public var _ExplorerMedalPanel_BasicDelayButton2:BasicDelayButton;
      
      private var _1078038494medal9:Image;
      
      private var _940544854medal10:Image;
      
      private var _1652929114EMTotalPropLbl1_12:RoundedLabel;
      
      public var _ExplorerMedalPanel_BasicDelayButton3:BasicDelayButton;
      
      private var _272912901EMPropLbl2_3:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _772846308medalLabel10:RoundedLabel;
      
      private var _272913859EMPropLbl1_6:RoundedLabel;
      
      private var _110371416title:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":436,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"embg",
                  "stylesFactory":function():void
                  {
                     this.top = "33";
                     this.left = "5";
                     this.right = "5";
                     this.bottom = "4";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"scaleContent":true};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas1",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":120,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":16.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":80.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":139.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":201.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":265.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":331,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":397.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":464.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":535.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"medal10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":603.5,
                                 "y":19
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":28.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":90.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":152.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":214.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":277.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":344,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":409.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel8",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":477.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel9",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":548.5,
                                 "y":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"medalLabel10",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":616.5,
                                 "y":90
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.top = "168";
                     this.bottom = "67";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":397,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"currentLevelTitle",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":29.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":34
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_3",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":74
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":94
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":114
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_6",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":134
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_7",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":154
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl1_8",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27.5,
                                 "y":174
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"WspPageSelRight",
                                 "enabled":false,
                                 "x":171,
                                 "y":66,
                                 "height":78,
                                 "width":34.2
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"nextLevelTitle",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":31
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":51
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_3",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":71
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":91
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":111
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_6",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":131
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_7",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":151
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMPropLbl2_8",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":229.5,
                                 "y":171
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "415";
                     this.bottom = "10";
                     this.top = "168";
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_ExplorerMedalPanel_RoundedLabel29",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":33
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_3",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":73
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":93
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":113
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_6",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":133
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_7",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":153
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_8",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":23,
                                 "y":173
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_9",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":33
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_10",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_11",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":73
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_12",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":93
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_13",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":113
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_14",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":133
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_15",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":153
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"EMTotalPropLbl1_16",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":149.5,
                                 "y":173
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_ExplorerMedalPanel_LinkButton1",
                           "events":{"click":"___ExplorerMedalPanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":184.5,
                                 "y":228
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"currentEMP",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "y":228
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"nextLevelCost",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":143,
                        "y":375
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"_ExplorerMedalPanel_BasicDelayButton1",
                  "events":{"click":"___ExplorerMedalPanel_BasicDelayButton1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":700,
                        "styleName":"BtnStdGreen",
                        "x":70,
                        "y":398
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"_ExplorerMedalPanel_BasicDelayButton2",
                  "events":{"click":"___ExplorerMedalPanel_BasicDelayButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":700,
                        "styleName":"BtnStdGreen",
                        "x":173,
                        "y":398
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"_ExplorerMedalPanel_BasicDelayButton3",
                  "events":{"click":"___ExplorerMedalPanel_BasicDelayButton3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":700,
                        "styleName":"BtnStdGreen",
                        "x":262,
                        "y":398
                     };
                  }
               })]
            };
         }
      });
      
      private var _cid:Number = 0;
      
      public function ExplorerMedalPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 436;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ExplorerMedalPanel._watcherSetupUtil = param1;
      }
      
      public function set EMPropLbl2_6(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912898EMPropLbl2_6;
         if(_loc2_ !== param1)
         {
            this._272912898EMPropLbl2_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_6",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl2_3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912901EMPropLbl2_3;
         if(_loc2_ !== param1)
         {
            this._272912901EMPropLbl2_3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_3",_loc2_,param1));
         }
      }
      
      public function ___ExplorerMedalPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         levelUpEMedal();
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_3() : RoundedLabel
      {
         return this._272912901EMPropLbl2_3;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_7() : RoundedLabel
      {
         return this._272912897EMPropLbl2_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_8() : RoundedLabel
      {
         return this._272912896EMPropLbl2_8;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_5() : RoundedLabel
      {
         return this._468962288EMTotalPropLbl1_5;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_2() : RoundedLabel
      {
         return this._272912902EMPropLbl2_2;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_2() : RoundedLabel
      {
         return this._468962291EMTotalPropLbl1_2;
      }
      
      public function set EMPropLbl2_7(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912897EMPropLbl2_7;
         if(_loc2_ !== param1)
         {
            this._272912897EMPropLbl2_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_7() : RoundedLabel
      {
         return this._468962286EMTotalPropLbl1_7;
      }
      
      public function set EMPropLbl2_5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912899EMPropLbl2_5;
         if(_loc2_ !== param1)
         {
            this._272912899EMPropLbl2_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_3() : RoundedLabel
      {
         return this._468962290EMTotalPropLbl1_3;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_4() : RoundedLabel
      {
         return this._468962289EMTotalPropLbl1_4;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_5() : RoundedLabel
      {
         return this._272912899EMPropLbl2_5;
      }
      
      public function set EMTotalPropLbl1_5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962288EMTotalPropLbl1_5;
         if(_loc2_ !== param1)
         {
            this._468962288EMTotalPropLbl1_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_5",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962291EMTotalPropLbl1_2;
         if(_loc2_ !== param1)
         {
            this._468962291EMTotalPropLbl1_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_2",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962290EMTotalPropLbl1_3;
         if(_loc2_ !== param1)
         {
            this._468962290EMTotalPropLbl1_3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_1() : RoundedLabel
      {
         return this._468962292EMTotalPropLbl1_1;
      }
      
      public function set EMTotalPropLbl1_4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962289EMTotalPropLbl1_4;
         if(_loc2_ !== param1)
         {
            this._468962289EMTotalPropLbl1_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_4",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_8(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962285EMTotalPropLbl1_8;
         if(_loc2_ !== param1)
         {
            this._468962285EMTotalPropLbl1_8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_8",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962292EMTotalPropLbl1_1;
         if(_loc2_ !== param1)
         {
            this._468962292EMTotalPropLbl1_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_6() : RoundedLabel
      {
         return this._468962287EMTotalPropLbl1_6;
      }
      
      [Bindable(event="propertyChange")]
      public function get medal2() : Image
      {
         return this._1078038501medal2;
      }
      
      public function set EMTotalPropLbl1_7(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962286EMTotalPropLbl1_7;
         if(_loc2_ !== param1)
         {
            this._468962286EMTotalPropLbl1_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_9() : RoundedLabel
      {
         return this._468962284EMTotalPropLbl1_9;
      }
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medal6() : Image
      {
         return this._1078038497medal6;
      }
      
      public function set EMTotalPropLbl1_9(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962284EMTotalPropLbl1_9;
         if(_loc2_ !== param1)
         {
            this._468962284EMTotalPropLbl1_9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medal8() : Image
      {
         return this._1078038495medal8;
      }
      
      public function set EMTotalPropLbl1_6(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962287EMTotalPropLbl1_6;
         if(_loc2_ !== param1)
         {
            this._468962287EMTotalPropLbl1_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medal1() : Image
      {
         return this._1078038502medal1;
      }
      
      public function set medal1(param1:Image) : void
      {
         var _loc2_:Object = this._1078038502medal1;
         if(_loc2_ !== param1)
         {
            this._1078038502medal1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_8() : RoundedLabel
      {
         return this._468962285EMTotalPropLbl1_8;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_2() : RoundedLabel
      {
         return this._272913863EMPropLbl1_2;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_3() : RoundedLabel
      {
         return this._272913862EMPropLbl1_3;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_5() : RoundedLabel
      {
         return this._272913860EMPropLbl1_5;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_6() : RoundedLabel
      {
         return this._272913859EMPropLbl1_6;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_7() : RoundedLabel
      {
         return this._272913858EMPropLbl1_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_8() : RoundedLabel
      {
         return this._272913857EMPropLbl1_8;
      }
      
      public function set medal4(param1:Image) : void
      {
         var _loc2_:Object = this._1078038499medal4;
         if(_loc2_ !== param1)
         {
            this._1078038499medal4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_4() : RoundedLabel
      {
         return this._272913861EMPropLbl1_4;
      }
      
      public function set medal5(param1:Image) : void
      {
         var _loc2_:Object = this._1078038498medal5;
         if(_loc2_ !== param1)
         {
            this._1078038498medal5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal5",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl2_8(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912896EMPropLbl2_8;
         if(_loc2_ !== param1)
         {
            this._272912896EMPropLbl2_8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl1_1() : RoundedLabel
      {
         return this._272913864EMPropLbl1_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get medal5() : Image
      {
         return this._1078038498medal5;
      }
      
      public function set medal6(param1:Image) : void
      {
         var _loc2_:Object = this._1078038497medal6;
         if(_loc2_ !== param1)
         {
            this._1078038497medal6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal6",_loc2_,param1));
         }
      }
      
      public function set medal7(param1:Image) : void
      {
         var _loc2_:Object = this._1078038496medal7;
         if(_loc2_ !== param1)
         {
            this._1078038496medal7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal7",_loc2_,param1));
         }
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function set medal9(param1:Image) : void
      {
         var _loc2_:Object = this._1078038494medal9;
         if(_loc2_ !== param1)
         {
            this._1078038494medal9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medal3() : Image
      {
         return this._1078038500medal3;
      }
      
      [Bindable(event="propertyChange")]
      public function get medal4() : Image
      {
         return this._1078038499medal4;
      }
      
      public function set medal2(param1:Image) : void
      {
         var _loc2_:Object = this._1078038501medal2;
         if(_loc2_ !== param1)
         {
            this._1078038501medal2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medal7() : Image
      {
         return this._1078038496medal7;
      }
      
      public function set medal3(param1:Image) : void
      {
         var _loc2_:Object = this._1078038500medal3;
         if(_loc2_ !== param1)
         {
            this._1078038500medal3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      public function set medal8(param1:Image) : void
      {
         var _loc2_:Object = this._1078038495medal8;
         if(_loc2_ !== param1)
         {
            this._1078038495medal8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal8",_loc2_,param1));
         }
      }
      
      public function set medalLabel10(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._772846308medalLabel10;
         if(_loc2_ !== param1)
         {
            this._772846308medalLabel10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel10",_loc2_,param1));
         }
      }
      
      private function levelUpEMedalByGold(param1:int) : void
      {
         var str:String;
         var handler:Function = null;
         var type:int = param1;
         var costGold:int = 50;
         if(type == 1)
         {
            costGold = 500;
         }
         handler = function(param1:CloseEvent):void
         {
            var bagPanel:BagPanel = null;
            var goldLockFlag:Boolean = false;
            var gfunc:Function = null;
            var event:CloseEvent = param1;
            if(event.detail == Alert.YES)
            {
               if(ToolKit.isEqual(_cid,_core.cid))
               {
                  bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
                  goldLockFlag = bagPanel.goldLockFlag;
                  if(goldLockFlag || !bagPanel)
                  {
                     _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
                     gfunc = function(param1:String):void
                     {
                        _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                     return;
                  }
                  _core.remote.call("levelUpEMedalByGold",null,_core.cid,type);
               }
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.EXPLORER_MEDAL_PANEL[22].toString().replace("{num}",costGold);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
      }
      
      public function set EMPropLbl1_1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913864EMPropLbl1_1;
         if(_loc2_ !== param1)
         {
            this._272913864EMPropLbl1_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_1",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl1_2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913863EMPropLbl1_2;
         if(_loc2_ !== param1)
         {
            this._272913863EMPropLbl1_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_2",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl1_3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913862EMPropLbl1_3;
         if(_loc2_ !== param1)
         {
            this._272913862EMPropLbl1_3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_3",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl1_5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913860EMPropLbl1_5;
         if(_loc2_ !== param1)
         {
            this._272913860EMPropLbl1_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_5",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl1_6(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913859EMPropLbl1_6;
         if(_loc2_ !== param1)
         {
            this._272913859EMPropLbl1_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_6",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl1_7(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913858EMPropLbl1_7;
         if(_loc2_ !== param1)
         {
            this._272913858EMPropLbl1_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_7",_loc2_,param1));
         }
      }
      
      private function setExplorerMedals(param1:int) : void
      {
         var _loc2_:int = 0;
         if(param1 > 0 && param1 <= 100)
         {
            _loc2_ = Math.floor(param1 / 10);
            if(param1 % 10 > 0)
            {
               _loc2_ += 1;
            }
         }
         var _loc3_:* = 10;
         while(_loc3_ > 0)
         {
            if(_loc2_ >= _loc3_)
            {
               this["medal" + _loc3_].source = ResManager.getIconUrl(eMedalLight[_loc3_ - 1]);
               if(param1 > 0 && (param1 % 10 == 0 && _loc2_ == _loc3_ || _loc2_ > _loc3_))
               {
                  this["medal" + _loc3_].toolTip = Language.EXPLORER_MEDAL_TIPS[_loc3_ - 1].replace("{label}",Language.EXPLORER_MEDAL_TIPS[14]).replace("{color}",Language.EXPLORER_MEDAL_TIPS[17]);
               }
               else
               {
                  this["medal" + _loc3_].toolTip = Language.EXPLORER_MEDAL_TIPS[_loc3_ - 1].replace("{label}",Language.EXPLORER_MEDAL_TIPS[15]).replace("{color}",Language.EXPLORER_MEDAL_TIPS[16]);
               }
               _loc3_--;
            }
            else
            {
               this["medal" + _loc3_].source = ResManager.getIconUrl(eMedalDark[_loc3_ - 1]);
               this["medal" + _loc3_].toolTip = Language.EXPLORER_MEDAL_TIPS[_loc3_ - 1].replace("{label}",Language.EXPLORER_MEDAL_TIPS[15]).replace("{color}",Language.EXPLORER_MEDAL_TIPS[16]);
               _loc3_--;
            }
         }
      }
      
      public function set EMPropLbl1_8(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913857EMPropLbl1_8;
         if(_loc2_ !== param1)
         {
            this._272913857EMPropLbl1_8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_8",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl1_4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272913861EMPropLbl1_4;
         if(_loc2_ !== param1)
         {
            this._272913861EMPropLbl1_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl1_4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentEMP() : RoundedLabel
      {
         return this._1088999281currentEMP;
      }
      
      public function ___ExplorerMedalPanel_BasicDelayButton3_click(param1:MouseEvent) : void
      {
         levelUpEMedalByGold(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevelTitle() : RoundedLabel
      {
         return this._1133593465nextLevelTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get medal9() : Image
      {
         return this._1078038494medal9;
      }
      
      public function set medal10(param1:Image) : void
      {
         var _loc2_:Object = this._940544854medal10;
         if(_loc2_ !== param1)
         {
            this._940544854medal10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medal10",_loc2_,param1));
         }
      }
      
      public function set title(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function updateByManual() : void
      {
         if(!initialized)
         {
            return;
         }
         _core.remote.call("initEMPanel",new Responder(updateEMPanel),_core.cid);
      }
      
      [Bindable(event="propertyChange")]
      public function get embg() : Image
      {
         return this._3116781embg;
      }
      
      private function _ExplorerMedalPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001071);
         },function(param1:Object):void
         {
            embg.source = param1;
         },"embg.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001051);
         },function(param1:Object):void
         {
            medal1.source = param1;
         },"medal1.source");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001052);
         },function(param1:Object):void
         {
            medal2.source = param1;
         },"medal2.source");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001053);
         },function(param1:Object):void
         {
            medal3.source = param1;
         },"medal3.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001054);
         },function(param1:Object):void
         {
            medal4.source = param1;
         },"medal4.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001055);
         },function(param1:Object):void
         {
            medal5.source = param1;
         },"medal5.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001056);
         },function(param1:Object):void
         {
            medal6.source = param1;
         },"medal6.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001057);
         },function(param1:Object):void
         {
            medal7.source = param1;
         },"medal7.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001058);
         },function(param1:Object):void
         {
            medal8.source = param1;
         },"medal8.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001059);
         },function(param1:Object):void
         {
            medal9.source = param1;
         },"medal9.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220001060);
         },function(param1:Object):void
         {
            medal10.source = param1;
         },"medal10.source");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel1.text = param1;
         },"medalLabel1.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel2.text = param1;
         },"medalLabel2.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel3.text = param1;
         },"medalLabel3.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel4.text = param1;
         },"medalLabel4.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel5.text = param1;
         },"medalLabel5.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel6.text = param1;
         },"medalLabel6.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel7.text = param1;
         },"medalLabel7.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel8.text = param1;
         },"medalLabel8.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel9.text = param1;
         },"medalLabel9.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            medalLabel10.text = param1;
         },"medalLabel10.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            currentLevelTitle.text = param1;
         },"currentLevelTitle.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nextLevelTitle.text = param1;
         },"nextLevelTitle.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_RoundedLabel29.text = param1;
         },"_ExplorerMedalPanel_RoundedLabel29.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_LinkButton1.label = param1;
         },"_ExplorerMedalPanel_LinkButton1.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            currentEMP.text = param1;
         },"currentEMP.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nextLevelCost.text = param1;
         },"nextLevelCost.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_BasicDelayButton1.label = param1;
         },"_ExplorerMedalPanel_BasicDelayButton1.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_TIPS[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_BasicDelayButton1.toolTip = param1;
         },"_ExplorerMedalPanel_BasicDelayButton1.toolTip");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_BasicDelayButton2.label = param1;
         },"_ExplorerMedalPanel_BasicDelayButton2.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_TIPS[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_BasicDelayButton2.toolTip = param1;
         },"_ExplorerMedalPanel_BasicDelayButton2.toolTip");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_BasicDelayButton3.label = param1;
         },"_ExplorerMedalPanel_BasicDelayButton3.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.EXPLORER_MEDAL_TIPS[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ExplorerMedalPanel_BasicDelayButton3.toolTip = param1;
         },"_ExplorerMedalPanel_BasicDelayButton3.toolTip");
         result[33] = binding;
         return result;
      }
      
      public function showPanel() : void
      {
         this.show();
         if(!initialized)
         {
            callLater(showPanel);
            return;
         }
         if(!ToolKit.isEqual(_cid,_core.cid))
         {
            _cid = _core.cid;
            _core.remote.call("initEMPanel",new Responder(updateEMPanel),_cid);
         }
         else
         {
            show();
            if(_emInfo)
            {
               updateEMPanel(_emInfo);
            }
         }
      }
      
      public function set nextLevelTitle(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1133593465nextLevelTitle;
         if(_loc2_ !== param1)
         {
            this._1133593465nextLevelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevelTitle",_loc2_,param1));
         }
      }
      
      public function ___ExplorerMedalPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      public function set currentEMP(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1088999281currentEMP;
         if(_loc2_ !== param1)
         {
            this._1088999281currentEMP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentEMP",_loc2_,param1));
         }
      }
      
      public function set currentLevelTitle(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1141243789currentLevelTitle;
         if(_loc2_ !== param1)
         {
            this._1141243789currentLevelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentLevelTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel10() : RoundedLabel
      {
         return this._772846308medalLabel10;
      }
      
      public function set medalLabel1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572524medalLabel1;
         if(_loc2_ !== param1)
         {
            this._440572524medalLabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel1",_loc2_,param1));
         }
      }
      
      public function set medalLabel4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572521medalLabel4;
         if(_loc2_ !== param1)
         {
            this._440572521medalLabel4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel4",_loc2_,param1));
         }
      }
      
      public function set medalLabel5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572520medalLabel5;
         if(_loc2_ !== param1)
         {
            this._440572520medalLabel5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel5",_loc2_,param1));
         }
      }
      
      public function set medalLabel6(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572519medalLabel6;
         if(_loc2_ !== param1)
         {
            this._440572519medalLabel6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel6",_loc2_,param1));
         }
      }
      
      public function set medalLabel3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572522medalLabel3;
         if(_loc2_ !== param1)
         {
            this._440572522medalLabel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel3",_loc2_,param1));
         }
      }
      
      public function set medalLabel7(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572518medalLabel7;
         if(_loc2_ !== param1)
         {
            this._440572518medalLabel7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel7",_loc2_,param1));
         }
      }
      
      private function setPropColumns(param1:Object, param2:int, param3:int) : void
      {
         var _loc5_:* = undefined;
         cleanColumns(param2);
         if(param2 == 1)
         {
            currentLevelTitle.text = Language.EXPLORER_MEDAL_PANEL[7].replace("{medal}",param1.name);
         }
         if(param2 == 2)
         {
            nextLevelTitle.text = Language.EXPLORER_MEDAL_PANEL[8].replace("{medal}",param1.name);
            nextLevelCost.text = Language.EXPLORER_MEDAL_PANEL[6].replace("{num}",param3 + "/" + param1.cost);
            _nextLevelCost = param1.cost;
         }
         var _loc4_:int = 1;
         while(_loc4_ <= 8)
         {
            _loc5_ = param1["propType" + _loc4_];
            if(_loc5_ > 0)
            {
               this["EMPropLbl" + param2 + "_" + _loc4_].text = Language.EXPLORER_MEDAL_PROP[_loc5_] + Number(param1["propNum" + _loc4_]);
            }
            _loc4_++;
         }
      }
      
      public function set medalLabel2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572523medalLabel2;
         if(_loc2_ !== param1)
         {
            this._440572523medalLabel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel2",_loc2_,param1));
         }
      }
      
      public function ___ExplorerMedalPanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         levelUpEMedalByGold(0);
      }
      
      public function set medalLabel9(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572516medalLabel9;
         if(_loc2_ !== param1)
         {
            this._440572516medalLabel9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel9",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_11(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929115EMTotalPropLbl1_11;
         if(_loc2_ !== param1)
         {
            this._1652929115EMTotalPropLbl1_11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_11",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_12(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929114EMTotalPropLbl1_12;
         if(_loc2_ !== param1)
         {
            this._1652929114EMTotalPropLbl1_12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_12",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_13(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929113EMTotalPropLbl1_13;
         if(_loc2_ !== param1)
         {
            this._1652929113EMTotalPropLbl1_13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_13",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_10(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929116EMTotalPropLbl1_10;
         if(_loc2_ !== param1)
         {
            this._1652929116EMTotalPropLbl1_10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_10",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_14(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929112EMTotalPropLbl1_14;
         if(_loc2_ !== param1)
         {
            this._1652929112EMTotalPropLbl1_14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_14",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_15(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929111EMTotalPropLbl1_15;
         if(_loc2_ !== param1)
         {
            this._1652929111EMTotalPropLbl1_15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_15",_loc2_,param1));
         }
      }
      
      public function updateEMPanel(param1:Array) : void
      {
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         _emInfo = param1;
         var _loc2_:* = param1[1];
         var _loc3_:int = param1[0] ? int(param1[0]) : 0;
         var _loc4_:int = param1[2] ? int(param1[2]) : 0;
         var _loc5_:int = param1[3] ? int(param1[3]) : 0;
         var _loc6_:int = 0;
         if(_loc3_ == 0)
         {
            cleanColumns(1);
            cleanColumns(2);
            _loc6_ = 1;
            _loc7_ = GameData.d[GamePredef.TBL_EXPLORER_MEDAL][_loc6_];
            setPropColumns(_loc7_,2,_loc5_);
            currentLevelTitle.text = Language.EXPLORER_MEDAL_PANEL[9];
         }
         else if(_loc3_ == 100)
         {
            _loc8_ = GameData.d[GamePredef.TBL_EXPLORER_MEDAL][_loc3_];
            setPropColumns(_loc8_,1,_loc5_);
            cleanColumns(2);
            nextLevelCost.text = Language.EXPLORER_MEDAL_PANEL[23];
            nextLevelTitle.text = Language.EXPLORER_MEDAL_PANEL[4];
         }
         else
         {
            _loc6_ = _loc3_ + 1;
            _loc8_ = GameData.d[GamePredef.TBL_EXPLORER_MEDAL][_loc3_];
            _loc7_ = GameData.d[GamePredef.TBL_EXPLORER_MEDAL][_loc6_];
            setPropColumns(_loc8_,1,_loc5_);
            setPropColumns(_loc7_,2,_loc5_);
         }
         currentEMP.text = Language.EXPLORER_MEDAL_PANEL[5].replace("{num}",_loc4_);
         setExplorerMedals(_loc3_);
         setTotalPropColumns(_loc2_);
      }
      
      private function cleanColumns(param1:int) : void
      {
         var _loc2_:* = 8;
         while(_loc2_ > 0)
         {
            if(param1 == 1)
            {
               this["EMPropLbl1_" + _loc2_].text = "";
            }
            if(param1 == 2)
            {
               this["EMPropLbl2_" + _loc2_].text = "";
            }
            _loc2_--;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medal10() : Image
      {
         return this._940544854medal10;
      }
      
      public function set medalLabel8(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._440572517medalLabel8;
         if(_loc2_ !== param1)
         {
            this._440572517medalLabel8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"medalLabel8",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_16(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929110EMTotalPropLbl1_16;
         if(_loc2_ !== param1)
         {
            this._1652929110EMTotalPropLbl1_16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_16",_loc2_,param1));
         }
      }
      
      public function set nextLevelCost(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._378573758nextLevelCost;
         if(_loc2_ !== param1)
         {
            this._378573758nextLevelCost = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevelCost",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentLevelTitle() : RoundedLabel
      {
         return this._1141243789currentLevelTitle;
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.EXPLORER_MEDAL_PANEL[10].toString();
         _helpAlert = Alert.show(_loc1_,Language.MAGIC_CRYSTAL_PANEL[20].toString(),Alert.YES,null,null);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ExplorerMedalPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ExplorerMedalPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ExplorerMedalPanelWatcherSetupUtil");
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
      public function get medalLabel2() : RoundedLabel
      {
         return this._440572523medalLabel2;
      }
      
      private function setTotalPropColumns(param1:Object) : void
      {
         var _loc4_:* = undefined;
         if(!param1)
         {
            return;
         }
         var _loc2_:* = 16;
         while(_loc2_ > 0)
         {
            this["EMTotalPropLbl1_" + _loc2_].text = "";
            _loc2_--;
         }
         var _loc3_:int = 1;
         for(_loc4_ in param1)
         {
            if(param1[_loc4_] > 0 && _loc3_ <= 16)
            {
               this["EMTotalPropLbl1_" + _loc3_].text = Language.EXPLORER_MEDAL_PROP[_loc4_] + ToolKit.getRound(Number(param1[_loc4_]),3);
               _loc3_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel7() : RoundedLabel
      {
         return this._440572518medalLabel7;
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel9() : RoundedLabel
      {
         return this._440572516medalLabel9;
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel3() : RoundedLabel
      {
         return this._440572522medalLabel3;
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel6() : RoundedLabel
      {
         return this._440572519medalLabel6;
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel1() : RoundedLabel
      {
         return this._440572524medalLabel1;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_10() : RoundedLabel
      {
         return this._1652929116EMTotalPropLbl1_10;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_11() : RoundedLabel
      {
         return this._1652929115EMTotalPropLbl1_11;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_12() : RoundedLabel
      {
         return this._1652929114EMTotalPropLbl1_12;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_13() : RoundedLabel
      {
         return this._1652929113EMTotalPropLbl1_13;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_14() : RoundedLabel
      {
         return this._1652929112EMTotalPropLbl1_14;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_15() : RoundedLabel
      {
         return this._1652929111EMTotalPropLbl1_15;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_16() : RoundedLabel
      {
         return this._1652929110EMTotalPropLbl1_16;
      }
      
      private function _ExplorerMedalPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220001071);
         _loc1_ = ResManager.getIconUrl(4130220001051);
         _loc1_ = ResManager.getIconUrl(4130220001052);
         _loc1_ = ResManager.getIconUrl(4130220001053);
         _loc1_ = ResManager.getIconUrl(4130220001054);
         _loc1_ = ResManager.getIconUrl(4130220001055);
         _loc1_ = ResManager.getIconUrl(4130220001056);
         _loc1_ = ResManager.getIconUrl(4130220001057);
         _loc1_ = ResManager.getIconUrl(4130220001058);
         _loc1_ = ResManager.getIconUrl(4130220001059);
         _loc1_ = ResManager.getIconUrl(4130220001060);
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[12];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[13];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[14];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[15];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[16];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[17];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[18];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[19];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[20];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[21];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[7];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[8];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[3];
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[20];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[5];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[6];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[1];
         _loc1_ = Language.EXPLORER_MEDAL_TIPS[11];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[2];
         _loc1_ = Language.EXPLORER_MEDAL_TIPS[12];
         _loc1_ = Language.EXPLORER_MEDAL_PANEL[11];
         _loc1_ = Language.EXPLORER_MEDAL_TIPS[13];
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel4() : RoundedLabel
      {
         return this._440572521medalLabel4;
      }
      
      private function levelUpEMedal() : void
      {
         if(ToolKit.isEqual(_cid,_core.cid))
         {
            _core.remote.call("levelUpEMedal",null,_core.cid);
         }
      }
      
      public function set canvas1(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778329canvas1;
         if(_loc2_ !== param1)
         {
            this._550778329canvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel8() : RoundedLabel
      {
         return this._440572517medalLabel8;
      }
      
      [Bindable(event="propertyChange")]
      public function get medalLabel5() : RoundedLabel
      {
         return this._440572520medalLabel5;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevelCost() : RoundedLabel
      {
         return this._378573758nextLevelCost;
      }
      
      public function set embg(param1:Image) : void
      {
         var _loc2_:Object = this._3116781embg;
         if(_loc2_ !== param1)
         {
            this._3116781embg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"embg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas1() : Canvas
      {
         return this._550778329canvas1;
      }
      
      public function set EMPropLbl2_1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912903EMPropLbl2_1;
         if(_loc2_ !== param1)
         {
            this._272912903EMPropLbl2_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_1",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl2_2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912902EMPropLbl2_2;
         if(_loc2_ !== param1)
         {
            this._272912902EMPropLbl2_2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_2",_loc2_,param1));
         }
      }
      
      public function set EMPropLbl2_4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._272912900EMPropLbl2_4;
         if(_loc2_ !== param1)
         {
            this._272912900EMPropLbl2_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMPropLbl2_4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_1() : RoundedLabel
      {
         return this._272912903EMPropLbl2_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_4() : RoundedLabel
      {
         return this._272912900EMPropLbl2_4;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMPropLbl2_6() : RoundedLabel
      {
         return this._272912898EMPropLbl2_6;
      }
   }
}

