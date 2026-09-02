package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.LinkEncode;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ChatPanelUtil;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.ItemSlotChaInfo;
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
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CharactorInfoPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1520845170BtnInviteGuild:BasicDelayButton;
      
      private var _189045043chivalTxt:RoundedLabel;
      
      private var _cid:Number;
      
      private var maxMc:MovieClip;
      
      private var _1295475194equip6:ItemSlotChaInfo;
      
      private var _756552959newNameLB:BasicTxtButton;
      
      private var _2098207823btnTrack:Button;
      
      private var _1548752592charPmImg:Image;
      
      private var _739034253charImg:Image;
      
      public var _CharactorInfoPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _CharactorInfoPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _CharactorInfoPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _CharactorInfoPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _CharactorInfoPanel_BasicTxtButton6:BasicTxtButton;
      
      private var _206189300btnSeek:Button;
      
      private var _1890927552islotMain:ItemSlot;
      
      private var _3553393tbn1:BasicGlowButton;
      
      public var _CharactorInfoPanel_BasicTxtButton7:BasicTxtButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1179373780islot3:ItemSlot;
      
      private var _1205539178infoClass:RoundedLabel;
      
      private var _obj:Object;
      
      private var _1295475191equip9:ItemSlotChaInfo;
      
      private var _1209508837infoGuild:RoundedLabel;
      
      private var _1295475199equip1:ItemSlotChaInfo;
      
      private var _111185pop:RoundedLabel;
      
      private var _114581tab:ViewStack;
      
      private var _106706549pkTxt:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _1505025456equip11:ItemSlotChaInfo;
      
      private var _177753177infoName:RoundedLabel;
      
      private var _2081143Btn3:BasicGlowButton;
      
      private var _1295475196equip4:ItemSlotChaInfo;
      
      public var _CharactorInfoPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1505025425equip21:ItemSlotChaInfo;
      
      private var _1505025454equip13:ItemSlotChaInfo;
      
      private var _1179373782islot1:ItemSlot;
      
      private var _1179373779islot4:ItemSlot;
      
      private var _1295447866starActiveInfo:TextArea;
      
      private var _1295475193equip7:ItemSlotChaInfo;
      
      private var element:Class = CharactorInfoPanel_element;
      
      private var _1516339456_tbnEnabled:Boolean = true;
      
      private var _2081142Btn2:BasicGlowButton;
      
      private var _108274547rbImg:Image;
      
      public var equipActiveList:Object;
      
      private var _1295475198equip2:ItemSlotChaInfo;
      
      private var _1295475195equip5:ItemSlotChaInfo;
      
      private var _808946632makerActiveInfo:TextArea;
      
      private var _344051672btnAchieveWatching:BasicGlowButton;
      
      private var _224866005stoneSealWatching:BasicGlowButton;
      
      private var _1505025457equip10:ItemSlotChaInfo;
      
      private var _1179373778islot5:ItemSlot;
      
      private var _1662853568elemUIC:UIComponent;
      
      private var _2081141Btn1:BasicGlowButton;
      
      private var _150170562btnDelPop:Button;
      
      public var _CharactorInfoPanel_Canvas1:Canvas;
      
      public var _CharactorInfoPanel_Canvas3:Canvas;
      
      public var _CharactorInfoPanel_Canvas4:Canvas;
      
      public var _CharactorInfoPanel_Canvas5:Canvas;
      
      private var mc:MovieClip;
      
      private var _1179373781islot2:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      public var _CharactorInfoPanel_Image1:Image;
      
      private var maskMc:MovieClip;
      
      private var _1295475192equip8:ItemSlotChaInfo;
      
      private var newGradeLevel:Array = ["","Nhập Môn","Bậc Thầy","Siêu Phàm"];
      
      private var _117350830gmLabel:Label;
      
      private var _1505025455equip12:ItemSlotChaInfo;
      
      private var _3553394tbn2:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1132481262tb_chival:BasicTxtButton;
      
      private var _63121260btnAddPop:Button;
      
      private var _1545773492charNGImg:Image;
      
      private var _795125073wanted:Label;
      
      private var _1295475197equip3:ItemSlotChaInfo;
      
      private var _1213662070infoLevel:RoundedLabel;
      
      private var _1505025424equip22:ItemSlotChaInfo;
      
      private var _1505025453equip14:ItemSlotChaInfo;
      
      mx_internal var _bindings:Array = [];
      
      private var _1221167690infoTitle:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_CharactorInfoPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_CharactorInfoPanel_Canvas1",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":370,
                        "y":35,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":151.5,
                                 "height":148,
                                 "styleName":"CSSBorder",
                                 "y":5,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"infoName",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "-1";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":2,
                                          "width":104.5,
                                          "text":"",
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"infoClass",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":20,
                                          "width":104,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"infoLevel",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":38,
                                          "width":104,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"infoGuild",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":56,
                                          "text":"",
                                          "width":104
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"infoTitle",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":74,
                                          "width":104,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"newNameLB",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":2,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorInfoPanel_BasicTxtButton2",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":20,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorInfoPanel_BasicTxtButton3",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":38,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorInfoPanel_BasicTxtButton4",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":56,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorInfoPanel_BasicTxtButton5",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":74,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"pkTxt",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":46,
                                          "y":92,
                                          "width":102,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"pop",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":46,
                                          "y":110,
                                          "width":102,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"chivalTxt",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":46,
                                          "y":128,
                                          "width":102,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorInfoPanel_BasicTxtButton6",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":92,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_CharactorInfoPanel_BasicTxtButton7",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":110,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"tb_chival",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":128,
                                          "width":38,
                                          "height":18
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tbn1",
                           "events":{"click":"__tbn1_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "8";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":158.3,
                                 "styleName":"HorizontalTab"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tbn2",
                           "events":{"click":"__tbn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":40,
                                 "y":158.3,
                                 "styleName":"HorizontalTab"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tab",
                           "stylesFactory":function():void
                           {
                              this.left = "5";
                              this.right = "5";
                              this.bottom = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":188,
                                 "tabEnabled":false,
                                 "styleName":"TabNavPlayer",
                                 "creationPolicy":"all",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_CharactorInfoPanel_Canvas3",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentHeight":100,
                                          "visible":true,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":UIComponent,
                                             "id":"elemUIC",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":92,
                                                   "y":9,
                                                   "width":80,
                                                   "height":175
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip1",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.top = "5";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip2",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":77};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":48,
                                                   "y":113
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip4",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":41};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip5",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":113};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip6",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
                                                this.bottom = "5";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip7",
                                             "stylesFactory":function():void
                                             {
                                                this.right = "48";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":113,
                                                   "x":190
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip8",
                                             "stylesFactory":function():void
                                             {
                                                this.top = "5";
                                                this.right = "5";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip9",
                                             "stylesFactory":function():void
                                             {
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":77};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip10",
                                             "stylesFactory":function():void
                                             {
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":41};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip11",
                                             "stylesFactory":function():void
                                             {
                                                this.right = "5";
                                                this.bottom = "5";
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip12",
                                             "stylesFactory":function():void
                                             {
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":113};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip13",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "5";
                                                this.right = "48";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"x":190};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip14",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"x":48};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":48,
                                                   "y":77
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlotChaInfo,
                                             "id":"equip22",
                                             "stylesFactory":function():void
                                             {
                                                this.right = "48";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"y":77};
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"makerActiveInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selectable":false,
                                                   "x":39,
                                                   "y":7,
                                                   "width":68,
                                                   "height":60,
                                                   "editable":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":TextArea,
                                             "id":"starActiveInfo",
                                             "stylesFactory":function():void
                                             {
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "selectable":false,
                                                   "x":159,
                                                   "y":6,
                                                   "width":68,
                                                   "height":60,
                                                   "editable":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"_CharactorInfoPanel_Canvas4",
                                    "events":{"show":"___CharactorInfoPanel_Canvas4_show"},
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentHeight":100,
                                          "percentWidth":100,
                                          "visible":true,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_CharactorInfoPanel_Image1",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":188,
                                                   "height":189,
                                                   "y":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"islotMain",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":80,
                                                   "slotType":4,
                                                   "x":112.5,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"islot1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":18,
                                                   "slotType":4,
                                                   "x":66,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"islot2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":18,
                                                   "slotType":4,
                                                   "x":156,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"islot3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":103,
                                                   "slotType":4,
                                                   "x":183,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"islot4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":153,
                                                   "slotType":4,
                                                   "x":112,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":ItemSlot,
                                             "id":"islot5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":103,
                                                   "slotType":4,
                                                   "x":45,
                                                   "styleName":"TransparentSlot"
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"charImg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":130,
                                 "width":100,
                                 "x":5,
                                 "y":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"charPmImg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":20,
                                 "width":24,
                                 "x":5,
                                 "y":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"charNGImg",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":25,
                                 "width":25,
                                 "x":5,
                                 "y":27
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"rbImg",
                           "events":{"click":"__rbImg_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":45,
                                 "width":40,
                                 "x":65,
                                 "y":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"gmLabel",
                           "stylesFactory":function():void
                           {
                              this.color = 7601921;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":73,
                                 "y":10,
                                 "text":"[GM]"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_CharactorInfoPanel_Canvas5",
                           "stylesFactory":function():void
                           {
                              this.backgroundColor = 16777215;
                              this.backgroundAlpha = 0.5;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":135,
                                 "width":100,
                                 "height":18,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnAddPop",
                                    "events":{"click":"__btnAddPop_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":66,
                                          "y":3,
                                          "styleName":"BtnFlower",
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnDelPop",
                                    "events":{"click":"__btnDelPop_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":83,
                                          "y":3,
                                          "styleName":"BtnEgg",
                                          "width":12,
                                          "height":12
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnSeek",
                                    "events":{"click":"__btnSeek_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":32,
                                          "y":3,
                                          "width":12,
                                          "height":12,
                                          "styleName":"BtnGlass"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"btnTrack",
                                    "events":{"click":"__btnTrack_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":49,
                                          "y":3,
                                          "width":12,
                                          "height":12,
                                          "styleName":"BtnSword"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"wanted",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711937;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":-2,
                                          "y":3,
                                          "text":"[Wanted]"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btnAchieveWatching",
                           "events":{"click":"__btnAchieveWatching_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":181,
                                 "styleName":"BtnStdRed",
                                 "width":80,
                                 "y":158
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"stoneSealWatching",
                           "events":{"click":"__stoneSealWatching_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "styleName":"BtnStdRed",
                                 "width":80,
                                 "y":158
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"Btn1",
                  "events":{"click":"__Btn1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "styleName":"BtnStdRed",
                        "width":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"BtnInviteGuild",
                  "events":{"click":"__BtnInviteGuild_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":97,
                        "styleName":"BtnStdRed",
                        "clickDelay":5000,
                        "width":80
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"Btn2",
                  "events":{"click":"__Btn2_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":180,
                        "styleName":"BtnStdGreen",
                        "width":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"Btn3",
                  "events":{"click":"__Btn3_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "15";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdBlue",
                        "width":50
                     };
                  }
               })]
            };
         }
      });
      
      public function CharactorInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 450;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CharactorInfoPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip1() : ItemSlotChaInfo
      {
         return this._1295475199equip1;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip3() : ItemSlotChaInfo
      {
         return this._1295475197equip3;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip5() : ItemSlotChaInfo
      {
         return this._1295475195equip5;
      }
      
      public function set equip4(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475196equip4;
         if(_loc2_ !== param1)
         {
            this._1295475196equip4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip4",_loc2_,param1));
         }
      }
      
      public function ___CharactorInfoPanel_Canvas4_show(param1:FlexEvent) : void
      {
         updateGodEquipt();
      }
      
      public function set equip5(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475195equip5;
         if(_loc2_ !== param1)
         {
            this._1295475195equip5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip5",_loc2_,param1));
         }
      }
      
      private function useTrack() : void
      {
         _core.remote.useTrack(_obj.data.name);
      }
      
      public function set equip6(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475194equip6;
         if(_loc2_ !== param1)
         {
            this._1295475194equip6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip6",_loc2_,param1));
         }
      }
      
      public function set equip3(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475197equip3;
         if(_loc2_ !== param1)
         {
            this._1295475197equip3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equip7() : ItemSlotChaInfo
      {
         return this._1295475193equip7;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip8() : ItemSlotChaInfo
      {
         return this._1295475192equip8;
      }
      
      public function set equip8(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475192equip8;
         if(_loc2_ !== param1)
         {
            this._1295475192equip8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip8",_loc2_,param1));
         }
      }
      
      public function set equip1(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475199equip1;
         if(_loc2_ !== param1)
         {
            this._1295475199equip1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip1",_loc2_,param1));
         }
      }
      
      public function set equip9(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475191equip9;
         if(_loc2_ !== param1)
         {
            this._1295475191equip9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip9",_loc2_,param1));
         }
      }
      
      public function set equip2(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475198equip2;
         if(_loc2_ !== param1)
         {
            this._1295475198equip2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equip6() : ItemSlotChaInfo
      {
         return this._1295475194equip6;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip9() : ItemSlotChaInfo
      {
         return this._1295475191equip9;
      }
      
      public function __tbn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      private function _CharactorInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHARACTORINFOPANEL_U[4];
         _loc1_ = Language.CHARACTORINFOPANEL_S[46];
         _loc1_ = Language.CHARACTORINFOPANEL_U[5];
         _loc1_ = Language.CHARACTORINFOPANEL_U[6];
         _loc1_ = Language.CHARACTORINFOPANEL_U[7];
         _loc1_ = Language.CHARACTORINFOPANEL_U[9];
         _loc1_ = Language.CHARACTORINFOPANEL_U[10];
         _loc1_ = Language.CHARACTORPANEL_U[35];
         _loc1_ = Language.CHARACTORPANEL_S[37];
         _loc1_ = Language.CHARACTORPANEL_U[36];
         _loc1_ = Language.CHARACTORPANEL_S[38];
         _loc1_ = Language.CHARACTORPANEL_U[37];
         _loc1_ = Language.CHARACTORPANEL_U[44];
         _loc1_ = Language.CHARACTORPANEL_U[45];
         _loc1_ = Language.CHARACTORINFOPANEL_S[50];
         _loc1_ = Language.CHARACTORINFOPANEL_S[17];
         _loc1_ = Language.CHARACTORINFOPANEL_S[18];
         _loc1_ = Language.CHARACTORINFOPANEL_S[19];
         _loc1_ = Language.CHARACTORINFOPANEL_S[20];
         _loc1_ = Language.CHARACTORINFOPANEL_S[21];
         _loc1_ = Language.CHARACTORINFOPANEL_S[22];
         _loc1_ = Language.CHARACTORINFOPANEL_S[23];
         _loc1_ = Language.CHARACTORINFOPANEL_S[24];
         _loc1_ = Language.CHARACTORINFOPANEL_S[25];
         _loc1_ = Language.CHARACTORINFOPANEL_S[26];
         _loc1_ = Language.CHARACTORINFOPANEL_S[27];
         _loc1_ = Language.CHARACTORINFOPANEL_S[28];
         _loc1_ = Language.CHARACTORINFOPANEL_S[45];
         _loc1_ = Language.CHARACTORINFOPANEL_S[51];
         _loc1_ = Language.CHARACTORINFOPANEL_S[53];
         _loc1_ = Language.CHARACTORINFOPANEL_S[54];
         _loc1_ = Language.CHARACTORPANEL_S[24];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.CHARACTORPANEL_S[26];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.CHARACTORPANEL_U[32];
         _loc1_ = ResManager.TOTEM_MAGIC_WEAPON;
         _loc1_ = Language.CHARACTORPANEL_U[33];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "1";
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "2";
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "3";
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "4";
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.CHARACTORPANEL_U[34] + "5";
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = this._tbnEnabled;
         _loc1_ = Language.CHARACTORINFOPANEL_S[33];
         _loc1_ = Language.CHARACTORINFOPANEL_S[34];
         _loc1_ = Language.CHARACTORINFOPANEL_S[35];
         _loc1_ = Language.CHARACTORINFOPANEL_S[36];
         _loc1_ = Language.CHARACTORINFOPANEL_S[37];
         _loc1_ = this._tbnEnabled;
         _loc1_ = Language.CHARACTORINFOPANEL_U[12];
         _loc1_ = Language.CHARACTORINFOPANEL_U[13];
         _loc1_ = this._tbnEnabled;
         _loc1_ = Language.CHARACTORINFOPANEL_U[0];
         _loc1_ = this._tbnEnabled;
         _loc1_ = Language.CHARACTORINFOPANEL_U[1];
         _loc1_ = Language.CHARACTORINFOPANEL_U[2];
         _loc1_ = this._tbnEnabled;
         _loc1_ = Language.CHARACTORINFOPANEL_U[3];
      }
      
      [Bindable(event="propertyChange")]
      public function get equip2() : ItemSlotChaInfo
      {
         return this._1295475198equip2;
      }
      
      public function __Btn1_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get equip4() : ItemSlotChaInfo
      {
         return this._1295475196equip4;
      }
      
      public function onData(param1:Object) : void
      {
         _obj = param1;
         if(_obj)
         {
            initView();
            visible = true;
            tab.selectedIndex = 0;
            tbn1.selected = true;
            tbn2.selected = false;
         }
         else
         {
            visible = false;
         }
      }
      
      private function set _tbnEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._1516339456_tbnEnabled;
         if(_loc2_ !== param1)
         {
            this._1516339456_tbnEnabled = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_tbnEnabled",_loc2_,param1));
         }
      }
      
      public function set equip7(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1295475193equip7;
         if(_loc2_ !== param1)
         {
            this._1295475193equip7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAchieveWatching() : BasicGlowButton
      {
         return this._344051672btnAchieveWatching;
      }
      
      private function infoClear() : void
      {
         if(!initialized)
         {
            return;
         }
         infoName.text = "";
         infoLevel.text = "";
         infoClass.text = "";
         var _loc1_:int = int(GamePredef.SLOT_SID_EQUIP[0]);
         while(_loc1_ <= 14)
         {
            this["equip" + _loc1_].clean();
            _loc1_++;
         }
         this["equip" + GamePredef.SLOT_SID_DRESS].clean();
         this["equip" + GamePredef.SLOT_SID_WING].clean();
      }
      
      public function set newNameLB(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._756552959newNameLB;
         if(_loc2_ !== param1)
         {
            this._756552959newNameLB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"newNameLB",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnTrack() : Button
      {
         return this._2098207823btnTrack;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip12() : ItemSlotChaInfo
      {
         return this._1505025455equip12;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip13() : ItemSlotChaInfo
      {
         return this._1505025454equip13;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip14() : ItemSlotChaInfo
      {
         return this._1505025453equip14;
      }
      
      public function set islot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1179373782islot1;
         if(_loc2_ !== param1)
         {
            this._1179373782islot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"islot1",_loc2_,param1));
         }
      }
      
      public function onShowChaInfo(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:Number = NaN;
         var _loc6_:String = null;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         if(param1)
         {
            equipActiveList = param1.equipActiveList;
            newNameLB.toolTip = "cid:" + param1.data.id;
            infoName.text = param1.data.name;
            _loc2_ = _core.basic.expToLevel(param1.data.exp);
            infoLevel.text = _loc2_.toString();
            infoClass.text = GamePredef.CLASS_LEVEL[param1.data.cl] + _core.getClassName(param1.data.classId);
            infoTitle.text = "";
            if(param1.data.t > 0)
            {
               _loc7_ = _core.data.getGameData(GamePredef.TBL_TITLE,param1.data.t);
               if(_loc7_)
               {
                  infoTitle.text = _loc7_.n;
               }
            }
            _loc3_ = int(param1.data.honor) >= 0 ? uint(param1.data.honor) : 0;
            pkTxt.text = _loc3_.toString();
            _loc4_ = int(param1.data.chival) >= 0 ? uint(param1.data.chival) : 0;
            chivalTxt.text = _loc4_.toString();
            tb_chival.toolTip = _core.basic.expToLevel(param1.data.exp) < 40 ? Language.CHARACTORINFOPANEL_S[42] : Language.CHARACTORINFOPANEL_S[43];
            pop.text = param1.data.pop;
            infoGuild.text = param1.guild;
            if(infoGuild.text == Language.CHARACTORINFOPANEL_S[39])
            {
               this.BtnInviteGuild.enabled = true;
            }
            else
            {
               this.BtnInviteGuild.enabled = false;
            }
            gmLabel.visible = param1.data.gmLevel > 0;
            wanted.visible = param1.data.honor < 0;
            _loc5_ = Math.floor(param1.data.imgCode) + 200000;
            charImg.source = ResManager.getIconUrl(_loc5_);
            charPmImg.visible = false;
            charNGImg.visible = false;
            if(Boolean(param1.data.expRe) && param1.data.expRe > 0)
            {
               _loc8_ = _core.basic.expReToLevelRe(param1.data.expRe);
               this.rbImg.visible = true;
               this.rbImg.source = ResManager["ICON_REBIRTH_" + param1.data.classId];
               this.rbImg.toolTip = this.rbImg.toolTip = (Language.PLAYER_RELEVEL_TITLE_U[_loc8_] ? Language.PLAYER_RELEVEL_TITLE_U[_loc8_] : Language.PLAYER_RELEVEL_TITLE_U[Language.PLAYER_RELEVEL_TITLE_U.length]) + "\n" + Language.GAMEPREDEF_S[53] + ":" + param1.data.expRe + "/" + GamePredef.PLAYER_RELEVEL_EXP[_loc8_] + "\n" + Language.CHARACTORPANEL_S[83];
            }
            else
            {
               this.rbImg.visible = false;
            }
            if(Boolean(param1.pmLevel) && Number(param1.pmLevel) > 0)
            {
               if(ResManager["PM_ZUAN" + param1.pmLevel])
               {
                  charPmImg.source = ResManager["PM_ZUAN" + param1.pmLevel];
                  charPmImg.visible = true;
               }
            }
            if(int(param1.newGrade) > 0)
            {
               if(ResManager["NEW_GRADE" + int(param1.newGrade)])
               {
                  charNGImg.visible = true;
                  charNGImg.source = ResManager["NEW_GRADE" + int(param1.newGrade)];
                  charNGImg.toolTip = newGradeLevel[param1.newGrade] + "的" + _core.getClassName(param1.data.classId);
               }
               else
               {
                  charNGImg.visible = false;
                  charNGImg.toolTip = "";
                  charNGImg.source = "";
               }
            }
            else
            {
               charNGImg.visible = false;
               charNGImg.toolTip = "";
               charNGImg.source = "";
            }
            if(param1.equiptList)
            {
               _loc9_ = int(GamePredef.SLOT_SID_EQUIP[0]);
               while(_loc9_ <= GamePredef.SLOT_SID_EQUIP[1])
               {
                  if(Boolean(param1.equiptList[_loc9_]) && (_loc9_ <= 14 || _loc9_ == GamePredef.SLOT_SID_DRESS || _loc9_ == GamePredef.SLOT_SID_WING))
                  {
                     this["equip" + _loc9_].type = param1.equiptList[_loc9_].type;
                     this["equip" + _loc9_].giid = param1.equiptList[_loc9_].itemId;
                     this["equip" + _loc9_].stackNum = param1.equiptList[_loc9_].stackNum;
                  }
                  _loc9_++;
               }
            }
            param1.ee = Number(param1.ee);
            param1.en = Number(param1.en);
            param1.ef = Boolean(param1.ef);
            mc.gotoAndStop(1 + param1.ee);
            maskMc.gotoAndStop(1 + param1.en);
            maxMc.visible = param1.ef;
            elemUIC.toolTip = Language.CHARACTORINFOPANEL_S[3] + GamePredef.ELEMENT_INFO[param1.ee];
            _loc6_ = Language.CHARACTORINFOPANEL_S[4];
            if(param1.en < 4)
            {
               _loc6_ = Language.CHARACTORINFOPANEL_S[4];
            }
            else if(param1.en >= 4 && param1.en < 9)
            {
               _loc6_ = Language.CHARACTORINFOPANEL_S[5];
            }
            else if(param1.en >= 9 && param1.en < 13)
            {
               _loc6_ = Language.CHARACTORINFOPANEL_S[6];
            }
            if(param1.ef)
            {
               _loc6_ = Language.CHARACTORINFOPANEL_S[44];
            }
            elemUIC.toolTip += Language.CHARACTORINFOPANEL_S[7] + _loc6_;
            if(Boolean(param1.makerActive) && param1.qualityType > 0)
            {
               makerActiveInfo.text = Language.CHARACTORPANEL_S[25] + "\n";
               if(param1.qualityType == 10)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "10%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "2%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "2%";
               }
               else if(param1.qualityType == 11)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "10%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "5%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "5%";
               }
               else if(param1.qualityType == 15)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "16%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "8%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "8%";
               }
               else if(param1.qualityType == 16)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "30%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "15%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "15%";
               }
               else if(param1.qualityType == 20)
               {
                  makerActiveInfo.text += Language.GAMEPREDEF_S[348] + "40%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[349] + "20%\n";
                  makerActiveInfo.text += Language.GAMEPREDEF_S[350] + "20%";
               }
               makerActiveInfo.visible = true;
            }
            else
            {
               makerActiveInfo.visible = false;
            }
            if(param1.starType > 0)
            {
               starActiveInfo.text = Language.CHARACTORPANEL_S[27] + "\n";
               if(param1.starType == 8)
               {
                  starActiveInfo.text += Language.GAMEPREDEF_S[348] + "10%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[349] + "5%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[350] + "5%";
               }
               else if(param1.starType == 9)
               {
                  starActiveInfo.text += Language.GAMEPREDEF_S[348] + "20%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[349] + "10%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[350] + "10%";
               }
               else if(param1.starType == 10)
               {
                  starActiveInfo.text += Language.GAMEPREDEF_S[348] + "30%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[349] + "15%\n";
                  starActiveInfo.text += Language.GAMEPREDEF_S[350] + "15%";
               }
               starActiveInfo.visible = true;
            }
            else
            {
               starActiveInfo.visible = false;
            }
         }
         else
         {
            visible = false;
            _core.sysMidNote(Language.CHARACTORINFOPANEL_S[8]);
         }
      }
      
      public function set btnAchieveWatching(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._344051672btnAchieveWatching;
         if(_loc2_ !== param1)
         {
            this._344051672btnAchieveWatching = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAchieveWatching",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get elemUIC() : UIComponent
      {
         return this._1662853568elemUIC;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoName() : RoundedLabel
      {
         return this._177753177infoName;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip11() : ItemSlotChaInfo
      {
         return this._1505025456equip11;
      }
      
      public function set islot4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1179373779islot4;
         if(_loc2_ !== param1)
         {
            this._1179373779islot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"islot4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoTitle() : RoundedLabel
      {
         return this._1221167690infoTitle;
      }
      
      public function set chivalTxt(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._189045043chivalTxt;
         if(_loc2_ !== param1)
         {
            this._189045043chivalTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chivalTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equip10() : ItemSlotChaInfo
      {
         return this._1505025457equip10;
      }
      
      [Bindable(event="propertyChange")]
      public function get pop() : RoundedLabel
      {
         return this._111185pop;
      }
      
      public function set islot5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1179373778islot5;
         if(_loc2_ !== param1)
         {
            this._1179373778islot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"islot5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get islotMain() : ItemSlot
      {
         return this._1890927552islotMain;
      }
      
      [Bindable(event="propertyChange")]
      public function get equip21() : ItemSlotChaInfo
      {
         return this._1505025425equip21;
      }
      
      public function refreshLater() : void
      {
         setTimeout(initView,500);
      }
      
      public function set islot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1179373781islot2;
         if(_loc2_ !== param1)
         {
            this._1179373781islot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"islot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tbn2() : BasicGlowButton
      {
         return this._3553394tbn2;
      }
      
      public function set islot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1179373780islot3;
         if(_loc2_ !== param1)
         {
            this._1179373780islot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"islot3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get equip22() : ItemSlotChaInfo
      {
         return this._1505025424equip22;
      }
      
      [Bindable(event="propertyChange")]
      public function get pkTxt() : RoundedLabel
      {
         return this._106706549pkTxt;
      }
      
      public function set makerActiveInfo(param1:TextArea) : void
      {
         var _loc2_:Object = this._808946632makerActiveInfo;
         if(_loc2_ !== param1)
         {
            this._808946632makerActiveInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"makerActiveInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tbn1() : BasicGlowButton
      {
         return this._3553393tbn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get makerActiveInfo() : TextArea
      {
         return this._808946632makerActiveInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get charImg() : Image
      {
         return this._739034253charImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get BtnInviteGuild() : BasicDelayButton
      {
         return this._1520845170BtnInviteGuild;
      }
      
      public function __BtnInviteGuild_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __btnAchieveWatching_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set infoTitle(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1221167690infoTitle;
         if(_loc2_ !== param1)
         {
            this._1221167690infoTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoTitle",_loc2_,param1));
         }
      }
      
      public function __btnSeek_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set btnTrack(param1:Button) : void
      {
         var _loc2_:Object = this._2098207823btnTrack;
         if(_loc2_ !== param1)
         {
            this._2098207823btnTrack = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnTrack",_loc2_,param1));
         }
      }
      
      private function useSeek() : void
      {
         _core.remote.useSeek(_obj.data.name);
      }
      
      public function __Btn3_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function clickHandler(param1:Event) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:* = undefined;
         var _loc10_:String = null;
         var _loc11_:* = undefined;
         var _loc12_:InputPanel = null;
         var _loc13_:InputPanel = null;
         var _loc2_:Button = Button(param1.currentTarget);
         switch(_loc2_.id)
         {
            case "BtnInviteGuild":
               _loc3_ = int(infoLevel.text);
               if(_core.player.guild == null)
               {
                  Alert.show(Language.INVITEGUILD_S[0],Language.INVITEGUILD_S[1],Alert.OK);
               }
               else if(_loc3_ < 30)
               {
                  Alert.show(Language.CHARACTORINFOPANEL_U[11],"",Alert.OK);
               }
               else
               {
                  _loc9_ = _obj.data.name;
                  _loc10_ = LinkEncode.encode(GamePredef.TBL_CHARACTOR,_cid,_loc9_);
                  _loc11_ = Language.INVITEGUILD_S[2].replace("{targetPlayer}",_loc10_);
                  _core.sysMidNote(_loc11_);
                  _core.remote.inviteToMyGuild(_cid);
               }
               break;
            case "btnAchieveWatching":
               _loc4_ = _core.view.getUI(ViewManager.PANEL_ACHIEVE_WATCHING);
               if(_loc4_)
               {
                  _loc4_.updateViewByData(_obj.achLog,{},_obj.totalAchPoint,_obj.data.name);
               }
               break;
            case "Btn3":
               _core.remote.groupInvite(_cid);
               break;
            case "Btn2":
               ChatPanelUtil.createChatPanel(_cid);
               break;
            case "Btn1":
               _core.addFriend(_obj.data.name);
               break;
            case "btnAddPop":
               _loc5_ = _core.hasFlowerNum();
               if(_loc5_ > 0)
               {
                  _loc12_ = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
                  _loc12_.showInputNum(Language.CHARACTORINFOPANEL_S[9],"",useFlower,1,1,_loc5_);
               }
               else
               {
                  _core.sysMidNote(Language.CHARACTORINFOPANEL_S[10]);
               }
               break;
            case "btnDelPop":
               _loc6_ = _core.hasEggNum();
               if(_loc6_ > 0)
               {
                  _loc13_ = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
                  _loc13_.showInputNum(Language.CHARACTORINFOPANEL_S[11],"",useEgg,1,1,_loc6_);
               }
               else
               {
                  _core.sysMidNote(Language.CHARACTORINFOPANEL_S[12]);
               }
               break;
            case "btnSeek":
               _loc7_ = _core.hasSeekNum();
               if(_loc7_ > 0)
               {
                  useSeek();
               }
               else
               {
                  _core.sysMidNote(Language.CHARACTORINFOPANEL_S[13]);
               }
               break;
            case "btnTrack":
               _loc8_ = _core.hasTrackNum();
               if(_loc8_ > 0)
               {
                  useTrack();
               }
               else
               {
                  _core.sysMidNote(Language.CHARACTORINFOPANEL_S[14]);
               }
               break;
            case "stoneSealWatching":
               _loc4_ = _core.view.getUI(ViewManager.PANEL_STONE_SEAL);
               if(!_loc4_ || !_obj || !_obj.sealStone)
               {
                  _core.sysMidNote(Language.CHARACTORINFOPANEL_S[55]);
                  return;
               }
               _loc4_.onGetWatchData(_obj.sealStone);
         }
      }
      
      public function set equip13(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1505025454equip13;
         if(_loc2_ !== param1)
         {
            this._1505025454equip13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip13",_loc2_,param1));
         }
      }
      
      public function set equip10(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1505025457equip10;
         if(_loc2_ !== param1)
         {
            this._1505025457equip10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip10",_loc2_,param1));
         }
      }
      
      public function set equip11(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1505025456equip11;
         if(_loc2_ !== param1)
         {
            this._1505025456equip11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip11",_loc2_,param1));
         }
      }
      
      public function set equip12(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1505025455equip12;
         if(_loc2_ !== param1)
         {
            this._1505025455equip12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip12",_loc2_,param1));
         }
      }
      
      public function set elemUIC(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1662853568elemUIC;
         if(_loc2_ !== param1)
         {
            this._1662853568elemUIC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"elemUIC",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get wanted() : Label
      {
         return this._795125073wanted;
      }
      
      public function set pop(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._111185pop;
         if(_loc2_ !== param1)
         {
            this._111185pop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pop",_loc2_,param1));
         }
      }
      
      public function set infoName(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._177753177infoName;
         if(_loc2_ !== param1)
         {
            this._177753177infoName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoName",_loc2_,param1));
         }
      }
      
      public function set equip14(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1505025453equip14;
         if(_loc2_ !== param1)
         {
            this._1505025453equip14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip14",_loc2_,param1));
         }
      }
      
      public function set islotMain(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1890927552islotMain;
         if(_loc2_ !== param1)
         {
            this._1890927552islotMain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"islotMain",_loc2_,param1));
         }
      }
      
      private function useFlower(param1:int) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         if(_core.hasFlowerNum() >= param1)
         {
            _core.remote.addPopNum(_obj.data.name,param1);
            _obj.data.pop = Number(_obj.data.pop) + param1;
            onShowChaInfo(_obj);
         }
         else
         {
            _core.sysMidNote(Language.CHARACTORINFOPANEL_S[16]);
         }
      }
      
      public function set infoClass(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1205539178infoClass;
         if(_loc2_ !== param1)
         {
            this._1205539178infoClass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoClass",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get starActiveInfo() : TextArea
      {
         return this._1295447866starActiveInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get charPmImg() : Image
      {
         return this._1548752592charPmImg;
      }
      
      public function set btnAddPop(param1:Button) : void
      {
         var _loc2_:Object = this._63121260btnAddPop;
         if(_loc2_ !== param1)
         {
            this._63121260btnAddPop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAddPop",_loc2_,param1));
         }
      }
      
      public function set equip21(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1505025425equip21;
         if(_loc2_ !== param1)
         {
            this._1505025425equip21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip21",_loc2_,param1));
         }
      }
      
      public function set equip22(param1:ItemSlotChaInfo) : void
      {
         var _loc2_:Object = this._1505025424equip22;
         if(_loc2_ !== param1)
         {
            this._1505025424equip22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equip22",_loc2_,param1));
         }
      }
      
      public function set tbn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3553393tbn1;
         if(_loc2_ !== param1)
         {
            this._3553393tbn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tbn1",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(!visible)
         {
            infoClear();
         }
      }
      
      public function set rbImg(param1:Image) : void
      {
         var _loc2_:Object = this._108274547rbImg;
         if(_loc2_ !== param1)
         {
            this._108274547rbImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rbImg",_loc2_,param1));
         }
      }
      
      public function set Btn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2081141Btn1;
         if(_loc2_ !== param1)
         {
            this._2081141Btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Btn1",_loc2_,param1));
         }
      }
      
      public function set Btn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2081142Btn2;
         if(_loc2_ !== param1)
         {
            this._2081142Btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Btn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stoneSealWatching() : BasicGlowButton
      {
         return this._224866005stoneSealWatching;
      }
      
      public function set Btn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2081143Btn3;
         if(_loc2_ !== param1)
         {
            this._2081143Btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"Btn3",_loc2_,param1));
         }
      }
      
      public function __btnDelPop_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set infoLevel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1213662070infoLevel;
         if(_loc2_ !== param1)
         {
            this._1213662070infoLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnSeek() : Button
      {
         return this._206189300btnSeek;
      }
      
      [Bindable(event="propertyChange")]
      public function get tb_chival() : BasicTxtButton
      {
         return this._1132481262tb_chival;
      }
      
      public function set pkTxt(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._106706549pkTxt;
         if(_loc2_ !== param1)
         {
            this._106706549pkTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pkTxt",_loc2_,param1));
         }
      }
      
      private function useEgg(param1:int) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         if(_core.hasEggNum() >= param1)
         {
            _core.remote.delPopNum(_obj.data.name,param1);
            _obj.data.pop -= param1;
            onShowChaInfo(_obj);
         }
         else
         {
            _core.sysMidNote(Language.CHARACTORINFOPANEL_S[15]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get newNameLB() : BasicTxtButton
      {
         return this._756552959newNameLB;
      }
      
      public function set tbn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._3553394tbn2;
         if(_loc2_ !== param1)
         {
            this._3553394tbn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tbn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _tbnEnabled() : Boolean
      {
         return this._1516339456_tbnEnabled;
      }
      
      public function __btnAddPop_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function updateGodEquipt() : void
      {
         if(_obj.equiptList[15] != null)
         {
            islotMain.giid = _obj.equiptList[15].itemId;
            islotMain.type = _obj.equiptList[15].type;
            islotMain.stackNum = _obj.equiptList[15].stackNum;
            islotMain.slotData = _obj.equiptList[15];
         }
         else
         {
            islotMain.clean();
         }
         var _loc1_:int = 1;
         var _loc2_:int = 16;
         while(_loc2_ < 21)
         {
            if(_obj.equiptList[_loc2_] != null)
            {
               this["islot" + _loc1_].giid = _obj.equiptList[_loc2_].itemId;
               this["islot" + _loc1_].type = _obj.equiptList[_loc2_].type;
               this["islot" + _loc1_].stackNum = _obj.equiptList[_loc2_].stackNum;
               this["islot" + _loc1_].slotData = _obj.equiptList[_loc2_];
            }
            else
            {
               this["islot" + _loc1_].clean();
            }
            _loc1_++;
            _loc2_++;
         }
      }
      
      private function addElement() : void
      {
         if(!mc)
         {
            mc = new (element as Class)();
            elemUIC.addChild(mc);
            maskMc = MovieClip(mc.getChildByName("maskMC"));
            maxMc = MovieClip(mc.getChildByName("maxMc"));
            mc.gotoAndStop(1);
            maskMc.gotoAndStop(1);
            maxMc.visible = false;
         }
      }
      
      public function set charImg(param1:Image) : void
      {
         var _loc2_:Object = this._739034253charImg;
         if(_loc2_ !== param1)
         {
            this._739034253charImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get islot1() : ItemSlot
      {
         return this._1179373782islot1;
      }
      
      public function set BtnInviteGuild(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1520845170BtnInviteGuild;
         if(_loc2_ !== param1)
         {
            this._1520845170BtnInviteGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"BtnInviteGuild",_loc2_,param1));
         }
      }
      
      private function _CharactorInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTitleCanvas1.text = param1;
         },"_CharactorInfoPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_Canvas1.label = param1;
         },"_CharactorInfoPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            newNameLB.label = param1;
         },"newNameLB.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton2.label = param1;
         },"_CharactorInfoPanel_BasicTxtButton2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton3.label = param1;
         },"_CharactorInfoPanel_BasicTxtButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton4.label = param1;
         },"_CharactorInfoPanel_BasicTxtButton4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton5.label = param1;
         },"_CharactorInfoPanel_BasicTxtButton5.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton6.label = param1;
         },"_CharactorInfoPanel_BasicTxtButton6.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton6.toolTip = param1;
         },"_CharactorInfoPanel_BasicTxtButton6.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton7.label = param1;
         },"_CharactorInfoPanel_BasicTxtButton7.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_BasicTxtButton7.toolTip = param1;
         },"_CharactorInfoPanel_BasicTxtButton7.toolTip");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tb_chival.label = param1;
         },"tb_chival.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tbn1.label = param1;
         },"tbn1.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tbn2.label = param1;
         },"tbn2.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_Canvas3.label = param1;
         },"_CharactorInfoPanel_Canvas3.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip1.text = param1;
         },"equip1.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip2.text = param1;
         },"equip2.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip3.text = param1;
         },"equip3.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip4.text = param1;
         },"equip4.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip5.text = param1;
         },"equip5.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip6.text = param1;
         },"equip6.text");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip7.text = param1;
         },"equip7.text");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip8.text = param1;
         },"equip8.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip9.text = param1;
         },"equip9.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip10.text = param1;
         },"equip10.text");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip11.text = param1;
         },"equip11.text");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip12.text = param1;
         },"equip12.text");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip13.text = param1;
         },"equip13.text");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip14.text = param1;
         },"equip14.text");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[53];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip21.text = param1;
         },"equip21.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[54];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            equip22.text = param1;
         },"equip22.text");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            makerActiveInfo.toolTip = param1;
         },"makerActiveInfo.toolTip");
         result[31] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            makerActiveInfo.filters = param1;
         },"makerActiveInfo.filters");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_S[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            starActiveInfo.toolTip = param1;
         },"starActiveInfo.toolTip");
         result[33] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            starActiveInfo.filters = param1;
         },"starActiveInfo.filters");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CharactorInfoPanel_Canvas4.label = param1;
         },"_CharactorInfoPanel_Canvas4.label");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.TOTEM_MAGIC_WEAPON;
         },function(param1:Object):void
         {
            _CharactorInfoPanel_Image1.source = param1;
         },"_CharactorInfoPanel_Image1.source");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            islotMain.text = param1;
         },"islotMain.text");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            islotMain.acceptType = param1;
         },"islotMain.acceptType");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[34] + "1";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            islot1.text = param1;
         },"islot1.text");
         result[39] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            islot1.acceptType = param1;
         },"islot1.acceptType");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[34] + "2";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            islot2.text = param1;
         },"islot2.text");
         result[41] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            islot2.acceptType = param1;
         },"islot2.acceptType");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[34] + "3";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            islot3.text = param1;
         },"islot3.text");
         result[43] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            islot3.acceptType = param1;
         },"islot3.acceptType");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[34] + "4";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            islot4.text = param1;
         },"islot4.text");
         result[45] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            islot4.acceptType = param1;
         },"islot4.acceptType");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORPANEL_U[34] + "5";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            islot5.text = param1;
         },"islot5.text");
         result[47] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            islot5.acceptType = param1;
         },"islot5.acceptType");
         result[48] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._tbnEnabled;
         },function(param1:Boolean):void
         {
            _CharactorInfoPanel_Canvas5.visible = param1;
         },"_CharactorInfoPanel_Canvas5.visible");
         result[49] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAddPop.toolTip = param1;
         },"btnAddPop.toolTip");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnDelPop.toolTip = param1;
         },"btnDelPop.toolTip");
         result[51] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnSeek.toolTip = param1;
         },"btnSeek.toolTip");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnTrack.toolTip = param1;
         },"btnTrack.toolTip");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            wanted.toolTip = param1;
         },"wanted.toolTip");
         result[54] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._tbnEnabled;
         },function(param1:Boolean):void
         {
            btnAchieveWatching.enabled = param1;
         },"btnAchieveWatching.enabled");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAchieveWatching.label = param1;
         },"btnAchieveWatching.label");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            stoneSealWatching.label = param1;
         },"stoneSealWatching.label");
         result[57] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._tbnEnabled;
         },function(param1:Boolean):void
         {
            Btn1.enabled = param1;
         },"Btn1.enabled");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            Btn1.label = param1;
         },"Btn1.label");
         result[59] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._tbnEnabled;
         },function(param1:Boolean):void
         {
            BtnInviteGuild.enabled = param1;
         },"BtnInviteGuild.enabled");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            BtnInviteGuild.label = param1;
         },"BtnInviteGuild.label");
         result[61] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            Btn2.label = param1;
         },"Btn2.label");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._tbnEnabled;
         },function(param1:Boolean):void
         {
            Btn3.enabled = param1;
         },"Btn3.enabled");
         result[63] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            Btn3.label = param1;
         },"Btn3.label");
         result[64] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get islot5() : ItemSlot
      {
         return this._1179373778islot5;
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
      public function get islot2() : ItemSlot
      {
         return this._1179373781islot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get islot4() : ItemSlot
      {
         return this._1179373779islot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get chivalTxt() : RoundedLabel
      {
         return this._189045043chivalTxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get islot3() : ItemSlot
      {
         return this._1179373780islot3;
      }
      
      private function tabBtnClick(param1:int) : void
      {
         tab.selectedIndex = param1;
         this.tbn1.selected = false;
         this.tbn2.selected = false;
         this["tbn" + (param1 + 1)].selected = true;
      }
      
      public function enableUI() : void
      {
         this._tbnEnabled = true;
      }
      
      public function __tbn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      public function __Btn2_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function useTransport(param1:int) : void
      {
         _core.remote.useTransport(param1,false);
      }
      
      public function set wanted(param1:Label) : void
      {
         var _loc2_:Object = this._795125073wanted;
         if(_loc2_ !== param1)
         {
            this._795125073wanted = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"wanted",_loc2_,param1));
         }
      }
      
      public function set charNGImg(param1:Image) : void
      {
         var _loc2_:Object = this._1545773492charNGImg;
         if(_loc2_ !== param1)
         {
            this._1545773492charNGImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charNGImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoClass() : RoundedLabel
      {
         return this._1205539178infoClass;
      }
      
      public function set gmLabel(param1:Label) : void
      {
         var _loc2_:Object = this._117350830gmLabel;
         if(_loc2_ !== param1)
         {
            this._117350830gmLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gmLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAddPop() : Button
      {
         return this._63121260btnAddPop;
      }
      
      [Bindable(event="propertyChange")]
      public function get rbImg() : Image
      {
         return this._108274547rbImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get Btn1() : BasicGlowButton
      {
         return this._2081141Btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get Btn2() : BasicGlowButton
      {
         return this._2081142Btn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get Btn3() : BasicGlowButton
      {
         return this._2081143Btn3;
      }
      
      public function disableUI() : void
      {
         this._tbnEnabled = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLevel() : RoundedLabel
      {
         return this._1213662070infoLevel;
      }
      
      public function set btnDelPop(param1:Button) : void
      {
         var _loc2_:Object = this._150170562btnDelPop;
         if(_loc2_ !== param1)
         {
            this._150170562btnDelPop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnDelPop",_loc2_,param1));
         }
      }
      
      public function __btnTrack_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set starActiveInfo(param1:TextArea) : void
      {
         var _loc2_:Object = this._1295447866starActiveInfo;
         if(_loc2_ !== param1)
         {
            this._1295447866starActiveInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starActiveInfo",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CharactorInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CharactorInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CharactorInfoPanelWatcherSetupUtil");
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
      
      public function set charPmImg(param1:Image) : void
      {
         var _loc2_:Object = this._1548752592charPmImg;
         if(_loc2_ !== param1)
         {
            this._1548752592charPmImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charPmImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      public function set stoneSealWatching(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._224866005stoneSealWatching;
         if(_loc2_ !== param1)
         {
            this._224866005stoneSealWatching = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stoneSealWatching",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gmLabel() : Label
      {
         return this._117350830gmLabel;
      }
      
      public function showChaInfo(param1:Number) : void
      {
         _cid = param1;
         if(_cid > 0)
         {
            _core.remote.call("showChaInfo",new Responder(onData),_cid);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get charNGImg() : Image
      {
         return this._1545773492charNGImg;
      }
      
      public function __stoneSealWatching_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnDelPop() : Button
      {
         return this._150170562btnDelPop;
      }
      
      public function set infoGuild(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1209508837infoGuild;
         if(_loc2_ !== param1)
         {
            this._1209508837infoGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoGuild",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         addElement();
         onShowChaInfo(_obj);
      }
      
      public function __rbImg_click(param1:MouseEvent) : void
      {
         showRebirthDetail();
      }
      
      public function showRebirthDetail() : void
      {
         var _loc4_:Alert = null;
         var _loc1_:String = "<font color=\'#fffa7a\' >" + Language.CHARACTORPANEL_S[82] + "      " + Language.GAMEPREDEF_S[53] + "</font>\n<font color=\'#ffffff\'>";
         var _loc2_:* = int(Language.PLAYER_RELEVEL_TITLE_U.length - 1);
         while(_loc2_ > 0)
         {
            _loc1_ += Language.PLAYER_RELEVEL_TITLE_U[_loc2_];
            if(Language.PLAYER_RELEVEL_TITLE_U[_loc2_].toString().length > 2)
            {
               _loc1_ += "    ";
            }
            else
            {
               _loc1_ += "      ";
            }
            _loc1_ += GamePredef.PLAYER_RELEVEL_EXP[_loc2_ - 1] + "\n";
            _loc2_--;
         }
         _loc1_ += "</font>";
         var _loc3_:String = _loc1_.replace(/<font(.*?)>/g,"");
         _loc3_ = _loc3_.replace(/<\/font>/g,"");
         _loc4_ = Alert.show(_loc3_,"",Alert.YES,null,null);
         var _loc5_:IUITextField = _loc4_.mx_internal::alertForm.mx_internal::textField;
         _loc5_.htmlText = _loc1_;
         _loc5_.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function set btnSeek(param1:Button) : void
      {
         var _loc2_:Object = this._206189300btnSeek;
         if(_loc2_ !== param1)
         {
            this._206189300btnSeek = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnSeek",_loc2_,param1));
         }
      }
      
      public function set tb_chival(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1132481262tb_chival;
         if(_loc2_ !== param1)
         {
            this._1132481262tb_chival = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tb_chival",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoGuild() : RoundedLabel
      {
         return this._1209508837infoGuild;
      }
   }
}

