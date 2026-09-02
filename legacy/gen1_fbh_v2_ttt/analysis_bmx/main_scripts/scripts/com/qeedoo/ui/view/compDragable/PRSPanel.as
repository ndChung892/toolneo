package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FilterTextArea;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.comp.PRSChipBag;
   import com.qeedoo.ui.view.comp.PRSExcCvs;
   import com.qeedoo.ui.view.comp.PRSShowCvs;
   import com.qeedoo.ui.view.comp.PRSSlot;
   import com.qeedoo.ui.view.comp.PRSTreeButton;
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
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PRSPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const PRS_TREE_RES:Array = [4130220000608,4130220000609,4130220000610,4130220000611,4130220000612];
      
      private static const PRS_TREE_TOP_RES:Array = [4130220000603,4130220000604,4130220000605,4130220000606,4130220000607];
      
      private var _1584105757viewStack:ViewStack;
      
      private var _1510952104PRSPropLbl2_7:Label;
      
      private var _1510951142PRSPropLbl1_6:Label;
      
      public var _PRSPanel_Label23:Label;
      
      private var _1865588274prsShowCvs:PRSShowCvs;
      
      private var _405154804PRSPropLbl1_62:Label;
      
      private var _798994373PRSTreeBtn2:PRSTreeButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _PRSPanel_Label39:Label;
      
      private var _798994376PRSTreeBtn5:PRSTreeButton;
      
      public var _PRSPanel_Label40:Label;
      
      private var _1510952103PRSPropLbl2_6:Label;
      
      private var _1510951141PRSPropLbl1_5:Label;
      
      public var _PRSPanel_FilterTextArea1:FilterTextArea;
      
      private var _798994379PRSTreeBtn8:PRSTreeButton;
      
      private var _405154805PRSPropLbl1_61:Label;
      
      public var _PRSPanel_FilterTextArea2:FilterTextArea;
      
      private var _519048443excBagSlot1:PRSSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _405125166PRSPropLbl2_14:Label;
      
      private var _1000978196PRSTreeBtn10:PRSTreeButton;
      
      private var _798994380PRSTreeBtn9:PRSTreeButton;
      
      private var _405154806PRSPropLbl1_60:Label;
      
      private var _405125012PRSPropLbl2_63:Label;
      
      private var _1510952102PRSPropLbl2_5:Label;
      
      private var _405125167PRSPropLbl2_13:Label;
      
      private var _1510951140PRSPropLbl1_4:Label;
      
      private var _798994372PRSTreeBtn1:PRSTreeButton;
      
      private var _405154828PRSPropLbl1_59:Label;
      
      private var _1510952098PRSPropLbl2_1:Label;
      
      private var _405154895PRSPropLbl1_34:Label;
      
      private var _798994375PRSTreeBtn4:PRSTreeButton;
      
      private var updatePRSTimer:Timer;
      
      private var _405125013PRSPropLbl2_62:Label;
      
      private var _405125104PRSPropLbl2_34:Label;
      
      private var _798994378PRSTreeBtn7:PRSTreeButton;
      
      private var _863543830prsShowCvsSpe:PRSShowCvs;
      
      private var _453952211prsShowContainer:ViewStack;
      
      private var _1510952101PRSPropLbl2_4:Label;
      
      private var _1035988537needStoneLbl:Label;
      
      private var _519048445excBagSlot3:PRSSlot;
      
      private var _405125014PRSPropLbl2_61:Label;
      
      private var _1876109484imgPrsTree:Image;
      
      private var _405125169PRSPropLbl2_11:Label;
      
      public var _PRSPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _PRSPanel_BasicGlowButton2:BasicGlowButton;
      
      public var _PRSPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _PRSPanel_BasicGlowButton5:BasicGlowButton;
      
      public var _PRSPanel_BasicGlowButton6:BasicGlowButton;
      
      public var _PRSPanel_BasicGlowButton7:BasicGlowButton;
      
      public var _PRSPanel_BasicGlowButton8:BasicGlowButton;
      
      public var _PRSPanel_BasicGlowButton4:BasicGlowButton;
      
      private var PRS_TREE_TYPE_PROP:Object;
      
      private var _803559802pageTab:HButtonTab;
      
      public var _PRSPanel_Label1:Label;
      
      private var _544679979prsChipBag:PRSChipBag;
      
      public var _PRSPanel_Label3:Label;
      
      public var _PRSPanel_Label4:Label;
      
      public var _PRSPanel_Label5:Label;
      
      public var _PRSPanel_Label2:Label;
      
      public var _PRSPanel_Label7:Label;
      
      private var _dueObj:Object;
      
      private var _405125015PRSPropLbl2_60:Label;
      
      private var _798994374PRSTreeBtn3:PRSTreeButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _1510951143PRSPropLbl1_7:Label;
      
      private var _405125037PRSPropLbl2_59:Label;
      
      private var _405154898PRSPropLbl1_31:Label;
      
      private var _798994377PRSTreeBtn6:PRSTreeButton;
      
      private var _405154957PRSPropLbl1_14:Label;
      
      private var _prsInfo:Object;
      
      private var _405154960PRSPropLbl1_11:Label;
      
      private var _405125107PRSPropLbl2_31:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1510951137PRSPropLbl1_1:Label;
      
      public var _PRSPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _PRSPanel_Image1:Image;
      
      public var _PRSPanel_Image2:Image;
      
      public var _PRSPanel_Image3:Image;
      
      public var _PRSPanel_Image6:Image;
      
      public var _PRSPanel_Image7:Image;
      
      private var _519048444excBagSlot2:PRSSlot;
      
      private var _405154803PRSPropLbl1_63:Label;
      
      private var PRS_SHOW_TYPE_PROP:Object;
      
      public var _PRSPanel_Image4:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":640,
               "height":490,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PRSPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":36,
                        "selectedIndex":0,
                        "tabWidth":120
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"viewStack",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":11,
                        "y":60,
                        "width":620,
                        "height":405,
                        "childDescriptors":[new UIComponentDescriptor({
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
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PRSPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":3,
                                          "y":3
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":38,
                                          "width":200,
                                          "height":260,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PRSPanel_Image2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":3,
                                                   "y":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_PRSPanel_BasicGlowButton1",
                                             "events":{"click":"___PRSPanel_BasicGlowButton1_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":62,
                                                   "y":227
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
                                          "x":212,
                                          "y":38,
                                          "width":200,
                                          "height":260,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PRSPanel_Image3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":3,
                                                   "y":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_PRSPanel_BasicGlowButton2",
                                             "events":{"click":"___PRSPanel_BasicGlowButton2_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":70,
                                                   "y":227
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
                                          "x":415,
                                          "y":38,
                                          "width":200,
                                          "height":260,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PRSPanel_Image4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":3,
                                                   "y":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_PRSPanel_BasicGlowButton3",
                                             "events":{"click":"___PRSPanel_BasicGlowButton3_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "x":69,
                                                   "y":227
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
                                          "x":9.5,
                                          "y":298,
                                          "width":605,
                                          "height":105,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":FilterTextArea,
                                             "id":"_PRSPanel_FilterTextArea1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.borderStyle = "none";
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":10,
                                                   "width":605,
                                                   "height":105,
                                                   "selectable":false,
                                                   "editable":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PRSPanel_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":440,
                                          "y":10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PRSPanel_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":541,
                                          "y":10
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
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":430,
                                          "height":390,
                                          "x":4,
                                          "y":8,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"imgPrsTree",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":3,
                                                   "y":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PRSPanel_Label3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":120,
                                                   "y":319
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PRSPanel_Label4",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":120,
                                                   "y":336
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PRSPanel_Label5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":234,
                                                   "y":336
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"needStoneLbl",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":234,
                                                   "y":319
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":289,
                                                   "x":189
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":253,
                                                   "x":232
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":224,
                                                   "x":189
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":198,
                                                   "x":136
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":156,
                                                   "x":98
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":124,
                                                   "x":150
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":98,
                                                   "x":205
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":75,
                                                   "x":258
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":45,
                                                   "x":235
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSTreeButton,
                                             "id":"PRSTreeBtn10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":11,
                                                   "x":187
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_PRSPanel_BasicGlowButton4",
                                             "events":{"click":"___PRSPanel_BasicGlowButton4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdGreen",
                                                   "y":358
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
                                          "width":170,
                                          "height":390,
                                          "x":440,
                                          "y":7,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_PRSPanel_Image6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":3,
                                                   "y":3
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PRSPanel_Label7",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":58.5,
                                                   "y":16
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HRule,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":150,
                                                   "height":1,
                                                   "y":43,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":56
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_4",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":76
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":96
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_6",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_7",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":136
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_11",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":156
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_13",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":176
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_31",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":196
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_14",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":216
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_34",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":236
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_61",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":256
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_59",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":276
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_60",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":296
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_62",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":316
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl1_63",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 65535;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":336
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
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_PRSPanel_Image7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":3,
                                          "y":3
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ViewStack,
                                    "id":"prsShowContainer",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "selectedIndex":0,
                                          "x":5,
                                          "y":11,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":PRSShowCvs,
                                             "id":"prsShowCvs",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"tab":0};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSShowCvs,
                                             "id":"prsShowCvsSpe",
                                             "propertiesFactory":function():Object
                                             {
                                                return {"tab":1};
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_PRSPanel_BasicGlowButton5",
                                    "events":{"click":"___PRSPanel_BasicGlowButton5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":11,
                                          "y":8,
                                          "styleName":"BtnStdGreen"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_PRSPanel_BasicGlowButton6",
                                    "events":{"click":"___PRSPanel_BasicGlowButton6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":105,
                                          "y":8,
                                          "styleName":"BtnStdGreen"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":170,
                                          "height":390,
                                          "x":440,
                                          "y":7,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_PRSPanel_Label23",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":58.5,
                                                   "y":16
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":HRule,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":150,
                                                   "height":1,
                                                   "y":43,
                                                   "x":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":56
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_4",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":76
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":96
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_6",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":116
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_7",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":136
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_11",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":156
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_13",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":176
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_31",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":196
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_14",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":216
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_34",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":236
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_61",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":256
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_59",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":276
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_60",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":296
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_62",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":316
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"PRSPropLbl2_63",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":336
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
                                          "x":5,
                                          "y":267,
                                          "width":433,
                                          "height":130,
                                          "verticalScrollPolicy":"on",
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":FilterTextArea,
                                             "id":"_PRSPanel_FilterTextArea2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.borderStyle = "none";
                                                this.backgroundAlpha = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":10,
                                                   "width":425,
                                                   "height":130,
                                                   "selectable":false,
                                                   "editable":false
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
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":275,
                                          "y":7,
                                          "width":335,
                                          "height":388,
                                          "verticalScrollPolicy":"off",
                                          "horizontalScrollPolicy":"off",
                                          "styleName":"CanvasBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":11,
                                                   "y":8,
                                                   "width":315,
                                                   "height":180,
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PRSPanel_Label39",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.fontSize = 14;
                                                         this.color = 16776960;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":127,
                                                            "y":10
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":HRule,
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "width":130,
                                                            "height":1,
                                                            "x":92.5,
                                                            "y":32
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":Label,
                                                      "id":"_PRSPanel_Label40",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.fontSize = 10;
                                                         this.color = 16777215;
                                                      },
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {"y":43};
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":PRSSlot,
                                                      "id":"excBagSlot1",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "excBagPos":1,
                                                            "x":89,
                                                            "y":82
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":PRSSlot,
                                                      "id":"excBagSlot2",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "excBagPos":2,
                                                            "x":142,
                                                            "y":82
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":PRSSlot,
                                                      "id":"excBagSlot3",
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "excBagPos":3,
                                                            "x":193,
                                                            "y":82
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_PRSPanel_BasicGlowButton7",
                                                      "events":{"click":"___PRSPanel_BasicGlowButton7_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":85,
                                                            "y":139,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   }),new UIComponentDescriptor({
                                                      "type":BasicGlowButton,
                                                      "id":"_PRSPanel_BasicGlowButton8",
                                                      "events":{"click":"___PRSPanel_BasicGlowButton8_click"},
                                                      "propertiesFactory":function():Object
                                                      {
                                                         return {
                                                            "x":163,
                                                            "y":139,
                                                            "styleName":"BtnStdGreen"
                                                         };
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":PRSChipBag,
                                             "id":"prsChipBag",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":193
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PRSExcCvs,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":7,
                                          "x":8
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
      
      private var _405154958PRSPropLbl1_13:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _cid:Number = 0;
      
      public function PRSPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 640;
         this.height = 490;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PRSPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get needStoneLbl() : Label
      {
         return this._1035988537needStoneLbl;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn7() : PRSTreeButton
      {
         return this._798994378PRSTreeBtn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn8() : PRSTreeButton
      {
         return this._798994379PRSTreeBtn8;
      }
      
      public function ___PRSPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         setPrsShowContainer(0);
      }
      
      public function set excBagSlot3(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._519048445excBagSlot3;
         if(_loc2_ !== param1)
         {
            this._519048445excBagSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"excBagSlot3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_61() : Label
      {
         return this._405154805PRSPropLbl1_61;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_62() : Label
      {
         return this._405154804PRSPropLbl1_62;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_63() : Label
      {
         return this._405154803PRSPropLbl1_63;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_34() : Label
      {
         return this._405125104PRSPropLbl2_34;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_60() : Label
      {
         return this._405154806PRSPropLbl1_60;
      }
      
      public function set PRSPropLbl1_62(param1:Label) : void
      {
         var _loc2_:Object = this._405154804PRSPropLbl1_62;
         if(_loc2_ !== param1)
         {
            this._405154804PRSPropLbl1_62 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_62",_loc2_,param1));
         }
      }
      
      public function set prsShowContainer(param1:ViewStack) : void
      {
         var _loc2_:Object = this._453952211prsShowContainer;
         if(_loc2_ !== param1)
         {
            this._453952211prsShowContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsShowContainer",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl1_63(param1:Label) : void
      {
         var _loc2_:Object = this._405154803PRSPropLbl1_63;
         if(_loc2_ !== param1)
         {
            this._405154803PRSPropLbl1_63 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_63",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl1_60(param1:Label) : void
      {
         var _loc2_:Object = this._405154806PRSPropLbl1_60;
         if(_loc2_ !== param1)
         {
            this._405154806PRSPropLbl1_60 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_60",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_31() : Label
      {
         return this._405125107PRSPropLbl2_31;
      }
      
      public function set PRSPropLbl1_61(param1:Label) : void
      {
         var _loc2_:Object = this._405154805PRSPropLbl1_61;
         if(_loc2_ !== param1)
         {
            this._405154805PRSPropLbl1_61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_61",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_34(param1:Label) : void
      {
         var _loc2_:Object = this._405125104PRSPropLbl2_34;
         if(_loc2_ !== param1)
         {
            this._405125104PRSPropLbl2_34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_34",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_31(param1:Label) : void
      {
         var _loc2_:Object = this._405125107PRSPropLbl2_31;
         if(_loc2_ !== param1)
         {
            this._405125107PRSPropLbl2_31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_31",_loc2_,param1));
         }
      }
      
      public function set excBagSlot2(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._519048444excBagSlot2;
         if(_loc2_ !== param1)
         {
            this._519048444excBagSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"excBagSlot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn3() : PRSTreeButton
      {
         return this._798994374PRSTreeBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get prsChipBag() : PRSChipBag
      {
         return this._544679979prsChipBag;
      }
      
      public function set prsShowCvsSpe(param1:PRSShowCvs) : void
      {
         var _loc2_:Object = this._863543830prsShowCvsSpe;
         if(_loc2_ !== param1)
         {
            this._863543830prsShowCvsSpe = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsShowCvsSpe",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get prsShowCvsSpe() : PRSShowCvs
      {
         return this._863543830prsShowCvsSpe;
      }
      
      [Bindable(event="propertyChange")]
      public function get prsShowCvs() : PRSShowCvs
      {
         return this._1865588274prsShowCvs;
      }
      
      public function ___PRSPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         onGoldPRSCollect();
      }
      
      public function initPRSTimer(param1:Object) : void
      {
         _dueObj = param1;
         resetPRSTimer();
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function set prsChipBag(param1:PRSChipBag) : void
      {
         var _loc2_:Object = this._544679979prsChipBag;
         if(_loc2_ !== param1)
         {
            this._544679979prsChipBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsChipBag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_59() : Label
      {
         return this._405125037PRSPropLbl2_59;
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
      
      private function _PRSPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicTitleCanvas1.text = param1;
         },"_PRSPanel_BasicTitleCanvas1.text");
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
            return Language.PRS_PANEL[1];
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
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000616);
         },function(param1:Object):void
         {
            _PRSPanel_Image1.source = param1;
         },"_PRSPanel_Image1.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000613);
         },function(param1:Object):void
         {
            _PRSPanel_Image2.source = param1;
         },"_PRSPanel_Image2.source");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[2] + "(" + _core.player.realSoulWater + ")";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton1.label = param1;
         },"_PRSPanel_BasicGlowButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000614);
         },function(param1:Object):void
         {
            _PRSPanel_Image3.source = param1;
         },"_PRSPanel_Image3.source");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton2.label = param1;
         },"_PRSPanel_BasicGlowButton2.label");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000615);
         },function(param1:Object):void
         {
            _PRSPanel_Image4.source = param1;
         },"_PRSPanel_Image4.source");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton3.label = param1;
         },"_PRSPanel_BasicGlowButton3.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_FilterTextArea1.htmlText = param1;
         },"_PRSPanel_FilterTextArea1.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _PRSPanel_FilterTextArea1.filters = param1;
         },"_PRSPanel_FilterTextArea1.filters");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label1.text = param1;
         },"_PRSPanel_Label1.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.realSoulStone;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label2.text = param1;
         },"_PRSPanel_Label2.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label3.text = param1;
         },"_PRSPanel_Label3.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label4.text = param1;
         },"_PRSPanel_Label4.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.realSoulStone;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label5.text = param1;
         },"_PRSPanel_Label5.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton4.label = param1;
         },"_PRSPanel_BasicGlowButton4.label");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000618);
         },function(param1:Object):void
         {
            _PRSPanel_Image6.source = param1;
         },"_PRSPanel_Image6.source");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label7.text = param1;
         },"_PRSPanel_Label7.text");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000617);
         },function(param1:Object):void
         {
            _PRSPanel_Image7.source = param1;
         },"_PRSPanel_Image7.source");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[40][0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton5.label = param1;
         },"_PRSPanel_BasicGlowButton5.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[40][1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton6.label = param1;
         },"_PRSPanel_BasicGlowButton6.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label23.text = param1;
         },"_PRSPanel_Label23.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_FilterTextArea2.htmlText = param1;
         },"_PRSPanel_FilterTextArea2.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_HIGHBLACK];
         },function(param1:Array):void
         {
            _PRSPanel_FilterTextArea2.filters = param1;
         },"_PRSPanel_FilterTextArea2.filters");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label39.text = param1;
         },"_PRSPanel_Label39.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_Label40.text = param1;
         },"_PRSPanel_Label40.text");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PRS_EXCBAG;
         },function(param1:int):void
         {
            excBagSlot1.slotType = param1;
         },"excBagSlot1.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PRS_EXCBAG;
         },function(param1:int):void
         {
            excBagSlot2.slotType = param1;
         },"excBagSlot2.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PRS_EXCBAG;
         },function(param1:int):void
         {
            excBagSlot3.slotType = param1;
         },"excBagSlot3.slotType");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton7.label = param1;
         },"_PRSPanel_BasicGlowButton7.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRS_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PRSPanel_BasicGlowButton8.label = param1;
         },"_PRSPanel_BasicGlowButton8.label");
         result[33] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_62() : Label
      {
         return this._405125013PRSPropLbl2_62;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_63() : Label
      {
         return this._405125012PRSPropLbl2_63;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_60() : Label
      {
         return this._405125015PRSPropLbl2_60;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_61() : Label
      {
         return this._405125014PRSPropLbl2_61;
      }
      
      public function ___PRSPanel_BasicGlowButton7_click(param1:MouseEvent) : void
      {
         swapPRSChip();
      }
      
      private function initPRSProp() : void
      {
         PRS_TREE_TYPE_PROP = {
            1:0,
            4:0,
            5:0,
            6:0,
            7:0,
            11:0,
            13:0,
            31:0,
            34:0,
            14:0,
            61:0,
            59:0,
            60:0,
            62:0,
            63:0
         };
         PRS_SHOW_TYPE_PROP = {
            1:0,
            4:0,
            5:0,
            6:0,
            7:0,
            11:0,
            13:0,
            31:0,
            34:0,
            14:0,
            61:0,
            59:0,
            60:0,
            62:0,
            63:0
         };
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      public function set prsShowCvs(param1:PRSShowCvs) : void
      {
         var _loc2_:Object = this._1865588274prsShowCvs;
         if(_loc2_ !== param1)
         {
            this._1865588274prsShowCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"prsShowCvs",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_6() : Label
      {
         return this._1510952103PRSPropLbl2_6;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_1() : Label
      {
         return this._1510952098PRSPropLbl2_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_7() : Label
      {
         return this._1510952104PRSPropLbl2_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get imgPrsTree() : Image
      {
         return this._1876109484imgPrsTree;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_4() : Label
      {
         return this._1510952101PRSPropLbl2_4;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_5() : Label
      {
         return this._1510952102PRSPropLbl2_5;
      }
      
      public function ___PRSPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         addTreeLvl();
      }
      
      public function set PRSPropLbl2_59(param1:Label) : void
      {
         var _loc2_:Object = this._405125037PRSPropLbl2_59;
         if(_loc2_ !== param1)
         {
            this._405125037PRSPropLbl2_59 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_59",_loc2_,param1));
         }
      }
      
      public function freePRSCollect() : void
      {
         _core.remote.call("freePRSCollect",null,_core.cid);
      }
      
      public function addPRSTimer() : void
      {
         var _loc1_:* = undefined;
         if(!updatePRSTimer && Boolean(_dueObj))
         {
            _loc1_ = getNewDelay();
            updatePRSTimer = new Timer(_loc1_,0);
            updatePRSTimer.addEventListener(TimerEvent.TIMER,refreshPRSShow);
            updatePRSTimer.start();
         }
      }
      
      private function updatePRSBuffList(param1:Object) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:* = undefined;
         var _loc11_:uint = 0;
         var _loc12_:Number = NaN;
         var _loc13_:Object = null;
         var _loc14_:uint = 0;
         var _loc15_:uint = 0;
         initPRSProp();
         var _loc2_:Number = Number(param1["tid"]);
         if(_loc2_)
         {
            _loc7_ = GameData.d[GamePredef.TBL_PRS_TREE][_loc2_];
            _loc8_ = Number(_loc7_["level"]);
            for(_loc9_ in GameData.d[GamePredef.TBL_PRS_TREE])
            {
               if(Number(GameData.d[GamePredef.TBL_PRS_TREE][_loc9_]["level"]) <= _loc8_)
               {
                  _loc10_ = GameData.d[GamePredef.TBL_PRS_TREE][_loc9_];
                  _loc11_ = 1;
                  while(_loc11_ <= 8)
                  {
                     if(Number(_loc10_["pT" + _loc11_]))
                     {
                        PRS_TREE_TYPE_PROP[Number(_loc10_["pT" + _loc11_])] = PRS_TREE_TYPE_PROP[Number(_loc10_["pT" + _loc11_])] + Number(_loc10_["pN" + _loc11_]);
                     }
                     _loc11_++;
                  }
               }
            }
         }
         var _loc3_:Object = param1["actArr"];
         var _loc4_:Object = param1["actLimitObj"];
         for(_loc5_ in _loc3_)
         {
            _loc12_ = Number(_loc3_[_loc5_]);
            _loc13_ = GameData.d[GamePredef.TBL_PRS_SHOW][_loc12_];
            _loc14_ = 1;
            while(_loc14_ <= 8)
            {
               if(Number(_loc13_["pT" + _loc14_]))
               {
                  PRS_SHOW_TYPE_PROP[Number(_loc13_["pT" + _loc14_])] = PRS_SHOW_TYPE_PROP[Number(_loc13_["pT" + _loc14_])] + Number(_loc13_["pN" + _loc14_]);
               }
               _loc14_++;
            }
         }
         for(_loc6_ in _loc4_)
         {
            _loc12_ = Number(_loc6_);
            _loc13_ = GameData.d[GamePredef.TBL_PRS_SHOW][_loc12_];
            _loc15_ = 1;
            while(_loc15_ <= 8)
            {
               if(Number(_loc13_["pT" + _loc15_]))
               {
                  PRS_SHOW_TYPE_PROP[Number(_loc13_["pT" + _loc15_])] = PRS_SHOW_TYPE_PROP[Number(_loc13_["pT" + _loc15_])] + Number(_loc13_["pN" + _loc15_]);
               }
               _loc15_++;
            }
         }
      }
      
      public function set PRSPropLbl2_62(param1:Label) : void
      {
         var _loc2_:Object = this._405125013PRSPropLbl2_62;
         if(_loc2_ !== param1)
         {
            this._405125013PRSPropLbl2_62 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_62",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_63(param1:Label) : void
      {
         var _loc2_:Object = this._405125012PRSPropLbl2_63;
         if(_loc2_ !== param1)
         {
            this._405125012PRSPropLbl2_63 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_63",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_1() : Label
      {
         return this._1510951137PRSPropLbl1_1;
      }
      
      [Bindable(event="propertyChange")]
      public function get prsShowContainer() : ViewStack
      {
         return this._453952211prsShowContainer;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_5() : Label
      {
         return this._1510951141PRSPropLbl1_5;
      }
      
      public function updatePRSTree(param1:Number) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc8_:PRSTreeButton = null;
         var _loc9_:uint = 0;
         if(param1)
         {
            _loc2_ = GameData.d[GamePredef.TBL_PRS_TREE][param1];
            _loc3_ = Number(_loc2_["costStone"]);
            needStoneLbl.text = String(_loc3_);
            updatePRSPropCvs(1);
            _loc4_ = uint(_loc2_["level"]);
            _loc5_ = 10;
            _loc6_ = Math.ceil((_loc4_ + 1) / 10);
            if(param1 == 50)
            {
               _loc6_ = 5;
            }
            imgPrsTree.source = ResManager.getIconUrl(PRS_TREE_RES[_loc6_ - 1]);
            _loc7_ = 1;
            while(_loc7_ <= _loc5_)
            {
               _loc8_ = this["PRSTreeBtn" + _loc7_] as PRSTreeButton;
               _loc9_ = (_loc6_ - 1) * _loc5_ + _loc7_;
               if(_loc9_ <= param1)
               {
                  _loc8_.actived = true;
                  _loc8_.source = ResManager.getIconUrl(4130220000621);
                  if(_loc9_ == param1)
                  {
                     _loc8_.source = ResManager.getIconUrl(4130220000620);
                  }
               }
               else
               {
                  _loc8_.actived = false;
                  _loc8_.source = ResManager.getIconUrl(4130220000619);
               }
               if(_loc7_ == 10)
               {
                  _loc8_.source = ResManager.getIconUrl(PRS_TREE_TOP_RES[_loc6_ - 1]);
               }
               _loc8_.treeId = _loc9_;
               _loc7_++;
            }
         }
      }
      
      public function set PRSPropLbl2_60(param1:Label) : void
      {
         var _loc2_:Object = this._405125015PRSPropLbl2_60;
         if(_loc2_ !== param1)
         {
            this._405125015PRSPropLbl2_60 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_60",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_61(param1:Label) : void
      {
         var _loc2_:Object = this._405125014PRSPropLbl2_61;
         if(_loc2_ !== param1)
         {
            this._405125014PRSPropLbl2_61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_61",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_7() : Label
      {
         return this._1510951143PRSPropLbl1_7;
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      public function set PRSPropLbl1_11(param1:Label) : void
      {
         var _loc2_:Object = this._405154960PRSPropLbl1_11;
         if(_loc2_ !== param1)
         {
            this._405154960PRSPropLbl1_11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_11",_loc2_,param1));
         }
      }
      
      public function ___PRSPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         freePRSCollect();
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn10() : PRSTreeButton
      {
         return this._1000978196PRSTreeBtn10;
      }
      
      public function set PRSPropLbl1_14(param1:Label) : void
      {
         var _loc2_:Object = this._405154957PRSPropLbl1_14;
         if(_loc2_ !== param1)
         {
            this._405154957PRSPropLbl1_14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_14",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get excBagSlot1() : PRSSlot
      {
         return this._519048443excBagSlot1;
      }
      
      public function showPanel() : void
      {
         this.show();
         if(!initialized)
         {
            callLater(showPanel);
            return;
         }
         _cid = _core.cid;
         _core.remote.call("initPRSPanel",new Responder(updatePRSPanel),_cid);
         if(_prsInfo)
         {
            prsShowCvsSpe.updatePRSInfo(_prsInfo);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_6() : Label
      {
         return this._1510951142PRSPropLbl1_6;
      }
      
      [Bindable(event="propertyChange")]
      public function get excBagSlot3() : PRSSlot
      {
         return this._519048445excBagSlot3;
      }
      
      public function onGoldPRSCollectThree() : void
      {
         var gfunc:Function = null;
         var bagPanel:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var goldLockFlag:Boolean = bagPanel.goldLockFlag;
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
         goldPRSCollectThree();
      }
      
      public function set PRSPropLbl1_13(param1:Label) : void
      {
         var _loc2_:Object = this._405154958PRSPropLbl1_13;
         if(_loc2_ !== param1)
         {
            this._405154958PRSPropLbl1_13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_13",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_4() : Label
      {
         return this._1510951140PRSPropLbl1_4;
      }
      
      [Bindable(event="propertyChange")]
      public function get excBagSlot2() : PRSSlot
      {
         return this._519048444excBagSlot2;
      }
      
      public function updatePRSExcBag(param1:Object) : void
      {
         var _loc3_:PRSSlot = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc2_:uint = 1;
         while(_loc2_ <= 3)
         {
            _loc3_ = this["excBagSlot" + _loc2_] as PRSSlot;
            _loc3_.clean();
            if(param1[_loc2_])
            {
               _loc4_ = Number(param1[_loc2_]["chipId"]);
               _loc5_ = Number(param1[_loc2_]["chipNum"]);
               _loc6_ = GameData.d[GamePredef.TBL_PRS_CHIP][_loc4_];
               _loc3_.type = GamePredef.TBL_PRS_CHIP;
               _loc3_.giid = _loc4_;
               _loc3_.slotType = Slot.SLOT_PRS_EXCBAG;
               _loc3_.slotData = _loc6_;
               _loc3_.stackNum = _loc5_;
               _loc3_.excBagPos = _loc2_;
            }
            _loc2_++;
         }
      }
      
      public function getNewDelay() : Number
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc1_:Number = Number.MAX_VALUE;
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ + _core.timeLag;
         if(_dueObj)
         {
            for(_loc4_ in _dueObj)
            {
               _loc5_ = Number(_dueObj[_loc4_]);
               if(_loc5_ <= _loc3_)
               {
                  return 1000;
               }
               if(_loc5_ < _loc1_)
               {
                  _loc1_ = _loc5_;
               }
            }
         }
         if(_loc1_ - _loc3_ > 60 * 60 * 1000)
         {
            return 60 * 60 * 1000;
         }
         return _loc1_ - _loc3_;
      }
      
      public function ___PRSPanel_BasicGlowButton6_click(param1:MouseEvent) : void
      {
         setPrsShowContainer(1);
      }
      
      public function set PRSPropLbl2_1(param1:Label) : void
      {
         var _loc2_:Object = this._1510952098PRSPropLbl2_1;
         if(_loc2_ !== param1)
         {
            this._1510952098PRSPropLbl2_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_1",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_4(param1:Label) : void
      {
         var _loc2_:Object = this._1510952101PRSPropLbl2_4;
         if(_loc2_ !== param1)
         {
            this._1510952101PRSPropLbl2_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_4",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_5(param1:Label) : void
      {
         var _loc2_:Object = this._1510952102PRSPropLbl2_5;
         if(_loc2_ !== param1)
         {
            this._1510952102PRSPropLbl2_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_5",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_6(param1:Label) : void
      {
         var _loc2_:Object = this._1510952103PRSPropLbl2_6;
         if(_loc2_ !== param1)
         {
            this._1510952103PRSPropLbl2_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_6",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_7(param1:Label) : void
      {
         var _loc2_:Object = this._1510952104PRSPropLbl2_7;
         if(_loc2_ !== param1)
         {
            this._1510952104PRSPropLbl2_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_7",_loc2_,param1));
         }
      }
      
      public function set imgPrsTree(param1:Image) : void
      {
         var _loc2_:Object = this._1876109484imgPrsTree;
         if(_loc2_ !== param1)
         {
            this._1876109484imgPrsTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imgPrsTree",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl1_34(param1:Label) : void
      {
         var _loc2_:Object = this._405154895PRSPropLbl1_34;
         if(_loc2_ !== param1)
         {
            this._405154895PRSPropLbl1_34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_34",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl1_31(param1:Label) : void
      {
         var _loc2_:Object = this._405154898PRSPropLbl1_31;
         if(_loc2_ !== param1)
         {
            this._405154898PRSPropLbl1_31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_31",_loc2_,param1));
         }
      }
      
      public function goldPRSCollectThree() : void
      {
         var gold:Number = 888;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("goldPRSCollectThree",null,_core.cid);
            }
         };
         Alert.show(Language.PRS_PANEL[36].toString().replace("{num}",gold),"",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_14() : Label
      {
         return this._405154957PRSPropLbl1_14;
      }
      
      private function _PRSPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PRS_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PRS_PANEL[1];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = ResManager.getIconUrl(4130220000616);
         _loc1_ = ResManager.getIconUrl(4130220000613);
         _loc1_ = Language.PRS_PANEL[2] + "(" + _core.player.realSoulWater + ")";
         _loc1_ = ResManager.getIconUrl(4130220000614);
         _loc1_ = Language.PRS_PANEL[3];
         _loc1_ = ResManager.getIconUrl(4130220000615);
         _loc1_ = Language.PRS_PANEL[4];
         _loc1_ = Language.PRS_PANEL[38];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.PRS_PANEL[5];
         _loc1_ = _core.player.realSoulStone;
         _loc1_ = Language.PRS_PANEL[6];
         _loc1_ = Language.PRS_PANEL[7];
         _loc1_ = _core.player.realSoulStone;
         _loc1_ = Language.PRS_PANEL[8];
         _loc1_ = ResManager.getIconUrl(4130220000618);
         _loc1_ = Language.PRS_PANEL[13];
         _loc1_ = ResManager.getIconUrl(4130220000617);
         _loc1_ = Language.PRS_PANEL[40][0];
         _loc1_ = Language.PRS_PANEL[40][1];
         _loc1_ = Language.PRS_PANEL[13];
         _loc1_ = Language.PRS_PANEL[39];
         _loc1_ = [GamePredef.FILTER_GLOW_HIGHBLACK];
         _loc1_ = Language.PRS_PANEL[14];
         _loc1_ = Language.PRS_PANEL[15];
         _loc1_ = Slot.SLOT_PRS_EXCBAG;
         _loc1_ = Slot.SLOT_PRS_EXCBAG;
         _loc1_ = Slot.SLOT_PRS_EXCBAG;
         _loc1_ = Language.PRS_PANEL[16];
         _loc1_ = Language.PRS_PANEL[17];
      }
      
      public function onGoldPRSCollect() : void
      {
         var gfunc:Function = null;
         var bagPanel:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var goldLockFlag:Boolean = bagPanel.goldLockFlag;
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
         goldPRSCollect();
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_13() : Label
      {
         return this._405154958PRSPropLbl1_13;
      }
      
      public function ___PRSPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         onGoldPRSCollectThree();
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_11() : Label
      {
         return this._405154960PRSPropLbl1_11;
      }
      
      public function resetPRSTimer() : void
      {
         var _loc1_:Number = NaN;
         if(!updatePRSTimer)
         {
            addPRSTimer();
         }
         else
         {
            _loc1_ = getNewDelay();
            updatePRSTimer.delay = _loc1_;
         }
      }
      
      public function set PRSTreeBtn1(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994372PRSTreeBtn1;
         if(_loc2_ !== param1)
         {
            this._798994372PRSTreeBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn1",_loc2_,param1));
         }
      }
      
      public function set PRSTreeBtn3(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994374PRSTreeBtn3;
         if(_loc2_ !== param1)
         {
            this._798994374PRSTreeBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn3",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PRSPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PRSPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PRSPanelWatcherSetupUtil");
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
      
      public function swapPRSChip() : void
      {
         _core.remote.call("swapPRSChip",null,_core.cid);
      }
      
      public function set PRSTreeBtn4(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994375PRSTreeBtn4;
         if(_loc2_ !== param1)
         {
            this._798994375PRSTreeBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn4",_loc2_,param1));
         }
      }
      
      public function set PRSTreeBtn2(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994373PRSTreeBtn2;
         if(_loc2_ !== param1)
         {
            this._798994373PRSTreeBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn2",_loc2_,param1));
         }
      }
      
      public function setPrsShowContainer(param1:int) : void
      {
         prsShowContainer.selectedIndex = param1;
         if(param1 == 1)
         {
            prsShowCvsSpe.updatePRSInfo(_prsInfo);
         }
      }
      
      public function set PRSPropLbl2_11(param1:Label) : void
      {
         var _loc2_:Object = this._405125169PRSPropLbl2_11;
         if(_loc2_ !== param1)
         {
            this._405125169PRSPropLbl2_11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_11",_loc2_,param1));
         }
      }
      
      public function set PRSTreeBtn5(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994376PRSTreeBtn5;
         if(_loc2_ !== param1)
         {
            this._798994376PRSTreeBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn5",_loc2_,param1));
         }
      }
      
      public function set PRSTreeBtn6(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994377PRSTreeBtn6;
         if(_loc2_ !== param1)
         {
            this._798994377PRSTreeBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn6",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_13(param1:Label) : void
      {
         var _loc2_:Object = this._405125167PRSPropLbl2_13;
         if(_loc2_ !== param1)
         {
            this._405125167PRSPropLbl2_13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_13",_loc2_,param1));
         }
      }
      
      public function set PRSTreeBtn7(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994378PRSTreeBtn7;
         if(_loc2_ !== param1)
         {
            this._798994378PRSTreeBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn7",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl2_14(param1:Label) : void
      {
         var _loc2_:Object = this._405125166PRSPropLbl2_14;
         if(_loc2_ !== param1)
         {
            this._405125166PRSPropLbl2_14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl2_14",_loc2_,param1));
         }
      }
      
      public function set PRSTreeBtn8(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994379PRSTreeBtn8;
         if(_loc2_ !== param1)
         {
            this._798994379PRSTreeBtn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn8",_loc2_,param1));
         }
      }
      
      public function set PRSTreeBtn9(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._798994380PRSTreeBtn9;
         if(_loc2_ !== param1)
         {
            this._798994380PRSTreeBtn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_31() : Label
      {
         return this._405154898PRSPropLbl1_31;
      }
      
      public function set needStoneLbl(param1:Label) : void
      {
         var _loc2_:Object = this._1035988537needStoneLbl;
         if(_loc2_ !== param1)
         {
            this._1035988537needStoneLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needStoneLbl",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_34() : Label
      {
         return this._405154895PRSPropLbl1_34;
      }
      
      private function updatePRSPropCvs(param1:Number) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(param1 == 1)
         {
            _loc2_ = PRS_TREE_TYPE_PROP;
         }
         else
         {
            _loc2_ = PRS_SHOW_TYPE_PROP;
         }
         for(_loc3_ in _loc2_)
         {
            if(Number(_loc3_) == 59 || Number(_loc3_) == 60 || Number(_loc3_) == 62 || Number(_loc3_) == 63)
            {
               this["PRSPropLbl" + param1 + "_" + Number(_loc3_)].text = Language.PRS_PROP[Number(_loc3_)] + _loc2_[Number(_loc3_)] / 100 + "%";
            }
            else if(Number(_loc3_) == 1 || Number(_loc3_) == 4 || Number(_loc3_) == 5 || Number(_loc3_) == 6 || Number(_loc3_) == 7 || Number(_loc3_) == 11)
            {
               this["PRSPropLbl" + param1 + "_" + Number(_loc3_)].text = Language.PRS_PROP[Number(_loc3_)] + _loc2_[Number(_loc3_)];
            }
            else
            {
               this["PRSPropLbl" + param1 + "_" + Number(_loc3_)].text = Language.PRS_PROP[Number(_loc3_)] + _loc2_[Number(_loc3_)] / 100;
            }
         }
      }
      
      public function goldPRSCollect() : void
      {
         var gold:Number = 148;
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("goldPRSCollect",null,_core.cid);
            }
         };
         Alert.show(Language.PRS_PANEL[35].toString().replace("{num}",gold),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function updatePRSPanel(param1:Object) : void
      {
         _prsInfo = param1;
         var _loc2_:Object = param1["chipBag"];
         var _loc3_:Object = param1["excBag"];
         var _loc4_:Number = Number(param1["tid"]);
         updatePRSBuffList(param1);
         updatePRSTree(_loc4_);
         prsShowCvs.updatePRSInfo(param1);
         prsShowCvsSpe.updatePRSInfo(param1);
         updatePRSPropCvs(2);
         updatePRSChipBag(_loc2_);
         updatePRSExcBag(_loc3_);
      }
      
      public function ___PRSPanel_BasicGlowButton8_click(param1:MouseEvent) : void
      {
         swapPRSChipTimes();
      }
      
      public function set PRSPropLbl1_1(param1:Label) : void
      {
         var _loc2_:Object = this._1510951137PRSPropLbl1_1;
         if(_loc2_ !== param1)
         {
            this._1510951137PRSPropLbl1_1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_1",_loc2_,param1));
         }
      }
      
      public function addTreeLvl() : void
      {
         _core.remote.call("addSoulTreeLvl",null,_core.cid);
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn2() : PRSTreeButton
      {
         return this._798994373PRSTreeBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn4() : PRSTreeButton
      {
         return this._798994375PRSTreeBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn6() : PRSTreeButton
      {
         return this._798994377PRSTreeBtn6;
      }
      
      public function set PRSPropLbl1_4(param1:Label) : void
      {
         var _loc2_:Object = this._1510951140PRSPropLbl1_4;
         if(_loc2_ !== param1)
         {
            this._1510951140PRSPropLbl1_4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_4",_loc2_,param1));
         }
      }
      
      public function set PRSPropLbl1_5(param1:Label) : void
      {
         var _loc2_:Object = this._1510951141PRSPropLbl1_5;
         if(_loc2_ !== param1)
         {
            this._1510951141PRSPropLbl1_5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_5",_loc2_,param1));
         }
      }
      
      public function updatePRSChipBag(param1:Object) : void
      {
         prsChipBag.updatePage(param1);
      }
      
      public function set PRSPropLbl1_7(param1:Label) : void
      {
         var _loc2_:Object = this._1510951143PRSPropLbl1_7;
         if(_loc2_ !== param1)
         {
            this._1510951143PRSPropLbl1_7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_11() : Label
      {
         return this._405125169PRSPropLbl2_11;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn5() : PRSTreeButton
      {
         return this._798994376PRSTreeBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_13() : Label
      {
         return this._405125167PRSPropLbl2_13;
      }
      
      public function set PRSPropLbl1_6(param1:Label) : void
      {
         var _loc2_:Object = this._1510951142PRSPropLbl1_6;
         if(_loc2_ !== param1)
         {
            this._1510951142PRSPropLbl1_6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_6",_loc2_,param1));
         }
      }
      
      public function swapPRSChipTimes() : void
      {
         _core.remote.call("swapPRSChipTimes",null,_core.cid);
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl2_14() : Label
      {
         return this._405125166PRSPropLbl2_14;
      }
      
      public function set PRSTreeBtn10(param1:PRSTreeButton) : void
      {
         var _loc2_:Object = this._1000978196PRSTreeBtn10;
         if(_loc2_ !== param1)
         {
            this._1000978196PRSTreeBtn10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSTreeBtn10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn9() : PRSTreeButton
      {
         return this._798994380PRSTreeBtn9;
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSTreeBtn1() : PRSTreeButton
      {
         return this._798994372PRSTreeBtn1;
      }
      
      private function refreshPRSShow(param1:Event) : void
      {
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         var _loc8_:Object = null;
         var _loc2_:Number = new Date().getTime();
         var _loc3_:Number = _loc2_ + _core.timeLag;
         if(_dueObj)
         {
            _loc4_ = {};
            for(_loc5_ in _dueObj)
            {
               _loc6_ = Number(_dueObj[_loc5_]);
               if(_loc6_ > 1)
               {
                  if(_loc6_ < _loc3_)
                  {
                     _loc7_ = int(_loc5_);
                     trace("到期的形象id>>>>>>>>>>" + _loc7_);
                     _loc8_ = GameData.d[GamePredef.TBL_PRS_SHOW][_loc7_];
                     _loc4_[_loc7_] = _loc7_;
                  }
               }
            }
            _core.remote.call("updateActivePRSShow",null,_loc4_);
         }
         resetPRSTimer();
      }
      
      public function set PRSPropLbl1_59(param1:Label) : void
      {
         var _loc2_:Object = this._405154828PRSPropLbl1_59;
         if(_loc2_ !== param1)
         {
            this._405154828PRSPropLbl1_59 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"PRSPropLbl1_59",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get PRSPropLbl1_59() : Label
      {
         return this._405154828PRSPropLbl1_59;
      }
      
      public function set excBagSlot1(param1:PRSSlot) : void
      {
         var _loc2_:Object = this._519048443excBagSlot1;
         if(_loc2_ !== param1)
         {
            this._519048443excBagSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"excBagSlot1",_loc2_,param1));
         }
      }
   }
}

