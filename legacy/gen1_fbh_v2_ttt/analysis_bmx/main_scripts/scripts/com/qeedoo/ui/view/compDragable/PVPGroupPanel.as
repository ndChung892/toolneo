package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.CharactorShowCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.controls.TextInput;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.formatters.DateFormatter;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PVPGroupPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const PVP_GROUP_LEADER:Class = PVPGroupPanel_PVP_GROUP_LEADER;
      
      private var _memberId2:Number = -1;
      
      private var _isStart:Boolean = false;
      
      private var _110256292text1:BasicTxtButton;
      
      private var _966299094nameLabel3:BasicTxtButton;
      
      public var _PVPGroupPanel_Label11:Label;
      
      public var _PVPGroupPanel_Label13:Label;
      
      public var _PVPGroupPanel_Label15:Label;
      
      public var _PVPGroupPanel_Label16:Label;
      
      public var _PVPGroupPanel_Label17:Label;
      
      public var _PVPGroupPanel_Label19:Label;
      
      public var _PVPGroupPanel_Label18:Label;
      
      private var _1215933662passText:TextInput;
      
      private var _1052640327mianCan:Canvas;
      
      private var _timer:Timer = new Timer(1000);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1660738733leaveBtn2:BasicGlowButton;
      
      private var _alert:Alert;
      
      private var _3560141time:Label;
      
      private var _1563243619levelLabel3:BasicTxtButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _1495073604myPoint:Label;
      
      private var _1468352367_point:Number = 0;
      
      private var _110256293text2:BasicTxtButton;
      
      private var _1164631201limitBtn:DelayButton;
      
      private var _339356173showBtn2:BasicGlowButton;
      
      private var _2096007741targetShow1:CharactorShowCanvas;
      
      private var pvpLeader:MovieClip;
      
      private var _966299095nameLabel2:BasicTxtButton;
      
      private var _state1:Boolean = true;
      
      private var _1779038604ns_minLevel:NumericStepper;
      
      private var _state3:Boolean = false;
      
      private var _2053377414battleInfo:IntroText;
      
      private var _state2:Boolean = false;
      
      private var _91052262_left:String = "00:00";
      
      private var _pass:String = "";
      
      private var _934978833ready2:Label;
      
      private var _91227403_rank:Number = 0;
      
      private var _1563243618levelLabel2:BasicTxtButton;
      
      private var _1482970924myClass:Label;
      
      private var _1060223401myName:Label;
      
      private var _2096007739targetShow3:CharactorShowCanvas;
      
      public var _PVPGroupPanel_Button2:Button;
      
      private var _110256294text3:BasicTxtButton;
      
      private var _leaderId:Number = -1;
      
      private var _2096007740targetShow2:CharactorShowCanvas;
      
      private var _1660738734leaveBtn3:BasicGlowButton;
      
      private var _1783151733_roomId:Number = -1;
      
      public var _PVPGroupPanel_Label4:Label;
      
      public var _PVPGroupPanel_Label7:Label;
      
      public var _PVPGroupPanel_Label9:Label;
      
      public var _PVPGroupPanel_Label5:Label;
      
      private var _1191054357leaderFlag:UIComponent;
      
      private var _966299096nameLabel1:BasicTxtButton;
      
      private var _934534946reqBtn:DelayButton;
      
      private var _986490709_resultStr:String = "";
      
      mx_internal var _watchers:Array = [];
      
      private var _minLevel:Number = 0;
      
      private var _timeGo:Number = 0;
      
      private var _1563243617levelLabel1:BasicTxtButton;
      
      private var _339356172showBtn3:BasicGlowButton;
      
      private var _347234980backImg:Image;
      
      private var _934978832ready3:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1060104200myRank:Label;
      
      private var _339356174showBtn1:BasicGlowButton;
      
      private var _maxLevel:Number = 0;
      
      private var _1491093816myLevel:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Image,
               "id":"backImg",
               "events":{"creationComplete":"__backImg_creationComplete"},
               "propertiesFactory":function():Object
               {
                  return {
                     "width":1050,
                     "height":665
                  };
               }
            }),new UIComponentDescriptor({
               "type":Canvas,
               "id":"mianCan",
               "events":{"creationComplete":"__mianCan_creationComplete"},
               "stylesFactory":function():void
               {
                  this.borderColor = 0;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "width":900,
                     "height":570,
                     "verticalScrollPolicy":"off",
                     "horizontalScrollPolicy":"off",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":SimpleCanvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":273,
                              "y":341,
                              "width":130,
                              "height":145,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":CharactorShowCanvas,
                                 "id":"targetShow1",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":60,
                                       "y":115,
                                       "height":20,
                                       "width":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":UIComponent,
                                 "id":"leaderFlag",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":45,
                                       "y":-10,
                                       "width":30,
                                       "height":30,
                                       "visible":true
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"text1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":70,
                                       "y":3,
                                       "width":50
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"levelLabel1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":100,
                                       "y":3,
                                       "width":30
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"nameLabel1",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":70,
                                       "y":-15,
                                       "width":65
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"showBtn1",
                                 "events":{"click":"__showBtn1_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":32,
                                       "y":130,
                                       "styleName":"HorizontalTab",
                                       "width":66,
                                       "visible":false
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":SimpleCanvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":108,
                              "y":247,
                              "width":130,
                              "height":145,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":CharactorShowCanvas,
                                 "id":"targetShow2",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":60,
                                       "y":115,
                                       "height":20,
                                       "width":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"text2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":70,
                                       "y":3,
                                       "width":50
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"levelLabel2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":100,
                                       "y":3,
                                       "width":30
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"nameLabel2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":70,
                                       "y":-15,
                                       "width":65
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"showBtn2",
                                 "events":{"click":"__showBtn2_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":32,
                                       "y":130,
                                       "styleName":"HorizontalTab",
                                       "width":66,
                                       "visible":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"leaveBtn2",
                                 "events":{"click":"__leaveBtn2_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":32,
                                       "y":-42,
                                       "styleName":"HorizontalTab",
                                       "width":66,
                                       "visible":false
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":SimpleCanvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":423,
                              "y":247,
                              "width":130,
                              "height":145,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":CharactorShowCanvas,
                                 "id":"targetShow3",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":60,
                                       "y":115,
                                       "height":20,
                                       "width":20
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"text3",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":70,
                                       "y":3,
                                       "width":50
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"levelLabel3",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":100,
                                       "y":3,
                                       "width":30
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicTxtButton,
                                 "id":"nameLabel3",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 16777215;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":70,
                                       "y":-15,
                                       "width":65
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"showBtn3",
                                 "events":{"click":"__showBtn3_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":32,
                                       "y":130,
                                       "styleName":"HorizontalTab",
                                       "width":66,
                                       "visible":false
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":BasicGlowButton,
                                 "id":"leaveBtn3",
                                 "events":{"click":"__leaveBtn3_click"},
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":32,
                                       "y":-42,
                                       "styleName":"HorizontalTab",
                                       "width":66,
                                       "visible":false
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"ready3",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":456,
                              "y":165,
                              "width":60,
                              "height":24
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"ready2",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":195,
                              "y":165,
                              "width":60,
                              "height":24
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"time",
                        "stylesFactory":function():void
                        {
                           this.fontFamily = "Arial";
                           this.fontSize = 60;
                           this.color = 16777215;
                           this.fontWeight = "bold";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "visible":false,
                              "x":250.5,
                              "y":62,
                              "width":187.5,
                              "height":68
                           };
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "events":{"click":"___PVPGroupPanel_Button1_click"},
               "stylesFactory":function():void
               {
                  this.right = "52";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":480,
                     "styleName":"BtnWbQuit",
                     "height":50,
                     "width":50
                  };
               }
            }),new UIComponentDescriptor({
               "type":Canvas,
               "stylesFactory":function():void
               {
                  this.right = "10";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":85,
                     "width":200,
                     "height":200,
                     "styleName":"txtArea",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label4",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "y":8,
                              "styleName":"LabelTitle"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":HRule,
                        "stylesFactory":function():void
                        {
                           this.left = "3";
                           this.right = "3";
                           this.top = "32";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"height":5};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label5",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":35,
                              "y":45
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"myName",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":78,
                              "y":45,
                              "text":"Label",
                              "width":70
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label7",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":35,
                              "y":70
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"myLevel",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":78,
                              "y":70,
                              "text":"Label",
                              "width":70
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label9",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":35,
                              "y":95
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"myClass",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":78,
                              "y":95,
                              "text":"Label",
                              "width":70
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label11",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":35,
                              "y":120
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"myRank",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":88,
                              "y":120,
                              "width":70
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label13",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":35,
                              "y":145
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"myPoint",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":78,
                              "y":145,
                              "width":70
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":DelayButton,
                        "id":"reqBtn",
                        "events":{"click":"__reqBtn_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":35,
                              "y":168,
                              "styleName":"BtnStdRed",
                              "visible":false,
                              "clickDelay":10000
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":DelayButton,
                        "id":"batBtn",
                        "events":{"click":"__batBtn_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":118,
                              "y":168,
                              "styleName":"BtnStdRed",
                              "visible":false,
                              "clickDelay":1500,
                              "width":60
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
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":10,
                     "width":200,
                     "height":67,
                     "styleName":"txtArea",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label15",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":10,
                              "y":10,
                              "width":59,
                              "height":23
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label16",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":39,
                              "y":10,
                              "width":59,
                              "height":23
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label17",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":10,
                              "y":39,
                              "width":72
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":NumericStepper,
                        "id":"ns_maxLevel",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":137.5,
                              "y":35,
                              "stepSize":1,
                              "width":58,
                              "enabled":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":NumericStepper,
                        "id":"ns_minLevel",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":70.5,
                              "y":35,
                              "stepSize":1,
                              "value":0,
                              "width":59,
                              "enabled":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":DelayButton,
                        "id":"limitBtn",
                        "events":{"click":"__limitBtn_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":159.5,
                              "y":9,
                              "styleName":"BtnStdRed",
                              "clickDelay":3000,
                              "width":36
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":TextInput,
                        "id":"passText",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":106,
                              "y":10,
                              "width":57.5,
                              "maxChars":6,
                              "restrict":"0-9"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label18",
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":70.5,
                              "y":10,
                              "width":38,
                              "height":23
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
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":292,
                     "width":200,
                     "height":180,
                     "styleName":"txtArea",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Label,
                        "id":"_PVPGroupPanel_Label19",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "y":8,
                              "styleName":"LabelTitle"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":HRule,
                        "stylesFactory":function():void
                        {
                           this.left = "3";
                           this.right = "3";
                           this.top = "32";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"height":5};
                        }
                     }),new UIComponentDescriptor({
                        "type":IntroText,
                        "id":"battleInfo",
                        "stylesFactory":function():void
                        {
                           this.left = "10";
                           this.right = "10";
                           this.top = "45";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"height":125};
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "id":"_PVPGroupPanel_Button2",
               "events":{"click":"___PVPGroupPanel_Button2_click"},
               "stylesFactory":function():void
               {
                  this.right = "180";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":494,
                     "styleName":"BtnStdRed",
                     "visible":true,
                     "width":72
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "events":{"click":"___PVPGroupPanel_Button3_click"},
               "stylesFactory":function():void
               {
                  this.right = "110";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "y":482,
                     "width":40,
                     "height":45,
                     "styleName":"BtnBarBag"
                  };
               }
            })]};
         }
      });
      
      private var _1396206073batBtn:DelayButton;
      
      private var _739732038ns_maxLevel:NumericStepper;
      
      private var _memberId3:Number = -1;
      
      public function PVPGroupPanel()
      {
         super();
         mx_internal::_document = this;
         this.x = 0;
         this.y = 0;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___PVPGroupPanel_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PVPGroupPanel._watcherSetupUtil = param1;
      }
      
      private function _PVPGroupPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            text1.text = param1;
         },"text1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showBtn1.label = param1;
         },"showBtn1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            text2.text = param1;
         },"text2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showBtn2.label = param1;
         },"showBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            leaveBtn2.label = param1;
         },"leaveBtn2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHANGECOLORPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            text3.text = param1;
         },"text3.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETCANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            showBtn3.label = param1;
         },"showBtn3.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            leaveBtn3.label = param1;
         },"leaveBtn3.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ready3.text = param1;
         },"ready3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ready2.text = param1;
         },"ready2.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _left;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            time.text = param1;
         },"time.text");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _PVPGroupPanel_Label4.filters = param1;
         },"_PVPGroupPanel_Label4.filters");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label4.text = param1;
         },"_PVPGroupPanel_Label4.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label5.text = param1;
         },"_PVPGroupPanel_Label5.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label7.text = param1;
         },"_PVPGroupPanel_Label7.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label9.text = param1;
         },"_PVPGroupPanel_Label9.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label11.text = param1;
         },"_PVPGroupPanel_Label11.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _rank;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myRank.text = param1;
         },"myRank.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label13.text = param1;
         },"_PVPGroupPanel_Label13.text");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _point;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            myPoint.text = param1;
         },"myPoint.text");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqBtn.label = param1;
         },"reqBtn.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            batBtn.label = param1;
         },"batBtn.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label15.text = param1;
         },"_PVPGroupPanel_Label15.text");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _roomId;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label16.text = param1;
         },"_PVPGroupPanel_Label16.text");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label17.text = param1;
         },"_PVPGroupPanel_Label17.text");
         result[24] = binding;
         binding = new Binding(this,function():Number
         {
            return GamePredef.MAX_LEVEL;
         },function(param1:Number):void
         {
            ns_maxLevel.maximum = param1;
         },"ns_maxLevel.maximum");
         result[25] = binding;
         binding = new Binding(this,function():Number
         {
            return GamePredef.MAX_LEVEL;
         },function(param1:Number):void
         {
            ns_maxLevel.value = param1;
         },"ns_maxLevel.value");
         result[26] = binding;
         binding = new Binding(this,function():Number
         {
            return GamePredef.MAX_LEVEL;
         },function(param1:Number):void
         {
            ns_minLevel.maximum = param1;
         },"ns_minLevel.maximum");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            limitBtn.label = param1;
         },"limitBtn.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label18.text = param1;
         },"_PVPGroupPanel_Label18.text");
         result[29] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _PVPGroupPanel_Label19.filters = param1;
         },"_PVPGroupPanel_Label19.filters");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PVP_GROUP_P[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Label19.text = param1;
         },"_PVPGroupPanel_Label19.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _resultStr;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            battleInfo.htmlText = param1;
         },"battleInfo.htmlText");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PVPGroupPanel_Button2.label = param1;
         },"_PVPGroupPanel_Button2.label");
         result[33] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBtn1() : BasicGlowButton
      {
         return this._339356174showBtn1;
      }
      
      public function showResultAlert(param1:Object) : void
      {
         var str:String;
         var tf:IUITextField;
         var handler:Function = null;
         var obj:Object = param1;
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("leavePVPRoom",null);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.PVP_GROUP_P[21].toString().replace("{rank}",obj.rank).replace("{point}",obj.point);
         if(!obj.pvpPoint || Number(obj.pvpPoint) == 0)
         {
            str = Language.PVP_GROUP_P[24].toString().replace("{rank}",obj.rank);
         }
         _alert = Alert.show(str,null,Alert.YES,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      [Bindable(event="propertyChange")]
      public function get batBtn() : DelayButton
      {
         return this._1396206073batBtn;
      }
      
      private function _PVPGroupPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHANGECOLORPANEL_S[7];
         _loc1_ = Language.TARGETCANVAS_S[0];
         _loc1_ = Language.CHANGECOLORPANEL_S[7];
         _loc1_ = Language.TARGETCANVAS_S[0];
         _loc1_ = Language.PVP_GROUP_P[16];
         _loc1_ = Language.CHANGECOLORPANEL_S[7];
         _loc1_ = Language.TARGETCANVAS_S[0];
         _loc1_ = Language.PVP_GROUP_P[16];
         _loc1_ = Language.PVP_GROUP_P[2];
         _loc1_ = Language.PVP_GROUP_P[2];
         _loc1_ = _left;
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.PVP_GROUP_P[15];
         _loc1_ = Language.PVP_GROUP_P[3];
         _loc1_ = Language.PVP_GROUP_P[4];
         _loc1_ = Language.PVP_GROUP_P[5];
         _loc1_ = Language.PVP_GROUP_P[6];
         _loc1_ = _rank;
         _loc1_ = Language.PVP_GROUP_P[7];
         _loc1_ = _point;
         _loc1_ = Language.PVP_GROUP_P[8];
         _loc1_ = Language.PVP_GROUP_P[9];
         _loc1_ = Language.PVP_GROUP_P[10];
         _loc1_ = _roomId;
         _loc1_ = Language.PVP_GROUP_P[11];
         _loc1_ = GamePredef.MAX_LEVEL;
         _loc1_ = GamePredef.MAX_LEVEL;
         _loc1_ = GamePredef.MAX_LEVEL;
         _loc1_ = Language.PVP_GROUP_P[12];
         _loc1_ = Language.PVP_GROUP_P[13];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.PVP_GROUP_P[14];
         _loc1_ = _resultStr;
         _loc1_ = Language.MINIMAPCANVAS_U[18];
      }
      
      public function set batBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1396206073batBtn;
         if(_loc2_ !== param1)
         {
            this._1396206073batBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"batBtn",_loc2_,param1));
         }
      }
      
      private function showBattle() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_BATTLESET);
         _core.view.getUI(ViewManager.PANEL_BATTLESET).updateView();
      }
      
      private function set _rank(param1:Number) : void
      {
         var _loc2_:Object = this._91227403_rank;
         if(_loc2_ !== param1)
         {
            this._91227403_rank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_rank",_loc2_,param1));
         }
      }
      
      public function __mianCan_creationComplete(param1:FlexEvent) : void
      {
         setCanvasPosition();
      }
      
      private function _secToTime(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:String = null;
         if(param1)
         {
            _loc2_ = 0;
            _loc3_ = 0;
            _loc4_ = 0;
            _loc5_ = "00";
            _loc6_ = "00";
            _loc7_ = "00";
            if(param1 >= 3600)
            {
               _loc2_ = Math.floor(param1 / 3600);
               _loc3_ = Math.floor(param1 / 60) % 60;
               _loc4_ = param1 % 60;
            }
            else if(param1 >= 60)
            {
               _loc2_ = 0;
               _loc3_ = Math.floor(param1 / 60);
               _loc4_ = param1 % 60;
            }
            else if(param1 > 0)
            {
               _loc2_ = 0;
               _loc3_ = 0;
               _loc4_ = param1;
            }
            else
            {
               _loc2_ = 0;
               _loc3_ = 0;
               _loc4_ = 0;
            }
            if(_loc2_ > 0)
            {
               if(_loc2_ <= 9)
               {
                  _loc5_ = String(_loc2_);
               }
               else
               {
                  _loc5_ = String(_loc2_);
               }
            }
            if(_loc3_ >= 0)
            {
               if(_loc3_ <= 9)
               {
                  _loc6_ = "0" + _loc3_;
               }
               else
               {
                  _loc6_ = String(_loc3_);
               }
            }
            if(_loc4_ >= 0)
            {
               if(_loc4_ <= 9)
               {
                  _loc7_ = "0" + _loc4_;
               }
               else
               {
                  _loc7_ = String(_loc4_);
               }
            }
            if(_loc2_ == 0)
            {
               if(_loc4_ == 0 && _loc3_ == 0)
               {
                  _left = "00:00";
               }
               else
               {
                  _left = _loc6_ + ":" + _loc7_;
               }
            }
            else
            {
               _left = _loc5_ + ":" + _loc6_ + ":" + _loc7_;
            }
         }
         else
         {
            _left = "00:00";
         }
      }
      
      public function __showBtn2_click(param1:MouseEvent) : void
      {
         showInfo(2);
      }
      
      public function onLeftPVPGroup(param1:Object) : *
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
         if(_loc2_)
         {
            _loc2_.returnPVPRoom(param1);
         }
         this.visible = false;
      }
      
      public function onUpdateGroupLimit(param1:Number, param2:Object) : void
      {
         if(!param1 || !ToolKit.isEqual(param1,_roomId))
         {
            return;
         }
         if(param2.min)
         {
            _minLevel = Number(param2.min);
            ns_minLevel.value = _minLevel;
         }
         if(param2.max)
         {
            _maxLevel = Number(param2.max);
            ns_maxLevel.value = _maxLevel;
         }
      }
      
      private function setImgaePosition() : void
      {
         backImg.x = Math.floor((this.x + this.width) / 2 + -(backImg.width / 2));
         backImg.y = Math.floor((this.y + this.height) / 2 + -(backImg.height / 2));
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel1() : BasicTxtButton
      {
         return this._966299096nameLabel1;
      }
      
      public function onRefershMember(param1:Object) : void
      {
         var _loc2_:* = undefined;
         if(Boolean(param1) && Boolean(param1.memberList))
         {
            for each(_loc2_ in param1.memberList)
            {
               if(_loc2_)
               {
                  if(ToolKit.isEqual(_loc2_.cid,_core.player.id))
                  {
                     showPVPGroupPanel(param1);
                  }
               }
            }
         }
      }
      
      public function set leaderFlag(param1:UIComponent) : void
      {
         var _loc2_:Object = this._1191054357leaderFlag;
         if(_loc2_ !== param1)
         {
            this._1191054357leaderFlag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leaderFlag",_loc2_,param1));
         }
      }
      
      private function updateGroupLimit() : void
      {
         if(!ToolKit.isEqual(_leaderId,_core.player.id))
         {
            return;
         }
         if(ToolKit.isEqual(ns_maxLevel.value,_maxLevel) && ToolKit.isEqual(ns_minLevel.value,_minLevel))
         {
            ns_minLevel.value = _minLevel;
            ns_maxLevel.value = _maxLevel;
            return;
         }
         if(ToolKit.isBigThan(ns_minLevel.value,ns_maxLevel.value))
         {
            ns_minLevel.value = _minLevel;
            ns_maxLevel.value = _maxLevel;
            return;
         }
         _core.remote.call("updatePVPGroupLimit",null,ns_minLevel.value,ns_maxLevel.value);
      }
      
      [Bindable(event="propertyChange")]
      public function get leaderFlag() : UIComponent
      {
         return this._1191054357leaderFlag;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel2() : BasicTxtButton
      {
         return this._966299095nameLabel2;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel3() : BasicTxtButton
      {
         return this._966299094nameLabel3;
      }
      
      [Bindable(event="propertyChange")]
      public function get mianCan() : Canvas
      {
         return this._1052640327mianCan;
      }
      
      public function set nameLabel1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._966299096nameLabel1;
         if(_loc2_ !== param1)
         {
            this._966299096nameLabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel1",_loc2_,param1));
         }
      }
      
      public function __limitBtn_click(param1:MouseEvent) : void
      {
         updatePVPGroupPass();
      }
      
      public function ___PVPGroupPanel_Button3_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_BAG);
      }
      
      [Bindable(event="propertyChange")]
      public function get myName() : Label
      {
         return this._1060223401myName;
      }
      
      public function set myClass(param1:Label) : void
      {
         var _loc2_:Object = this._1482970924myClass;
         if(_loc2_ !== param1)
         {
            this._1482970924myClass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myClass",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel1() : BasicTxtButton
      {
         return this._1563243617levelLabel1;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel3() : BasicTxtButton
      {
         return this._1563243619levelLabel3;
      }
      
      public function setPoint(param1:Object) : *
      {
         _point = param1.point;
         _rank = param1.rank;
      }
      
      private function leaveGroupByLeader(param1:int) : void
      {
         var func:Function;
         var id:int = 0;
         var index:int = param1;
         switch(index)
         {
            case 2:
               id = _memberId2;
               break;
            case 3:
               id = _memberId3;
         }
         if(!id || id <= 0)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(Alert.YES == param1.detail)
            {
               _core.remote.call("PVPKickByLeader",null,id);
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         _alert = Alert.show(Language.PVP_GROUP_P[20] + this["nameLabel" + index].text + "?","",Alert.YES | Alert.NO,null,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelLabel2() : BasicTxtButton
      {
         return this._1563243618levelLabel2;
      }
      
      public function set nameLabel2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._966299095nameLabel2;
         if(_loc2_ !== param1)
         {
            this._966299095nameLabel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel2",_loc2_,param1));
         }
      }
      
      public function set nameLabel3(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._966299094nameLabel3;
         if(_loc2_ !== param1)
         {
            this._966299094nameLabel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel3",_loc2_,param1));
         }
      }
      
      public function set myLevel(param1:Label) : void
      {
         var _loc2_:Object = this._1491093816myLevel;
         if(_loc2_ !== param1)
         {
            this._1491093816myLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _roomId() : Number
      {
         return this._1783151733_roomId;
      }
      
      private function readyPVP() : void
      {
         if(ToolKit.isEqual(_core.player.id,_leaderId))
         {
            if(_state2 && _state3)
            {
               _core.remote.call("readyOrStartPVP",null);
            }
            else
            {
               _core.sysMidNote(Language.PVP_GROUP_P[18]);
            }
         }
         else if(_isStart)
         {
            _core.sysMidNote(Language.PVP_GROUP_P[19]);
         }
         else
         {
            _core.remote.call("readyOrStartPVP",null);
         }
      }
      
      public function set myPoint(param1:Label) : void
      {
         var _loc2_:Object = this._1495073604myPoint;
         if(_loc2_ !== param1)
         {
            this._1495073604myPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myPoint",_loc2_,param1));
         }
      }
      
      public function set mianCan(param1:Canvas) : void
      {
         var _loc2_:Object = this._1052640327mianCan;
         if(_loc2_ !== param1)
         {
            this._1052640327mianCan = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mianCan",_loc2_,param1));
         }
      }
      
      private function updatePVPGroupPass() : void
      {
         updateGroupLimit();
         if(!ToolKit.isEqual(_leaderId,_core.player.id))
         {
            return;
         }
         if(_pass != passText.text)
         {
            _core.remote.call("updatePVPGroupPass",null,passText.text);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _point() : Number
      {
         return this._1468352367_point;
      }
      
      private function leftPVPGroup() : void
      {
         var handler:Function = null;
         var str:String = null;
         var tf:IUITextField = null;
         if(_isStart)
         {
            _core.sysMidNote("匹配中不能退出房间，等匹配结束后再操作！");
         }
         else
         {
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("leftPVPGroup",new Responder(onLeftPVPGroup));
               }
            };
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            str = "Xác nhận rời phòng?";
            _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = str;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get limitBtn() : DelayButton
      {
         return this._1164631201limitBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get text1() : BasicTxtButton
      {
         return this._110256292text1;
      }
      
      [Bindable(event="propertyChange")]
      public function get text2() : BasicTxtButton
      {
         return this._110256293text2;
      }
      
      [Bindable(event="propertyChange")]
      public function get text3() : BasicTxtButton
      {
         return this._110256294text3;
      }
      
      public function onRefreshPVPPoint(param1:Object) : void
      {
         var _loc2_:* = ToolKit.minus(param1.score,param1.oldScore);
         var _loc3_:* = "";
         if(param1.isWinner)
         {
            _loc3_ = Language.PVP_GROUP_P[22].toString().replace("{point}",_loc2_).replace("{time}",getNowDate());
         }
         else
         {
            _loc3_ = Language.PVP_GROUP_P[23].toString().replace("{point}",_loc2_).replace("{time}",getNowDate());
         }
         _point = param1.score;
         _resultStr = _loc3_ + _resultStr;
         onPushPVPQueue(2);
      }
      
      private function set _resultStr(param1:String) : void
      {
         var _loc2_:Object = this._986490709_resultStr;
         if(_loc2_ !== param1)
         {
            this._986490709_resultStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_resultStr",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leaveBtn2() : BasicGlowButton
      {
         return this._1660738733leaveBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get leaveBtn3() : BasicGlowButton
      {
         return this._1660738734leaveBtn3;
      }
      
      public function set myName(param1:Label) : void
      {
         var _loc2_:Object = this._1060223401myName;
         if(_loc2_ !== param1)
         {
            this._1060223401myName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myName",_loc2_,param1));
         }
      }
      
      public function set backImg(param1:Image) : void
      {
         var _loc2_:Object = this._347234980backImg;
         if(_loc2_ !== param1)
         {
            this._347234980backImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backImg",_loc2_,param1));
         }
      }
      
      public function set levelLabel1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1563243617levelLabel1;
         if(_loc2_ !== param1)
         {
            this._1563243617levelLabel1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel1",_loc2_,param1));
         }
      }
      
      public function set levelLabel2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1563243618levelLabel2;
         if(_loc2_ !== param1)
         {
            this._1563243618levelLabel2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel2",_loc2_,param1));
         }
      }
      
      public function onPushPVPQueue(param1:Number) : void
      {
         if(ToolKit.isEqual(param1,2))
         {
            if(_timer.running)
            {
               _timer.removeEventListener(TimerEvent.TIMER,addWaitTime);
               _timer.stop();
            }
            _left = "00:00";
            _isStart = true;
            time.visible = true;
            _timeGo = 0;
            _timer.addEventListener(TimerEvent.TIMER,addWaitTime);
            _timer.start();
            if(ToolKit.isEqual(_leaderId,_core.player.id))
            {
               if(param1)
               {
                  batBtn.label = Language.PVP_GROUP_P[17];
               }
            }
         }
         else
         {
            _isStart = false;
            time.visible = false;
            _timeGo = 0;
            if(_timer.running)
            {
               _timer.removeEventListener(TimerEvent.TIMER,addWaitTime);
               _timer.stop();
            }
            if(ToolKit.isEqual(_leaderId,_core.player.id))
            {
               batBtn.label = Language.PVP_GROUP_P[9];
            }
         }
      }
      
      public function onUpdatePVPGroupPass(param1:Number, param2:String) : void
      {
         if(!param1 || !ToolKit.isEqual(param1,_roomId))
         {
            return;
         }
         if(!param2 || param2 == "")
         {
            passText.text = "";
         }
         else
         {
            passText.text = param2;
         }
         _pass = passText.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get time() : Label
      {
         return this._3560141time;
      }
      
      public function set levelLabel3(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1563243619levelLabel3;
         if(_loc2_ !== param1)
         {
            this._1563243619levelLabel3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelLabel3",_loc2_,param1));
         }
      }
      
      public function __reqBtn_click(param1:MouseEvent) : void
      {
         quickInvite();
      }
      
      public function __leaveBtn3_click(param1:MouseEvent) : void
      {
         leaveGroupByLeader(3);
      }
      
      public function __showBtn1_click(param1:MouseEvent) : void
      {
         showInfo(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get passText() : TextInput
      {
         return this._1215933662passText;
      }
      
      [Bindable(event="propertyChange")]
      private function get _left() : String
      {
         return this._91052262_left;
      }
      
      private function set _roomId(param1:Number) : void
      {
         var _loc2_:Object = this._1783151733_roomId;
         if(_loc2_ !== param1)
         {
            this._1783151733_roomId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_roomId",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reqBtn() : DelayButton
      {
         return this._934534946reqBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get ready2() : Label
      {
         return this._934978833ready2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ready3() : Label
      {
         return this._934978832ready3;
      }
      
      public function ___PVPGroupPanel_Button2_click(param1:MouseEvent) : void
      {
         showBattle();
      }
      
      [Bindable(event="propertyChange")]
      private function get _rank() : Number
      {
         return this._91227403_rank;
      }
      
      public function set battleInfo(param1:IntroText) : void
      {
         var _loc2_:Object = this._2053377414battleInfo;
         if(_loc2_ !== param1)
         {
            this._2053377414battleInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"battleInfo",_loc2_,param1));
         }
      }
      
      public function ___PVPGroupPanel_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function updateView(param1:Number, param2:Number) : void
      {
         var _loc4_:String = null;
         var _loc5_:Object = null;
         var _loc3_:Object = _core.getCharactor(param1);
         if(_loc3_)
         {
            _loc4_ = ResManager.getResUrl(_loc3_.resCode);
            this["targetShow" + param2].url = _loc4_;
            _loc5_ = GameData.d[GamePredef.TBL_CLASS][_loc3_.classId];
            if(_loc5_)
            {
               if(_loc3_.gender == 0)
               {
                  this["targetShow" + param2].charResCode = Number(_loc5_.resCodeMale);
               }
               else
               {
                  this["targetShow" + param2].charResCode = Number(_loc5_.resCodeFemale);
               }
            }
            else
            {
               this["targetShow" + param2].charResCode = _loc3_.resCode;
            }
            this["targetShow" + param2].color = _loc3_.colorCode ? _loc3_.colorCode : 0;
            if(_loc3_.wingResCode)
            {
               this["targetShow" + param2].wingResCode = _loc3_.wingResCode;
            }
            if(_loc3_.wp)
            {
               this["targetShow" + param2].weaponResCode = _loc3_.wp;
            }
            if(Boolean(_loc3_.fairy) && Boolean(_loc3_.fairy.resCode))
            {
               this["targetShow" + param2].fairyResCode = _loc3_.fairy.resCode;
            }
         }
      }
      
      private function init() : void
      {
         backImg.source = ResManager.hash(ResManager.getIconUrlNoHash(3130090000057));
         pvpLeader = new (PVP_GROUP_LEADER as Class)();
         leaderFlag.addChild(pvpLeader);
         if(this.mianCan)
         {
            setCanvasPosition();
         }
      }
      
      public function set ns_minLevel(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1779038604ns_minLevel;
         if(_loc2_ !== param1)
         {
            this._1779038604ns_minLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_minLevel",_loc2_,param1));
         }
      }
      
      private function set _point(param1:Number) : void
      {
         var _loc2_:Object = this._1468352367_point;
         if(_loc2_ !== param1)
         {
            this._1468352367_point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_point",_loc2_,param1));
         }
      }
      
      public function __batBtn_click(param1:MouseEvent) : void
      {
         readyPVP();
      }
      
      [Bindable(event="propertyChange")]
      public function get myClass() : Label
      {
         return this._1482970924myClass;
      }
      
      [Bindable(event="propertyChange")]
      public function get myLevel() : Label
      {
         return this._1491093816myLevel;
      }
      
      public function set limitBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._1164631201limitBtn;
         if(_loc2_ !== param1)
         {
            this._1164631201limitBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitBtn",_loc2_,param1));
         }
      }
      
      public function set text1(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._110256292text1;
         if(_loc2_ !== param1)
         {
            this._110256292text1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text1",_loc2_,param1));
         }
      }
      
      public function set text2(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._110256293text2;
         if(_loc2_ !== param1)
         {
            this._110256293text2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text2",_loc2_,param1));
         }
      }
      
      private function showInfo(param1:int) : void
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case 1:
               _loc2_ = _leaderId;
               break;
            case 2:
               _loc2_ = _memberId2;
               break;
            case 3:
               _loc2_ = _memberId3;
         }
         if(Boolean(_loc2_) && _loc2_ > 0)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(_loc2_);
         }
      }
      
      public function set text3(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._110256294text3;
         if(_loc2_ !== param1)
         {
            this._110256294text3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myPoint() : Label
      {
         return this._1495073604myPoint;
      }
      
      [Bindable(event="propertyChange")]
      private function get _resultStr() : String
      {
         return this._986490709_resultStr;
      }
      
      private function quickInvite() : void
      {
         _core.remote.quickInvite();
      }
      
      public function set leaveBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1660738733leaveBtn2;
         if(_loc2_ !== param1)
         {
            this._1660738733leaveBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leaveBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get backImg() : Image
      {
         return this._347234980backImg;
      }
      
      public function __showBtn3_click(param1:MouseEvent) : void
      {
         showInfo(3);
      }
      
      public function onReadyOrCancel(param1:Object) : void
      {
         if(param1.state)
         {
            this["ready" + param1.index].visible = true;
            this["_state" + param1.index] = true;
         }
         else
         {
            this["ready" + param1.index].visible = false;
            this["_state" + param1.index] = false;
         }
         if(ToolKit.isEqual(param1.cid,_core.player.id))
         {
            if(param1.state)
            {
               batBtn.label = Language.PVP_GROUP_P[1];
            }
            else
            {
               batBtn.label = Language.PVP_GROUP_P[0];
            }
         }
      }
      
      public function set leaveBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1660738734leaveBtn3;
         if(_loc2_ !== param1)
         {
            this._1660738734leaveBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leaveBtn3",_loc2_,param1));
         }
      }
      
      private function getNowDate() : String
      {
         var _loc1_:DateFormatter = new DateFormatter();
         _loc1_.formatString = "HH:NN:SS";
         return _loc1_.format(new Date());
      }
      
      public function set ns_maxLevel(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._739732038ns_maxLevel;
         if(_loc2_ !== param1)
         {
            this._739732038ns_maxLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns_maxLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get battleInfo() : IntroText
      {
         return this._2053377414battleInfo;
      }
      
      public function set targetShow2(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._2096007740targetShow2;
         if(_loc2_ !== param1)
         {
            this._2096007740targetShow2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetShow2",_loc2_,param1));
         }
      }
      
      public function set targetShow3(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._2096007739targetShow3;
         if(_loc2_ !== param1)
         {
            this._2096007739targetShow3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetShow3",_loc2_,param1));
         }
      }
      
      public function set targetShow1(param1:CharactorShowCanvas) : void
      {
         var _loc2_:Object = this._2096007741targetShow1;
         if(_loc2_ !== param1)
         {
            this._2096007741targetShow1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetShow1",_loc2_,param1));
         }
      }
      
      public function __leaveBtn2_click(param1:MouseEvent) : void
      {
         leaveGroupByLeader(2);
      }
      
      public function showPVPGroupPanel(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         var _loc4_:* = undefined;
         if(param1)
         {
            _isStart = false;
            time.visible = false;
            _timeGo = 0;
            onPushPVPQueue(1);
            reqBtn.visible = false;
            batBtn.visible = false;
            batBtn.label = Language.PVP_GROUP_P[0];
            limitBtn.visible = false;
            _loc2_ = 1;
            while(_loc2_ <= 3)
            {
               this["targetShow" + _loc2_].url = null;
               this["targetShow" + _loc2_].charResCode = null;
               this["targetShow" + _loc2_].color = null;
               this["targetShow" + _loc2_].wingResCode = null;
               this["targetShow" + _loc2_].weaponResCode = null;
               this["targetShow" + _loc2_].fairyResCode = null;
               this["nameLabel" + _loc2_].visible = false;
               this["levelLabel" + _loc2_].visible = false;
               this["text" + _loc2_].visible = false;
               if(ToolKit.isBigThan(_loc2_,1))
               {
                  this["ready" + _loc2_].visible = false;
               }
               _loc2_++;
            }
            _roomId = param1.id;
            _memberId2 = -1;
            _memberId3 = -1;
            _leaderId = param1.leaderId;
            passText.text = param1.pass ? param1.pass : "";
            _pass = passText.text;
            _loc3_ = 1;
            while(_loc3_ <= 3)
            {
               if(Boolean(param1.memberList[_loc3_]) && Boolean(param1.memberList[_loc3_].cid))
               {
                  if(_loc3_ != 1)
                  {
                     this["_memberId" + _loc3_] = param1.memberList[_loc3_].cid;
                  }
                  if(_core.player.id != param1.memberList[_loc3_].cid)
                  {
                     this["showBtn" + _loc3_].visible = true;
                  }
                  else
                  {
                     this["showBtn" + _loc3_].visible = false;
                  }
                  if(_core.player.id == _leaderId && _loc3_ != 1)
                  {
                     this["leaveBtn" + _loc3_].visible = true;
                  }
                  else if(_loc3_ != 1)
                  {
                     this["leaveBtn" + _loc3_].visible = false;
                  }
                  updateView(param1.memberList[_loc3_].cid,Number(_loc3_));
                  this["nameLabel" + _loc3_].text = param1.memberList[_loc3_].name;
                  this["levelLabel" + _loc3_].text = param1.memberList[_loc3_].level;
                  this["_state" + _loc3_] = param1.memberList[_loc3_].state;
                  if(ToolKit.isBigThan(_loc3_,1) && Boolean(param1.memberList[_loc3_].state))
                  {
                     this["ready" + _loc3_].visible = true;
                     if(ToolKit.isEqual(param1.memberList[_loc3_].cid,_core.player.id))
                     {
                        batBtn.label = Language.PVP_GROUP_P[1];
                     }
                  }
                  if(ToolKit.isEqual(param1.memberList[_loc3_].cid,_core.player.id))
                  {
                     myName.text = String(_core.player.name);
                     myLevel.text = String(_core.player.level);
                     myClass.text = String(GameData.d[GamePredef.TBL_CLASS][_core.player.classId]["name"]);
                     ns_maxLevel.value = Number(param1["limit"]["lev"]["max"]);
                     _maxLevel = ns_maxLevel.value;
                     ns_minLevel.value = Number(param1["limit"]["lev"]["min"]);
                     _minLevel = ns_minLevel.value;
                     if(ToolKit.isEqual(_leaderId,_core.player.id))
                     {
                        ns_maxLevel.enabled = true;
                        ns_minLevel.enabled = true;
                        limitBtn.visible = true;
                        reqBtn.visible = true;
                        reqBtn.enabled = true;
                        batBtn.visible = true;
                        batBtn.enabled = true;
                        batBtn.label = Language.PVP_GROUP_P[9];
                     }
                     else
                     {
                        ns_maxLevel.enabled = false;
                        ns_minLevel.enabled = false;
                        batBtn.visible = true;
                        batBtn.enabled = true;
                     }
                  }
                  this["nameLabel" + _loc3_].visible = true;
                  this["levelLabel" + _loc3_].visible = true;
                  this["text" + _loc3_].visible = true;
               }
               else
               {
                  if(this["showBtn" + _loc3_])
                  {
                     this["showBtn" + _loc3_].visible = false;
                  }
                  if(this["leaveBtn" + _loc3_])
                  {
                     this["leaveBtn" + _loc3_].visible = false;
                  }
               }
               _loc3_++;
            }
            _loc4_ = _core.view.getUI(ViewManager.PANEL_PVP_ROOM_LIST);
            if((Boolean(_loc4_)) && Boolean(_loc4_.visible))
            {
               _loc4_.visible = false;
            }
            _loc4_ = _core.view.getUI(ViewManager.MAIN_GROUP);
            if(_loc4_)
            {
               _loc4_.visible = false;
            }
            _loc4_ = _core.view.getUI(ViewManager.SHADE_PVP);
            if((Boolean(_loc4_)) && !_loc4_.visible)
            {
               _loc4_.visible = true;
            }
            this.visible = true;
         }
         else
         {
            this.visible = false;
         }
      }
      
      private function setCanvasPosition() : void
      {
         mianCan.x = Math.floor((this.x + this.width) / 2 + -(mianCan.width / 2));
         mianCan.y = Math.floor((this.y + this.height) / 2 + -(mianCan.height / 2));
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_minLevel() : NumericStepper
      {
         return this._1779038604ns_minLevel;
      }
      
      public function onRefreshPVPListRank(param1:Number) : void
      {
         _rank = ToolKit.add(param1,1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PVPGroupPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PVPGroupPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PVPGroupPanelWatcherSetupUtil");
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
      
      public function set time(param1:Label) : void
      {
         var _loc2_:Object = this._3560141time;
         if(_loc2_ !== param1)
         {
            this._3560141time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"time",_loc2_,param1));
         }
      }
      
      private function addWaitTime(param1:Event) : void
      {
         ++_timeGo;
         _secToTime(_timeGo);
      }
      
      public function __backImg_creationComplete(param1:FlexEvent) : void
      {
         setImgaePosition();
      }
      
      public function ___PVPGroupPanel_Button1_click(param1:MouseEvent) : void
      {
         leftPVPGroup();
      }
      
      public function set passText(param1:TextInput) : void
      {
         var _loc2_:Object = this._1215933662passText;
         if(_loc2_ !== param1)
         {
            this._1215933662passText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"passText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns_maxLevel() : NumericStepper
      {
         return this._739732038ns_maxLevel;
      }
      
      public function set reqBtn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._934534946reqBtn;
         if(_loc2_ !== param1)
         {
            this._934534946reqBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetShow2() : CharactorShowCanvas
      {
         return this._2096007740targetShow2;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetShow1() : CharactorShowCanvas
      {
         return this._2096007741targetShow1;
      }
      
      private function set _left(param1:String) : void
      {
         var _loc2_:Object = this._91052262_left;
         if(_loc2_ !== param1)
         {
            this._91052262_left = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_left",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetShow3() : CharactorShowCanvas
      {
         return this._2096007739targetShow3;
      }
      
      public function set ready2(param1:Label) : void
      {
         var _loc2_:Object = this._934978833ready2;
         if(_loc2_ !== param1)
         {
            this._934978833ready2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ready2",_loc2_,param1));
         }
      }
      
      public function set showBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._339356174showBtn1;
         if(_loc2_ !== param1)
         {
            this._339356174showBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBtn1",_loc2_,param1));
         }
      }
      
      public function set showBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._339356173showBtn2;
         if(_loc2_ !== param1)
         {
            this._339356173showBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBtn2",_loc2_,param1));
         }
      }
      
      public function set ready3(param1:Label) : void
      {
         var _loc2_:Object = this._934978832ready3;
         if(_loc2_ !== param1)
         {
            this._934978832ready3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ready3",_loc2_,param1));
         }
      }
      
      public function set showBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._339356172showBtn3;
         if(_loc2_ !== param1)
         {
            this._339356172showBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBtn3",_loc2_,param1));
         }
      }
      
      public function set myRank(param1:Label) : void
      {
         var _loc2_:Object = this._1060104200myRank;
         if(_loc2_ !== param1)
         {
            this._1060104200myRank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myRank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showBtn2() : BasicGlowButton
      {
         return this._339356173showBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBtn3() : BasicGlowButton
      {
         return this._339356172showBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get myRank() : Label
      {
         return this._1060104200myRank;
      }
   }
}

