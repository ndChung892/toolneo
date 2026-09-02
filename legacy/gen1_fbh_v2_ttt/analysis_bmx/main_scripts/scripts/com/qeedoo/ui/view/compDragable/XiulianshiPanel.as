package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ArrayQueue;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class XiulianshiPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1272061793flagat:Label;
      
      private var _timerList:* = [];
      
      private var _98445ci3:Image;
      
      private var _plist:Array = [];
      
      private var _99408di5:Image;
      
      private var _99500dl4:Label;
      
      private var _plistAdv:Array = [];
      
      private var _98537cl2:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _98788ct5:Label;
      
      private var _99191db5:BasicDelayButton;
      
      private var _99499dl3:Label;
      
      private var _98229cb4:BasicDelayButton;
      
      private var _1404994418awdBtn:BasicDelayButton;
      
      private var _alert:Alert;
      
      private var _98446ci4:Image;
      
      private var _99501dl5:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _98230cb5:BasicDelayButton;
      
      public var _XiulianshiPanel_BasicDelayButton1:BasicDelayButton;
      
      private var _98538cl3:Label;
      
      private var _99404di1:Image;
      
      public var _XiulianshiPanel_IntroText1:IntroText;
      
      private var _107332log:LinkTextArea;
      
      public var _XiulianshiPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _98447ci5:Image;
      
      public var _XiulianshiPanel_Label1:Label;
      
      private var cid:* = 0;
      
      public var _XiulianshiPanel_Label3:Label;
      
      public var _XiulianshiPanel_Label4:Label;
      
      private var _98784ct1:Label;
      
      private var _98539cl4:Label;
      
      private var _99405di2:Image;
      
      private var _1085375639roomLevel:String = "";
      
      private var _550778329canvas1:Canvas;
      
      public var _XiulianshiPanel_Label15:Label;
      
      private var _98540cl5:Label;
      
      private var _timerDTList:* = [];
      
      private var _98785ct2:Label;
      
      private var _98443ci1:Image;
      
      private var _98226cb1:BasicDelayButton;
      
      public var _XiulianshiPanel_Image7:Image;
      
      public var _XiulianshiPanel_Image1:Image;
      
      private var _99406di3:Image;
      
      private var _98786ct3:Label;
      
      private var _98444ci2:Image;
      
      private var _98227cb2:BasicDelayButton;
      
      private var _99497dl1:Label;
      
      private var _99749dt5:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _99407di4:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _98536cl1:Label;
      
      private var _98787ct4:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _farmLog:ArrayQueue = new ArrayQueue(50);
      
      private var _99498dl2:Label;
      
      private var _98228cb3:BasicDelayButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":730,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_XiulianshiPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "mouseEnabled":false,
                        "percentHeight":100,
                        "percentWidth":100,
                        "x":1,
                        "y":32,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_XiulianshiPanel_Label1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontWeight = "bold";
                              this.top = "7";
                              this.horizontalCenter = "0";
                              this.fontSize = 14;
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "30";
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":404,
                                 "height":208,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_XiulianshiPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"flagat",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "right";
                                       this.right = "13";
                                       this.top = "7";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"text":""};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_XiulianshiPanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "left";
                                       this.top = "7";
                                       this.left = "13";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"text":"Phòng Tu Luyện Cao Cấp"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_XiulianshiPanel_BasicDelayButton1",
                                    "events":{"click":"___XiulianshiPanel_BasicDelayButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "5";
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":2000,
                                          "styleName":"BtnNormalBlue",
                                          "width":120,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_XiulianshiPanel_Label4",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.bottom = "8";
                                       this.left = "15";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"width":250};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-125";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct2",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-62";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct3",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct4",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "61";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"ct5",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "122";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cl1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-122";
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":105,
                                          "text":"",
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cl2",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-62";
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":105,
                                          "text":"",
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cl3",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "3";
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":105,
                                          "text":"",
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cl4",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "63";
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":105,
                                          "text":"",
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"cl5",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "123";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":105,
                                          "text":"",
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ci1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":63,
                                          "y":58,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ci2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":124,
                                          "y":58,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ci3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":187,
                                          "y":58,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ci4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":246,
                                          "y":58,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"ci5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":307,
                                          "y":58,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"cb1",
                                    "events":{"click":"__cb1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-122";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":2000,
                                          "styleName":"BtnNormalBlue",
                                          "y":133,
                                          "label":"Tu Luyện",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"cb2",
                                    "events":{"click":"__cb2_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-59";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":2000,
                                          "styleName":"BtnNormalBlue",
                                          "y":133,
                                          "label":"Tu Luyện",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"cb3",
                                    "events":{"click":"__cb3_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "3";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":2000,
                                          "styleName":"BtnNormalBlue",
                                          "y":133,
                                          "label":"Tu Luyện",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"cb4",
                                    "events":{"click":"__cb4_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "63";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":2000,
                                          "styleName":"BtnNormalBlue",
                                          "y":133,
                                          "label":"Tu Luyện",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"cb5",
                                    "events":{"click":"__cb5_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "124";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":2000,
                                          "styleName":"BtnNormalBlue",
                                          "y":133,
                                          "label":"Tu Luyện",
                                          "enabled":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.top = "250";
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":404,
                                 "height":208,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_XiulianshiPanel_Image7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "x":0,
                                          "y":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_XiulianshiPanel_Label15",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.textAlign = "left";
                                       this.top = "7";
                                       this.left = "13";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"text":"Phòng Tu Luyện Công Cộng"};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"di1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":40,
                                          "y":69,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"di2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":113,
                                          "y":69,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"di3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":186,
                                          "y":69,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"di4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":259,
                                          "y":69,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"di5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":332,
                                          "y":69,
                                          "width":34,
                                          "height":34
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"dl1",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.horizontalCenter = "-147";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":112,
                                          "text":"",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"dl2",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.horizontalCenter = "-72";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":112,
                                          "text":"",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"dl3",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.horizontalCenter = "2";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":112,
                                          "text":"",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"dl4",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.horizontalCenter = "75";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":112,
                                          "text":"",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"dl5",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.horizontalCenter = "148";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":112,
                                          "text":"",
                                          "width":70
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"dt5",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                       this.horizontalCenter = "148";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":39,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"db5",
                                    "events":{"click":"__db5_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "147";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "clickDelay":2000,
                                          "styleName":"BtnNormalBlue",
                                          "y":142,
                                          "label":"Tu Luyện",
                                          "enabled":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "424";
                              this.top = "30";
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":428,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"canvas1",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "5";
                                       this.left = "5";
                                       this.right = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":250,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":LinkTextArea,
                                             "id":"log",
                                             "events":{"updateComplete":"__log_updateComplete"},
                                             "stylesFactory":function():void
                                             {
                                                this.borderStyle = "solid";
                                                this.textAlign = "left";
                                                this.borderThickness = 1;
                                                this.borderColor = 198926;
                                                this.backgroundAlpha = 0.3;
                                                this.backgroundColor = 0;
                                                this.color = 16774324;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "mouseEnabled":false,
                                                   "editable":false,
                                                   "selectable":false,
                                                   "percentWidth":100,
                                                   "percentHeight":100
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "260";
                                       this.left = "5";
                                       this.right = "5";
                                       this.bottom = "5";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":IntroText,
                                          "id":"_XiulianshiPanel_IntroText1",
                                          "events":{"mouseDown":"___XiulianshiPanel_IntroText1_mouseDown"},
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "40";
                                             this.top = "5";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "percentWidth":100,
                                                "x":0
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":BasicDelayButton,
                                          "id":"awdBtn",
                                          "events":{"click":"__awdBtn_click"},
                                          "stylesFactory":function():void
                                          {
                                             this.bottom = "5";
                                             this.horizontalCenter = "0";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "enabled":false,
                                                "clickDelay":2000,
                                                "styleName":"BtnNormalBlue",
                                                "width":120,
                                                "height":23
                                             };
                                          }
                                       })]};
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
      
      public function XiulianshiPanel()
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
         XiulianshiPanel._watcherSetupUtil = param1;
      }
      
      public function __cb2_click(param1:MouseEvent) : void
      {
         enterAdvRoom(2);
      }
      
      public function ___XiulianshiPanel_IntroText1_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function enterAdvRoom(param1:int) : void
      {
         var func:Function = null;
         var num:int = param1;
         var p:Object = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF);
         if(p._farmPetData == undefined)
         {
            _alert = Alert.show(Language.XLS_PANEL[25]);
            return;
         }
         if(this["cb" + num].label == Language.XLS_PANEL[10])
         {
            _alert = Alert.show(Language.XLS_PANEL[26]);
         }
         if(this["cb" + num].label == Language.XLS_PANEL[7])
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("endHMTXLRoom",null,2);
               }
            };
            _alert = Alert.show(Language.XLS_PANEL[15],null,Alert.YES | Alert.NO,null,func);
         }
         if(this["cb" + num].label == Language.XLS_PANEL[11])
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("enterAdvRoom",null,num);
               }
            };
            _alert = Alert.show(Language.XLS_PANEL[13].replace("{x}",Math.round(_core.player.level * 2)),null,Alert.YES | Alert.NO,null,func);
         }
         if(this["cb" + num].label == Language.XLS_PANEL[9])
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("enterAdvRoom",null,num);
               }
            };
            _alert = Alert.show(Language.XLS_PANEL[16],null,Alert.YES | Alert.NO,null,func);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get di1() : Image
      {
         return this._99404di1;
      }
      
      [Bindable(event="propertyChange")]
      public function get di3() : Image
      {
         return this._99406di3;
      }
      
      [Bindable(event="propertyChange")]
      public function get di4() : Image
      {
         return this._99407di4;
      }
      
      [Bindable(event="propertyChange")]
      public function get di5() : Image
      {
         return this._99408di5;
      }
      
      [Bindable(event="propertyChange")]
      public function get di2() : Image
      {
         return this._99405di2;
      }
      
      public function __awdBtn_click(param1:MouseEvent) : void
      {
         getXiuLianAward();
      }
      
      public function onHMTXLSData(param1:*) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         if(param1)
         {
            resetHMTUi();
            _loc2_ = param1.pubdata;
            if(_loc2_)
            {
               if(_loc2_.hasOwnProperty("plist"))
               {
                  _loc3_ = "";
                  if(param1.hasOwnProperty("nmldata"))
                  {
                     _loc3_ = param1.nmldata.name;
                  }
                  _plist = [];
                  _loc4_ = 1;
                  for(_loc5_ in _loc2_.plist)
                  {
                     _loc6_ = _loc2_.plist[_loc5_];
                     if(_loc6_.name != _loc3_)
                     {
                        _plist[_loc4_] = _loc6_;
                        this["di" + _loc4_].source = ResManager.getIconUrl(_loc6_.iconCode);
                        this["dl" + _loc4_].text = _loc6_.name;
                        if(++_loc4_ >= 5)
                        {
                           break;
                        }
                     }
                  }
               }
               if(_loc2_.hasOwnProperty("plistadv"))
               {
                  _plistAdv = [];
                  for(_loc5_ in _loc2_.plistadv)
                  {
                     if(_loc5_ != 1 && _loc5_ != 2 && _loc5_ != 3 && _loc5_ != 4 && _loc5_ != 5)
                     {
                        break;
                     }
                     _loc6_ = _loc2_.plistadv[_loc5_];
                     _plistAdv[_loc5_] = _loc6_;
                     this["ci" + _loc5_].source = ResManager.getIconUrl(_loc6_.iconCode);
                     this["cl" + _loc5_].text = _loc6_.name;
                     setHMTTimer(_loc6_.st / 1000,param1.now / 1000,_loc5_);
                     if(_loc6_.ab == 1)
                     {
                        this["cb" + _loc5_].enabled = true;
                        this["cb" + _loc5_].label = Language.XLS_PANEL[9];
                     }
                     else
                     {
                        this["cb" + _loc5_].enabled = false;
                        this["cb" + _loc5_].label = Language.XLS_PANEL[10];
                     }
                  }
               }
               if(_loc2_.hasOwnProperty("flagat"))
               {
                  flagat.text = Language.XLS_PANEL[20].replace("{num}",int(_loc2_.flagat));
               }
            }
            if(param1.hasOwnProperty("lev"))
            {
               if(param1.lev == 4)
               {
                  roomLevel = Language.XLS_PANEL[4].replace("{s}",String(int(param1.lev) * 100)).replace("{e}","∞");
               }
               else
               {
                  if(param1.lev == 3)
                  {
                     roomLevel = Language.XLS_PANEL[4].replace("{s}","300").replace("{e}","399");
                  }
                  if(param1.lev == 2)
                  {
                     roomLevel = Language.XLS_PANEL[4].replace("{s}","200").replace("{e}","299");
                  }
                  if(param1.lev == 1)
                  {
                     roomLevel = Language.XLS_PANEL[4].replace("{s}","100").replace("{e}","199");
                  }
                  if(param1.lev == 0)
                  {
                     roomLevel = Language.XLS_PANEL[4].replace("{s}","1").replace("{e}","99");
                  }
               }
            }
            else
            {
               roomLevel = Language.XLS_PANEL[8];
            }
            if(param1.hasOwnProperty("awd"))
            {
               awdBtn.enabled = true;
            }
            if(param1.hasOwnProperty("advdata"))
            {
               _loc5_ = 1;
               while(_loc5_ <= 5)
               {
                  this["cb" + _loc5_].enabled = false;
                  _loc5_++;
               }
               db5.enabled = false;
               for(_loc5_ in _plistAdv)
               {
                  if(_plistAdv[_loc5_].cid == param1.advdata.cid)
                  {
                     this["cb" + _loc5_].enabled = false;
                     this["cb" + _loc5_].label = Language.XLS_PANEL[10];
                  }
               }
            }
            if(param1.hasOwnProperty("nmldata"))
            {
               _loc7_ = param1.nmldata;
               di5.source = ResManager.getIconUrl(_loc7_.iconCode);
               dl5.text = _loc7_.name;
               setHMTTimer(_loc7_.st / 1000,param1.now / 1000,6);
               db5.label = Language.XLS_PANEL[7];
               db5.enabled = true;
               _loc5_ = 1;
               while(_loc5_ <= 5)
               {
                  this["cb" + _loc5_].enabled = false;
                  _loc5_++;
               }
            }
            this.cid = _core.player.id;
         }
         else
         {
            resetHMTUi();
         }
      }
      
      private function _XiulianshiPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.XLS_PANEL[0];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = roomLevel;
         _loc1_ = ResManager.getIconUrl(4130220003340);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.XLS_PANEL[1];
         _loc1_ = Language.XLS_PANEL[17];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = ResManager.getIconUrl(4130220003341);
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.XLS_PANEL[19];
         _loc1_ = Language.XLS_PANEL[2];
      }
      
      public function set log(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._107332log;
         if(_loc2_ !== param1)
         {
            this._107332log = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"log",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ci1() : Image
      {
         return this._98443ci1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ci2() : Image
      {
         return this._98444ci2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ci3() : Image
      {
         return this._98445ci3;
      }
      
      [Bindable(event="propertyChange")]
      public function get ci5() : Image
      {
         return this._98447ci5;
      }
      
      [Bindable(event="propertyChange")]
      public function get awdBtn() : BasicDelayButton
      {
         return this._1404994418awdBtn;
      }
      
      public function set di3(param1:Image) : void
      {
         var _loc2_:Object = this._99406di3;
         if(_loc2_ !== param1)
         {
            this._99406di3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"di3",_loc2_,param1));
         }
      }
      
      private function hmtAwradText(param1:*) : String
      {
         return "";
      }
      
      public function __cb4_click(param1:MouseEvent) : void
      {
         enterAdvRoom(4);
      }
      
      public function set di1(param1:Image) : void
      {
         var _loc2_:Object = this._99404di1;
         if(_loc2_ !== param1)
         {
            this._99404di1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"di1",_loc2_,param1));
         }
      }
      
      public function set di5(param1:Image) : void
      {
         var _loc2_:Object = this._99408di5;
         if(_loc2_ !== param1)
         {
            this._99408di5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"di5",_loc2_,param1));
         }
      }
      
      public function set di2(param1:Image) : void
      {
         var _loc2_:Object = this._99405di2;
         if(_loc2_ !== param1)
         {
            this._99405di2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"di2",_loc2_,param1));
         }
      }
      
      public function set di4(param1:Image) : void
      {
         var _loc2_:Object = this._99407di4;
         if(_loc2_ !== param1)
         {
            this._99407di4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"di4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dl1() : Label
      {
         return this._99497dl1;
      }
      
      [Bindable(event="propertyChange")]
      public function get dl2() : Label
      {
         return this._99498dl2;
      }
      
      [Bindable(event="propertyChange")]
      public function get dl5() : Label
      {
         return this._99501dl5;
      }
      
      [Bindable(event="propertyChange")]
      public function get flagat() : Label
      {
         return this._1272061793flagat;
      }
      
      [Bindable(event="propertyChange")]
      public function get ci4() : Image
      {
         return this._98446ci4;
      }
      
      [Bindable(event="propertyChange")]
      public function get dl3() : Label
      {
         return this._99499dl3;
      }
      
      private function EventUp(param1:Function, ... rest) : Function
      {
         var f:Function = param1;
         var arg:Array = rest;
         return function(param1:Event):*
         {
            f.apply(null,[param1].concat(arg));
         };
      }
      
      [Bindable(event="propertyChange")]
      public function get dl4() : Label
      {
         return this._99500dl4;
      }
      
      public function addHMTXLLog(param1:String) : void
      {
         _farmLog.push(param1 + "\n");
         log.htmlText = _farmLog.join();
      }
      
      private function set roomLevel(param1:String) : void
      {
         var _loc2_:Object = this._1085375639roomLevel;
         if(_loc2_ !== param1)
         {
            this._1085375639roomLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"roomLevel",_loc2_,param1));
         }
      }
      
      public function __cb1_click(param1:MouseEvent) : void
      {
         enterAdvRoom(1);
      }
      
      public function __db5_click(param1:MouseEvent) : void
      {
         enterPubRoom();
      }
      
      [Bindable(event="propertyChange")]
      public function get cl1() : Label
      {
         return this._98536cl1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cl2() : Label
      {
         return this._98537cl2;
      }
      
      [Bindable(event="propertyChange")]
      public function get cl3() : Label
      {
         return this._98538cl3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cl4() : Label
      {
         return this._98539cl4;
      }
      
      [Bindable(event="propertyChange")]
      public function get cl5() : Label
      {
         return this._98540cl5;
      }
      
      private function resetHMTUi() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         _plistAdv = [];
         _plist = [];
         roomLevel = Language.XLS_PANEL[6];
         for(_loc1_ in _timerList)
         {
            if(Boolean(_timerList[_loc1_]) && Boolean(_timerList[_loc1_].running))
            {
               _timerList[_loc1_].stop();
            }
         }
         _loc2_ = 1;
         while(_loc2_ <= 5)
         {
            this["ci" + _loc2_].source = null;
            this["cl" + _loc2_].text = "";
            this["ct" + _loc2_].text = "";
            this["cb" + _loc2_].enabled = true;
            this["cb" + _loc2_].label = Language.XLS_PANEL[11];
            _loc2_++;
         }
         var _loc3_:* = 1;
         while(_loc3_ < 6)
         {
            this["di" + _loc3_].source = null;
            this["dl" + _loc3_].text = "";
            if(_loc3_ == 5)
            {
               this["dt" + _loc3_].text = "";
               this["db" + _loc3_].label = Language.XLS_PANEL[11];
               this["db" + _loc3_].enabled = true;
            }
            _loc3_++;
         }
         awdBtn.enabled = false;
         flagat.text = "";
         if(this.cid != _core.player.id)
         {
            _farmLog.clear();
            this.cid = _core.player.id;
         }
      }
      
      public function set db5(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._99191db5;
         if(_loc2_ !== param1)
         {
            this._99191db5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"db5",_loc2_,param1));
         }
      }
      
      private function setHMTTimer(param1:uint, param2:uint, param3:int) : void
      {
         var _loc4_:Timer = null;
         var _loc5_:* = undefined;
         if(!_timerList[param3])
         {
            _loc4_ = new Timer(1000);
            _loc5_ = param2 - param1;
            if(_loc5_ < 0)
            {
               _loc5_ = 0;
            }
            _timerDTList[param3] = _loc5_;
            _loc4_.addEventListener(TimerEvent.TIMER,EventUp(changeTimer,param3));
            _loc4_.start();
            _timerList[param3] = _loc4_;
         }
         else
         {
            _loc4_ = _timerList[param3];
            _loc4_.stop();
            _loc5_ = param2 - param1;
            if(_loc5_ < 0)
            {
               _loc5_ = 0;
            }
            _timerDTList[param3] = _loc5_;
            _loc4_.start();
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function set ci3(param1:Image) : void
      {
         var _loc2_:Object = this._98445ci3;
         if(_loc2_ !== param1)
         {
            this._98445ci3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ci3",_loc2_,param1));
         }
      }
      
      public function set ci1(param1:Image) : void
      {
         var _loc2_:Object = this._98443ci1;
         if(_loc2_ !== param1)
         {
            this._98443ci1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ci1",_loc2_,param1));
         }
      }
      
      public function set ci5(param1:Image) : void
      {
         var _loc2_:Object = this._98447ci5;
         if(_loc2_ !== param1)
         {
            this._98447ci5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ci5",_loc2_,param1));
         }
      }
      
      public function set ci2(param1:Image) : void
      {
         var _loc2_:Object = this._98444ci2;
         if(_loc2_ !== param1)
         {
            this._98444ci2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ci2",_loc2_,param1));
         }
      }
      
      public function set awdBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._1404994418awdBtn;
         if(_loc2_ !== param1)
         {
            this._1404994418awdBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awdBtn",_loc2_,param1));
         }
      }
      
      public function set ci4(param1:Image) : void
      {
         var _loc2_:Object = this._98446ci4;
         if(_loc2_ !== param1)
         {
            this._98446ci4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ci4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get log() : LinkTextArea
      {
         return this._107332log;
      }
      
      private function getXiuLianAward() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("getHMTAward",null);
            }
         };
         Alert.show(Language.XLS_PANEL[12],null,Alert.YES | Alert.NO,null,func);
      }
      
      public function set dt5(param1:Label) : void
      {
         var _loc2_:Object = this._99749dt5;
         if(_loc2_ !== param1)
         {
            this._99749dt5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dt5",_loc2_,param1));
         }
      }
      
      public function set flagat(param1:Label) : void
      {
         var _loc2_:Object = this._1272061793flagat;
         if(_loc2_ !== param1)
         {
            this._1272061793flagat = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"flagat",_loc2_,param1));
         }
      }
      
      public function set dl1(param1:Label) : void
      {
         var _loc2_:Object = this._99497dl1;
         if(_loc2_ !== param1)
         {
            this._99497dl1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dl1",_loc2_,param1));
         }
      }
      
      public function set dl2(param1:Label) : void
      {
         var _loc2_:Object = this._99498dl2;
         if(_loc2_ !== param1)
         {
            this._99498dl2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dl2",_loc2_,param1));
         }
      }
      
      public function set dl4(param1:Label) : void
      {
         var _loc2_:Object = this._99500dl4;
         if(_loc2_ !== param1)
         {
            this._99500dl4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dl4",_loc2_,param1));
         }
      }
      
      public function set dl5(param1:Label) : void
      {
         var _loc2_:Object = this._99501dl5;
         if(_loc2_ !== param1)
         {
            this._99501dl5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dl5",_loc2_,param1));
         }
      }
      
      public function __cb3_click(param1:MouseEvent) : void
      {
         enterAdvRoom(3);
      }
      
      public function set cb1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._98226cb1;
         if(_loc2_ !== param1)
         {
            this._98226cb1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb1",_loc2_,param1));
         }
      }
      
      public function set dl3(param1:Label) : void
      {
         var _loc2_:Object = this._99499dl3;
         if(_loc2_ !== param1)
         {
            this._99499dl3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dl3",_loc2_,param1));
         }
      }
      
      public function set cb3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._98228cb3;
         if(_loc2_ !== param1)
         {
            this._98228cb3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get roomLevel() : String
      {
         return this._1085375639roomLevel;
      }
      
      public function set cb4(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._98229cb4;
         if(_loc2_ !== param1)
         {
            this._98229cb4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb4",_loc2_,param1));
         }
      }
      
      public function set cb2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._98227cb2;
         if(_loc2_ !== param1)
         {
            this._98227cb2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb2",_loc2_,param1));
         }
      }
      
      public function ___XiulianshiPanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         setDefencePets();
      }
      
      public function changeTimer(param1:TimerEvent, ... rest) : *
      {
         var _loc3_:* = rest[0];
         var _loc4_:* = _timerDTList[_loc3_];
         if(_loc4_ == null)
         {
            _loc4_ = 0;
         }
         _timerDTList[_loc3_] = _loc4_ + 1;
         var _loc5_:* = TimeUtil.secToTime(_loc4_);
         if(_loc3_ == 6)
         {
            dt5.text = _loc5_;
         }
         else
         {
            this["ct" + _loc3_].text = _loc5_;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get db5() : BasicDelayButton
      {
         return this._99191db5;
      }
      
      public function set cb5(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._98230cb5;
         if(_loc2_ !== param1)
         {
            this._98230cb5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb5",_loc2_,param1));
         }
      }
      
      public function __log_updateComplete(param1:FlexEvent) : void
      {
         canvas1_updateCompleteHandler();
      }
      
      private function enterPubRoom() : void
      {
         var func:Function = null;
         if(db5.label == Language.XLS_PANEL[7])
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("endHMTXLRoom",null,1);
               }
            };
            _alert = Alert.show(Language.XLS_PANEL[15],null,Alert.YES | Alert.NO,null,func);
         }
         if(db5.label == Language.XLS_PANEL[11])
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("enterPubRoom",null);
               }
            };
            _alert = Alert.show(Language.XLS_PANEL[14],null,Alert.YES | Alert.NO,null,func);
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:XiulianshiPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _XiulianshiPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_XiulianshiPanelWatcherSetupUtil");
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
      public function get dt5() : Label
      {
         return this._99749dt5;
      }
      
      private function _XiulianshiPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XLS_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiulianshiPanel_BasicTitleCanvas1.text = param1;
         },"_XiulianshiPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiulianshiPanel_Label1.filters = param1;
         },"_XiulianshiPanel_Label1.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = roomLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiulianshiPanel_Label1.text = param1;
         },"_XiulianshiPanel_Label1.text");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003340);
         },function(param1:Object):void
         {
            _XiulianshiPanel_Image1.source = param1;
         },"_XiulianshiPanel_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            flagat.filters = param1;
         },"flagat.filters");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiulianshiPanel_Label3.filters = param1;
         },"_XiulianshiPanel_Label3.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XLS_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiulianshiPanel_BasicDelayButton1.label = param1;
         },"_XiulianshiPanel_BasicDelayButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XLS_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiulianshiPanel_Label4.text = param1;
         },"_XiulianshiPanel_Label4.text");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiulianshiPanel_Label4.filters = param1;
         },"_XiulianshiPanel_Label4.filters");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ct1.filters = param1;
         },"ct1.filters");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ct2.filters = param1;
         },"ct2.filters");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ct3.filters = param1;
         },"ct3.filters");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ct4.filters = param1;
         },"ct4.filters");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            ct5.filters = param1;
         },"ct5.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            cl1.filters = param1;
         },"cl1.filters");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            cl2.filters = param1;
         },"cl2.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            cl3.filters = param1;
         },"cl3.filters");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            cl4.filters = param1;
         },"cl4.filters");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            cl5.filters = param1;
         },"cl5.filters");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220003341);
         },function(param1:Object):void
         {
            _XiulianshiPanel_Image7.source = param1;
         },"_XiulianshiPanel_Image7.source");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _XiulianshiPanel_Label15.filters = param1;
         },"_XiulianshiPanel_Label15.filters");
         result[20] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            dl1.filters = param1;
         },"dl1.filters");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            dl2.filters = param1;
         },"dl2.filters");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            dl3.filters = param1;
         },"dl3.filters");
         result[23] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            dl4.filters = param1;
         },"dl4.filters");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            dl5.filters = param1;
         },"dl5.filters");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            dt5.filters = param1;
         },"dt5.filters");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XLS_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _XiulianshiPanel_IntroText1.htmlText = param1;
         },"_XiulianshiPanel_IntroText1.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.XLS_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awdBtn.label = param1;
         },"awdBtn.label");
         result[28] = binding;
         return result;
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
      public function get cb3() : BasicDelayButton
      {
         return this._98228cb3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cb4() : BasicDelayButton
      {
         return this._98229cb4;
      }
      
      [Bindable(event="propertyChange")]
      public function get cb5() : BasicDelayButton
      {
         return this._98230cb5;
      }
      
      [Bindable(event="propertyChange")]
      public function get cb1() : BasicDelayButton
      {
         return this._98226cb1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cb2() : BasicDelayButton
      {
         return this._98227cb2;
      }
      
      public function set ct1(param1:Label) : void
      {
         var _loc2_:Object = this._98784ct1;
         if(_loc2_ !== param1)
         {
            this._98784ct1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct1",_loc2_,param1));
         }
      }
      
      public function set ct2(param1:Label) : void
      {
         var _loc2_:Object = this._98785ct2;
         if(_loc2_ !== param1)
         {
            this._98785ct2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct2",_loc2_,param1));
         }
      }
      
      public function set ct3(param1:Label) : void
      {
         var _loc2_:Object = this._98786ct3;
         if(_loc2_ !== param1)
         {
            this._98786ct3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct3",_loc2_,param1));
         }
      }
      
      public function set ct4(param1:Label) : void
      {
         var _loc2_:Object = this._98787ct4;
         if(_loc2_ !== param1)
         {
            this._98787ct4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct4",_loc2_,param1));
         }
      }
      
      public function set ct5(param1:Label) : void
      {
         var _loc2_:Object = this._98788ct5;
         if(_loc2_ !== param1)
         {
            this._98788ct5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ct5",_loc2_,param1));
         }
      }
      
      public function set cl1(param1:Label) : void
      {
         var _loc2_:Object = this._98536cl1;
         if(_loc2_ !== param1)
         {
            this._98536cl1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cl1",_loc2_,param1));
         }
      }
      
      public function set cl2(param1:Label) : void
      {
         var _loc2_:Object = this._98537cl2;
         if(_loc2_ !== param1)
         {
            this._98537cl2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cl2",_loc2_,param1));
         }
      }
      
      public function set cl3(param1:Label) : void
      {
         var _loc2_:Object = this._98538cl3;
         if(_loc2_ !== param1)
         {
            this._98538cl3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cl3",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("getHMTXLSData",null);
      }
      
      public function set cl5(param1:Label) : void
      {
         var _loc2_:Object = this._98540cl5;
         if(_loc2_ !== param1)
         {
            this._98540cl5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cl5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas1() : Canvas
      {
         return this._550778329canvas1;
      }
      
      public function set cl4(param1:Label) : void
      {
         var _loc2_:Object = this._98539cl4;
         if(_loc2_ !== param1)
         {
            this._98539cl4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cl4",_loc2_,param1));
         }
      }
      
      public function __cb5_click(param1:MouseEvent) : void
      {
         enterAdvRoom(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get ct1() : Label
      {
         return this._98784ct1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct2() : Label
      {
         return this._98785ct2;
      }
      
      private function setDefencePets() : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc1_:Boolean = false;
         var _loc4_:int = 0;
         var _loc5_:* = _core.player.petList;
         for(_loc2_ in _loc5_)
         {
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _loc3_ = _core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF);
            _loc3_.visible = !_loc3_.visible;
            _loc3_.petCrossConf = {
               "f":false,
               "t":false
            };
            _loc3_.isXiulianshi = true;
         }
         else
         {
            Alert.show(Language.XLS_PANEL[3]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ct4() : Label
      {
         return this._98787ct4;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct5() : Label
      {
         return this._98788ct5;
      }
      
      private function canvas1_updateCompleteHandler() : void
      {
         log.verticalScrollPosition = log.maxVerticalScrollPosition;
      }
      
      [Bindable(event="propertyChange")]
      public function get ct3() : Label
      {
         return this._98786ct3;
      }
   }
}

