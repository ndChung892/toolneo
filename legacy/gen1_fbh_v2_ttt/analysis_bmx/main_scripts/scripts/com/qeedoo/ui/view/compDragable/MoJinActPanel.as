package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MoJinActPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1260729712lb_num_C1:Label;
      
      private var _427915793lb_num_BB1:Label;
      
      private var _1110417470label6:Label;
      
      private var _808329852vsFlop:ViewStack;
      
      private var _1260729742lb_num_B2:Label;
      
      private var MoJinActConf:Object = {};
      
      private var _1975932390lb_point_B0:Label;
      
      private var _427914800lb_num_CC2:Label;
      
      private var _1185080788img_B2:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1260729744lb_num_B0:Label;
      
      private var _1975932359lb_point_A0:Label;
      
      private var _496824467lb_point_mlxt:Label;
      
      private var _102754665lb_r2:Label;
      
      private var strArr:Array = [["邂","逅"],["小","幸","福"],["魔","力","学","堂"]];
      
      private var _1185080757img_C2:Image;
      
      private var _1260729774lb_num_A1:Label;
      
      private var _1110417469label7:Label;
      
      private var _1147382393lb_point:Label;
      
      private var _1975932423lb_point_C2:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _1975932360lb_point_A1:Label;
      
      private var _1110417472label4:Label;
      
      private var _427916786lb_num_AA0:Label;
      
      private var _1975934120lb_point_xh:Label;
      
      private var MoJinActData:Object = {};
      
      public var _MoJinActPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1863324756bangBtn0:BasicGlowButton;
      
      private var _63203309label10:Label;
      
      private var _427915794lb_num_BB0:Label;
      
      private var _427914799lb_num_CC3:Label;
      
      private var typeArr:Array = ["福礼包","尊享包","至尊包"];
      
      private var _1260729711lb_num_C2:Label;
      
      private var _427914801lb_num_CC1:Label;
      
      private var _1975932392lb_point_B2:Label;
      
      private var _1185080759img_C0:Image;
      
      private var numArr:Array = ["numA","numB","numC"];
      
      public var _MoJinActPanel_Image11:Image;
      
      public var _MoJinActPanel_Image12:Image;
      
      public var _MoJinActPanel_Image17:Image;
      
      public var _MoJinActPanel_Image18:Image;
      
      public var _MoJinActPanel_Image19:Image;
      
      private var itemRuleStr:String = "";
      
      private var _1185080790img_B0:Image;
      
      private var _1110417474label2:Label;
      
      private var _1185080821img_A0:Image;
      
      private var _1260729713lb_num_C0:Label;
      
      public var _MoJinActPanel_Image21:Image;
      
      public var _MoJinActPanel_Image22:Image;
      
      public var _MoJinActPanel_Image23:Image;
      
      public var _MoJinActPanel_Image24:Image;
      
      public var _MoJinActPanel_Image25:Image;
      
      public var _MoJinActPanel_Image26:Image;
      
      public var _MoJinActPanel_Image20:Image;
      
      private var iidObj:Object = {};
      
      private var _helpAlert:Alert;
      
      private var _1124416174lb_point_xxf:Label;
      
      private var _102754663lb_r0:Label;
      
      private var _1185080756img_C3:Image;
      
      private var _427915792lb_num_BB2:Label;
      
      private var _1110417468label8:Label;
      
      private var _1260729743lb_num_B1:Label;
      
      private var _1975932422lb_point_C1:Label;
      
      private var _1110417471label5:Label;
      
      private var _1185080789img_B1:Image;
      
      private var _1975932391lb_point_B1:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _1260729775lb_num_A0:Label;
      
      private var _427914802lb_num_CC0:Label;
      
      private var _1863324755bangBtn1:BasicGlowButton;
      
      private var chipType:Array = ["itemA","itemB","itemC"];
      
      private var _1185080758img_C1:Image;
      
      private var _1260729710lb_num_C3:Label;
      
      private var _1975932421lb_point_C0:Label;
      
      private var _1110417473label3:Label;
      
      private var _789140625helpinfo:Label;
      
      public var _MoJinActPanel_Image1:Image;
      
      private var _102754664lb_r1:Label;
      
      public var _MoJinActPanel_Image3:Image;
      
      public var _MoJinActPanel_Image6:Image;
      
      public var _MoJinActPanel_Image7:Image;
      
      private var _1185080820img_A1:Image;
      
      private var _427916785lb_num_AA1:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MoJinActPanel_Image2:Image;
      
      private var _1975932424lb_point_C3:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":600,
               "height":570,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MoJinActPanel_BasicTitleCanvas1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"bangBtn0",
                  "events":{"click":"__bangBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"HorizontalTab",
                        "selected":true,
                        "labelPlacement":"bottom",
                        "width":70,
                        "x":20,
                        "y":35
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
                        "width":70,
                        "x":89,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lb_point",
                  "stylesFactory":function():void
                  {
                     this.color = 16766720;
                     this.fontSize = 12;
                     this.textAlign = "right";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":412,
                        "y":35,
                        "width":178
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vsFlop",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":55,
                        "width":580,
                        "height":490,
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":580,
                                 "height":490,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_MoJinActPanel_Image1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":580,
                                          "height":490
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":16,
                                          "width":560,
                                          "height":100,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "width":560,
                                                   "height":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_A0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":256,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_A1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":332,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_A0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":245,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_A1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":321,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":25,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"领取"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button2_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":251,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":327,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_r0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":78,
                                                   "y":24,
                                                   "width":168
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_A1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":332,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_A0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":257,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":119,
                                          "width":560,
                                          "height":100,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "width":560,
                                                   "height":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_B0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":256,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_B1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":332,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_B2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":408,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button4_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":25,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"领取"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button5_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":251,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button6_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":327,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button7_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":403,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_r1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":78,
                                                   "y":24,
                                                   "width":168
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_B0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":246,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_B1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":323,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_B2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_B1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":332,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_B2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":409,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_B0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":257,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":222,
                                          "width":560,
                                          "height":100,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image11",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "width":560,
                                                   "height":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_C0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":246,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_C1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":322,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_C2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":398,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_C3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":473,
                                                   "y":80,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image12",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":30,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_C0",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":256,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_C1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":332,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_C2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":408,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"img_C3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":484,
                                                   "y":11,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button8_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":25,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"领取"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button9_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":251,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button10_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":327,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button11_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":403,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button12_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":479,
                                                   "y":57,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_r2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 14;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":78,
                                                   "y":24,
                                                   "width":168
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_C3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":485,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_C2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":409,
                                                   "y":36,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_C0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":257,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_C1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":332,
                                                   "y":37,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
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
                                          "styleName":"RoundedGradientBorder",
                                          "label":"Hornor",
                                          "y":325,
                                          "width":560,
                                          "height":160,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image17",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "width":560,
                                                   "height":160
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_xh",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":447,
                                                   "y":33,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_xxf",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":447,
                                                   "y":85,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_point_mlxt",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16766720;
                                                this.fontSize = 12;
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":447,
                                                   "y":137,
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image18",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":120,
                                                   "y":10,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168,
                                                   "y":20,
                                                   "text":"+"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168,
                                                   "y":67,
                                                   "text":"+"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":67,
                                                   "text":"+"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image19",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":196,
                                                   "y":10,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image20",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":120,
                                                   "y":60,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image21",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":196,
                                                   "y":60,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image22",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":272,
                                                   "y":60,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image23",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":120,
                                                   "y":110,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image24",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":196,
                                                   "y":110,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image25",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":272,
                                                   "y":110,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"_MoJinActPanel_Image26",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":348,
                                                   "y":110,
                                                   "width":40,
                                                   "height":40
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button13_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":453,
                                                   "y":10,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button14_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":453,
                                                   "y":63,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___MoJinActPanel_Button15_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"BtnStdRed",
                                                   "x":453,
                                                   "y":116,
                                                   "width":50,
                                                   "height":23,
                                                   "label":"兑换"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":168,
                                                   "y":118,
                                                   "text":"+"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":244,
                                                   "y":118,
                                                   "text":"+"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label7",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":320,
                                                   "y":118,
                                                   "text":"+"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label8",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":20,
                                                   "y":19,
                                                   "width":81,
                                                   "text":"组合一："
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label9",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":20,
                                                   "y":69,
                                                   "width":81,
                                                   "text":"组合二："
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"label10",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 16;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":20,
                                                   "y":117,
                                                   "width":81,
                                                   "text":"组合三："
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_AA1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":197,
                                                   "y":36,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_AA0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":121,
                                                   "y":36,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_BB0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":121,
                                                   "y":86,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_BB1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":197,
                                                   "y":86,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_BB2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":273,
                                                   "y":86,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_CC0",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":121,
                                                   "y":135,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_CC1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":196,
                                                   "y":135,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_CC2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":272,
                                                   "y":135,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"lb_num_CC3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                                this.fontSize = 12;
                                                this.textAlign = "right";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":349,
                                                   "y":135,
                                                   "width":43,
                                                   "height":18,
                                                   "text":"0"
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
                                 "styleName":"RoundedGradientBorder",
                                 "label":"Hornor",
                                 "y":60,
                                 "width":580,
                                 "height":490,
                                 "x":10,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"helpinfo",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":560,
                                          "height":470
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
      
      private var _1110417467label9:Label;
      
      public function MoJinActPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 600;
         this.height = 570;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___MoJinActPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MoJinActPanel._watcherSetupUtil = param1;
      }
      
      public function set lb_num_BB1(param1:Label) : void
      {
         var _loc2_:Object = this._427915793lb_num_BB1;
         if(_loc2_ !== param1)
         {
            this._427915793lb_num_BB1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_BB1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_C0() : Label
      {
         return this._1975932421lb_point_C0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_C2() : Label
      {
         return this._1975932423lb_point_C2;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_B1() : Label
      {
         return this._1975932391lb_point_B1;
      }
      
      public function set lb_point_C0(param1:Label) : void
      {
         var _loc2_:Object = this._1975932421lb_point_C0;
         if(_loc2_ !== param1)
         {
            this._1975932421lb_point_C0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_C0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_C1() : Label
      {
         return this._1975932422lb_point_C1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_AA0() : Label
      {
         return this._427916786lb_num_AA0;
      }
      
      public function set lb_point_C3(param1:Label) : void
      {
         var _loc2_:Object = this._1975932424lb_point_C3;
         if(_loc2_ !== param1)
         {
            this._1975932424lb_point_C3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_C3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img_A0() : Image
      {
         return this._1185080821img_A0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_CC1() : Label
      {
         return this._427914801lb_num_CC1;
      }
      
      public function set img_A0(param1:Image) : void
      {
         var _loc2_:Object = this._1185080821img_A0;
         if(_loc2_ !== param1)
         {
            this._1185080821img_A0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_A0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_C3() : Label
      {
         return this._1975932424lb_point_C3;
      }
      
      [Bindable(event="propertyChange")]
      public function get label10() : Label
      {
         return this._63203309label10;
      }
      
      [Bindable(event="propertyChange")]
      public function get img_A1() : Image
      {
         return this._1185080820img_A1;
      }
      
      public function set lb_num_AA0(param1:Label) : void
      {
         var _loc2_:Object = this._427916786lb_num_AA0;
         if(_loc2_ !== param1)
         {
            this._427916786lb_num_AA0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_AA0",_loc2_,param1));
         }
      }
      
      public function set lb_point_C2(param1:Label) : void
      {
         var _loc2_:Object = this._1975932423lb_point_C2;
         if(_loc2_ !== param1)
         {
            this._1975932423lb_point_C2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_C2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_AA1() : Label
      {
         return this._427916785lb_num_AA1;
      }
      
      public function set img_A1(param1:Image) : void
      {
         var _loc2_:Object = this._1185080820img_A1;
         if(_loc2_ !== param1)
         {
            this._1185080820img_A1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_A1",_loc2_,param1));
         }
      }
      
      public function set lb_point_C1(param1:Label) : void
      {
         var _loc2_:Object = this._1975932422lb_point_C1;
         if(_loc2_ !== param1)
         {
            this._1975932422lb_point_C1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_C1",_loc2_,param1));
         }
      }
      
      public function set lb_num_AA1(param1:Label) : void
      {
         var _loc2_:Object = this._427916785lb_num_AA1;
         if(_loc2_ !== param1)
         {
            this._427916785lb_num_AA1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_AA1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img_B0() : Image
      {
         return this._1185080790img_B0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img_B1() : Image
      {
         return this._1185080789img_B1;
      }
      
      public function ___MoJinActPanel_Button6_click(param1:MouseEvent) : void
      {
         exchangeChip(11);
      }
      
      private function _MoJinActPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOJINACT[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MoJinActPanel_BasicTitleCanvas1.text = param1;
         },"_MoJinActPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOJINACT[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn0.label = param1;
         },"bangBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MOJINACT[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bangBtn1.label = param1;
         },"bangBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000933);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image1.source = param1;
         },"_MoJinActPanel_Image1.source");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000935);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image2.source = param1;
         },"_MoJinActPanel_Image2.source");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000939);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image3.source = param1;
         },"_MoJinActPanel_Image3.source");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000925);
         },function(param1:Object):void
         {
            img_A0.source = param1;
         },"img_A0.source");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000924);
         },function(param1:Object):void
         {
            img_A1.source = param1;
         },"img_A1.source");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000936);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image6.source = param1;
         },"_MoJinActPanel_Image6.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000940);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image7.source = param1;
         },"_MoJinActPanel_Image7.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000930);
         },function(param1:Object):void
         {
            img_B0.source = param1;
         },"img_B0.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000931);
         },function(param1:Object):void
         {
            img_B1.source = param1;
         },"img_B1.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000932);
         },function(param1:Object):void
         {
            img_B2.source = param1;
         },"img_B2.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000937);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image11.source = param1;
         },"_MoJinActPanel_Image11.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000941);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image12.source = param1;
         },"_MoJinActPanel_Image12.source");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000926);
         },function(param1:Object):void
         {
            img_C0.source = param1;
         },"img_C0.source");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000927);
         },function(param1:Object):void
         {
            img_C1.source = param1;
         },"img_C1.source");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000928);
         },function(param1:Object):void
         {
            img_C2.source = param1;
         },"img_C2.source");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000929);
         },function(param1:Object):void
         {
            img_C3.source = param1;
         },"img_C3.source");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000934);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image17.source = param1;
         },"_MoJinActPanel_Image17.source");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000925);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image18.source = param1;
         },"_MoJinActPanel_Image18.source");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000924);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image19.source = param1;
         },"_MoJinActPanel_Image19.source");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000930);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image20.source = param1;
         },"_MoJinActPanel_Image20.source");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000931);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image21.source = param1;
         },"_MoJinActPanel_Image21.source");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000932);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image22.source = param1;
         },"_MoJinActPanel_Image22.source");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000926);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image23.source = param1;
         },"_MoJinActPanel_Image23.source");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000927);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image24.source = param1;
         },"_MoJinActPanel_Image24.source");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000928);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image25.source = param1;
         },"_MoJinActPanel_Image25.source");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000929);
         },function(param1:Object):void
         {
            _MoJinActPanel_Image26.source = param1;
         },"_MoJinActPanel_Image26.source");
         result[28] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get img_B2() : Image
      {
         return this._1185080788img_B2;
      }
      
      [Bindable(event="propertyChange")]
      public function get img_C0() : Image
      {
         return this._1185080759img_C0;
      }
      
      [Bindable(event="propertyChange")]
      public function get img_C2() : Image
      {
         return this._1185080757img_C2;
      }
      
      [Bindable(event="propertyChange")]
      public function get img_C3() : Image
      {
         return this._1185080756img_C3;
      }
      
      public function set img_B0(param1:Image) : void
      {
         var _loc2_:Object = this._1185080790img_B0;
         if(_loc2_ !== param1)
         {
            this._1185080790img_B0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_B0",_loc2_,param1));
         }
      }
      
      public function __bangBtn1_click(param1:MouseEvent) : void
      {
         changeView(1);
      }
      
      public function set img_B2(param1:Image) : void
      {
         var _loc2_:Object = this._1185080788img_B2;
         if(_loc2_ !== param1)
         {
            this._1185080788img_B2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_B2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img_C1() : Image
      {
         return this._1185080758img_C1;
      }
      
      public function set label10(param1:Label) : void
      {
         var _loc2_:Object = this._63203309label10;
         if(_loc2_ !== param1)
         {
            this._63203309label10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_A0() : Label
      {
         return this._1260729775lb_num_A0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_A1() : Label
      {
         return this._1260729774lb_num_A1;
      }
      
      public function ___MoJinActPanel_Button14_click(param1:MouseEvent) : void
      {
         exchangeChipGroup(1);
      }
      
      public function set img_B1(param1:Image) : void
      {
         var _loc2_:Object = this._1185080789img_B1;
         if(_loc2_ !== param1)
         {
            this._1185080789img_B1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_B1",_loc2_,param1));
         }
      }
      
      public function ___MoJinActPanel_Button3_click(param1:MouseEvent) : void
      {
         exchangeChip(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_B1() : Label
      {
         return this._1260729743lb_num_B1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_B2() : Label
      {
         return this._1260729742lb_num_B2;
      }
      
      private function changeView(param1:Number) : void
      {
         vsFlop.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            this["bangBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["bangBtn" + param1].selected = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_B0() : Label
      {
         return this._1260729744lb_num_B0;
      }
      
      public function ___MoJinActPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_C0() : Label
      {
         return this._1260729713lb_num_C0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_C1() : Label
      {
         return this._1260729712lb_num_C1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_C2() : Label
      {
         return this._1260729711lb_num_C2;
      }
      
      public function set img_C0(param1:Image) : void
      {
         var _loc2_:Object = this._1185080759img_C0;
         if(_loc2_ !== param1)
         {
            this._1185080759img_C0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_C0",_loc2_,param1));
         }
      }
      
      public function set img_C2(param1:Image) : void
      {
         var _loc2_:Object = this._1185080757img_C2;
         if(_loc2_ !== param1)
         {
            this._1185080757img_C2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_C2",_loc2_,param1));
         }
      }
      
      public function set img_C3(param1:Image) : void
      {
         var _loc2_:Object = this._1185080756img_C3;
         if(_loc2_ !== param1)
         {
            this._1185080756img_C3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_C3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_C3() : Label
      {
         return this._1260729710lb_num_C3;
      }
      
      public function ___MoJinActPanel_Button11_click(param1:MouseEvent) : void
      {
         exchangeChip(22);
      }
      
      public function set img_C1(param1:Image) : void
      {
         var _loc2_:Object = this._1185080758img_C1;
         if(_loc2_ !== param1)
         {
            this._1185080758img_C1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_C1",_loc2_,param1));
         }
      }
      
      public function set lb_num_A0(param1:Label) : void
      {
         var _loc2_:Object = this._1260729775lb_num_A0;
         if(_loc2_ !== param1)
         {
            this._1260729775lb_num_A0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_A0",_loc2_,param1));
         }
      }
      
      public function set lb_num_A1(param1:Label) : void
      {
         var _loc2_:Object = this._1260729774lb_num_A1;
         if(_loc2_ !== param1)
         {
            this._1260729774lb_num_A1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_A1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_xh() : Label
      {
         return this._1975934120lb_point_xh;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_mlxt() : Label
      {
         return this._496824467lb_point_mlxt;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_xxf() : Label
      {
         return this._1124416174lb_point_xxf;
      }
      
      private function exchangeChipGroup(param1:Number) : void
      {
         var func:Function;
         var a:* = undefined;
         var b:* = undefined;
         var c:* = undefined;
         var type:Number = param1;
         var typeStr:String = "";
         var rebateNum:Number = 9999;
         if(type == 0)
         {
            typeStr = "“邂”“逅”";
            rebateNum = Number(MoJinActConf.numXH);
            a = 0;
            while(a < 2)
            {
               if(MoJinActData.itemA[a] < 1)
               {
                  Alert.show(Language.MOJINACT[7],"",Alert.YES);
                  return;
               }
               a++;
            }
         }
         else if(type == 1)
         {
            typeStr = "“小”“幸”“福”";
            rebateNum = Number(MoJinActConf.numXXF);
            b = 0;
            while(b < 3)
            {
               if(MoJinActData.itemB[b] < 1)
               {
                  Alert.show(Language.MOJINACT[7],"",Alert.YES);
                  return;
               }
               b++;
            }
         }
         else
         {
            typeStr = "“魔”“力”“学”“堂”";
            rebateNum = Number(MoJinActConf.numMLXT);
            c = 0;
            while(c < 4)
            {
               if(MoJinActData.itemC[c] < 1)
               {
                  Alert.show(Language.MOJINACT[7],"",Alert.YES);
                  return;
               }
               c++;
            }
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("exchangeMoJinChipGroup",null,type);
            }
         };
         Alert.show(Language.MOJINACT[9].replace("{type}",typeStr).replace("{num}",rebateNum),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function ___MoJinActPanel_Button8_click(param1:MouseEvent) : void
      {
         getLuckyBox(2);
      }
      
      public function set lb_r0(param1:Label) : void
      {
         var _loc2_:Object = this._102754663lb_r0;
         if(_loc2_ !== param1)
         {
            this._102754663lb_r0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_r0",_loc2_,param1));
         }
      }
      
      public function set lb_r1(param1:Label) : void
      {
         var _loc2_:Object = this._102754664lb_r1;
         if(_loc2_ !== param1)
         {
            this._102754664lb_r1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_r1",_loc2_,param1));
         }
      }
      
      public function set lb_r2(param1:Label) : void
      {
         var _loc2_:Object = this._102754665lb_r2;
         if(_loc2_ !== param1)
         {
            this._102754665lb_r2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_r2",_loc2_,param1));
         }
      }
      
      public function set lb_num_B1(param1:Label) : void
      {
         var _loc2_:Object = this._1260729743lb_num_B1;
         if(_loc2_ !== param1)
         {
            this._1260729743lb_num_B1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_B1",_loc2_,param1));
         }
      }
      
      public function set lb_num_B2(param1:Label) : void
      {
         var _loc2_:Object = this._1260729742lb_num_B2;
         if(_loc2_ !== param1)
         {
            this._1260729742lb_num_B2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_B2",_loc2_,param1));
         }
      }
      
      public function set helpinfo(param1:Label) : void
      {
         var _loc2_:Object = this._789140625helpinfo;
         if(_loc2_ !== param1)
         {
            this._789140625helpinfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpinfo",_loc2_,param1));
         }
      }
      
      public function set lb_num_B0(param1:Label) : void
      {
         var _loc2_:Object = this._1260729744lb_num_B0;
         if(_loc2_ !== param1)
         {
            this._1260729744lb_num_B0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_B0",_loc2_,param1));
         }
      }
      
      public function ___MoJinActPanel_Button5_click(param1:MouseEvent) : void
      {
         exchangeChip(10);
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set vsFlop(param1:ViewStack) : void
      {
         var _loc2_:Object = this._808329852vsFlop;
         if(_loc2_ !== param1)
         {
            this._808329852vsFlop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vsFlop",_loc2_,param1));
         }
      }
      
      public function set lb_point(param1:Label) : void
      {
         var _loc2_:Object = this._1147382393lb_point;
         if(_loc2_ !== param1)
         {
            this._1147382393lb_point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point",_loc2_,param1));
         }
      }
      
      private function exchangeChip(param1:Number) : void
      {
         var func:Function;
         var type:Number = param1;
         var Num:Number = Math.floor(type / 10);
         var index:Number = type % 10;
         var itemNum:Number = Number(MoJinActData[chipType[Num]][index]);
         if(itemNum < 1)
         {
            Alert.show(Language.MOJINACT[7],"",Alert.YES);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("exchangeMoJinChip",null,type);
            }
         };
         Alert.show(Language.MOJINACT[8].replace("{type}",strArr[Num][index]).replace("{num}",MoJinActConf[numArr[Num]][index]),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function refreshMoJinActData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         MoJinActConf = param1["conf"];
         MoJinActData = param1["data"];
         var _loc2_:* = 0;
         while(_loc2_ < 3)
         {
            this["lb_r" + _loc2_].htmlText = Language.MOJINACT[3].replace("{num}",MoJinActConf.luckybox[_loc2_]).replace("{type}",typeArr[_loc2_]);
            _loc2_++;
         }
         var _loc3_:String = "金";
         var _loc4_:* = 0;
         while(_loc4_ < 2)
         {
            this["lb_point_A" + _loc4_].htmlText = MoJinActConf.numA[_loc4_] + _loc3_;
            this["lb_num_A" + _loc4_].htmlText = MoJinActData.itemA[_loc4_];
            this["lb_num_AA" + _loc4_].htmlText = MoJinActData.itemA[_loc4_];
            _loc4_++;
         }
         var _loc5_:* = 0;
         while(_loc5_ < 3)
         {
            this["lb_point_B" + _loc5_].htmlText = MoJinActConf.numB[_loc5_] + _loc3_;
            this["lb_num_B" + _loc5_].htmlText = MoJinActData.itemB[_loc5_];
            this["lb_num_BB" + _loc5_].htmlText = MoJinActData.itemB[_loc5_];
            _loc5_++;
         }
         var _loc6_:* = 0;
         while(_loc6_ < 4)
         {
            this["lb_point_C" + _loc6_].htmlText = MoJinActConf.numC[_loc6_] + _loc3_;
            this["lb_num_C" + _loc6_].htmlText = MoJinActData.itemC[_loc6_];
            this["lb_num_CC" + _loc6_].htmlText = MoJinActData.itemC[_loc6_];
            _loc6_++;
         }
         lb_point_xh.htmlText = MoJinActConf.numXH + _loc3_;
         lb_point_xxf.htmlText = MoJinActConf.numXXF + _loc3_;
         lb_point_mlxt.htmlText = MoJinActConf.numMLXT + _loc3_;
         lb_point.htmlText = Language.MOJINACT[4].replace("{num}",MoJinActData.interNum);
         helpinfo.htmlText = Language.MOJINACT[10].replace("{num}",Number(MoJinActConf.payNumOne) * 10).replace("{time1}",TimeUtil.dateTimeToString(new Date(MoJinActConf.start))).replace("{time2}",TimeUtil.dateTimeToString(new Date(MoJinActConf.end)));
      }
      
      public function __bangBtn0_click(param1:MouseEvent) : void
      {
         changeView(0);
      }
      
      public function set lb_num_C3(param1:Label) : void
      {
         var _loc2_:Object = this._1260729710lb_num_C3;
         if(_loc2_ !== param1)
         {
            this._1260729710lb_num_C3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_C3",_loc2_,param1));
         }
      }
      
      public function set lb_num_C1(param1:Label) : void
      {
         var _loc2_:Object = this._1260729712lb_num_C1;
         if(_loc2_ !== param1)
         {
            this._1260729712lb_num_C1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_C1",_loc2_,param1));
         }
      }
      
      public function ___MoJinActPanel_Button2_click(param1:MouseEvent) : void
      {
         exchangeChip(0);
      }
      
      public function set lb_num_C0(param1:Label) : void
      {
         var _loc2_:Object = this._1260729713lb_num_C0;
         if(_loc2_ !== param1)
         {
            this._1260729713lb_num_C0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_C0",_loc2_,param1));
         }
      }
      
      public function ___MoJinActPanel_Button13_click(param1:MouseEvent) : void
      {
         exchangeChipGroup(0);
      }
      
      public function set lb_point_mlxt(param1:Label) : void
      {
         var _loc2_:Object = this._496824467lb_point_mlxt;
         if(_loc2_ !== param1)
         {
            this._496824467lb_point_mlxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_mlxt",_loc2_,param1));
         }
      }
      
      private function getLuckyBox(param1:Number) : void
      {
         var func:Function;
         var type:Number = param1;
         var needNum:Number = Number(MoJinActConf.luckybox[type]);
         if(needNum > MoJinActData.interNum)
         {
            Alert.show(Language.MOJINACT[5],"",Alert.YES);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("getMoJinLuckyBox",null,type);
            }
         };
         Alert.show(Language.MOJINACT[6].replace("{num}",needNum).replace("{type}",typeArr[type]),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set lb_num_C2(param1:Label) : void
      {
         var _loc2_:Object = this._1260729711lb_num_C2;
         if(_loc2_ !== param1)
         {
            this._1260729711lb_num_C2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_C2",_loc2_,param1));
         }
      }
      
      public function set lb_point_xh(param1:Label) : void
      {
         var _loc2_:Object = this._1975934120lb_point_xh;
         if(_loc2_ !== param1)
         {
            this._1975934120lb_point_xh = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_xh",_loc2_,param1));
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
      
      public function ___MoJinActPanel_Button10_click(param1:MouseEvent) : void
      {
         exchangeChip(21);
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
      
      public function set lb_point_xxf(param1:Label) : void
      {
         var _loc2_:Object = this._1124416174lb_point_xxf;
         if(_loc2_ !== param1)
         {
            this._1124416174lb_point_xxf = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_xxf",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_r1() : Label
      {
         return this._102754664lb_r1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_r2() : Label
      {
         return this._102754665lb_r2;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_r0() : Label
      {
         return this._102754663lb_r0;
      }
      
      public function ___MoJinActPanel_Button7_click(param1:MouseEvent) : void
      {
         exchangeChip(12);
      }
      
      [Bindable(event="propertyChange")]
      public function get helpinfo() : Label
      {
         return this._789140625helpinfo;
      }
      
      public function set label2(param1:Label) : void
      {
         var _loc2_:Object = this._1110417474label2;
         if(_loc2_ !== param1)
         {
            this._1110417474label2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label2",_loc2_,param1));
         }
      }
      
      public function set label3(param1:Label) : void
      {
         var _loc2_:Object = this._1110417473label3;
         if(_loc2_ !== param1)
         {
            this._1110417473label3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label3",_loc2_,param1));
         }
      }
      
      public function set label5(param1:Label) : void
      {
         var _loc2_:Object = this._1110417471label5;
         if(_loc2_ !== param1)
         {
            this._1110417471label5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label5",_loc2_,param1));
         }
      }
      
      public function set label6(param1:Label) : void
      {
         var _loc2_:Object = this._1110417470label6;
         if(_loc2_ !== param1)
         {
            this._1110417470label6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label6",_loc2_,param1));
         }
      }
      
      public function set label7(param1:Label) : void
      {
         var _loc2_:Object = this._1110417469label7;
         if(_loc2_ !== param1)
         {
            this._1110417469label7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label7",_loc2_,param1));
         }
      }
      
      public function set label4(param1:Label) : void
      {
         var _loc2_:Object = this._1110417472label4;
         if(_loc2_ !== param1)
         {
            this._1110417472label4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label4",_loc2_,param1));
         }
      }
      
      public function set label8(param1:Label) : void
      {
         var _loc2_:Object = this._1110417468label8;
         if(_loc2_ !== param1)
         {
            this._1110417468label8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vsFlop() : ViewStack
      {
         return this._808329852vsFlop;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MoJinActPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MoJinActPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MoJinActPanelWatcherSetupUtil");
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
      
      public function set label9(param1:Label) : void
      {
         var _loc2_:Object = this._1110417467label9;
         if(_loc2_ !== param1)
         {
            this._1110417467label9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label9",_loc2_,param1));
         }
      }
      
      public function set lb_point_A0(param1:Label) : void
      {
         var _loc2_:Object = this._1975932359lb_point_A0;
         if(_loc2_ !== param1)
         {
            this._1975932359lb_point_A0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_A0",_loc2_,param1));
         }
      }
      
      public function set lb_num_CC0(param1:Label) : void
      {
         var _loc2_:Object = this._427914802lb_num_CC0;
         if(_loc2_ !== param1)
         {
            this._427914802lb_num_CC0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_CC0",_loc2_,param1));
         }
      }
      
      public function ___MoJinActPanel_Button15_click(param1:MouseEvent) : void
      {
         exchangeChipGroup(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point() : Label
      {
         return this._1147382393lb_point;
      }
      
      public function set lb_num_CC3(param1:Label) : void
      {
         var _loc2_:Object = this._427914799lb_num_CC3;
         if(_loc2_ !== param1)
         {
            this._427914799lb_num_CC3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_CC3",_loc2_,param1));
         }
      }
      
      public function set lb_num_CC1(param1:Label) : void
      {
         var _loc2_:Object = this._427914801lb_num_CC1;
         if(_loc2_ !== param1)
         {
            this._427914801lb_num_CC1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_CC1",_loc2_,param1));
         }
      }
      
      public function set lb_num_CC2(param1:Label) : void
      {
         var _loc2_:Object = this._427914800lb_num_CC2;
         if(_loc2_ !== param1)
         {
            this._427914800lb_num_CC2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_CC2",_loc2_,param1));
         }
      }
      
      public function set lb_point_A1(param1:Label) : void
      {
         var _loc2_:Object = this._1975932360lb_point_A1;
         if(_loc2_ !== param1)
         {
            this._1975932360lb_point_A1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_A1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get label3() : Label
      {
         return this._1110417473label3;
      }
      
      [Bindable(event="propertyChange")]
      public function get label5() : Label
      {
         return this._1110417471label5;
      }
      
      [Bindable(event="propertyChange")]
      public function get label6() : Label
      {
         return this._1110417470label6;
      }
      
      [Bindable(event="propertyChange")]
      public function get label7() : Label
      {
         return this._1110417469label7;
      }
      
      public function ___MoJinActPanel_Button4_click(param1:MouseEvent) : void
      {
         getLuckyBox(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get label4() : Label
      {
         return this._1110417472label4;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_A1() : Label
      {
         return this._1975932360lb_point_A1;
      }
      
      [Bindable(event="propertyChange")]
      public function get label8() : Label
      {
         return this._1110417468label8;
      }
      
      [Bindable(event="propertyChange")]
      public function get label2() : Label
      {
         return this._1110417474label2;
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
      
      [Bindable(event="propertyChange")]
      public function get lb_num_CC2() : Label
      {
         return this._427914800lb_num_CC2;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_CC3() : Label
      {
         return this._427914799lb_num_CC3;
      }
      
      private function _MoJinActPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MOJINACT[0];
         _loc1_ = Language.MOJINACT[1];
         _loc1_ = Language.MOJINACT[2];
         _loc1_ = ResManager.getIconUrl(4130220000933);
         _loc1_ = ResManager.getIconUrl(4130220000935);
         _loc1_ = ResManager.getIconUrl(4130220000939);
         _loc1_ = ResManager.getIconUrl(4130220000925);
         _loc1_ = ResManager.getIconUrl(4130220000924);
         _loc1_ = ResManager.getIconUrl(4130220000936);
         _loc1_ = ResManager.getIconUrl(4130220000940);
         _loc1_ = ResManager.getIconUrl(4130220000930);
         _loc1_ = ResManager.getIconUrl(4130220000931);
         _loc1_ = ResManager.getIconUrl(4130220000932);
         _loc1_ = ResManager.getIconUrl(4130220000937);
         _loc1_ = ResManager.getIconUrl(4130220000941);
         _loc1_ = ResManager.getIconUrl(4130220000926);
         _loc1_ = ResManager.getIconUrl(4130220000927);
         _loc1_ = ResManager.getIconUrl(4130220000928);
         _loc1_ = ResManager.getIconUrl(4130220000929);
         _loc1_ = ResManager.getIconUrl(4130220000934);
         _loc1_ = ResManager.getIconUrl(4130220000925);
         _loc1_ = ResManager.getIconUrl(4130220000924);
         _loc1_ = ResManager.getIconUrl(4130220000930);
         _loc1_ = ResManager.getIconUrl(4130220000931);
         _loc1_ = ResManager.getIconUrl(4130220000932);
         _loc1_ = ResManager.getIconUrl(4130220000926);
         _loc1_ = ResManager.getIconUrl(4130220000927);
         _loc1_ = ResManager.getIconUrl(4130220000928);
         _loc1_ = ResManager.getIconUrl(4130220000929);
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initMoJinActData",null);
      }
      
      public function set lb_num_BB2(param1:Label) : void
      {
         var _loc2_:Object = this._427915792lb_num_BB2;
         if(_loc2_ !== param1)
         {
            this._427915792lb_num_BB2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_BB2",_loc2_,param1));
         }
      }
      
      public function ___MoJinActPanel_Button12_click(param1:MouseEvent) : void
      {
         exchangeChip(23);
      }
      
      public function set lb_num_BB0(param1:Label) : void
      {
         var _loc2_:Object = this._427915794lb_num_BB0;
         if(_loc2_ !== param1)
         {
            this._427915794lb_num_BB0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_num_BB0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_CC0() : Label
      {
         return this._427914802lb_num_CC0;
      }
      
      [Bindable(event="propertyChange")]
      public function get label9() : Label
      {
         return this._1110417467label9;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_B2() : Label
      {
         return this._1975932392lb_point_B2;
      }
      
      public function ___MoJinActPanel_Button1_click(param1:MouseEvent) : void
      {
         getLuckyBox(0);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_BB0() : Label
      {
         return this._427915794lb_num_BB0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_BB1() : Label
      {
         return this._427915793lb_num_BB1;
      }
      
      public function ___MoJinActPanel_Button9_click(param1:MouseEvent) : void
      {
         exchangeChip(20);
      }
      
      public function set lb_point_B2(param1:Label) : void
      {
         var _loc2_:Object = this._1975932392lb_point_B2;
         if(_loc2_ !== param1)
         {
            this._1975932392lb_point_B2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_B2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_A0() : Label
      {
         return this._1975932359lb_point_A0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_point_B0() : Label
      {
         return this._1975932390lb_point_B0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_num_BB2() : Label
      {
         return this._427915792lb_num_BB2;
      }
      
      public function set lb_point_B0(param1:Label) : void
      {
         var _loc2_:Object = this._1975932390lb_point_B0;
         if(_loc2_ !== param1)
         {
            this._1975932390lb_point_B0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_B0",_loc2_,param1));
         }
      }
      
      public function set lb_point_B1(param1:Label) : void
      {
         var _loc2_:Object = this._1975932391lb_point_B1;
         if(_loc2_ !== param1)
         {
            this._1975932391lb_point_B1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_point_B1",_loc2_,param1));
         }
      }
   }
}

