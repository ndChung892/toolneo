package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MazeInfoPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _103662810map42:Image;
      
      private var _296157064addSkipNumButton:Button;
      
      private var _103662720map15:Image;
      
      private var _3343960map4:Image;
      
      private var _3343964map8:Image;
      
      private var _103662779map32:Image;
      
      private var _103662839map50:Image;
      
      public var lanQiPic:Class;
      
      private var _103662749map23:Image;
      
      private var _103662784map37:Image;
      
      private var _124012844btnChange:Button;
      
      private var _103662809map41:Image;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _103662719map14:Image;
      
      private var _103662746map20:Image;
      
      private var _103662817map49:Image;
      
      private var _103662754map28:Image;
      
      private var _103662781map34:Image;
      
      private var _2147412359skipNum:RoundedLabel;
      
      private var _3343956map0:Image;
      
      private var _103662716map11:Image;
      
      private var _core:Core;
      
      private var _103662841map52:Image;
      
      private var _103662814map46:Image;
      
      private var _103662724map19:Image;
      
      private var _103662751map25:Image;
      
      public var mapPic:Class;
      
      private var _3343963map7:Image;
      
      public var huangPic:Class;
      
      private var _103662811map43:Image;
      
      public var huangQiPic:Class;
      
      private var _103662721map16:Image;
      
      private var _617523018MazeInfoC:Canvas;
      
      public var _MazeInfoPanel_Button5:Button;
      
      public var _MazeInfoPanel_Button6:Button;
      
      public var _MazeInfoPanel_LinkButton1:LinkButton;
      
      public var _MazeInfoPanel_LinkButton2:LinkButton;
      
      private var _103662777map30:Image;
      
      private var _103662785map38:Image;
      
      public var huiPic:Class;
      
      private var _3343959map3:Image;
      
      private var _103662747map21:Image;
      
      private var _103662755map29:Image;
      
      private var _94091838buff1:Image;
      
      private var _103662782map35:Image;
      
      private var _3343962map6:Image;
      
      private var _103662717map12:Image;
      
      private var _103662815map47:Image;
      
      private var _103662842map53:Image;
      
      private var _103662752map26:Image;
      
      public var lanPic:Class;
      
      private var _1422976620actNum:RoundedLabel;
      
      private var _103662812map44:Image;
      
      private var _103662722map17:Image;
      
      private var _94091840buff3:Image;
      
      private var _3343958map2:Image;
      
      private var _103662778map31:Image;
      
      public var _MazeInfoPanel_RoundedLabel1:RoundedLabel;
      
      public var _MazeInfoPanel_RoundedLabel3:RoundedLabel;
      
      public var _MazeInfoPanel_RoundedLabel6:RoundedLabel;
      
      private var _103662786map39:Image;
      
      private var _3343961map5:Image;
      
      mx_internal var _watchers:Array;
      
      private var _3343965map9:Image;
      
      private var _103662748map22:Image;
      
      private var _103662783map36:Image;
      
      private var _94091839buff2:Image;
      
      private var _103662808map40:Image;
      
      private var _103662718map13:Image;
      
      private var _851204994recoverNum:RoundedLabel;
      
      private var _103662816map48:Image;
      
      private var _103662753map27:Image;
      
      private var _103662780map33:Image;
      
      public var huiZhongPic:Class;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _103662715map10:Image;
      
      private var _103662813map45:Image;
      
      private var _103662840map51:Image;
      
      private var _103662723map18:Image;
      
      private var _103662750map24:Image;
      
      mx_internal var _bindings:Array;
      
      private var _1739038741addRecoverNumButton:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _3343957map1:Image;
      
      private var _94091841buff4:Image;
      
      private var _158535007mapImage:Image;
      
      public function MazeInfoPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":212,
                  "height":550,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Button,
                     "id":"btnChange",
                     "events":{"click":"__btnChange_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":0,
                           "y":240,
                           "width":12,
                           "height":25,
                           "styleName":"BtnHideButtons",
                           "visible":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"MazeInfoC",
                     "stylesFactory":function():void
                     {
                        this.backgroundAlpha = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":12,
                           "y":0,
                           "width":200,
                           "percentHeight":100,
                           "verticalScrollPolicy":"off",
                           "horizontalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":LinkButton,
                              "id":"_MazeInfoPanel_LinkButton1",
                              "events":{"click":"___MazeInfoPanel_LinkButton1_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16770560;
                                 this.textDecoration = "underline";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":20,
                                    "y":20,
                                    "width":78
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":LinkButton,
                              "id":"_MazeInfoPanel_LinkButton2",
                              "events":{"click":"___MazeInfoPanel_LinkButton2_click"},
                              "stylesFactory":function():void
                              {
                                 this.color = 16770560;
                                 this.textDecoration = "underline";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":110,
                                    "y":20,
                                    "width":78
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":0,
                                    "y":40,
                                    "height":80,
                                    "percentWidth":100,
                                    "styleName":"CanvasBorder",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":RoundedLabel,
                                       "id":"_MazeInfoPanel_RoundedLabel1",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.horizontalCenter = "0";
                                          this.fontSize = 16;
                                          this.textAlign = "center";
                                          this.fontStyle = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":5};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"buff1",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":30,
                                             "height":30,
                                             "x":40,
                                             "y":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"buff2",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":30,
                                             "height":30,
                                             "x":80,
                                             "y":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"buff3",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":30,
                                             "height":30,
                                             "x":120,
                                             "y":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Image,
                                       "id":"buff4",
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "width":30,
                                             "height":30,
                                             "x":160,
                                             "y":25
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":RoundedLabel,
                                       "id":"actNum",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.horizontalCenter = "0";
                                          this.fontSize = 12;
                                          this.textAlign = "center";
                                          this.fontStyle = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":60};
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":0,
                                    "y":120,
                                    "height":65,
                                    "percentWidth":100,
                                    "styleName":"CanvasBorder",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":RoundedLabel,
                                       "id":"_MazeInfoPanel_RoundedLabel3",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.horizontalCenter = "0";
                                          this.fontSize = 16;
                                          this.textAlign = "center";
                                          this.fontStyle = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":5};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":RoundedLabel,
                                       "id":"skipNum",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.horizontalCenter = "0";
                                          this.fontSize = 12;
                                          this.textAlign = "center";
                                          this.fontStyle = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":25};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"addSkipNumButton",
                                       "events":{"buttonDown":"__addSkipNumButton_buttonDown"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":150,
                                             "y":25,
                                             "styleName":"BtnAdd"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":RoundedLabel,
                                       "id":"recoverNum",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.horizontalCenter = "0";
                                          this.fontSize = 12;
                                          this.textAlign = "center";
                                          this.fontStyle = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":45};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Button,
                                       "id":"addRecoverNumButton",
                                       "events":{"buttonDown":"__addRecoverNumButton_buttonDown"},
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":150,
                                             "y":45,
                                             "styleName":"BtnAdd"
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "stylesFactory":function():void
                              {
                                 this.backgroundAlpha = 0;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":0,
                                    "y":185,
                                    "height":300,
                                    "percentWidth":100,
                                    "styleName":"CanvasBorder",
                                    "horizontalScrollPolicy":"off",
                                    "verticalScrollPolicy":"off",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":RoundedLabel,
                                       "id":"_MazeInfoPanel_RoundedLabel6",
                                       "stylesFactory":function():void
                                       {
                                          this.color = 16777215;
                                          this.horizontalCenter = "0";
                                          this.fontSize = 16;
                                          this.textAlign = "center";
                                          this.fontStyle = "normal";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"y":5};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":Canvas,
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "x":7,
                                             "y":0,
                                             "percentHeight":100,
                                             "percentWidth":100,
                                             "childDescriptors":[new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"mapImage",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":176,
                                                      "height":264,
                                                      "x":5,
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map0",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map1",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map2",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map3",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map4",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map5",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":30
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map6",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map7",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map8",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map9",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map10",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map11",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":59
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map12",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":88
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map13",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":88
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map14",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":88
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map15",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":88
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map16",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":88
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map17",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":88
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map18",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":117
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map19",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":117
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map20",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":117
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map21",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":117
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map22",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":117
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map23",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":117
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map24",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":146
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map25",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":146
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map26",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":146
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map27",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":146
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map28",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":146
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map29",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":146
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map30",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":175
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map31",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":175
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map32",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":175
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map33",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":175
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map34",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":175
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map35",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":175
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map36",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":204
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map37",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":204
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map38",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":204
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map39",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":204
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map40",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":204
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map41",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":204
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map42",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":233
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map43",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":233
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map44",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":233
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map45",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":233
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map46",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":233
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map47",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":233
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map48",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":5,
                                                      "y":262
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map49",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":34,
                                                      "y":262
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map50",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":63,
                                                      "y":262
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map51",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":92,
                                                      "y":262
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map52",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":121,
                                                      "y":262
                                                   };
                                                }
                                             }),new UIComponentDescriptor({
                                                "type":Image,
                                                "id":"map53",
                                                "propertiesFactory":function():Object
                                                {
                                                   return {
                                                      "width":29,
                                                      "height":29,
                                                      "x":150,
                                                      "y":262
                                                   };
                                                }
                                             })]
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "events":{"click":"___MazeInfoPanel_Button4_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":500,
                                    "x":80,
                                    "styleName":"BtnWbQuit",
                                    "height":50,
                                    "width":50
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_MazeInfoPanel_Button5",
                              "events":{"click":"___MazeInfoPanel_Button5_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "y":500,
                                    "x":10,
                                    "styleName":"BtnStdRed"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Button,
                              "id":"_MazeInfoPanel_Button6",
                              "events":{"click":"___MazeInfoPanel_Button6_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":530,
                                    "styleName":"BtnStdRed"
                                 };
                              }
                           })]
                        };
                     }
                  })]
               };
            }
         });
         mapPic = MazeInfoPanel_mapPic;
         huiPic = MazeInfoPanel_huiPic;
         huangPic = MazeInfoPanel_huangPic;
         lanPic = MazeInfoPanel_lanPic;
         lanQiPic = MazeInfoPanel_lanQiPic;
         huangQiPic = MazeInfoPanel_huangQiPic;
         huiZhongPic = MazeInfoPanel_huiZhongPic;
         _core = Core.getInstance();
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.right = "0";
            this.backgroundAlpha = 0;
         };
         this.width = 212;
         this.height = 550;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___MazeInfoPanel_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MazeInfoPanel._watcherSetupUtil = param1;
      }
      
      public function set map52(param1:Image) : void
      {
         var _loc2_:Object = this._103662841map52;
         if(_loc2_ !== param1)
         {
            this._103662841map52 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map52",_loc2_,param1));
         }
      }
      
      public function set map53(param1:Image) : void
      {
         var _loc2_:Object = this._103662842map53;
         if(_loc2_ !== param1)
         {
            this._103662842map53 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map53",_loc2_,param1));
         }
      }
      
      public function ___MazeInfoPanel_LinkButton2_click(param1:MouseEvent) : void
      {
         showPlayRule();
      }
      
      public function updateData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this.visible)
         {
            this.visible = true;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_SYS);
         if(_loc2_.sysBtnBar.visible)
         {
            _loc2_.sysBtnBar.visible = false;
         }
         var _loc3_:Object = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc3_.visible)
         {
            _loc3_.visible = false;
         }
         var _loc4_:Object = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
         if(_loc4_)
         {
            _loc4_.hide();
         }
         var _loc5_:Object = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         if(_loc5_.visible)
         {
            _loc5_.visible = false;
         }
         var _loc6_:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         if(_loc6_.visible)
         {
            _loc6_.visible = false;
         }
         if(param1.actNum >= 0)
         {
            actNum.text = Language.MAZE_INFO_PANEL_U[3].toString().replace("{num}",int(param1.actNum));
         }
         if(param1.skipNum >= 0)
         {
            skipNum.text = Language.MAZE_INFO_PANEL_U[5].toString().replace("{num}",int(param1.skipNum));
         }
         if(param1.recoverNum >= 0)
         {
            recoverNum.text = Language.MAZE_INFO_PANEL_U[7].toString().replace("{num}",int(param1.recoverNum));
         }
         var _loc7_:* = 0;
         while(_loc7_ < 53)
         {
            if(param1[_loc7_])
            {
               this["map" + _loc7_].source = lanPic;
            }
            else
            {
               this["map" + _loc7_].source = huiPic;
            }
            _loc7_++;
         }
         if(param1.currentIndex != null)
         {
            this["map" + param1.currentIndex].source = huangPic;
            this["map0"].source = lanQiPic;
            if(param1.currentIndex == 0)
            {
               this["map0"].source = huangQiPic;
            }
         }
         if(param1.mazeBuff != null)
         {
            updateMazeBuff(param1.mazeBuff);
         }
         else
         {
            updateMazeBuff(null);
         }
      }
      
      private function showBattle() : void
      {
         _core.view.changeVisible(ViewManager.PANEL_BATTLESET);
         _core.view.getUI(ViewManager.PANEL_BATTLESET).updateView();
      }
      
      public function onGetMazeData(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!this.visible)
         {
            this.visible = true;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_SYS);
         if(_loc2_.sysBtnBar.visible)
         {
            _loc2_.sysBtnBar.visible = false;
         }
         var _loc3_:Object = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(_loc3_.visible)
         {
            _loc3_.visible = false;
         }
         var _loc4_:Object = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
         if(_loc4_)
         {
            _loc4_.hide();
         }
         var _loc5_:Object = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         if(_loc5_.visible)
         {
            _loc5_.visible = false;
         }
         var _loc6_:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         if(_loc6_.visible)
         {
            _loc6_.visible = false;
         }
         actNum.text = Language.MAZE_INFO_PANEL_U[3].toString().replace("{num}",int(param1.actNum));
         skipNum.text = Language.MAZE_INFO_PANEL_U[5].toString().replace("{num}",int(param1.skipNum));
         recoverNum.text = Language.MAZE_INFO_PANEL_U[7].toString().replace("{num}",int(param1.recoverNum));
         if(param1.actNum >= 0)
         {
            actNum.text = Language.MAZE_INFO_PANEL_U[3].toString().replace("{num}",int(param1.actNum));
         }
         if(param1.skipNum >= 0)
         {
            skipNum.text = Language.MAZE_INFO_PANEL_U[5].toString().replace("{num}",int(param1.skipNum));
         }
         if(param1.recoverNum >= 0)
         {
            recoverNum.text = Language.MAZE_INFO_PANEL_U[7].toString().replace("{num}",int(param1.recoverNum));
         }
         var _loc7_:* = 0;
         while(_loc7_ < 53)
         {
            if(param1[_loc7_])
            {
               this["map" + _loc7_].source = lanPic;
            }
            else
            {
               this["map" + _loc7_].source = huiPic;
            }
            _loc7_++;
         }
         if(param1.currentIndex != null)
         {
            this["map" + param1.currentIndex].source = huangPic;
            this["map0"].source = lanQiPic;
            if(param1.currentIndex == 0)
            {
               this["map0"].source = huangQiPic;
            }
         }
         if(param1.mazeBuff != null)
         {
            updateMazeBuff(param1.mazeBuff);
         }
         else
         {
            updateMazeBuff(null);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addRecoverNumButton() : Button
      {
         return this._1739038741addRecoverNumButton;
      }
      
      public function ___MazeInfoPanel_Button5_click(param1:MouseEvent) : void
      {
         showBattle();
      }
      
      public function set addRecoverNumButton(param1:Button) : void
      {
         var _loc2_:Object = this._1739038741addRecoverNumButton;
         if(_loc2_ !== param1)
         {
            this._1739038741addRecoverNumButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addRecoverNumButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buff2() : Image
      {
         return this._94091839buff2;
      }
      
      [Bindable(event="propertyChange")]
      public function get buff4() : Image
      {
         return this._94091841buff4;
      }
      
      [Bindable(event="propertyChange")]
      public function get buff3() : Image
      {
         return this._94091840buff3;
      }
      
      [Bindable(event="propertyChange")]
      public function get buff1() : Image
      {
         return this._94091838buff1;
      }
      
      [Bindable(event="propertyChange")]
      public function get map0() : Image
      {
         return this._3343956map0;
      }
      
      [Bindable(event="propertyChange")]
      public function get map2() : Image
      {
         return this._3343958map2;
      }
      
      [Bindable(event="propertyChange")]
      public function get map3() : Image
      {
         return this._3343959map3;
      }
      
      public function set btnChange(param1:Button) : void
      {
         var _loc2_:Object = this._124012844btnChange;
         if(_loc2_ !== param1)
         {
            this._124012844btnChange = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnChange",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map6() : Image
      {
         return this._3343962map6;
      }
      
      [Bindable(event="propertyChange")]
      public function get map7() : Image
      {
         return this._3343963map7;
      }
      
      [Bindable(event="propertyChange")]
      public function get map1() : Image
      {
         return this._3343957map1;
      }
      
      [Bindable(event="propertyChange")]
      public function get map4() : Image
      {
         return this._3343960map4;
      }
      
      [Bindable(event="propertyChange")]
      public function get map8() : Image
      {
         return this._3343964map8;
      }
      
      [Bindable(event="propertyChange")]
      public function get map5() : Image
      {
         return this._3343961map5;
      }
      
      public function showPlayRule() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_MAZE_PLAY_RULE);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map9() : Image
      {
         return this._3343965map9;
      }
      
      [Bindable(event="propertyChange")]
      public function get addSkipNumButton() : Button
      {
         return this._296157064addSkipNumButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get map10() : Image
      {
         return this._103662715map10;
      }
      
      [Bindable(event="propertyChange")]
      public function get map14() : Image
      {
         return this._103662719map14;
      }
      
      public function set buff4(param1:Image) : void
      {
         var _loc2_:Object = this._94091841buff4;
         if(_loc2_ !== param1)
         {
            this._94091841buff4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buff4",_loc2_,param1));
         }
      }
      
      public function set buff1(param1:Image) : void
      {
         var _loc2_:Object = this._94091838buff1;
         if(_loc2_ !== param1)
         {
            this._94091838buff1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buff1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map12() : Image
      {
         return this._103662717map12;
      }
      
      public function set buff2(param1:Image) : void
      {
         var _loc2_:Object = this._94091839buff2;
         if(_loc2_ !== param1)
         {
            this._94091839buff2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buff2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map18() : Image
      {
         return this._103662723map18;
      }
      
      [Bindable(event="propertyChange")]
      public function get map11() : Image
      {
         return this._103662716map11;
      }
      
      [Bindable(event="propertyChange")]
      public function get map13() : Image
      {
         return this._103662718map13;
      }
      
      public function set buff3(param1:Image) : void
      {
         var _loc2_:Object = this._94091840buff3;
         if(_loc2_ !== param1)
         {
            this._94091840buff3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buff3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map17() : Image
      {
         return this._103662722map17;
      }
      
      [Bindable(event="propertyChange")]
      public function get map15() : Image
      {
         return this._103662720map15;
      }
      
      [Bindable(event="propertyChange")]
      public function get map16() : Image
      {
         return this._103662721map16;
      }
      
      [Bindable(event="propertyChange")]
      public function get map20() : Image
      {
         return this._103662746map20;
      }
      
      [Bindable(event="propertyChange")]
      public function get map19() : Image
      {
         return this._103662724map19;
      }
      
      [Bindable(event="propertyChange")]
      public function get map24() : Image
      {
         return this._103662750map24;
      }
      
      [Bindable(event="propertyChange")]
      public function get map25() : Image
      {
         return this._103662751map25;
      }
      
      [Bindable(event="propertyChange")]
      public function get map27() : Image
      {
         return this._103662753map27;
      }
      
      [Bindable(event="propertyChange")]
      public function get map22() : Image
      {
         return this._103662748map22;
      }
      
      [Bindable(event="propertyChange")]
      public function get map23() : Image
      {
         return this._103662749map23;
      }
      
      [Bindable(event="propertyChange")]
      public function get map26() : Image
      {
         return this._103662752map26;
      }
      
      public function changeVisible() : *
      {
         if(MazeInfoC.visible)
         {
            MazeInfoC.visible = false;
            btnChange.x = 200;
            btnChange.styleName = "BtnShowButtons";
         }
         else
         {
            MazeInfoC.visible = true;
            btnChange.x = 0;
            btnChange.styleName = "BtnHideButtons";
         }
      }
      
      public function ___MazeInfoPanel_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      public function set map3(param1:Image) : void
      {
         var _loc2_:Object = this._3343959map3;
         if(_loc2_ !== param1)
         {
            this._3343959map3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map3",_loc2_,param1));
         }
      }
      
      public function set map0(param1:Image) : void
      {
         var _loc2_:Object = this._3343956map0;
         if(_loc2_ !== param1)
         {
            this._3343956map0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map0",_loc2_,param1));
         }
      }
      
      public function set map4(param1:Image) : void
      {
         var _loc2_:Object = this._3343960map4;
         if(_loc2_ !== param1)
         {
            this._3343960map4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map4",_loc2_,param1));
         }
      }
      
      public function set map1(param1:Image) : void
      {
         var _loc2_:Object = this._3343957map1;
         if(_loc2_ !== param1)
         {
            this._3343957map1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map29() : Image
      {
         return this._103662755map29;
      }
      
      public function updateMazeBuff(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         if(!param1)
         {
            this["buff1"].source = "";
            this["buff2"].source = "";
            this["buff3"].source = "";
            this["buff4"].source = "";
            return;
         }
         var _loc2_:int = 1;
         for(_loc3_ in param1)
         {
            _loc4_ = _core.data.getData(GamePredef.TBL_BUFF,param1[_loc3_]);
            _loc5_ = Number(_loc4_.iconCode);
            this["buff" + _loc2_].source = ResManager.getIconUrl(_loc5_);
            this["buff" + _loc2_].toolTip = _loc4_.name;
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get MazeInfoC() : Canvas
      {
         return this._617523018MazeInfoC;
      }
      
      [Bindable(event="propertyChange")]
      public function get map30() : Image
      {
         return this._103662777map30;
      }
      
      public function set map2(param1:Image) : void
      {
         var _loc2_:Object = this._3343958map2;
         if(_loc2_ !== param1)
         {
            this._3343958map2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map35() : Image
      {
         return this._103662782map35;
      }
      
      [Bindable(event="propertyChange")]
      public function get map36() : Image
      {
         return this._103662783map36;
      }
      
      [Bindable(event="propertyChange")]
      public function get map31() : Image
      {
         return this._103662778map31;
      }
      
      [Bindable(event="propertyChange")]
      public function get map32() : Image
      {
         return this._103662779map32;
      }
      
      [Bindable(event="propertyChange")]
      public function get map28() : Image
      {
         return this._103662754map28;
      }
      
      public function set map7(param1:Image) : void
      {
         var _loc2_:Object = this._3343963map7;
         if(_loc2_ !== param1)
         {
            this._3343963map7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map7",_loc2_,param1));
         }
      }
      
      public function ___MazeInfoPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         showEventInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get map39() : Image
      {
         return this._103662786map39;
      }
      
      public function set map5(param1:Image) : void
      {
         var _loc2_:Object = this._3343961map5;
         if(_loc2_ !== param1)
         {
            this._3343961map5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map33() : Image
      {
         return this._103662780map33;
      }
      
      [Bindable(event="propertyChange")]
      public function get map34() : Image
      {
         return this._103662781map34;
      }
      
      public function set mapImage(param1:Image) : void
      {
         var _loc2_:Object = this._158535007mapImage;
         if(_loc2_ !== param1)
         {
            this._158535007mapImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mapImage",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map37() : Image
      {
         return this._103662784map37;
      }
      
      [Bindable(event="propertyChange")]
      public function get map38() : Image
      {
         return this._103662785map38;
      }
      
      public function __btnChange_click(param1:MouseEvent) : void
      {
         changeVisible();
      }
      
      public function set map6(param1:Image) : void
      {
         var _loc2_:Object = this._3343962map6;
         if(_loc2_ !== param1)
         {
            this._3343962map6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map40() : Image
      {
         return this._103662808map40;
      }
      
      [Bindable(event="propertyChange")]
      public function get map41() : Image
      {
         return this._103662809map41;
      }
      
      [Bindable(event="propertyChange")]
      public function get map42() : Image
      {
         return this._103662810map42;
      }
      
      [Bindable(event="propertyChange")]
      public function get map43() : Image
      {
         return this._103662811map43;
      }
      
      [Bindable(event="propertyChange")]
      public function get map44() : Image
      {
         return this._103662812map44;
      }
      
      [Bindable(event="propertyChange")]
      public function get map45() : Image
      {
         return this._103662813map45;
      }
      
      [Bindable(event="propertyChange")]
      public function get map21() : Image
      {
         return this._103662747map21;
      }
      
      public function ___MazeInfoPanel_Button4_click(param1:MouseEvent) : void
      {
         leaveMaze();
      }
      
      [Bindable(event="propertyChange")]
      public function get map46() : Image
      {
         return this._103662814map46;
      }
      
      private function startTransport(param1:CloseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Array = null;
         if(param1.detail == Alert.YES)
         {
            _loc2_ = false;
            if(_core.player.flyingState == GamePredef.FLYING_STATE_ON_GROUND)
            {
               if(_core.player.posMapId)
               {
                  _loc3_ = GameData.d[GamePredef.TBL_MAP][_core.player.posMapId];
                  if(Boolean(_loc3_) && Boolean(_loc3_.safeX) && Boolean(_loc3_.safeY))
                  {
                     _loc4_ = _core.player.normalView.hitTestLayer;
                     _loc5_ = _core.move.getRoute(_core.player.posX,_core.player.posY,_loc3_.safeX,_loc3_.safeY,_loc4_);
                     if(!_loc5_ || _loc5_.length <= 1)
                     {
                        if(_loc5_.length == 1 && _loc5_[0][0] == _core.player.posX && _loc5_[0][1] == _core.player.posY)
                        {
                           _loc2_ = true;
                        }
                     }
                  }
               }
            }
            if(_loc2_)
            {
               transport();
            }
            else
            {
               _core.view.getUI(ViewManager.POPU_WAIT).showText(Language.USERSYSTEMSETPANEL_S[16]);
               _core.view.getUI(ViewManager.POPU_WAIT).showTime(20);
               setTimeout(transport,20000);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map48() : Image
      {
         return this._103662816map48;
      }
      
      public function set addSkipNumButton(param1:Button) : void
      {
         var _loc2_:Object = this._296157064addSkipNumButton;
         if(_loc2_ !== param1)
         {
            this._296157064addSkipNumButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addSkipNumButton",_loc2_,param1));
         }
      }
      
      public function set map8(param1:Image) : void
      {
         var _loc2_:Object = this._3343964map8;
         if(_loc2_ !== param1)
         {
            this._3343964map8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map8",_loc2_,param1));
         }
      }
      
      public function set map9(param1:Image) : void
      {
         var _loc2_:Object = this._3343965map9;
         if(_loc2_ !== param1)
         {
            this._3343965map9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map47() : Image
      {
         return this._103662815map47;
      }
      
      public function set map11(param1:Image) : void
      {
         var _loc2_:Object = this._103662716map11;
         if(_loc2_ !== param1)
         {
            this._103662716map11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map49() : Image
      {
         return this._103662817map49;
      }
      
      public function set map10(param1:Image) : void
      {
         var _loc2_:Object = this._103662715map10;
         if(_loc2_ !== param1)
         {
            this._103662715map10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map51() : Image
      {
         return this._103662840map51;
      }
      
      public function set map12(param1:Image) : void
      {
         var _loc2_:Object = this._103662717map12;
         if(_loc2_ !== param1)
         {
            this._103662717map12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map12",_loc2_,param1));
         }
      }
      
      public function addRecoverNum() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("mazeBuyRecoverNum",new Responder(updateData),null);
            }
         };
         Alert.show(Language.MAZE_INFO_PANEL_U[11].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set map17(param1:Image) : void
      {
         var _loc2_:Object = this._103662722map17;
         if(_loc2_ !== param1)
         {
            this._103662722map17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map17",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         _core.remote.call("getMazeData",new Responder(onGetMazeData),null);
      }
      
      public function set map19(param1:Image) : void
      {
         var _loc2_:Object = this._103662724map19;
         if(_loc2_ !== param1)
         {
            this._103662724map19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map19",_loc2_,param1));
         }
      }
      
      public function set map13(param1:Image) : void
      {
         var _loc2_:Object = this._103662718map13;
         if(_loc2_ !== param1)
         {
            this._103662718map13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map13",_loc2_,param1));
         }
      }
      
      public function set map14(param1:Image) : void
      {
         var _loc2_:Object = this._103662719map14;
         if(_loc2_ !== param1)
         {
            this._103662719map14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map14",_loc2_,param1));
         }
      }
      
      public function set skipNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2147412359skipNum;
         if(_loc2_ !== param1)
         {
            this._2147412359skipNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipNum",_loc2_,param1));
         }
      }
      
      public function set recoverNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._851204994recoverNum;
         if(_loc2_ !== param1)
         {
            this._851204994recoverNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"recoverNum",_loc2_,param1));
         }
      }
      
      public function set map18(param1:Image) : void
      {
         var _loc2_:Object = this._103662723map18;
         if(_loc2_ !== param1)
         {
            this._103662723map18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map18",_loc2_,param1));
         }
      }
      
      public function leaveMaze() : *
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("mazeLeave",new Responder(onMazeLeave),null);
            }
         };
         Alert.show(Language.MAZE_INFO_PANEL_U[14].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function onMazeLeave(param1:Object) : *
      {
         if(this.visible)
         {
            this.visible = false;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_SYS);
         if(!_loc2_.sysBtnBar.visible)
         {
            _loc2_.sysBtnBar.visible = true;
         }
         var _loc3_:Object = _core.view.getUI(ViewManager.MAIN_MINIMAP);
         if(!_loc3_.visible)
         {
            _loc3_.visible = true;
         }
         var _loc4_:Object = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         if(!_loc4_.visible)
         {
            _loc4_.visible = true;
         }
      }
      
      public function set map16(param1:Image) : void
      {
         var _loc2_:Object = this._103662721map16;
         if(_loc2_ !== param1)
         {
            this._103662721map16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map16",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map52() : Image
      {
         return this._103662841map52;
      }
      
      public function set map15(param1:Image) : void
      {
         var _loc2_:Object = this._103662720map15;
         if(_loc2_ !== param1)
         {
            this._103662720map15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map15",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get map50() : Image
      {
         return this._103662839map50;
      }
      
      [Bindable(event="propertyChange")]
      public function get map53() : Image
      {
         return this._103662842map53;
      }
      
      public function set actNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1422976620actNum;
         if(_loc2_ !== param1)
         {
            this._1422976620actNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actNum",_loc2_,param1));
         }
      }
      
      private function alertTransport() : void
      {
         if(_core.state == GamePredef.ST_CORE_NORMAL)
         {
            Alert.show(Language.USERSYSTEMSETPANEL_S[15],"",Alert.YES | Alert.NO,null,startTransport);
         }
      }
      
      private function transport() : void
      {
         _core.view.hide(ViewManager.POPU_WAIT);
         if(_core.state == GamePredef.ST_CORE_NORMAL)
         {
            _core.remote.toMovable();
         }
         else
         {
            _core.sysMidNote(Language.USERSYSTEMSETPANEL_S[17]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnChange() : Button
      {
         return this._124012844btnChange;
      }
      
      public function set map20(param1:Image) : void
      {
         var _loc2_:Object = this._103662746map20;
         if(_loc2_ !== param1)
         {
            this._103662746map20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map20",_loc2_,param1));
         }
      }
      
      public function set map21(param1:Image) : void
      {
         var _loc2_:Object = this._103662747map21;
         if(_loc2_ !== param1)
         {
            this._103662747map21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map21",_loc2_,param1));
         }
      }
      
      public function set map22(param1:Image) : void
      {
         var _loc2_:Object = this._103662748map22;
         if(_loc2_ !== param1)
         {
            this._103662748map22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map22",_loc2_,param1));
         }
      }
      
      public function __addSkipNumButton_buttonDown(param1:FlexEvent) : void
      {
         addSkipNum();
      }
      
      public function __addRecoverNumButton_buttonDown(param1:FlexEvent) : void
      {
         addRecoverNum();
      }
      
      public function set map23(param1:Image) : void
      {
         var _loc2_:Object = this._103662749map23;
         if(_loc2_ !== param1)
         {
            this._103662749map23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map23",_loc2_,param1));
         }
      }
      
      public function set map27(param1:Image) : void
      {
         var _loc2_:Object = this._103662753map27;
         if(_loc2_ !== param1)
         {
            this._103662753map27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map27",_loc2_,param1));
         }
      }
      
      public function set map24(param1:Image) : void
      {
         var _loc2_:Object = this._103662750map24;
         if(_loc2_ !== param1)
         {
            this._103662750map24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map24",_loc2_,param1));
         }
      }
      
      public function set map28(param1:Image) : void
      {
         var _loc2_:Object = this._103662754map28;
         if(_loc2_ !== param1)
         {
            this._103662754map28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map28",_loc2_,param1));
         }
      }
      
      public function set map25(param1:Image) : void
      {
         var _loc2_:Object = this._103662751map25;
         if(_loc2_ !== param1)
         {
            this._103662751map25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map25",_loc2_,param1));
         }
      }
      
      public function set map29(param1:Image) : void
      {
         var _loc2_:Object = this._103662755map29;
         if(_loc2_ !== param1)
         {
            this._103662755map29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map29",_loc2_,param1));
         }
      }
      
      public function set map26(param1:Image) : void
      {
         var _loc2_:Object = this._103662752map26;
         if(_loc2_ !== param1)
         {
            this._103662752map26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map26",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mapImage() : Image
      {
         return this._158535007mapImage;
      }
      
      public function ___MazeInfoPanel_Button6_click(param1:MouseEvent) : void
      {
         alertTransport();
      }
      
      private function _MazeInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_LinkButton1.label = param1;
         },"_MazeInfoPanel_LinkButton1.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_LinkButton2.label = param1;
         },"_MazeInfoPanel_LinkButton2.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_RoundedLabel1.text = param1;
         },"_MazeInfoPanel_RoundedLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actNum.text = param1;
         },"actNum.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_RoundedLabel3.text = param1;
         },"_MazeInfoPanel_RoundedLabel3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            skipNum.text = param1;
         },"skipNum.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addSkipNumButton.toolTip = param1;
         },"addSkipNumButton.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            recoverNum.text = param1;
         },"recoverNum.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addRecoverNumButton.toolTip = param1;
         },"addRecoverNumButton.toolTip");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAZE_INFO_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_RoundedLabel6.text = param1;
         },"_MazeInfoPanel_RoundedLabel6.text");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return mapPic;
         },function(param1:Object):void
         {
            mapImage.source = param1;
         },"mapImage.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map0.source = param1;
         },"map0.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map1.source = param1;
         },"map1.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map2.source = param1;
         },"map2.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map3.source = param1;
         },"map3.source");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map4.source = param1;
         },"map4.source");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map5.source = param1;
         },"map5.source");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map6.source = param1;
         },"map6.source");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map7.source = param1;
         },"map7.source");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map8.source = param1;
         },"map8.source");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map9.source = param1;
         },"map9.source");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map10.source = param1;
         },"map10.source");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map11.source = param1;
         },"map11.source");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map12.source = param1;
         },"map12.source");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map13.source = param1;
         },"map13.source");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map14.source = param1;
         },"map14.source");
         result[25] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map15.source = param1;
         },"map15.source");
         result[26] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map16.source = param1;
         },"map16.source");
         result[27] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map17.source = param1;
         },"map17.source");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map18.source = param1;
         },"map18.source");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map19.source = param1;
         },"map19.source");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map20.source = param1;
         },"map20.source");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map21.source = param1;
         },"map21.source");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map22.source = param1;
         },"map22.source");
         result[33] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map23.source = param1;
         },"map23.source");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map24.source = param1;
         },"map24.source");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map25.source = param1;
         },"map25.source");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map26.source = param1;
         },"map26.source");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map27.source = param1;
         },"map27.source");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map28.source = param1;
         },"map28.source");
         result[39] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map29.source = param1;
         },"map29.source");
         result[40] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map30.source = param1;
         },"map30.source");
         result[41] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map31.source = param1;
         },"map31.source");
         result[42] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map32.source = param1;
         },"map32.source");
         result[43] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map33.source = param1;
         },"map33.source");
         result[44] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map34.source = param1;
         },"map34.source");
         result[45] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map35.source = param1;
         },"map35.source");
         result[46] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map36.source = param1;
         },"map36.source");
         result[47] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map37.source = param1;
         },"map37.source");
         result[48] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map38.source = param1;
         },"map38.source");
         result[49] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map39.source = param1;
         },"map39.source");
         result[50] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map40.source = param1;
         },"map40.source");
         result[51] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map41.source = param1;
         },"map41.source");
         result[52] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map42.source = param1;
         },"map42.source");
         result[53] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map43.source = param1;
         },"map43.source");
         result[54] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map44.source = param1;
         },"map44.source");
         result[55] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map45.source = param1;
         },"map45.source");
         result[56] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map46.source = param1;
         },"map46.source");
         result[57] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map47.source = param1;
         },"map47.source");
         result[58] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map48.source = param1;
         },"map48.source");
         result[59] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map49.source = param1;
         },"map49.source");
         result[60] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map50.source = param1;
         },"map50.source");
         result[61] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map51.source = param1;
         },"map51.source");
         result[62] = binding;
         binding = new Binding(this,function():Object
         {
            return huiPic;
         },function(param1:Object):void
         {
            map52.source = param1;
         },"map52.source");
         result[63] = binding;
         binding = new Binding(this,function():Object
         {
            return huiZhongPic;
         },function(param1:Object):void
         {
            map53.source = param1;
         },"map53.source");
         result[64] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MINIMAPCANVAS_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_Button5.label = param1;
         },"_MazeInfoPanel_Button5.label");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.USERSYSTEMSETPANEL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_Button6.toolTip = param1;
         },"_MazeInfoPanel_Button6.toolTip");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.USERSYSTEMSETPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MazeInfoPanel_Button6.label = param1;
         },"_MazeInfoPanel_Button6.label");
         result[67] = binding;
         return result;
      }
      
      public function set MazeInfoC(param1:Canvas) : void
      {
         var _loc2_:Object = this._617523018MazeInfoC;
         if(_loc2_ !== param1)
         {
            this._617523018MazeInfoC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"MazeInfoC",_loc2_,param1));
         }
      }
      
      public function set map30(param1:Image) : void
      {
         var _loc2_:Object = this._103662777map30;
         if(_loc2_ !== param1)
         {
            this._103662777map30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map30",_loc2_,param1));
         }
      }
      
      public function set map32(param1:Image) : void
      {
         var _loc2_:Object = this._103662779map32;
         if(_loc2_ !== param1)
         {
            this._103662779map32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map32",_loc2_,param1));
         }
      }
      
      public function set map31(param1:Image) : void
      {
         var _loc2_:Object = this._103662778map31;
         if(_loc2_ !== param1)
         {
            this._103662778map31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map31",_loc2_,param1));
         }
      }
      
      public function set map35(param1:Image) : void
      {
         var _loc2_:Object = this._103662782map35;
         if(_loc2_ !== param1)
         {
            this._103662782map35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map35",_loc2_,param1));
         }
      }
      
      public function set map36(param1:Image) : void
      {
         var _loc2_:Object = this._103662783map36;
         if(_loc2_ !== param1)
         {
            this._103662783map36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map36",_loc2_,param1));
         }
      }
      
      public function set map38(param1:Image) : void
      {
         var _loc2_:Object = this._103662785map38;
         if(_loc2_ !== param1)
         {
            this._103662785map38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map38",_loc2_,param1));
         }
      }
      
      public function set map39(param1:Image) : void
      {
         var _loc2_:Object = this._103662786map39;
         if(_loc2_ !== param1)
         {
            this._103662786map39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map39",_loc2_,param1));
         }
      }
      
      public function set map33(param1:Image) : void
      {
         var _loc2_:Object = this._103662780map33;
         if(_loc2_ !== param1)
         {
            this._103662780map33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map33",_loc2_,param1));
         }
      }
      
      public function set map34(param1:Image) : void
      {
         var _loc2_:Object = this._103662781map34;
         if(_loc2_ !== param1)
         {
            this._103662781map34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map34",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skipNum() : RoundedLabel
      {
         return this._2147412359skipNum;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MazeInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MazeInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MazeInfoPanelWatcherSetupUtil");
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
      public function get recoverNum() : RoundedLabel
      {
         return this._851204994recoverNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get actNum() : RoundedLabel
      {
         return this._1422976620actNum;
      }
      
      private function _MazeInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAZE_INFO_PANEL_U[0];
         _loc1_ = Language.MAZE_INFO_PANEL_U[1];
         _loc1_ = Language.MAZE_INFO_PANEL_U[2];
         _loc1_ = Language.MAZE_INFO_PANEL_U[3];
         _loc1_ = Language.MAZE_INFO_PANEL_U[4];
         _loc1_ = Language.MAZE_INFO_PANEL_U[5];
         _loc1_ = Language.MAZE_INFO_PANEL_U[8];
         _loc1_ = Language.MAZE_INFO_PANEL_U[7];
         _loc1_ = Language.MAZE_INFO_PANEL_U[9];
         _loc1_ = Language.MAZE_INFO_PANEL_U[6];
         _loc1_ = mapPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiPic;
         _loc1_ = huiZhongPic;
         _loc1_ = Language.MINIMAPCANVAS_U[18];
         _loc1_ = Language.USERSYSTEMSETPANEL_S[19];
         _loc1_ = Language.USERSYSTEMSETPANEL_U[4];
      }
      
      public function set map37(param1:Image) : void
      {
         var _loc2_:Object = this._103662784map37;
         if(_loc2_ !== param1)
         {
            this._103662784map37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map37",_loc2_,param1));
         }
      }
      
      public function addSkipNum() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("mazeBuySkipNum",new Responder(updateData),null);
            }
         };
         Alert.show(Language.MAZE_INFO_PANEL_U[10].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function set map40(param1:Image) : void
      {
         var _loc2_:Object = this._103662808map40;
         if(_loc2_ !== param1)
         {
            this._103662808map40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map40",_loc2_,param1));
         }
      }
      
      public function set map41(param1:Image) : void
      {
         var _loc2_:Object = this._103662809map41;
         if(_loc2_ !== param1)
         {
            this._103662809map41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map41",_loc2_,param1));
         }
      }
      
      public function set map42(param1:Image) : void
      {
         var _loc2_:Object = this._103662810map42;
         if(_loc2_ !== param1)
         {
            this._103662810map42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map42",_loc2_,param1));
         }
      }
      
      public function set map43(param1:Image) : void
      {
         var _loc2_:Object = this._103662811map43;
         if(_loc2_ !== param1)
         {
            this._103662811map43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map43",_loc2_,param1));
         }
      }
      
      public function set map44(param1:Image) : void
      {
         var _loc2_:Object = this._103662812map44;
         if(_loc2_ !== param1)
         {
            this._103662812map44 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map44",_loc2_,param1));
         }
      }
      
      public function set map45(param1:Image) : void
      {
         var _loc2_:Object = this._103662813map45;
         if(_loc2_ !== param1)
         {
            this._103662813map45 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map45",_loc2_,param1));
         }
      }
      
      public function set map46(param1:Image) : void
      {
         var _loc2_:Object = this._103662814map46;
         if(_loc2_ !== param1)
         {
            this._103662814map46 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map46",_loc2_,param1));
         }
      }
      
      public function set map47(param1:Image) : void
      {
         var _loc2_:Object = this._103662815map47;
         if(_loc2_ !== param1)
         {
            this._103662815map47 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map47",_loc2_,param1));
         }
      }
      
      public function set map48(param1:Image) : void
      {
         var _loc2_:Object = this._103662816map48;
         if(_loc2_ !== param1)
         {
            this._103662816map48 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map48",_loc2_,param1));
         }
      }
      
      public function set map49(param1:Image) : void
      {
         var _loc2_:Object = this._103662817map49;
         if(_loc2_ !== param1)
         {
            this._103662817map49 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map49",_loc2_,param1));
         }
      }
      
      public function initView() : void
      {
      }
      
      public function showEventInfo() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_MAZE_EVENT_INFO);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
      }
      
      public function set map50(param1:Image) : void
      {
         var _loc2_:Object = this._103662839map50;
         if(_loc2_ !== param1)
         {
            this._103662839map50 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map50",_loc2_,param1));
         }
      }
      
      public function set map51(param1:Image) : void
      {
         var _loc2_:Object = this._103662840map51;
         if(_loc2_ !== param1)
         {
            this._103662840map51 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"map51",_loc2_,param1));
         }
      }
   }
}

