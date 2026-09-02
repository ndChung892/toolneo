package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotEquFunc;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class Moyintuce extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1036623713detailInfo:Label;
      
      private var _1351530636dprop1_32:RoundedLabel;
      
      private var _1351500905dprop2_14:RoundedLabel;
      
      private var _1853834247suitName1:Label;
      
      private var _1652929113EMTotalPropLbl1_13:RoundedLabel;
      
      private var _96835805etip3:Label;
      
      private var _1106142757levUps:ItemSlotEquFunc;
      
      public var _Moyintuce_RoundedLabel4:RoundedLabel;
      
      public var _Moyintuce_Label11:Label;
      
      private var _1072548639buyLimitLabel:RoundedLabel;
      
      private var _468962284EMTotalPropLbl1_9:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var nowPage1:* = 1;
      
      private var _1298838077ename3:Label;
      
      private var _1652929053EMTotalPropLbl1_31:RoundedLabel;
      
      private var _1351530696dprop1_14:RoundedLabel;
      
      private var _1652929112EMTotalPropLbl1_14:RoundedLabel;
      
      private var _1652928984EMTotalPropLbl1_58:RoundedLabel;
      
      private var _468962285EMTotalPropLbl1_8:RoundedLabel;
      
      private var _1527955858mytcbg2:Image;
      
      private var nowPage2:* = 1;
      
      private var _2070563983detailInfo0:Label;
      
      private var _2121806779dprop2_9:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _468962286EMTotalPropLbl1_7:RoundedLabel;
      
      private var dp:ArrayCollection = null;
      
      public var _Moyintuce_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1652929052EMTotalPropLbl1_32:RoundedLabel;
      
      private var _2121806784dprop2_4:RoundedLabel;
      
      private var _468962287EMTotalPropLbl1_6:RoundedLabel;
      
      private var _2121806782dprop2_6:RoundedLabel;
      
      private var _1059090152mytcVS:ViewStack;
      
      private var _2121806780dprop2_8:RoundedLabel;
      
      private var nowTabText:* = "";
      
      private var _2146310748levUpBtn:BasicDelayButton;
      
      private var _1863324754bangBtn2:BasicGlowButton;
      
      private var _1298838079ename1:Label;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _2121807743dprop1_6:RoundedLabel;
      
      private var _468962288EMTotalPropLbl1_5:RoundedLabel;
      
      private var _2121807741dprop1_8:RoundedLabel;
      
      private var _1652928960EMTotalPropLbl1_61:RoundedLabel;
      
      private var _2121807745dprop1_4:RoundedLabel;
      
      private var _468962289EMTotalPropLbl1_4:RoundedLabel;
      
      private var _96835803etip1:Label;
      
      private var nowTab:* = 1;
      
      private var _100675es1:ItemSlotEquFunc;
      
      private var _1527910589mytc3bg:Image;
      
      private var _1853834246suitName2:Label;
      
      private var _1351500846dprop2_31:RoundedLabel;
      
      private var _1351500721dprop2_72:RoundedLabel;
      
      private var _1652929050EMTotalPropLbl1_34:RoundedLabel;
      
      private var _94109721buyYL:BasicGlowButton;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _1070599158nextLevPropText0:Canvas;
      
      private var _1212390534nextLevPropText:Canvas;
      
      private var _1351530637dprop1_31:RoundedLabel;
      
      private var _1351530512dprop1_72:RoundedLabel;
      
      private var _694585521yanliaoslot:ItemSlot;
      
      private var _1351500906dprop2_13:RoundedLabel;
      
      private var _100676es2:ItemSlotEquFunc;
      
      private var _1351500777dprop2_58:RoundedLabel;
      
      private var _1652928928EMTotalPropLbl1_72:RoundedLabel;
      
      private var prop:Array = [];
      
      private var _3446038pnum:RoundedLabel;
      
      private var _1351500908dprop2_11:RoundedLabel;
      
      private var _1351500753dprop2_61:RoundedLabel;
      
      private var _1298838078ename2:Label;
      
      private var _1351530568dprop1_58:RoundedLabel;
      
      private var _204464502activeBtn:BasicDelayButton;
      
      private var flag:Object;
      
      public var _Moyintuce_Label2:Label;
      
      private var _1351530697dprop1_13:RoundedLabel;
      
      private var _96835804etip2:Label;
      
      public var _Moyintuce_LinkButton1:LinkButton;
      
      private var _981567783pprice:RoundedLabel;
      
      private var _2121806787dprop2_1:RoundedLabel;
      
      private var _2121806783dprop2_5:RoundedLabel;
      
      private var _1652929115EMTotalPropLbl1_11:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _1351530544dprop1_61:RoundedLabel;
      
      private var _100677es3:ItemSlotEquFunc;
      
      private var _2121806781dprop2_7:RoundedLabel;
      
      private var _1863324753bangBtn3:BasicGlowButton;
      
      private var _2121807742dprop1_7:RoundedLabel;
      
      private var _1351500843dprop2_34:RoundedLabel;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var _1351530699dprop1_11:RoundedLabel;
      
      private var _2121807740dprop1_9:RoundedLabel;
      
      private var _468962292EMTotalPropLbl1_1:RoundedLabel;
      
      private var _1860721589suitTree:List;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _2121807748dprop1_1:RoundedLabel;
      
      private var _1351530634dprop1_34:RoundedLabel;
      
      private var _2121807744dprop1_5:RoundedLabel;
      
      private var _1059089760mytcbg:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _1351500845dprop2_32:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":730,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_Moyintuce_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "width":728,
                        "height":467,
                        "x":1,
                        "y":32,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"mytcbg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":0,
                                 "x":0,
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "visible":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_Moyintuce_LinkButton1",
                           "events":{"click":"___Moyintuce_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "3";
                              this.right = "3";
                              this.color = 16777215;
                              this.textDecoration = "underline";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"width":78};
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "10";
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":211,
                                 "height":439,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalGap = 1;
                                       this.top = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "percentWidth":100,
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
                                                   "width":41
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
                                                   "width":41
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
                                                   "width":41
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"bangBtn3",
                                             "events":{"click":"__bangBtn3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"HorizontalTab",
                                                   "width":41
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
                                          "width":205,
                                          "height":100.3,
                                          "y":24,
                                          "x":3,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"mytcbg2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":0,
                                                   "x":0,
                                                   "percentWidth":100,
                                                   "percentHeight":100,
                                                   "visible":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"yanliaoslot",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "21";
                                                this.top = "12";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"movable":false};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"pnum",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":72,
                                                   "y":8,
                                                   "text":"Chứa Ma Tâm * 255"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"pprice",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":72,
                                                   "y":28,
                                                   "text":"Giá: 1299 coin"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"buyLimitLabel",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.left = "18";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":52};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"buyYL",
                                             "events":{"click":"__buyYL_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-9";
                                                this.verticalCenter = "34";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed2",
                                                   "width":50
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
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"auto",
                                          "height":312,
                                          "y":124.3,
                                          "width":205,
                                          "x":3,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_Moyintuce_RoundedLabel4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23.5,
                                                   "y":10,
                                                   "height":17
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
                                                   "y":29
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
                                                   "y":49
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
                                                   "y":66
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
                                                   "y":83
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
                                                   "y":100
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
                                                   "x":23,
                                                   "y":117
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
                                                   "x":23,
                                                   "y":134
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"EMTotalPropLbl1_31",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":151
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
                                                   "y":168
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
                                                   "x":23,
                                                   "y":185
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
                                                   "x":23,
                                                   "y":202
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"EMTotalPropLbl1_61",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":219
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"EMTotalPropLbl1_32",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":236
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"EMTotalPropLbl1_58",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":253
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"EMTotalPropLbl1_34",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":270
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"EMTotalPropLbl1_72",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":23,
                                                   "y":287
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
                                 "styleName":"CanvasBorder",
                                 "width":211,
                                 "height":439,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "x":220,
                                 "y":10,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"suitTree",
                                    "events":{
                                       "itemClick":"__suitTree_itemClick",
                                       "mouseDown":"__suitTree_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.borderStyle = "none";
                                       this.left = "4";
                                       this.top = "7";
                                       this.bottom = "7";
                                       this.right = "4";
                                       this.selectionColor = 5458828;
                                       this.rollOverColor = 11775705;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selectable":true,
                                          "itemRenderer":_Moyintuce_ClassFactory1_c()
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"mytc3bg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":283,
                                 "height":439,
                                 "x":436,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"mytcVS",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":283,
                                 "height":439,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "x":436,
                                 "y":10,
                                 "selectedIndex":2,
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "x":0,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"suitName1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 15;
                                                this.color = 16768881;
                                                this.textAlign = "center";
                                                this.top = "13";
                                                this.horizontalCenter = "0";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":200,
                                                   "height":27
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_Moyintuce_Label2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.textAlign = "left";
                                                this.top = "59";
                                                this.left = "30";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":248,
                                                   "height":27
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"ename1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 26367;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"装备",
                                                   "width":90,
                                                   "x":3,
                                                   "y":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"ename2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 26367;
                                                this.textAlign = "center";
                                                this.horizontalCenter = "-5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"装备",
                                                   "width":90,
                                                   "y":83
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"ename3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 26367;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"装备",
                                                   "width":77,
                                                   "y":83,
                                                   "x":188
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"es1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-93";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":107};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"es2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "-5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":107};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"es3",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "85";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":107};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"etip1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 12434877;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"装备",
                                                   "width":90,
                                                   "x":3,
                                                   "y":143
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"etip2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 12434877;
                                                this.textAlign = "center";
                                                this.horizontalCenter = "-5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"装备",
                                                   "width":90,
                                                   "y":143
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"etip3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 12434877;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"装备",
                                                   "width":77,
                                                   "y":143,
                                                   "x":188
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "id":"activeBtn",
                                             "events":{"click":"__activeBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":2000,
                                                   "styleName":"BtnNormalBlue",
                                                   "y":171,
                                                   "height":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"nextLevPropText0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":27,
                                                   "y":238,
                                                   "width":231,
                                                   "height":191,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":19
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":39
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":56
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":73
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":90
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_11",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":107
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_13",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":124
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_31",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":141
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":19
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":39
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_14",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":56
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_61",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":73
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_32",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":90
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_58",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":107
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_34",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":124
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop1_72",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":141
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___Moyintuce_Button1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "7";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":319,
                                                   "width":12,
                                                   "height":25,
                                                   "styleName":"BtnShowButtons",
                                                   "visible":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___Moyintuce_Button2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "8";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":319,
                                                   "width":12,
                                                   "height":25,
                                                   "styleName":"BtnHideButtons",
                                                   "visible":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"detailInfo0",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.textAlign = "left";
                                                this.top = "230";
                                                this.horizontalCenter = "-37";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":155,
                                                   "height":27
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
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "x":0,
                                          "y":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"suitName2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 15;
                                                this.color = 16768881;
                                                this.textAlign = "center";
                                                this.top = "18";
                                                this.horizontalCenter = "0";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":155,
                                                   "height":27
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_Moyintuce_Label11",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.textAlign = "center";
                                                this.top = "56";
                                                this.horizontalCenter = "0";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "text":"Vật thăng cấp:",
                                                   "width":137
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotEquFunc,
                                             "id":"levUps",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":84};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "id":"levUpBtn",
                                             "events":{"click":"__levUpBtn_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":2000,
                                                   "styleName":"BtnNormalBlue",
                                                   "y":136,
                                                   "label":"Thăng cấp",
                                                   "enabled":false,
                                                   "width":104
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"nextLevPropText",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":27,
                                                   "y":238,
                                                   "width":231,
                                                   "height":191,
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":19
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":39
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":56
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_6",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":73
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_7",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":90
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_11",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":107
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_13",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":124
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_31",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":4,
                                                            "y":141
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_8",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":19
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_9",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":39
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_14",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":56
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_61",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":73
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_32",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":90
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_58",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":107
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_34",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":124
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":RoundedLabel,
                                                      "id":"dprop2_72",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 12;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":121,
                                                            "y":141
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___Moyintuce_Button3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "7";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":319,
                                                   "width":12,
                                                   "height":25,
                                                   "styleName":"BtnShowButtons",
                                                   "visible":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___Moyintuce_Button4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "8";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":319,
                                                   "width":12,
                                                   "height":25,
                                                   "styleName":"BtnHideButtons",
                                                   "visible":true
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"detailInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                                this.textAlign = "left";
                                                this.top = "230";
                                                this.horizontalCenter = "-37";
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":155,
                                                   "height":27
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
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "x":0,
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
      });
      
      private var _cid:* = 0;
      
      public function Moyintuce()
      {
         super();
         mx_internal::_document = this;
         this.width = 730;
         this.height = 500;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Moyintuce._watcherSetupUtil = param1;
      }
      
      public function set suitName1(param1:Label) : void
      {
         var _loc2_:Object = this._1853834247suitName1;
         if(_loc2_ !== param1)
         {
            this._1853834247suitName1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suitName1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mytcbg2() : Image
      {
         return this._1527955858mytcbg2;
      }
      
      public function set pprice(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._981567783pprice;
         if(_loc2_ !== param1)
         {
            this._981567783pprice = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pprice",_loc2_,param1));
         }
      }
      
      public function __buyYL_click(param1:MouseEvent) : void
      {
         buyYanliao();
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_1() : RoundedLabel
      {
         return this._468962292EMTotalPropLbl1_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPropText0() : Canvas
      {
         return this._1070599158nextLevPropText0;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_4() : RoundedLabel
      {
         return this._468962289EMTotalPropLbl1_4;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_7() : RoundedLabel
      {
         return this._468962286EMTotalPropLbl1_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_8() : RoundedLabel
      {
         return this._468962285EMTotalPropLbl1_8;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_9() : RoundedLabel
      {
         return this._468962284EMTotalPropLbl1_9;
      }
      
      private function _Moyintuce_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Moyintuce_BasicTitleCanvas1.text = param1;
         },"_Moyintuce_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003342);
         },function(param1:Object):void
         {
            mytcbg.source = param1;
         },"mytcbg.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Moyintuce_LinkButton1.label = param1;
         },"_Moyintuce_LinkButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn2.label = param1;
         },"bangBtn2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn3.label = param1;
         },"bangBtn3.label");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003701);
         },function(param1:Object):void
         {
            mytcbg2.source = param1;
         },"mytcbg2.source");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buyLimitLabel.text = param1;
         },"buyLimitLabel.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ACTIVEPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buyYL.label = param1;
         },"buyYL.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAR_SPRITE[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Moyintuce_RoundedLabel4.text = param1;
         },"_Moyintuce_RoundedLabel4.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_1.text = param1;
         },"EMTotalPropLbl1_1.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_4.text = param1;
         },"EMTotalPropLbl1_4.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_5.text = param1;
         },"EMTotalPropLbl1_5.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_6.text = param1;
         },"EMTotalPropLbl1_6.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_7.text = param1;
         },"EMTotalPropLbl1_7.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_11.text = param1;
         },"EMTotalPropLbl1_11.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_13.text = param1;
         },"EMTotalPropLbl1_13.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_31.text = param1;
         },"EMTotalPropLbl1_31.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_8.text = param1;
         },"EMTotalPropLbl1_8.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_9.text = param1;
         },"EMTotalPropLbl1_9.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_14.text = param1;
         },"EMTotalPropLbl1_14.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_61.text = param1;
         },"EMTotalPropLbl1_61.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_32.text = param1;
         },"EMTotalPropLbl1_32.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_58.text = param1;
         },"EMTotalPropLbl1_58.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_34.text = param1;
         },"EMTotalPropLbl1_34.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            EMTotalPropLbl1_72.text = param1;
         },"EMTotalPropLbl1_72.text");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003700);
         },function(param1:Object):void
         {
            mytc3bg.source = param1;
         },"mytc3bg.source");
         result[27] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            suitName1.filters = param1;
         },"suitName1.filters");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Moyintuce_Label2.text = param1;
         },"_Moyintuce_Label2.text");
         result[29] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _Moyintuce_Label2.filters = param1;
         },"_Moyintuce_Label2.filters");
         result[30] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ename1.filters = param1;
         },"ename1.filters");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ename2.filters = param1;
         },"ename2.filters");
         result[32] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ename3.filters = param1;
         },"ename3.filters");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            etip1.filters = param1;
         },"etip1.filters");
         result[34] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            etip2.filters = param1;
         },"etip2.filters");
         result[35] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            etip3.filters = param1;
         },"etip3.filters");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            activeBtn.label = param1;
         },"activeBtn.label");
         result[37] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_1.text = param1;
         },"dprop1_1.text");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_4.text = param1;
         },"dprop1_4.text");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_5.text = param1;
         },"dprop1_5.text");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_6.text = param1;
         },"dprop1_6.text");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_7.text = param1;
         },"dprop1_7.text");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_11.text = param1;
         },"dprop1_11.text");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_13.text = param1;
         },"dprop1_13.text");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_31.text = param1;
         },"dprop1_31.text");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_8.text = param1;
         },"dprop1_8.text");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_9.text = param1;
         },"dprop1_9.text");
         result[47] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_14.text = param1;
         },"dprop1_14.text");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_61.text = param1;
         },"dprop1_61.text");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_32.text = param1;
         },"dprop1_32.text");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_58.text = param1;
         },"dprop1_58.text");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_34.text = param1;
         },"dprop1_34.text");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop1_72.text = param1;
         },"dprop1_72.text");
         result[53] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            detailInfo0.filters = param1;
         },"detailInfo0.filters");
         result[54] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            suitName2.filters = param1;
         },"suitName2.filters");
         result[55] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _Moyintuce_Label11.filters = param1;
         },"_Moyintuce_Label11.filters");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_1.text = param1;
         },"dprop2_1.text");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_4.text = param1;
         },"dprop2_4.text");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_5.text = param1;
         },"dprop2_5.text");
         result[59] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_6.text = param1;
         },"dprop2_6.text");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_7.text = param1;
         },"dprop2_7.text");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_11.text = param1;
         },"dprop2_11.text");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_13.text = param1;
         },"dprop2_13.text");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_31.text = param1;
         },"dprop2_31.text");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_8.text = param1;
         },"dprop2_8.text");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_9.text = param1;
         },"dprop2_9.text");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_14.text = param1;
         },"dprop2_14.text");
         result[67] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[61];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_61.text = param1;
         },"dprop2_61.text");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_32.text = param1;
         },"dprop2_32.text");
         result[69] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_58.text = param1;
         },"dprop2_58.text");
         result[70] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_34.text = param1;
         },"dprop2_34.text");
         result[71] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MYTC_PROP[72];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            dprop2_72.text = param1;
         },"dprop2_72.text");
         result[72] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            detailInfo.filters = param1;
         },"detailInfo.filters");
         result[73] = binding;
         return result;
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
      public function get suitName2() : Label
      {
         return this._1853834246suitName2;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_5() : RoundedLabel
      {
         return this._468962288EMTotalPropLbl1_5;
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
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_58() : RoundedLabel
      {
         return this._1652928984EMTotalPropLbl1_58;
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
      
      public function set pnum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3446038pnum;
         if(_loc2_ !== param1)
         {
            this._3446038pnum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pnum",_loc2_,param1));
         }
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
      
      public function set EMTotalPropLbl1_5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962288EMTotalPropLbl1_5;
         if(_loc2_ !== param1)
         {
            this._468962288EMTotalPropLbl1_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_5",_loc2_,param1));
         }
      }
      
      public function set mytcVS(param1:ViewStack) : void
      {
         var _loc2_:Object = this._1059090152mytcVS;
         if(_loc2_ !== param1)
         {
            this._1059090152mytcVS = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mytcVS",_loc2_,param1));
         }
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
      
      public function set EMTotalPropLbl1_9(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._468962284EMTotalPropLbl1_9;
         if(_loc2_ !== param1)
         {
            this._468962284EMTotalPropLbl1_9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_9",_loc2_,param1));
         }
      }
      
      public function set buyYL(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._94109721buyYL;
         if(_loc2_ !== param1)
         {
            this._94109721buyYL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyYL",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buyYL() : BasicGlowButton
      {
         return this._94109721buyYL;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_1() : RoundedLabel
      {
         return this._2121806787dprop2_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_6() : RoundedLabel
      {
         return this._468962287EMTotalPropLbl1_6;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_61() : RoundedLabel
      {
         return this._1652928960EMTotalPropLbl1_61;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_5() : RoundedLabel
      {
         return this._2121806783dprop2_5;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_6() : RoundedLabel
      {
         return this._2121806782dprop2_6;
      }
      
      public function set buyLimitLabel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1072548639buyLimitLabel;
         if(_loc2_ !== param1)
         {
            this._1072548639buyLimitLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyLimitLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_4() : RoundedLabel
      {
         return this._2121806784dprop2_4;
      }
      
      public function onMYTCData(param1:*) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Array = null;
         var _loc11_:Array = null;
         var _loc12_:* = undefined;
         var _loc13_:* = undefined;
         resetMYTCUi();
         flag = param1;
         if(Boolean(param1) && Boolean(param1.hasOwnProperty("tc")) && Boolean(dp))
         {
            prop = [];
            _loc2_ = param1.tc;
            for(_loc3_ in dp)
            {
               dp[_loc3_].op = false;
               dp[_loc3_].lev = 0;
               _loc5_ = int(_loc3_) + 1;
               if(_loc2_[_loc5_])
               {
                  _loc6_ = int(_loc2_[_loc5_]);
                  if(Boolean(dp[_loc3_]) && dp[_loc3_].tid == _loc5_)
                  {
                     _loc7_ = dp[_loc3_];
                     _loc7_.op = true;
                     _loc7_.lev = _loc6_;
                     if(Boolean(_loc7_.detail) && Boolean(_loc7_.detail[_loc6_]))
                     {
                        _loc8_ = _core.player.classId;
                        _loc9_ = _loc7_.detail[_loc6_]["c" + _loc8_];
                        _loc10_ = _loc9_.split("|");
                        for(_loc4_ in _loc10_)
                        {
                           _loc11_ = _loc10_[_loc4_].split(":");
                           _loc12_ = int(_loc11_[0]);
                           _loc13_ = Number(_loc11_[1]);
                           if(_loc12_ > 0 && _loc13_ > 0)
                           {
                              if(prop[_loc12_] > 0)
                              {
                                 prop[_loc12_] += _loc13_;
                              }
                              else
                              {
                                 prop[_loc12_] = _loc13_;
                              }
                           }
                        }
                     }
                  }
               }
            }
            suitTree.dataProvider = dp;
            for(_loc4_ in prop)
            {
               if(prop[_loc4_] > 0)
               {
                  if(this["EMTotalPropLbl1_" + _loc4_])
                  {
                     this["EMTotalPropLbl1_" + _loc4_].text = Language.MYTC_PROP[_loc4_] + ": " + prop[_loc4_];
                  }
               }
            }
         }
         switch(nowTab)
         {
            case 1:
               if(Boolean(param1) && Boolean(param1.hasOwnProperty("lt")))
               {
                  if(param1.lt <= 0)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",0);
                  }
                  else if(param1.lt > 0 && param1.lt <= 3)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",param1.lt);
                  }
               }
               break;
            case 2:
               if(Boolean(param1) && Boolean(param1.hasOwnProperty("lt2")))
               {
                  if(param1.lt2 <= 0)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",0);
                  }
                  else if(param1.lt2 > 0 && param1.lt2 <= 3)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",param1.lt2);
                  }
               }
               break;
            case 3:
               if(Boolean(param1) && Boolean(param1.hasOwnProperty("lt3")))
               {
                  if(param1.lt3 <= 0)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",0);
                  }
                  else if(param1.lt3 > 0 && param1.lt3 <= 1)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",param1.lt3);
                  }
               }
               break;
            case 4:
               if(Boolean(param1) && Boolean(param1.hasOwnProperty("lt4")))
               {
                  if(param1.lt4 <= 0)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[22].replace("{buytime}",0);
                  }
                  else if(param1.lt4 > 0 && param1.lt4 <= 3)
                  {
                     buyLimitLabel.text = Language.MYTC_PANEL[22].replace("{buytime}",param1.lt4);
                  }
               }
         }
      }
      
      private function setDetailPropPanel(param1:*, param2:*) : void
      {
         var _loc7_:* = undefined;
         var _loc8_:Array = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(param1 <= 0 || param1 > 10)
         {
            return;
         }
         nowPage1 = param1;
         var _loc3_:* = [];
         var _loc4_:* = _core.player.classId;
         var _loc5_:* = param2[param1]["c" + _loc4_];
         var _loc6_:Array = _loc5_.split("|");
         for(_loc7_ in _loc6_)
         {
            _loc8_ = _loc6_[_loc7_].split(":");
            _loc9_ = int(_loc8_[0]);
            _loc10_ = Number(_loc8_[1]);
            if(_loc9_ > 0 && _loc10_ > 0)
            {
               if(_loc3_[_loc9_] > 0)
               {
                  _loc3_[_loc9_] += _loc10_;
               }
               else
               {
                  _loc3_[_loc9_] = _loc10_;
               }
            }
         }
         dprop1_1.text = Language.MYTC_PROP[1] + ": 0";
         dprop1_4.text = Language.MYTC_PROP[4] + ": 0";
         dprop1_5.text = Language.MYTC_PROP[5] + ": 0";
         dprop1_6.text = Language.MYTC_PROP[6] + ": 0";
         dprop1_7.text = Language.MYTC_PROP[7] + ": 0";
         dprop1_11.text = Language.MYTC_PROP[11] + ": 0";
         dprop1_13.text = Language.MYTC_PROP[13] + ": 0";
         dprop1_31.text = Language.MYTC_PROP[31] + ": 0";
         dprop1_8.text = Language.MYTC_PROP[8] + ": 0";
         dprop1_9.text = Language.MYTC_PROP[9] + ": 0";
         dprop1_14.text = Language.MYTC_PROP[14] + ": 0";
         dprop1_61.text = Language.MYTC_PROP[61] + ": 0";
         dprop1_32.text = Language.MYTC_PROP[32] + ": 0";
         dprop1_58.text = Language.MYTC_PROP[58] + ": 0";
         dprop1_34.text = Language.MYTC_PROP[34] + ": 0";
         dprop1_72.text = Language.MYTC_PROP[72] + ": 0";
         for(_loc7_ in _loc3_)
         {
            if(_loc3_[_loc7_] > 0)
            {
               if(this["dprop1_" + _loc7_])
               {
                  this["dprop1_" + _loc7_].text = Language.MYTC_PROP[_loc7_] + ": " + _loc3_[_loc7_];
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_72() : RoundedLabel
      {
         return this._1351500721dprop2_72;
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_8() : RoundedLabel
      {
         return this._2121806780dprop2_8;
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         bangSele(2);
      }
      
      public function set EMTotalPropLbl1_58(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652928984EMTotalPropLbl1_58;
         if(_loc2_ !== param1)
         {
            this._1652928984EMTotalPropLbl1_58 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_58",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_58() : RoundedLabel
      {
         return this._1351500777dprop2_58;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_72() : RoundedLabel
      {
         return this._1652928928EMTotalPropLbl1_72;
      }
      
      public function set dprop2_58(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500777dprop2_58;
         if(_loc2_ !== param1)
         {
            this._1351500777dprop2_58 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_58",_loc2_,param1));
         }
      }
      
      private function buyYanliao() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            var bagPanel:BagPanel = null;
            var goldLockFlag:Boolean = false;
            var gfunc:Function = null;
            var closeEvent:CloseEvent = param1;
            if(Boolean(closeEvent) && closeEvent.detail == Alert.YES)
            {
               bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
               goldLockFlag = bagPanel.goldLockFlag;
               if(nowTab != 3 && (goldLockFlag || !bagPanel))
               {
                  _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
                  gfunc = function(param1:String):void
                  {
                     _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                  };
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                  return;
               }
               _core.remote.call("buyMYyanliao",null,_core.cid,nowTab);
            }
         };
         var str:String = nowTabText;
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function ___Moyintuce_Button3_click(param1:MouseEvent) : void
      {
         detailPreFunc(2);
      }
      
      public function set dprop1_13(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530697dprop1_13;
         if(_loc2_ !== param1)
         {
            this._1351530697dprop1_13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_13",_loc2_,param1));
         }
      }
      
      public function set dprop1_14(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530696dprop1_14;
         if(_loc2_ !== param1)
         {
            this._1351530696dprop1_14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_9() : RoundedLabel
      {
         return this._2121806779dprop2_9;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_61() : RoundedLabel
      {
         return this._1351500753dprop2_61;
      }
      
      [Bindable(event="propertyChange")]
      public function get suitTree() : List
      {
         return this._1860721589suitTree;
      }
      
      public function set dprop2_1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121806787dprop2_1;
         if(_loc2_ !== param1)
         {
            this._2121806787dprop2_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_1() : RoundedLabel
      {
         return this._2121807748dprop1_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_4() : RoundedLabel
      {
         return this._2121807745dprop1_4;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_6() : RoundedLabel
      {
         return this._2121807743dprop1_6;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_8() : RoundedLabel
      {
         return this._2121807741dprop1_8;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_9() : RoundedLabel
      {
         return this._2121807740dprop1_9;
      }
      
      private function detailPreFunc(param1:*) : void
      {
         var _loc2_:* = suitTree.selectedItem;
         if(_loc2_)
         {
            if(param1 == 1)
            {
               if(nowPage1 <= 1)
               {
                  return;
               }
               setDetailPropPanel(--nowPage1,_loc2_.detail);
               detailInfo0.text = Language.MYTC_PANEL[6].replace("{num}",nowPage1);
            }
            if(param1 == 2)
            {
               if(nowPage2 <= 1)
               {
                  return;
               }
               setDetailPropPanel2(--nowPage2,_loc2_.detail);
               detailInfo.text = Language.MYTC_PANEL[6].replace("{num}",nowPage2);
               if(_loc2_.lev)
               {
                  if(nowPage2 == _loc2_.lev)
                  {
                     detailInfo.text += Language.MYTC_PANEL[15];
                  }
               }
            }
         }
      }
      
      public function set EMTotalPropLbl1_61(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652928960EMTotalPropLbl1_61;
         if(_loc2_ !== param1)
         {
            this._1652928960EMTotalPropLbl1_61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_61",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_7() : RoundedLabel
      {
         return this._2121807742dprop1_7;
      }
      
      public function set dprop2_9(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121806779dprop2_9;
         if(_loc2_ !== param1)
         {
            this._2121806779dprop2_9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_9",_loc2_,param1));
         }
      }
      
      public function set dprop2_6(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121806782dprop2_6;
         if(_loc2_ !== param1)
         {
            this._2121806782dprop2_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_6",_loc2_,param1));
         }
      }
      
      public function set dprop2_7(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121806781dprop2_7;
         if(_loc2_ !== param1)
         {
            this._2121806781dprop2_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_5() : RoundedLabel
      {
         return this._2121807744dprop1_5;
      }
      
      public function set dprop2_5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121806783dprop2_5;
         if(_loc2_ !== param1)
         {
            this._2121806783dprop2_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_5",_loc2_,param1));
         }
      }
      
      public function set es1(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._100675es1;
         if(_loc2_ !== param1)
         {
            this._100675es1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"es1",_loc2_,param1));
         }
      }
      
      public function set suitTree(param1:List) : void
      {
         var _loc2_:Object = this._1860721589suitTree;
         if(_loc2_ !== param1)
         {
            this._1860721589suitTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suitTree",_loc2_,param1));
         }
      }
      
      public function set dprop1_11(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530699dprop1_11;
         if(_loc2_ !== param1)
         {
            this._1351530699dprop1_11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get detailInfo() : Label
      {
         return this._1036623713detailInfo;
      }
      
      public function set dprop2_8(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121806780dprop2_8;
         if(_loc2_ !== param1)
         {
            this._2121806780dprop2_8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_8",_loc2_,param1));
         }
      }
      
      public function set dprop2_4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121806784dprop2_4;
         if(_loc2_ !== param1)
         {
            this._2121806784dprop2_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_4",_loc2_,param1));
         }
      }
      
      public function set dprop2_72(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500721dprop2_72;
         if(_loc2_ !== param1)
         {
            this._1351500721dprop2_72 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_72",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_7() : RoundedLabel
      {
         return this._2121806781dprop2_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get mytcbg() : Image
      {
         return this._1059089760mytcbg;
      }
      
      public function set es3(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._100677es3;
         if(_loc2_ !== param1)
         {
            this._100677es3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"es3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mytc3bg() : Image
      {
         return this._1527910589mytc3bg;
      }
      
      public function set EMTotalPropLbl1_72(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652928928EMTotalPropLbl1_72;
         if(_loc2_ !== param1)
         {
            this._1652928928EMTotalPropLbl1_72 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_72",_loc2_,param1));
         }
      }
      
      public function set dprop2_61(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500753dprop2_61;
         if(_loc2_ !== param1)
         {
            this._1351500753dprop2_61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_61",_loc2_,param1));
         }
      }
      
      public function set es2(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._100676es2;
         if(_loc2_ !== param1)
         {
            this._100676es2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"es2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pprice() : RoundedLabel
      {
         return this._981567783pprice;
      }
      
      [Bindable(event="propertyChange")]
      public function get etip1() : Label
      {
         return this._96835803etip1;
      }
      
      [Bindable(event="propertyChange")]
      public function get etip2() : Label
      {
         return this._96835804etip2;
      }
      
      public function list_itemClickHandler() : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         var _loc1_:* = suitTree.selectedItem;
         if(Boolean(_loc1_.hasOwnProperty("m1")) && _loc1_.m1 == 0)
         {
            mytcVS.selectedIndex = 2;
            return;
         }
         if(Boolean(_loc1_) && Boolean(_loc1_.hasOwnProperty("op")) && _loc1_.op == false)
         {
            mytcVS.selectedIndex = 0;
            if(Boolean(_loc1_.hasOwnProperty("m1")) && _loc1_.m1 > 0)
            {
               _loc3_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][int(_loc1_.m1)];
               es1.giid = _loc3_.id;
               es1.type = GamePredef.TBL_EQUIPT_TEMPLATE;
               es1.stackNum = 1;
               ename1.text = _loc3_.name;
               es1.enabled = false;
               etip1.text = Language.MYTC_PANEL[13];
            }
            if(Boolean(_loc1_.hasOwnProperty("m2")) && _loc1_.m2 > 0)
            {
               _loc4_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][int(_loc1_.m2)];
               es2.giid = _loc4_.id;
               es2.type = GamePredef.TBL_EQUIPT_TEMPLATE;
               es2.stackNum = 1;
               ename2.text = _loc4_.name;
               es2.enabled = false;
               etip2.text = Language.MYTC_PANEL[13];
            }
            if(Boolean(_loc1_.hasOwnProperty("m3")) && _loc1_.m3 > 0)
            {
               _loc5_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][int(_loc1_.m3)];
               es3.giid = _loc5_.id;
               es3.type = GamePredef.TBL_EQUIPT_TEMPLATE;
               es3.stackNum = 1;
               ename3.text = _loc5_.name;
               es3.enabled = false;
               etip3.text = Language.MYTC_PANEL[13];
            }
            suitName1.text = _loc1_.name;
            _loc2_ = GamePredef.SLOT_SID_BAG[0] + 1;
            while(_loc2_ <= GamePredef.SLOT_SID_BAG[7])
            {
               _loc6_ = _core.data.getSlot({"sid":_loc2_});
               if((Boolean(_loc6_)) && _loc6_.type == GamePredef.TBL_EQUIPT_INSTANCE)
               {
                  _loc7_ = _core.data.getData(GamePredef.TBL_EQUIPT_INSTANCE,_loc6_.itemId);
                  _loc8_ = _loc7_.tid;
                  if(_loc8_ == _loc3_.id)
                  {
                     es1.enabled = true;
                     etip1.text = Language.MYTC_PANEL[14];
                  }
                  if(_loc8_ == _loc4_.id)
                  {
                     es2.enabled = true;
                     etip2.text = Language.MYTC_PANEL[14];
                  }
                  if(_loc8_ == _loc5_.id)
                  {
                     es3.enabled = true;
                     etip3.text = Language.MYTC_PANEL[14];
                  }
               }
               _loc2_++;
            }
            setDetailPropPanel(1,_loc1_.detail);
            detailInfo0.text = Language.MYTC_PANEL[6].replace("{num}",1);
         }
         else if(Boolean(_loc1_) && Boolean(_loc1_.hasOwnProperty("op")) && _loc1_.op == true)
         {
            levUps.giid = 6874;
            levUps.type = GamePredef.TBL_ITEM_TEMPLATE;
            _loc9_ = int(_loc1_.lev);
            if(_loc9_ >= 1 && _loc9_ < 10)
            {
               _loc10_ = _loc1_.detail[_loc9_ + 1].cost;
               levUps.stackNum = _loc10_;
               levUpBtn.enabled = true;
            }
            else
            {
               if(_loc9_ < 10)
               {
                  return;
               }
               levUpBtn.enabled = false;
               levUps.stackNum = 0;
            }
            mytcVS.selectedIndex = 1;
            suitName2.text = _loc1_.name + "lv. [" + _loc9_ + "] ";
            setDetailPropPanel2(_loc9_,_loc1_.detail);
            detailInfo.text = Language.MYTC_PANEL[6].replace("{num}",_loc9_);
            if(_loc1_.lev)
            {
               detailInfo.text += Language.MYTC_PANEL[15];
            }
         }
         else
         {
            mytcVS.selectedIndex = 2;
         }
      }
      
      public function set detailInfo0(param1:Label) : void
      {
         var _loc2_:Object = this._2070563983detailInfo0;
         if(_loc2_ !== param1)
         {
            this._2070563983detailInfo0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailInfo0",_loc2_,param1));
         }
      }
      
      public function __bangBtn3_click(param1:MouseEvent) : void
      {
         bangSele(4);
      }
      
      public function set dprop1_32(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530636dprop1_32;
         if(_loc2_ !== param1)
         {
            this._1351530636dprop1_32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_32",_loc2_,param1));
         }
      }
      
      private function levelUpSuit() : void
      {
         var func:Function;
         var item:* = undefined;
         item = suitTree.selectedItem;
         if(item == null)
         {
            return;
         }
         if(item.lev >= 10)
         {
            Alert.show(Language.MYTC_PANEL[16]);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("updateMYTCItem",null,item.tid);
            }
         };
         Alert.show(Language.MYTC_PANEL[5].replace("{num1}",item.detail[item.lev + 1].cost),null,Alert.YES | Alert.NO,null,func);
      }
      
      public function set dprop1_31(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530637dprop1_31;
         if(_loc2_ !== param1)
         {
            this._1351530637dprop1_31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_31",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get etip3() : Label
      {
         return this._96835805etip3;
      }
      
      public function set dprop1_1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121807748dprop1_1;
         if(_loc2_ !== param1)
         {
            this._2121807748dprop1_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_1",_loc2_,param1));
         }
      }
      
      public function set dprop1_4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121807745dprop1_4;
         if(_loc2_ !== param1)
         {
            this._2121807745dprop1_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_4",_loc2_,param1));
         }
      }
      
      public function set dprop1_6(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121807743dprop1_6;
         if(_loc2_ !== param1)
         {
            this._2121807743dprop1_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_6",_loc2_,param1));
         }
      }
      
      public function set activeBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._204464502activeBtn;
         if(_loc2_ !== param1)
         {
            this._204464502activeBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activeBtn",_loc2_,param1));
         }
      }
      
      public function set dprop1_8(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121807741dprop1_8;
         if(_loc2_ !== param1)
         {
            this._2121807741dprop1_8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_8",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set dprop1_9(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121807740dprop1_9;
         if(_loc2_ !== param1)
         {
            this._2121807740dprop1_9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_9",_loc2_,param1));
         }
      }
      
      public function ___Moyintuce_Button2_click(param1:MouseEvent) : void
      {
         detailNextFunc(1);
      }
      
      public function set dprop1_7(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121807742dprop1_7;
         if(_loc2_ !== param1)
         {
            this._2121807742dprop1_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_7",_loc2_,param1));
         }
      }
      
      public function __levUpBtn_click(param1:MouseEvent) : void
      {
         levelUpSuit();
      }
      
      public function set dprop1_34(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530634dprop1_34;
         if(_loc2_ !== param1)
         {
            this._1351530634dprop1_34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_34",_loc2_,param1));
         }
      }
      
      public function set dprop1_5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2121807744dprop1_5;
         if(_loc2_ !== param1)
         {
            this._2121807744dprop1_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_5",_loc2_,param1));
         }
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         bangSele(1);
      }
      
      public function set nextLevPropText(param1:Canvas) : void
      {
         var _loc2_:Object = this._1212390534nextLevPropText;
         if(_loc2_ !== param1)
         {
            this._1212390534nextLevPropText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPropText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pnum() : RoundedLabel
      {
         return this._3446038pnum;
      }
      
      private function resetMYTCUi() : void
      {
         suitTree.dataProvider = null;
         mytcVS.selectedIndex = 2;
         EMTotalPropLbl1_1.text = Language.MYTC_PROP[1] + ": 0";
         EMTotalPropLbl1_4.text = Language.MYTC_PROP[4] + ": 0";
         EMTotalPropLbl1_5.text = Language.MYTC_PROP[5] + ": 0";
         EMTotalPropLbl1_6.text = Language.MYTC_PROP[6] + ": 0";
         EMTotalPropLbl1_7.text = Language.MYTC_PROP[7] + ": 0";
         EMTotalPropLbl1_11.text = Language.MYTC_PROP[11] + ": 0";
         EMTotalPropLbl1_13.text = Language.MYTC_PROP[13] + ": 0";
         EMTotalPropLbl1_31.text = Language.MYTC_PROP[31] + ": 0";
         EMTotalPropLbl1_8.text = Language.MYTC_PROP[8] + ": 0";
         EMTotalPropLbl1_9.text = Language.MYTC_PROP[9] + ": 0";
         EMTotalPropLbl1_14.text = Language.MYTC_PROP[14] + ": 0";
         EMTotalPropLbl1_61.text = Language.MYTC_PROP[61] + ": 0";
         EMTotalPropLbl1_32.text = Language.MYTC_PROP[32] + ": 0";
         EMTotalPropLbl1_58.text = Language.MYTC_PROP[58] + ": 0";
         EMTotalPropLbl1_34.text = Language.MYTC_PROP[34] + ": 0";
         EMTotalPropLbl1_72.text = Language.MYTC_PROP[72] + ": 0";
      }
      
      [Bindable(event="propertyChange")]
      public function get buyLimitLabel() : RoundedLabel
      {
         return this._1072548639buyLimitLabel;
      }
      
      public function __suitTree_itemClick(param1:ListEvent) : void
      {
         list_itemClickHandler();
      }
      
      public function set yanliaoslot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._694585521yanliaoslot;
         if(_loc2_ !== param1)
         {
            this._694585521yanliaoslot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"yanliaoslot",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mytcVS() : ViewStack
      {
         return this._1059090152mytcVS;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_11() : RoundedLabel
      {
         return this._1351530699dprop1_11;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_13() : RoundedLabel
      {
         return this._1351530697dprop1_13;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_14() : RoundedLabel
      {
         return this._1351530696dprop1_14;
      }
      
      private function activeSuit() : void
      {
         var item:* = undefined;
         var func:Function = null;
         item = suitTree.selectedItem;
         if(item == null)
         {
            return;
         }
         if(es1.enabled && es2.enabled && es3.enabled)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("activeMYTCItem",null,item.tid);
               }
            };
            Alert.show(Language.MYTC_PANEL[17],null,Alert.YES | Alert.NO,null,func);
         }
         else
         {
            Alert.show(Language.MYTC_PANEL[8]);
         }
      }
      
      public function set dprop2_14(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500905dprop2_14;
         if(_loc2_ !== param1)
         {
            this._1351500905dprop2_14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_14",_loc2_,param1));
         }
      }
      
      public function set dprop2_11(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500908dprop2_11;
         if(_loc2_ !== param1)
         {
            this._1351500908dprop2_11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get es1() : ItemSlotEquFunc
      {
         return this._100675es1;
      }
      
      private function _Moyintuce_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = Moyintuce_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set detailInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1036623713detailInfo;
         if(_loc2_ !== param1)
         {
            this._1036623713detailInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"detailInfo",_loc2_,param1));
         }
      }
      
      public function set mytcbg(param1:Image) : void
      {
         var _loc2_:Object = this._1059089760mytcbg;
         if(_loc2_ !== param1)
         {
            this._1059089760mytcbg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mytcbg",_loc2_,param1));
         }
      }
      
      public function set levUpBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._2146310748levUpBtn;
         if(_loc2_ !== param1)
         {
            this._2146310748levUpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levUpBtn",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get es2() : ItemSlotEquFunc
      {
         return this._100676es2;
      }
      
      [Bindable(event="propertyChange")]
      public function get es3() : ItemSlotEquFunc
      {
         return this._100677es3;
      }
      
      [Bindable(event="propertyChange")]
      public function get yanliaoslot() : ItemSlot
      {
         return this._694585521yanliaoslot;
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
      
      public function set EMTotalPropLbl1_13(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929113EMTotalPropLbl1_13;
         if(_loc2_ !== param1)
         {
            this._1652929113EMTotalPropLbl1_13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_13",_loc2_,param1));
         }
      }
      
      public function set dprop2_13(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500906dprop2_13;
         if(_loc2_ !== param1)
         {
            this._1351500906dprop2_13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_13",_loc2_,param1));
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
      
      public function set bangBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1863324753bangBtn3;
         if(_loc2_ !== param1)
         {
            this._1863324753bangBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bangBtn3",_loc2_,param1));
         }
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
      
      public function ___Moyintuce_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      public function set dprop1_58(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530568dprop1_58;
         if(_loc2_ !== param1)
         {
            this._1351530568dprop1_58 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_58",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_32() : RoundedLabel
      {
         return this._1351530636dprop1_32;
      }
      
      [Bindable(event="propertyChange")]
      public function get detailInfo0() : Label
      {
         return this._2070563983detailInfo0;
      }
      
      public function set mytc3bg(param1:Image) : void
      {
         var _loc2_:Object = this._1527910589mytc3bg;
         if(_loc2_ !== param1)
         {
            this._1527910589mytc3bg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mytc3bg",_loc2_,param1));
         }
      }
      
      public function set ename2(param1:Label) : void
      {
         var _loc2_:Object = this._1298838078ename2;
         if(_loc2_ !== param1)
         {
            this._1298838078ename2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ename2",_loc2_,param1));
         }
      }
      
      public function set ename1(param1:Label) : void
      {
         var _loc2_:Object = this._1298838079ename1;
         if(_loc2_ !== param1)
         {
            this._1298838079ename1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ename1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_31() : RoundedLabel
      {
         return this._1351530637dprop1_31;
      }
      
      public function set ename3(param1:Label) : void
      {
         var _loc2_:Object = this._1298838077ename3;
         if(_loc2_ !== param1)
         {
            this._1298838077ename3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ename3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get activeBtn() : BasicDelayButton
      {
         return this._204464502activeBtn;
      }
      
      private function helpInfo() : void
      {
         var _loc1_:String = Language.MYTC_PANEL[1].toString();
         Alert.show(_loc1_);
      }
      
      public function ___Moyintuce_Button4_click(param1:MouseEvent) : void
      {
         detailNextFunc(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_11() : RoundedLabel
      {
         return this._1351500908dprop2_11;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextLevPropText() : Canvas
      {
         return this._1212390534nextLevPropText;
      }
      
      public function __bangBtn2_click(param1:MouseEvent) : void
      {
         bangSele(3);
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
      
      private function setDetailPropPanel2(param1:*, param2:*) : void
      {
         var _loc7_:* = undefined;
         var _loc8_:Array = null;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         if(param1 <= 0 || param1 > 10)
         {
            return;
         }
         nowPage2 = param1;
         var _loc3_:* = [];
         var _loc4_:* = _core.player.classId;
         var _loc5_:* = param2[param1]["c" + _loc4_];
         var _loc6_:Array = _loc5_.split("|");
         for(_loc7_ in _loc6_)
         {
            _loc8_ = _loc6_[_loc7_].split(":");
            _loc9_ = int(_loc8_[0]);
            _loc10_ = Number(_loc8_[1]);
            if(_loc9_ > 0 && _loc10_ > 0)
            {
               if(_loc3_[_loc9_] > 0)
               {
                  _loc3_[_loc9_] += _loc10_;
               }
               else
               {
                  _loc3_[_loc9_] = _loc10_;
               }
            }
         }
         dprop2_1.text = Language.MYTC_PROP[1] + ": 0";
         dprop2_4.text = Language.MYTC_PROP[4] + ": 0";
         dprop2_5.text = Language.MYTC_PROP[5] + ": 0";
         dprop2_6.text = Language.MYTC_PROP[6] + ": 0";
         dprop2_7.text = Language.MYTC_PROP[7] + ": 0";
         dprop2_11.text = Language.MYTC_PROP[11] + ": 0";
         dprop2_13.text = Language.MYTC_PROP[13] + ": 0";
         dprop2_31.text = Language.MYTC_PROP[31] + ": 0";
         dprop2_8.text = Language.MYTC_PROP[8] + ": 0";
         dprop2_9.text = Language.MYTC_PROP[9] + ": 0";
         dprop2_14.text = Language.MYTC_PROP[14] + ": 0";
         dprop2_61.text = Language.MYTC_PROP[61] + ": 0";
         dprop2_32.text = Language.MYTC_PROP[32] + ": 0";
         dprop2_58.text = Language.MYTC_PROP[58] + ": 0";
         dprop2_34.text = Language.MYTC_PROP[34] + ": 0";
         dprop2_72.text = Language.MYTC_PROP[72] + ": 0";
         for(_loc7_ in _loc3_)
         {
            if(_loc3_[_loc7_] > 0)
            {
               if(this["dprop2_" + _loc7_])
               {
                  this["dprop2_" + _loc7_].text = Language.MYTC_PROP[_loc7_] + ": " + _loc3_[_loc7_];
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_11() : RoundedLabel
      {
         return this._1652929115EMTotalPropLbl1_11;
      }
      
      public function __activeBtn_click(param1:MouseEvent) : void
      {
         activeSuit();
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_13() : RoundedLabel
      {
         return this._1652929113EMTotalPropLbl1_13;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Moyintuce = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Moyintuce_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MoyintuceWatcherSetupUtil");
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
      
      public function set dprop2_31(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500846dprop2_31;
         if(_loc2_ !== param1)
         {
            this._1351500846dprop2_31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_31",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn0() : BasicGlowButton
      {
         return this._1863324756bangBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn1() : BasicGlowButton
      {
         return this._1863324755bangBtn1;
      }
      
      public function set dprop2_34(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500843dprop2_34;
         if(_loc2_ !== param1)
         {
            this._1351500843dprop2_34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_34",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levUpBtn() : BasicDelayButton
      {
         return this._2146310748levUpBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_14() : RoundedLabel
      {
         return this._1652929112EMTotalPropLbl1_14;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_58() : RoundedLabel
      {
         return this._1351530568dprop1_58;
      }
      
      public function set etip3(param1:Label) : void
      {
         var _loc2_:Object = this._96835805etip3;
         if(_loc2_ !== param1)
         {
            this._96835805etip3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"etip3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn2() : BasicGlowButton
      {
         return this._1863324754bangBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ename1() : Label
      {
         return this._1298838079ename1;
      }
      
      public function set EMTotalPropLbl1_31(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929053EMTotalPropLbl1_31;
         if(_loc2_ !== param1)
         {
            this._1652929053EMTotalPropLbl1_31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_31",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bangBtn3() : BasicGlowButton
      {
         return this._1863324753bangBtn3;
      }
      
      private function detailNextFunc(param1:*) : void
      {
         var _loc2_:* = suitTree.selectedItem;
         if(_loc2_)
         {
            if(param1 == 1)
            {
               if(nowPage1 >= 10)
               {
                  return;
               }
               setDetailPropPanel(++nowPage1,_loc2_.detail);
               detailInfo0.text = Language.MYTC_PANEL[6].replace("{num}",nowPage1);
            }
            if(param1 == 2)
            {
               if(nowPage2 >= 10)
               {
                  return;
               }
               setDetailPropPanel2(++nowPage2,_loc2_.detail);
               detailInfo.text = Language.MYTC_PANEL[6].replace("{num}",nowPage2);
               if(_loc2_.lev)
               {
                  if(nowPage2 == _loc2_.lev)
                  {
                     detailInfo.text += Language.MYTC_PANEL[15];
                  }
               }
            }
         }
      }
      
      public function ___Moyintuce_Button1_click(param1:MouseEvent) : void
      {
         detailPreFunc(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_34() : RoundedLabel
      {
         return this._1351530634dprop1_34;
      }
      
      public function set etip1(param1:Label) : void
      {
         var _loc2_:Object = this._96835803etip1;
         if(_loc2_ !== param1)
         {
            this._96835803etip1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"etip1",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_32(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929052EMTotalPropLbl1_32;
         if(_loc2_ !== param1)
         {
            this._1652929052EMTotalPropLbl1_32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_32",_loc2_,param1));
         }
      }
      
      private function bangSele(param1:*) : void
      {
         nowTab = param1;
         bangBtn0.selected = bangBtn1.selected = bangBtn2.selected = bangBtn3.selected = false;
         switch(param1)
         {
            case 1:
               pnum.text = Language.MYTC_PANEL[9].replace("{num}",255);
               pprice.text = Language.MYTC_PANEL[10].replace("{type}","Coin").replace("{price}","1299");
               buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",flag ? flag.lt : "N/A");
               yanliaoslot.stackNum = 255;
               nowTabText = Language.MYTC_PANEL[12].replace("{type}","Coin").replace("{price}","1299").replace("{num}",255);
               mytcbg2.source = ResManager.getIconUrl(4130220003701);
               bangBtn0.selected = true;
               break;
            case 2:
               pnum.text = Language.MYTC_PANEL[9].replace("{num}",10);
               pprice.text = Language.MYTC_PANEL[10].replace("{type}","Vàng").replace("{price}","888");
               buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",flag ? flag.lt2 : "N/A");
               yanliaoslot.stackNum = 10;
               nowTabText = Language.MYTC_PANEL[12].replace("{type}","Vàng").replace("{price}","888").replace("{num}",10);
               mytcbg2.source = ResManager.getIconUrl(4130220003702);
               bangBtn1.selected = true;
               break;
            case 3:
               pnum.text = Language.MYTC_PANEL[9].replace("{num}",10);
               pprice.text = Language.MYTC_PANEL[10].replace("{type}","Kim phiếu").replace("{price}","1688");
               buyLimitLabel.text = Language.MYTC_PANEL[11].replace("{buytime}",flag ? flag.lt3 : "N/A");
               yanliaoslot.stackNum = 10;
               nowTabText = Language.MYTC_PANEL[12].replace("{type}","Kim phiếu").replace("{price}","1688").replace("{num}",10);
               mytcbg2.source = ResManager.getIconUrl(4130220003703);
               bangBtn2.selected = true;
               break;
            case 4:
               pnum.text = Language.MYTC_PANEL[9].replace("{num}",10);
               pprice.text = Language.MYTC_PANEL[10].replace("{type}","Vàng").replace("{price}","888");
               buyLimitLabel.text = Language.MYTC_PANEL[22].replace("{buytime}",flag ? flag.lt4 : "N/A");
               yanliaoslot.stackNum = 10;
               nowTabText = Language.MYTC_PANEL[12].replace("{type}","Vàng").replace("{price}","888").replace("{num}",10);
               mytcbg2.source = ResManager.getIconUrl(4130220003704);
               bangBtn3.selected = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ename2() : Label
      {
         return this._1298838078ename2;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_31() : RoundedLabel
      {
         return this._1351500846dprop2_31;
      }
      
      public function __suitTree_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      override public function initView() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(dp == null || _cid != _core.cid)
         {
            _loc1_ = new ArrayCollection();
            _loc2_ = GameData.d[GamePredef.TBL_MYTC_SUIT];
            for(_loc3_ in _loc2_)
            {
               _loc4_ = _loc2_[_loc3_];
               _loc5_ = {};
               _loc5_.tid = _loc3_;
               _loc5_.name = _loc4_.name;
               _loc5_.m1 = _loc4_.m1;
               _loc5_.m2 = _loc4_.m2;
               _loc5_.m3 = _loc4_.m3;
               _loc5_.op = false;
               _loc5_.lev = 0;
               _loc6_ = _core.data.gameDataIndex[GamePredef.TBL_MYTC_DETAIL][_loc3_];
               _loc7_ = {};
               for(_loc8_ in _loc6_)
               {
                  if(_loc6_[_loc8_])
                  {
                     _loc7_[_loc6_[_loc8_].lev] = _loc6_[_loc8_];
                  }
               }
               _loc5_.detail = _loc7_;
               _loc1_.addItemAt(_loc5_,_loc3_ - 1);
            }
            dp = _loc1_;
            _cid = _core.cid;
            yanliaoslot.type = GamePredef.TBL_ITEM_TEMPLATE;
            yanliaoslot.giid = 6874;
            yanliaoslot.enabled = true;
            yanliaoslot.acceptable = false;
            yanliaoslot.visible = true;
            yanliaoslot.stackNum = 255;
         }
         bangSele(1);
         _core.remote.call("getMYTCDataView",null);
      }
      
      public function set levUps(param1:ItemSlotEquFunc) : void
      {
         var _loc2_:Object = this._1106142757levUps;
         if(_loc2_ !== param1)
         {
            this._1106142757levUps = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levUps",_loc2_,param1));
         }
      }
      
      public function set dprop1_61(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530544dprop1_61;
         if(_loc2_ !== param1)
         {
            this._1351530544dprop1_61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_61",_loc2_,param1));
         }
      }
      
      public function set EMTotalPropLbl1_34(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1652929050EMTotalPropLbl1_34;
         if(_loc2_ !== param1)
         {
            this._1652929050EMTotalPropLbl1_34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"EMTotalPropLbl1_34",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_13() : RoundedLabel
      {
         return this._1351500906dprop2_13;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_14() : RoundedLabel
      {
         return this._1351500905dprop2_14;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_61() : RoundedLabel
      {
         return this._1351530544dprop1_61;
      }
      
      public function set dprop1_72(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351530512dprop1_72;
         if(_loc2_ !== param1)
         {
            this._1351530512dprop1_72 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop1_72",_loc2_,param1));
         }
      }
      
      public function set mytcbg2(param1:Image) : void
      {
         var _loc2_:Object = this._1527955858mytcbg2;
         if(_loc2_ !== param1)
         {
            this._1527955858mytcbg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mytcbg2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_31() : RoundedLabel
      {
         return this._1652929053EMTotalPropLbl1_31;
      }
      
      [Bindable(event="propertyChange")]
      public function get ename3() : Label
      {
         return this._1298838077ename3;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_34() : RoundedLabel
      {
         return this._1652929050EMTotalPropLbl1_34;
      }
      
      [Bindable(event="propertyChange")]
      public function get levUps() : ItemSlotEquFunc
      {
         return this._1106142757levUps;
      }
      
      [Bindable(event="propertyChange")]
      public function get EMTotalPropLbl1_32() : RoundedLabel
      {
         return this._1652929052EMTotalPropLbl1_32;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop1_72() : RoundedLabel
      {
         return this._1351530512dprop1_72;
      }
      
      public function set etip2(param1:Label) : void
      {
         var _loc2_:Object = this._96835804etip2;
         if(_loc2_ !== param1)
         {
            this._96835804etip2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"etip2",_loc2_,param1));
         }
      }
      
      public function set nextLevPropText0(param1:Canvas) : void
      {
         var _loc2_:Object = this._1070599158nextLevPropText0;
         if(_loc2_ !== param1)
         {
            this._1070599158nextLevPropText0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextLevPropText0",_loc2_,param1));
         }
      }
      
      public function set suitName2(param1:Label) : void
      {
         var _loc2_:Object = this._1853834246suitName2;
         if(_loc2_ !== param1)
         {
            this._1853834246suitName2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"suitName2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_32() : RoundedLabel
      {
         return this._1351500845dprop2_32;
      }
      
      [Bindable(event="propertyChange")]
      public function get dprop2_34() : RoundedLabel
      {
         return this._1351500843dprop2_34;
      }
      
      private function _Moyintuce_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MYTC_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220003342);
         _loc1_ = Language.PANEL_PETGUARD[19];
         _loc1_ = Language.MYTC_PANEL[18];
         _loc1_ = Language.MYTC_PANEL[19];
         _loc1_ = Language.MYTC_PANEL[20];
         _loc1_ = Language.MYTC_PANEL[21];
         _loc1_ = ResManager.getIconUrl(4130220003701);
         _loc1_ = Language.MYTC_PANEL[11];
         _loc1_ = Language.ACTIVEPANEL_U[4];
         _loc1_ = Language.WAR_SPRITE[3];
         _loc1_ = Language.MYTC_PROP[1];
         _loc1_ = Language.MYTC_PROP[4];
         _loc1_ = Language.MYTC_PROP[5];
         _loc1_ = Language.MYTC_PROP[6];
         _loc1_ = Language.MYTC_PROP[7];
         _loc1_ = Language.MYTC_PROP[11];
         _loc1_ = Language.MYTC_PROP[13];
         _loc1_ = Language.MYTC_PROP[31];
         _loc1_ = Language.MYTC_PROP[8];
         _loc1_ = Language.MYTC_PROP[9];
         _loc1_ = Language.MYTC_PROP[14];
         _loc1_ = Language.MYTC_PROP[61];
         _loc1_ = Language.MYTC_PROP[32];
         _loc1_ = Language.MYTC_PROP[58];
         _loc1_ = Language.MYTC_PROP[34];
         _loc1_ = Language.MYTC_PROP[72];
         _loc1_ = ResManager.getIconUrl(4130220003700);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MYTC_PANEL[2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MYTC_PANEL[7];
         _loc1_ = Language.MYTC_PROP[1];
         _loc1_ = Language.MYTC_PROP[4];
         _loc1_ = Language.MYTC_PROP[5];
         _loc1_ = Language.MYTC_PROP[6];
         _loc1_ = Language.MYTC_PROP[7];
         _loc1_ = Language.MYTC_PROP[11];
         _loc1_ = Language.MYTC_PROP[13];
         _loc1_ = Language.MYTC_PROP[31];
         _loc1_ = Language.MYTC_PROP[8];
         _loc1_ = Language.MYTC_PROP[9];
         _loc1_ = Language.MYTC_PROP[14];
         _loc1_ = Language.MYTC_PROP[61];
         _loc1_ = Language.MYTC_PROP[32];
         _loc1_ = Language.MYTC_PROP[58];
         _loc1_ = Language.MYTC_PROP[34];
         _loc1_ = Language.MYTC_PROP[72];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.MYTC_PROP[1];
         _loc1_ = Language.MYTC_PROP[4];
         _loc1_ = Language.MYTC_PROP[5];
         _loc1_ = Language.MYTC_PROP[6];
         _loc1_ = Language.MYTC_PROP[7];
         _loc1_ = Language.MYTC_PROP[11];
         _loc1_ = Language.MYTC_PROP[13];
         _loc1_ = Language.MYTC_PROP[31];
         _loc1_ = Language.MYTC_PROP[8];
         _loc1_ = Language.MYTC_PROP[9];
         _loc1_ = Language.MYTC_PROP[14];
         _loc1_ = Language.MYTC_PROP[61];
         _loc1_ = Language.MYTC_PROP[32];
         _loc1_ = Language.MYTC_PROP[58];
         _loc1_ = Language.MYTC_PROP[34];
         _loc1_ = Language.MYTC_PROP[72];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      [Bindable(event="propertyChange")]
      public function get suitName1() : Label
      {
         return this._1853834247suitName1;
      }
      
      public function set dprop2_32(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1351500845dprop2_32;
         if(_loc2_ !== param1)
         {
            this._1351500845dprop2_32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dprop2_32",_loc2_,param1));
         }
      }
   }
}

