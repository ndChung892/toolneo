package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CardGamePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _image4X:Number = 301;
      
      private var _676567394typeLab1:Label;
      
      private var _676567392typeLab3:Label;
      
      private var _now:Number = 0;
      
      private var _1012459193oneLab:Label;
      
      private var _676567390typeLab5:Label;
      
      private var _94431009card1:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":628,
               "height":429,
               "creationPolicy":"all",
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_CardGamePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cardCanvas",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "solid";
                     this.backgroundImage = "";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":117,
                        "y":39,
                        "width":501,
                        "height":372,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "styleName":"txtArea",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"mainBackImag",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":501,
                                 "height":372
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"startBtn",
                           "events":{"click":"__startBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":199.5,
                                 "y":302,
                                 "width":100.5,
                                 "height":32,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"changeLabel",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":199.5,
                                 "y":340,
                                 "width":126,
                                 "height":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"threeLab",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":177.5,
                                 "y":271,
                                 "width":192.5,
                                 "height":24
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"changeBtn",
                           "events":{"click":"__changeBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":124.5,
                                 "y":302,
                                 "width":108,
                                 "height":32,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"awardBtn",
                           "events":{"click":"__awardBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":269.5,
                                 "y":302,
                                 "width":100.5,
                                 "height":32,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"lab1",
                           "stylesFactory":function():void
                           {
                              this.color = 16187149;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":325,
                                 "y":340,
                                 "width":123,
                                 "height":17
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"soulLab",
                           "stylesFactory":function():void
                           {
                              this.color = 16187149;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":340,
                                 "width":44,
                                 "height":17
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"soulLabNum",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":38,
                                 "y":340,
                                 "width":123,
                                 "height":17
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"lab",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":408,
                                 "y":340,
                                 "width":123,
                                 "height":17
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"addPlayBtn",
                           "events":{"click":"__addPlayBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":446,
                                 "y":338,
                                 "styleName":"CrystalYellowButton"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"twoLab",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 24;
                              this.color = 65535;
                              this.top = "69";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"",
                                 "width":179,
                                 "height":30,
                                 "x":220
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"card1",
                           "events":{"click":"__card1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":8,
                                 "y":123,
                                 "width":96,
                                 "height":140,
                                 "buttonMode":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"card2",
                           "events":{"click":"__card2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":105,
                                 "y":123,
                                 "width":96,
                                 "height":140,
                                 "buttonMode":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"card3",
                           "events":{"click":"__card3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":202,
                                 "y":123,
                                 "width":96,
                                 "height":140,
                                 "buttonMode":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"card4",
                           "events":{"click":"__card4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":299,
                                 "y":123,
                                 "width":96,
                                 "height":140,
                                 "buttonMode":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"card5",
                           "events":{"click":"__card5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":396,
                                 "y":123,
                                 "width":96,
                                 "height":140,
                                 "buttonMode":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_CardGamePanel_LinkButton1",
                           "events":{"click":"___CardGamePanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 15863835;
                              this.textDecoration = "underline";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":427,
                                 "y":8,
                                 "width":78
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"oneLab",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 24;
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"",
                                 "width":179,
                                 "height":30,
                                 "x":220,
                                 "y":33.5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_CardGamePanel_LinkButton2",
                           "events":{"click":"___CardGamePanel_LinkButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.textDecoration = "underline";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":78,
                                 "y":338,
                                 "x":100
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "solid";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":39,
                        "width":99,
                        "height":367,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "styleName":"txtArea",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":98,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_CardGamePanel_Label9",
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
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan1",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":37,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":93,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan2",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":74,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan3",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":111,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab3",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan4",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":148,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab4",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan5",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":185,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab5",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan6",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":224,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab6",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan7",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":259,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab7",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan8",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":298,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab8",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "3";
                                       this.right = "3";
                                       this.top = "33";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"height":5};
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"typeCan9",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":3,
                                 "y":333,
                                 "width":95,
                                 "height":35,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"typeLab9",
                                    "stylesFactory":function():void
                                    {
                                       this.fontWeight = "normal";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":0,
                                          "width":81,
                                          "height":35
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
      
      private var _image5X:Number = 398;
      
      private var _1455232140changeBtn:Button;
      
      public var _CardGamePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _860703839twoLab:Label;
      
      private var _106893lab:Label;
      
      private var _changeTime:Number = 0;
      
      private var _1491692172soulLabNum:Label;
      
      private var _timer:Timer = new Timer(20);
      
      private var _num1:Number = -1;
      
      private var _num2:Number = -1;
      
      private var _num3:Number = -1;
      
      private var _num4:Number = -1;
      
      private var _num5:Number = -1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _alert:Alert;
      
      private var _94431011card3:Image;
      
      private var _1414633127addPlayBtn:BasicGlowButton;
      
      private var s:Number = 0;
      
      private var _core:Core = Core.getInstance();
      
      private var PM_UP_TIMES:Number = 5;
      
      private var _mMax:Number = 10;
      
      private var _2022077798soulLab:Label;
      
      private var _676835138typeCan4:Canvas;
      
      private var _ready:Boolean = false;
      
      private var _676835141typeCan1:Canvas;
      
      private var _454209194mainBackImag:Image;
      
      private var _676835136typeCan6:Canvas;
      
      private var _cardImage:Array = new Array();
      
      private var _max:Number = 5;
      
      private var _676835134typeCan8:Canvas;
      
      private var _imageWidth:Number = 96;
      
      private var _1473722127threeLab:Label;
      
      private var _676567388typeLab7:Label;
      
      private var _676567386typeLab9:Label;
      
      private var _94431012card4:Image;
      
      private var _676567393typeLab2:Label;
      
      private var _676567391typeLab4:Label;
      
      private var _helpAlert:Alert;
      
      private var _flag2:Boolean = true;
      
      private var _flag4:Boolean = true;
      
      private var _flag3:Boolean = true;
      
      private var _flag1:Boolean = true;
      
      private var _resObj:Object = {
         0:3130090000047,
         1:3130090000048,
         2:3130090000049,
         3:3130090000050,
         4:3130090000051,
         5:3130090000052,
         6:3130090000053,
         7:3130090000044,
         8:3130090000045,
         9:3130090000046
      };
      
      private var _flag5:Boolean = true;
      
      public var _CardGamePanel_LinkButton1:LinkButton;
      
      public var _CardGamePanel_LinkButton2:LinkButton;
      
      private var _174674056cardCanvas:Canvas;
      
      private var _1672591068changeLabel:Label;
      
      private var _676835139typeCan3:Canvas;
      
      private var _676835133typeCan9:Canvas;
      
      private var _3313732lab1:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _image1X:Number = 10;
      
      private var _676835140typeCan2:Canvas;
      
      private var _676835137typeCan5:Canvas;
      
      private var _94431013card5:Image;
      
      private var _indexType:Number = 8;
      
      private var _676835135typeCan7:Canvas;
      
      public var _CardGamePanel_Label9:Label;
      
      private var _image2X:Number = 107;
      
      private var _94431010card2:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1316769434startBtn:Button;
      
      private var _image3X:Number = 204;
      
      private var _CARD_AWARD:Object = {
         1:{
            "p":144000,
            "name":"Thùng 5 lá"
         },
         2:{
            "p":90000,
            "name":"Sảnh 5 lá"
         },
         3:{
            "p":54000,
            "name":"Tứ quý"
         },
         4:{
            "p":30000,
            "name":"Cù lũ"
         },
         5:{
            "p":18000,
            "name":"Sảnh 4 lá "
         },
         6:{
            "p":12000,
            "name":"Thùng 3 lá"
         },
         7:{
            "p":7200,
            "name":"2 đôi"
         },
         8:{
            "p":3600,
            "name":"1 đôi"
         },
         9:{
            "p":600,
            "name":"Không"
         }
      };
      
      mx_internal var _bindings:Array = [];
      
      private var _676567389typeLab6:Label;
      
      private var _1621978433awardBtn:Button;
      
      private var _676567387typeLab8:Label;
      
      public function CardGamePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 628;
         this.height = 429;
         this.styleName = "StandardContent";
         this.creationPolicy = "all";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___CardGamePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CardGamePanel._watcherSetupUtil = param1;
      }
      
      private function onInitCardPanel(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:Array = null;
         var _loc5_:* = undefined;
         if(param1)
         {
            _loc2_ = 1;
            while(_loc2_ <= 9)
            {
               _loc3_ = Math.ceil(Number(_CARD_AWARD[_loc2_].p) * (1 + (Number(_core.player.level) - 60) * 0.0125) / 2);
               if(_core.MC_BIRTH_FLAG[100])
               {
                  _loc3_ = Math.ceil(_loc3_ * _core.MC_BIRTH_FLAG[100]);
               }
               this["typeLab" + _loc2_].text = Language.CARD_GAME_P[13].toString().replace("{typeName}",_CARD_AWARD[_loc2_].name).replace("{point}",_loc3_);
               _loc2_++;
            }
            if(param1.flag)
            {
               _num1 = -1;
               _num2 = -1;
               _num3 = -1;
               _num4 = -1;
               _num5 = -1;
               _max = param1.max;
               _now = param1.now;
               _ready = false;
               this.lab.text = _now + "/" + _max;
               this.changeLabel.htmlText = Language.CARD_GAME_P[5].toString().replace("{num}",0);
               this.oneLab.text = Language.CARD_GAME_P[11].toString().replace("{name}","Không");
               this.twoLab.text = Language.CARD_GAME_P[12].toString().replace("{num}","Không");
               this.card1.source = _cardImage[0];
               this.card2.source = _cardImage[0];
               this.card3.source = _cardImage[0];
               this.card4.source = _cardImage[0];
               this.card5.source = _cardImage[0];
               this.changeBtn.visible = false;
               this.awardBtn.visible = false;
               this.startBtn.visible = true;
               if(ToolKit.isBigOrEqual(_now,_max))
               {
                  this.startBtn.enabled = false;
               }
               else
               {
                  this.startBtn.enabled = true;
               }
               this.threeLab.htmlText = Language.CARD_GAME_P[7].toString();
               _loc2_ = 1;
               while(_loc2_ <= 9)
               {
                  _loc3_ = Math.ceil(Number(_CARD_AWARD[_loc2_].p) * (1 + (Number(_core.player.level) - 60) * 0.0125) / 2);
                  if(_core.MC_BIRTH_FLAG[100])
                  {
                     _loc3_ = Math.ceil(_loc3_ * _core.MC_BIRTH_FLAG[100]);
                  }
                  this["typeLab" + _loc2_].text = Language.CARD_GAME_P[13].toString().replace("{typeName}",_CARD_AWARD[_loc2_].name).replace("{point}",_loc3_);
                  _loc2_++;
               }
               _loc2_ = 1;
               while(_loc2_ <= 5)
               {
                  this["card" + _loc2_].buttonMode = false;
                  _loc2_++;
               }
               this.visible = true;
            }
            else
            {
               _max = param1.max;
               _now = param1.now;
               this.lab.text = _now + "/" + _max;
               this["_flag1"] = false;
               this["_flag2"] = false;
               this["_flag3"] = false;
               this["_flag4"] = false;
               this["_flag5"] = false;
               _num1 = param1.s1;
               _num2 = param1.s2;
               _num3 = param1.s3;
               _num4 = param1.s4;
               _num5 = param1.s5;
               this._changeTime = param1.changeTime;
               this.card1.source = _cardImage[_num1];
               this.card2.source = _cardImage[_num2];
               this.card3.source = _cardImage[_num3];
               this.card4.source = _cardImage[_num4];
               this.card5.source = _cardImage[_num5];
               this.changeBtn.visible = true;
               this.awardBtn.visible = true;
               this.startBtn.visible = false;
               this.changeLabel.htmlText = Language.CARD_GAME_P[5].toString().replace("{num}",this._changeTime * 5);
               _loc4_ = new Array();
               _loc4_.push(_num1);
               _loc4_.push(_num2);
               _loc4_.push(_num3);
               _loc4_.push(_num4);
               _loc4_.push(_num5);
               _loc5_ = getCardAwardType(_loc4_);
               this.oneLab.text = Language.CARD_GAME_P[11].toString().replace("{name}",this._CARD_AWARD[_loc5_].name);
               _loc3_ = Math.ceil(Number(_CARD_AWARD[_loc5_].p) * (1 + (Number(_core.player.level) - 60) * 0.0125) / 2);
               if(_core.MC_BIRTH_FLAG[100])
               {
                  _loc3_ = Math.ceil(_loc3_ * _core.MC_BIRTH_FLAG[100]);
               }
               this.twoLab.text = Language.CARD_GAME_P[12].toString().replace("{num}",_loc3_);
               _ready = true;
               this.threeLab.htmlText = Language.CARD_GAME_P[6].toString();
               _loc2_ = 1;
               while(_loc2_ <= 9)
               {
                  _loc3_ = Math.ceil(Number(_CARD_AWARD[_loc2_].p) * (1 + (Number(_core.player.level) - 60) * 0.0125) / 2);
                  if(_core.MC_BIRTH_FLAG[100])
                  {
                     _loc3_ = Math.ceil(_loc3_ * _core.MC_BIRTH_FLAG[100]);
                  }
                  this["typeLab" + _loc2_].text = Language.CARD_GAME_P[13].toString().replace("{typeName}",_CARD_AWARD[_loc2_].name).replace("{point}",_loc3_);
                  _loc2_++;
               }
               _loc2_ = 1;
               while(_loc2_ <= 5)
               {
                  this["card" + _loc2_].buttonMode = true;
                  _loc2_++;
               }
               this.visible = true;
            }
         }
      }
      
      public function __card5_click(param1:MouseEvent) : void
      {
         overTurnCard(5);
      }
      
      public function set threeLab(param1:Label) : void
      {
         var _loc2_:Object = this._1473722127threeLab;
         if(_loc2_ !== param1)
         {
            this._1473722127threeLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"threeLab",_loc2_,param1));
         }
      }
      
      public function overTurnCard(param1:Number) : void
      {
         if(!_ready || _timer.running)
         {
            return;
         }
         var _loc2_:Array = new Array();
         if(this["_flag" + param1])
         {
            this["_flag" + param1] = false;
         }
         else
         {
            this["_flag" + param1] = true;
         }
         var _loc3_:* = {
            "index":param1,
            "flag":this["_flag" + param1],
            "num":this["_num" + param1]
         };
         _loc2_.push(_loc3_);
         overTurnCardTimer(_loc2_);
      }
      
      public function __changeBtn_click(param1:MouseEvent) : void
      {
         chageCard();
      }
      
      public function set card4(param1:Image) : void
      {
         var _loc2_:Object = this._94431012card4;
         if(_loc2_ !== param1)
         {
            this._94431012card4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"card4",_loc2_,param1));
         }
      }
      
      public function set card1(param1:Image) : void
      {
         var _loc2_:Object = this._94431009card1;
         if(_loc2_ !== param1)
         {
            this._94431009card1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"card1",_loc2_,param1));
         }
      }
      
      public function set changeLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1672591068changeLabel;
         if(_loc2_ !== param1)
         {
            this._1672591068changeLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeLabel",_loc2_,param1));
         }
      }
      
      private function getCardAwardType(param1:Array) : *
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:Number = NaN;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:Array = null;
         var _loc11_:* = undefined;
         var _loc12_:* = undefined;
         param1.sort();
         var _loc2_:Object = new Object();
         for(_loc3_ in param1)
         {
            if(param1[_loc3_])
            {
               _loc6_ = 1;
               for(_loc7_ in param1)
               {
                  if(Number(param1[_loc3_]) == Number(param1[_loc7_]) && _loc3_ != _loc7_)
                  {
                     _loc6_++;
                  }
               }
               _loc2_[param1[_loc3_]] = _loc6_;
            }
         }
         _loc4_ = 0;
         for(_loc3_ in _loc2_)
         {
            if(_loc2_[_loc3_])
            {
               _loc4_++;
            }
         }
         _loc5_ = 9;
         switch(_loc4_)
         {
            case 1:
               _loc5_ = 1;
               break;
            case 2:
               _loc8_ = false;
               for(_loc3_ in _loc2_)
               {
                  if(Boolean(_loc2_[_loc3_]) && Number(_loc2_[_loc3_]) == 4)
                  {
                     _loc8_ = true;
                  }
               }
               if(_loc8_)
               {
                  _loc5_ = 3;
               }
               else
               {
                  _loc5_ = 4;
               }
               break;
            case 3:
               _loc8_ = false;
               for(_loc3_ in _loc2_)
               {
                  if(Boolean(_loc2_[_loc3_]) && Number(_loc2_[_loc3_]) == 3)
                  {
                     _loc8_ = true;
                  }
               }
               if(_loc8_)
               {
                  _loc5_ = 6;
               }
               else
               {
                  _loc5_ = 7;
               }
               break;
            case 4:
               _loc8_ = true;
               _loc9_ = 0;
               _loc10_ = new Array();
               for(_loc3_ in _loc2_)
               {
                  if(_loc2_[_loc3_])
                  {
                     _loc10_.push(_loc3_);
                  }
               }
               _loc10_.sort();
               for(_loc3_ in _loc10_)
               {
                  if(_loc10_[_loc3_])
                  {
                     if(_loc9_ == 0)
                     {
                        _loc9_ = _loc10_[_loc3_];
                     }
                     else if(ToolKit.isEqual(ToolKit.minus(_loc10_[_loc3_],_loc9_),1))
                     {
                        _loc9_ = _loc10_[_loc3_];
                     }
                     else if(!ToolKit.isEqual(ToolKit.minus(_loc10_[_loc3_],_loc9_),1))
                     {
                        _loc8_ = false;
                        break;
                     }
                  }
               }
               if(_loc8_)
               {
                  _loc5_ = 5;
               }
               else
               {
                  _loc5_ = 8;
               }
               break;
            case 5:
               _loc11_ = false;
               _loc12_ = false;
               if(ToolKit.isEqual(ToolKit.minus(param1[3],param1[0]),3) || ToolKit.isEqual(ToolKit.minus(param1[4],param1[1]),3))
               {
                  _loc12_ = true;
               }
               if(ToolKit.isEqual(ToolKit.minus(param1[4],param1[0]),4))
               {
                  _loc11_ = true;
               }
               if(_loc11_)
               {
                  _loc5_ = 2;
               }
               else if(_loc12_)
               {
                  _loc5_ = 5;
               }
               else
               {
                  _loc5_ = 9;
               }
         }
         _loc3_ = 1;
         while(_loc3_ <= 9)
         {
            this["typeCan" + _loc3_].clearStyle("backgroundColor");
            this["typeLab" + _loc3_].setStyle("color","#FFFFFF");
            _loc3_++;
         }
         this["typeCan" + _loc5_].setStyle("backgroundColor","0x7FCDFE");
         this["typeLab" + _loc5_].setStyle("color","#0x2B333C");
         return _loc5_;
      }
      
      public function __card2_click(param1:MouseEvent) : void
      {
         overTurnCard(2);
      }
      
      public function set card2(param1:Image) : void
      {
         var _loc2_:Object = this._94431010card2;
         if(_loc2_ !== param1)
         {
            this._94431010card2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"card2",_loc2_,param1));
         }
      }
      
      public function set card3(param1:Image) : void
      {
         var _loc2_:Object = this._94431011card3;
         if(_loc2_ !== param1)
         {
            this._94431011card3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"card3",_loc2_,param1));
         }
      }
      
      public function ___CardGamePanel_LinkButton2_click(param1:MouseEvent) : void
      {
         gotosoul();
      }
      
      public function set card5(param1:Image) : void
      {
         var _loc2_:Object = this._94431013card5;
         if(_loc2_ !== param1)
         {
            this._94431013card5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"card5",_loc2_,param1));
         }
      }
      
      private function onStartGame(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         if(param1)
         {
            this.threeLab.htmlText = Language.CARD_GAME_P[6].toString();
            _ready = true;
            this["_flag1"] = false;
            this["_flag2"] = false;
            this["_flag3"] = false;
            this["_flag4"] = false;
            this["_flag5"] = false;
            this.changeBtn.visible = true;
            this.awardBtn.visible = true;
            _now = param1.useTime;
            this.lab.text = _now + "/" + _max;
            this._changeTime = param1.changeTime;
            _loc2_ = new Array();
            if(param1.s1)
            {
               _loc7_ = {
                  "index":1,
                  "flag":this["_flag1"],
                  "num":Number(param1.s1)
               };
               _num1 = param1.s1;
               _loc2_.push(_loc7_);
            }
            if(param1.s2)
            {
               _loc7_ = {
                  "index":2,
                  "flag":this["_flag2"],
                  "num":Number(param1.s2)
               };
               _num2 = param1.s2;
               _loc2_.push(_loc7_);
            }
            if(param1.s3)
            {
               _loc7_ = {
                  "index":3,
                  "flag":this["_flag3"],
                  "num":Number(param1.s3)
               };
               _num3 = param1.s3;
               _loc2_.push(_loc7_);
            }
            if(param1.s4)
            {
               _loc7_ = {
                  "index":4,
                  "flag":this["_flag4"],
                  "num":Number(param1.s4)
               };
               _num4 = param1.s4;
               _loc2_.push(_loc7_);
            }
            if(param1.s5)
            {
               _loc7_ = {
                  "index":5,
                  "flag":this["_flag5"],
                  "num":Number(param1.s5)
               };
               _num5 = param1.s5;
               _loc2_.push(_loc7_);
            }
            this.changeLabel.htmlText = Language.CARD_GAME_P[5].toString().replace("{num}",0);
            _loc3_ = new Array();
            _loc3_.push(_num1);
            _loc3_.push(_num2);
            _loc3_.push(_num3);
            _loc3_.push(_num4);
            _loc3_.push(_num5);
            _loc4_ = getCardAwardType(_loc3_);
            this.oneLab.text = Language.CARD_GAME_P[11].toString().replace("{name}",this._CARD_AWARD[_loc4_].name);
            _loc5_ = Math.ceil(Number(_CARD_AWARD[_loc4_].p) * (1 + (Number(_core.player.level) - 60) * 0.0125) / 2);
            if(_core.MC_BIRTH_FLAG[100])
            {
               _loc5_ = Math.ceil(_loc5_ * _core.MC_BIRTH_FLAG[100]);
            }
            this.twoLab.text = Language.CARD_GAME_P[12].toString().replace("{num}",_loc5_);
            overTurnCardTimer(_loc2_);
            _loc6_ = 1;
            while(_loc6_ <= 5)
            {
               this["card" + _loc6_].buttonMode = true;
               _loc6_++;
            }
         }
         else
         {
            _loc6_ = 1;
            while(_loc6_ <= 5)
            {
               this["card" + _loc6_].buttonMode = false;
               _loc6_++;
            }
            this.startBtn.visible = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lab1() : Label
      {
         return this._3313732lab1;
      }
      
      private function _CardGamePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CARD_GAME_P[14];
         _loc1_ = Language.CARD_GAME_P[10];
         _loc1_ = Language.CARD_GAME_P[8];
         _loc1_ = Language.CARD_GAME_P[9];
         _loc1_ = Language.CARD_GAME_P[1];
         _loc1_ = Language.CARD_GAME_P[23];
         _loc1_ = Language.CARD_GAME_P[22];
         _loc1_ = Language.CARD_GAME_P[23];
         _loc1_ = _core.player.soulPnt;
         _loc1_ = Language.CARD_GAME_P[23];
         _loc1_ = _now + "/" + _max;
         _loc1_ = Language.CARD_GAME_P[2];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.CARD_GAME_P[19];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.PET_SOUL_PANEL[2];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.CARD_GAME_P[18];
      }
      
      public function getCardAward() : void
      {
         var str:String;
         var tf:IUITextField;
         var handler:Function = null;
         if(!_ready)
         {
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("getCardAward",new Responder(onGetCardAward));
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         str = Language.CARD_GAME_P[16].toString();
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      private function onAddPlayTime(param1:Number) : void
      {
         addPlayBtn.enabled = true;
         if(param1)
         {
            _max = param1;
            this.lab.text = _now + "/" + _max;
            if(ToolKit.isBigOrEqual(_now,_max))
            {
               this.startBtn.enabled = false;
            }
            else
            {
               this.startBtn.enabled = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cardCanvas() : Canvas
      {
         return this._174674056cardCanvas;
      }
      
      public function set lab1(param1:Label) : void
      {
         var _loc2_:Object = this._3313732lab1;
         if(_loc2_ !== param1)
         {
            this._3313732lab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab1",_loc2_,param1));
         }
      }
      
      public function set oneLab(param1:Label) : void
      {
         var _loc2_:Object = this._1012459193oneLab;
         if(_loc2_ !== param1)
         {
            this._1012459193oneLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oneLab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab1() : Label
      {
         return this._676567394typeLab1;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab3() : Label
      {
         return this._676567392typeLab3;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulLab() : Label
      {
         return this._2022077798soulLab;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab5() : Label
      {
         return this._676567390typeLab5;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab2() : Label
      {
         return this._676567393typeLab2;
      }
      
      [Bindable(event="propertyChange")]
      public function get addPlayBtn() : BasicGlowButton
      {
         return this._1414633127addPlayBtn;
      }
      
      public function ___CardGamePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get startBtn() : Button
      {
         return this._1316769434startBtn;
      }
      
      public function chageCard() : void
      {
         var handler:Function = null;
         var str:String = null;
         var tf:IUITextField = null;
         if(!_ready)
         {
            return;
         }
         if(!_flag1 && !_flag2 && !_flag3 && !_flag5 && !_flag4)
         {
            _core.sysMidNote(Language.CARD_GAME_P[21]);
            return;
         }
         if(Boolean(Number(_changeTime)) && Number(_changeTime) > 0)
         {
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  if(!changeBtn.enabled)
                  {
                     return;
                  }
                  changeBtn.enabled = false;
                  _core.remote.call("changeCard",new Responder(onChageCard),_flag1,_flag2,_flag3,_flag4,_flag5);
               }
            };
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            str = Language.CARD_GAME_P[4].toString().replace("{num}",_changeTime * 5);
            _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = str;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
         else
         {
            changeBtn.enabled = false;
            _core.remote.call("changeCard",new Responder(onChageCard),_flag1,_flag2,_flag3,_flag4,_flag5);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab7() : Label
      {
         return this._676567388typeLab7;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab9() : Label
      {
         return this._676567386typeLab9;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeBtn() : Button
      {
         return this._1455232140changeBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab4() : Label
      {
         return this._676567391typeLab4;
      }
      
      [Bindable(event="propertyChange")]
      public function get mainBackImag() : Image
      {
         return this._454209194mainBackImag;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulLabNum() : Label
      {
         return this._1491692172soulLabNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan1() : Canvas
      {
         return this._676835141typeCan1;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan2() : Canvas
      {
         return this._676835140typeCan2;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan4() : Canvas
      {
         return this._676835138typeCan4;
      }
      
      [Bindable(event="propertyChange")]
      public function get awardBtn() : Button
      {
         return this._1621978433awardBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan6() : Canvas
      {
         return this._676835136typeCan6;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan7() : Canvas
      {
         return this._676835135typeCan7;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan8() : Canvas
      {
         return this._676835134typeCan8;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan9() : Canvas
      {
         return this._676835133typeCan9;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan3() : Canvas
      {
         return this._676835139typeCan3;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab6() : Label
      {
         return this._676567389typeLab6;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeCan5() : Canvas
      {
         return this._676835137typeCan5;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeLab8() : Label
      {
         return this._676567387typeLab8;
      }
      
      public function __card4_click(param1:MouseEvent) : void
      {
         overTurnCard(4);
      }
      
      public function initPanel() : void
      {
         if(_core.cid)
         {
            _core.remote.call("initCardPlayPanel",new Responder(onInitCardPanel));
         }
      }
      
      public function __card1_click(param1:MouseEvent) : void
      {
         overTurnCard(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get threeLab() : Label
      {
         return this._1473722127threeLab;
      }
      
      private function init() : void
      {
         var _loc1_:* = 1;
         while(_loc1_ <= 9)
         {
            this["typeLab" + _loc1_].text = Language.CARD_GAME_P[13].toString().replace("{typeName}",_CARD_AWARD[_loc1_].name).replace("{point}",_CARD_AWARD[_loc1_].p);
            if(_core.MC_BIRTH_FLAG[100])
            {
               this["typeLab" + _loc1_].text = Language.CARD_GAME_P[13].toString().replace("{typeName}",_CARD_AWARD[_loc1_].name).replace("{point}",Math.ceil(_CARD_AWARD[_loc1_].p * _core.MC_BIRTH_FLAG[100]));
            }
            _loc1_++;
         }
         mainBackImag.source = ResManager.getIconUrl(parseInt("4130090100019"));
         _cardImage.push(ResManager.hash(ResManager.getIconUrlNoHash(parseInt(_resObj[0].toString()))));
         _cardImage.push(ResManager.hash(ResManager.getIconUrlNoHash(parseInt(_resObj[1].toString()))));
         _cardImage.push(ResManager.hash(ResManager.getIconUrlNoHash(parseInt(_resObj[2].toString()))));
         _cardImage.push(ResManager.hash(ResManager.getIconUrlNoHash(parseInt(_resObj[3].toString()))));
         _cardImage.push(ResManager.hash(ResManager.getIconUrlNoHash(parseInt(_resObj[4].toString()))));
         _cardImage.push(ResManager.hash(ResManager.getIconUrlNoHash(parseInt(_resObj[5].toString()))));
         _cardImage.push(ResManager.hash(ResManager.getIconUrlNoHash(parseInt(_resObj[6].toString()))));
      }
      
      public function ___CardGamePanel_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      public function set cardCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._174674056cardCanvas;
         if(_loc2_ !== param1)
         {
            this._174674056cardCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardCanvas",_loc2_,param1));
         }
      }
      
      public function set changeBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1455232140changeBtn;
         if(_loc2_ !== param1)
         {
            this._1455232140changeBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeBtn",_loc2_,param1));
         }
      }
      
      public function set lab(param1:Label) : void
      {
         var _loc2_:Object = this._106893lab;
         if(_loc2_ !== param1)
         {
            this._106893lab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lab",_loc2_,param1));
         }
      }
      
      public function set soulLabNum(param1:Label) : void
      {
         var _loc2_:Object = this._1491692172soulLabNum;
         if(_loc2_ !== param1)
         {
            this._1491692172soulLabNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulLabNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get card1() : Image
      {
         return this._94431009card1;
      }
      
      [Bindable(event="propertyChange")]
      public function get card2() : Image
      {
         return this._94431010card2;
      }
      
      [Bindable(event="propertyChange")]
      public function get card3() : Image
      {
         return this._94431011card3;
      }
      
      [Bindable(event="propertyChange")]
      public function get card4() : Image
      {
         return this._94431012card4;
      }
      
      [Bindable(event="propertyChange")]
      public function get card5() : Image
      {
         return this._94431013card5;
      }
      
      [Bindable(event="propertyChange")]
      public function get changeLabel() : Label
      {
         return this._1672591068changeLabel;
      }
      
      public function set soulLab(param1:Label) : void
      {
         var _loc2_:Object = this._2022077798soulLab;
         if(_loc2_ !== param1)
         {
            this._2022077798soulLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulLab",_loc2_,param1));
         }
      }
      
      private function _CardGamePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CardGamePanel_BasicTitleCanvas1.text = param1;
         },"_CardGamePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            startBtn.label = param1;
         },"startBtn.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            changeBtn.label = param1;
         },"changeBtn.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            awardBtn.label = param1;
         },"awardBtn.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lab1.text = param1;
         },"lab1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lab1.toolTip = param1;
         },"lab1.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulLab.text = param1;
         },"soulLab.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulLab.toolTip = param1;
         },"soulLab.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.soulPnt;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulLabNum.text = param1;
         },"soulLabNum.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            soulLabNum.toolTip = param1;
         },"soulLabNum.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _now + "/" + _max;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lab.text = param1;
         },"lab.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addPlayBtn.label = param1;
         },"addPlayBtn.label");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            twoLab.filters = param1;
         },"twoLab.filters");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CardGamePanel_LinkButton1.label = param1;
         },"_CardGamePanel_LinkButton1.label");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            oneLab.filters = param1;
         },"oneLab.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CardGamePanel_LinkButton2.label = param1;
         },"_CardGamePanel_LinkButton2.label");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _CardGamePanel_Label9.filters = param1;
         },"_CardGamePanel_Label9.filters");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CARD_GAME_P[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CardGamePanel_Label9.text = param1;
         },"_CardGamePanel_Label9.text");
         result[17] = binding;
         return result;
      }
      
      public function set startBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1316769434startBtn;
         if(_loc2_ !== param1)
         {
            this._1316769434startBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startBtn",_loc2_,param1));
         }
      }
      
      public function set typeLab1(param1:Label) : void
      {
         var _loc2_:Object = this._676567394typeLab1;
         if(_loc2_ !== param1)
         {
            this._676567394typeLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab1",_loc2_,param1));
         }
      }
      
      public function set typeLab2(param1:Label) : void
      {
         var _loc2_:Object = this._676567393typeLab2;
         if(_loc2_ !== param1)
         {
            this._676567393typeLab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab2",_loc2_,param1));
         }
      }
      
      public function set typeLab3(param1:Label) : void
      {
         var _loc2_:Object = this._676567392typeLab3;
         if(_loc2_ !== param1)
         {
            this._676567392typeLab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab3",_loc2_,param1));
         }
      }
      
      public function set typeLab5(param1:Label) : void
      {
         var _loc2_:Object = this._676567390typeLab5;
         if(_loc2_ !== param1)
         {
            this._676567390typeLab5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab5",_loc2_,param1));
         }
      }
      
      public function set typeLab9(param1:Label) : void
      {
         var _loc2_:Object = this._676567386typeLab9;
         if(_loc2_ !== param1)
         {
            this._676567386typeLab9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab9",_loc2_,param1));
         }
      }
      
      public function set addPlayBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1414633127addPlayBtn;
         if(_loc2_ !== param1)
         {
            this._1414633127addPlayBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addPlayBtn",_loc2_,param1));
         }
      }
      
      private function getImageX(param1:Number) : Object
      {
         var _loc2_:Number = 10;
         switch(param1)
         {
            case 1:
               _loc2_ = _image1X;
               break;
            case 2:
               _loc2_ = _image2X;
               break;
            case 3:
               _loc2_ = _image3X;
               break;
            case 4:
               _loc2_ = _image4X;
               break;
            case 5:
               _loc2_ = _image5X;
         }
         return _loc2_;
      }
      
      public function set mainBackImag(param1:Image) : void
      {
         var _loc2_:Object = this._454209194mainBackImag;
         if(_loc2_ !== param1)
         {
            this._454209194mainBackImag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainBackImag",_loc2_,param1));
         }
      }
      
      public function set typeLab7(param1:Label) : void
      {
         var _loc2_:Object = this._676567388typeLab7;
         if(_loc2_ !== param1)
         {
            this._676567388typeLab7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oneLab() : Label
      {
         return this._1012459193oneLab;
      }
      
      private function getCardImageObj(param1:Number) : Object
      {
         var _loc2_:* = undefined;
         switch(param1)
         {
            case 1:
               _loc2_ = this.card1;
               break;
            case 2:
               _loc2_ = this.card2;
               break;
            case 3:
               _loc2_ = this.card3;
               break;
            case 4:
               _loc2_ = this.card4;
               break;
            case 5:
               _loc2_ = this.card5;
         }
         return _loc2_;
      }
      
      public function set typeLab6(param1:Label) : void
      {
         var _loc2_:Object = this._676567389typeLab6;
         if(_loc2_ !== param1)
         {
            this._676567389typeLab6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab6",_loc2_,param1));
         }
      }
      
      public function set typeLab8(param1:Label) : void
      {
         var _loc2_:Object = this._676567387typeLab8;
         if(_loc2_ !== param1)
         {
            this._676567387typeLab8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab8",_loc2_,param1));
         }
      }
      
      public function set twoLab(param1:Label) : void
      {
         var _loc2_:Object = this._860703839twoLab;
         if(_loc2_ !== param1)
         {
            this._860703839twoLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"twoLab",_loc2_,param1));
         }
      }
      
      public function startGame() : void
      {
         if(_ready)
         {
            return;
         }
         this.startBtn.visible = false;
         _core.remote.call("startGame",new Responder(onStartGame));
      }
      
      public function set typeCan1(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835141typeCan1;
         if(_loc2_ !== param1)
         {
            this._676835141typeCan1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan1",_loc2_,param1));
         }
      }
      
      public function set typeCan2(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835140typeCan2;
         if(_loc2_ !== param1)
         {
            this._676835140typeCan2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan2",_loc2_,param1));
         }
      }
      
      public function set typeCan3(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835139typeCan3;
         if(_loc2_ !== param1)
         {
            this._676835139typeCan3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan3",_loc2_,param1));
         }
      }
      
      public function set typeLab4(param1:Label) : void
      {
         var _loc2_:Object = this._676567391typeLab4;
         if(_loc2_ !== param1)
         {
            this._676567391typeLab4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeLab4",_loc2_,param1));
         }
      }
      
      public function set typeCan4(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835138typeCan4;
         if(_loc2_ !== param1)
         {
            this._676835138typeCan4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan4",_loc2_,param1));
         }
      }
      
      public function set awardBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1621978433awardBtn;
         if(_loc2_ !== param1)
         {
            this._1621978433awardBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardBtn",_loc2_,param1));
         }
      }
      
      public function __startBtn_click(param1:MouseEvent) : void
      {
         startGame();
      }
      
      public function set typeCan5(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835137typeCan5;
         if(_loc2_ !== param1)
         {
            this._676835137typeCan5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan5",_loc2_,param1));
         }
      }
      
      public function set typeCan9(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835133typeCan9;
         if(_loc2_ !== param1)
         {
            this._676835133typeCan9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan9",_loc2_,param1));
         }
      }
      
      public function set typeCan6(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835136typeCan6;
         if(_loc2_ !== param1)
         {
            this._676835136typeCan6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan6",_loc2_,param1));
         }
      }
      
      public function set typeCan7(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835135typeCan7;
         if(_loc2_ !== param1)
         {
            this._676835135typeCan7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan7",_loc2_,param1));
         }
      }
      
      private function onChageCard(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         changeBtn.enabled = true;
         if(param1)
         {
            _loc2_ = new Array();
            if(param1.s1)
            {
               this["_flag1"] = false;
               _loc6_ = {
                  "index":1,
                  "flag":this["_flag1"],
                  "num":Number(param1.s1)
               };
               _num1 = param1.s1;
               _loc2_.push(_loc6_);
            }
            if(param1.s2)
            {
               this["_flag2"] = false;
               _loc6_ = {
                  "index":2,
                  "flag":this["_flag2"],
                  "num":Number(param1.s2)
               };
               _num2 = param1.s2;
               _loc2_.push(_loc6_);
            }
            if(param1.s3)
            {
               this["_flag3"] = false;
               _loc6_ = {
                  "index":3,
                  "flag":this["_flag3"],
                  "num":Number(param1.s3)
               };
               _num3 = param1.s3;
               _loc2_.push(_loc6_);
            }
            if(param1.s4)
            {
               this["_flag4"] = false;
               _loc6_ = {
                  "index":4,
                  "flag":this["_flag4"],
                  "num":Number(param1.s4)
               };
               _num4 = param1.s4;
               _loc2_.push(_loc6_);
            }
            if(param1.s5)
            {
               this["_flag5"] = false;
               _loc6_ = {
                  "index":5,
                  "flag":this["_flag5"],
                  "num":Number(param1.s5)
               };
               _num5 = param1.s5;
               _loc2_.push(_loc6_);
            }
            this._changeTime = param1.changeTime;
            this.changeLabel.htmlText = Language.CARD_GAME_P[5].toString().replace("{num}",this._changeTime * 5);
            _loc3_ = new Array();
            _loc3_.push(_num1);
            _loc3_.push(_num2);
            _loc3_.push(_num3);
            _loc3_.push(_num4);
            _loc3_.push(_num5);
            _loc4_ = getCardAwardType(_loc3_);
            this.oneLab.text = Language.CARD_GAME_P[11].toString().replace("{name}",this._CARD_AWARD[_loc4_].name);
            _loc5_ = Math.ceil(Number(_CARD_AWARD[_loc4_].p) * (1 + (Number(_core.player.level) - 60) * 0.0125) / 2);
            if(_core.MC_BIRTH_FLAG[100])
            {
               _loc5_ = Math.ceil(_loc5_ * _core.MC_BIRTH_FLAG[100]);
            }
            this.twoLab.text = Language.CARD_GAME_P[12].toString().replace("{num}",_loc5_);
            overTurnCardTimer(_loc2_);
         }
      }
      
      public function __card3_click(param1:MouseEvent) : void
      {
         overTurnCard(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get lab() : Label
      {
         return this._106893lab;
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CARD_GAME_P[20].toString();
         _helpAlert = Alert.show(_loc1_,Language.CARD_GAME_P[19].toString(),Alert.YES,null,null);
      }
      
      public function set typeCan8(param1:Canvas) : void
      {
         var _loc2_:Object = this._676835134typeCan8;
         if(_loc2_ !== param1)
         {
            this._676835134typeCan8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeCan8",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CardGamePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CardGamePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CardGamePanelWatcherSetupUtil");
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
      public function get twoLab() : Label
      {
         return this._860703839twoLab;
      }
      
      private function overTurnCardTimer(param1:Array) : void
      {
         var func:Function = null;
         var i:* = undefined;
         var cardIndex:String = null;
         var cardResIndex:String = null;
         var obj1:* = undefined;
         var indexArr:Array = param1;
         func = function(param1:Event):void
         {
            var _loc2_:* = undefined;
            var _loc3_:* = undefined;
            var _loc4_:String = null;
            var _loc5_:String = null;
            if(s == 0)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     _loc3_.scaleX = 0.75;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 1)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     _loc3_.scaleX = 0.5;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 2)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     _loc3_.scaleX = 0.25;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 3)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     _loc3_.scaleX = 0.03;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 4)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc4_ = indexArr[_loc2_].index.toString();
                     _loc5_ = indexArr[_loc2_].num.toString();
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     if(indexArr[_loc2_].flag)
                     {
                        _loc3_.source = _cardImage[0];
                     }
                     else
                     {
                        _loc3_.source = _cardImage[_loc5_];
                     }
                     _loc3_.scaleX = 0.03;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 5)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     _loc3_.scaleX = 0.25;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 6)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     _loc3_.scaleX = 0.5;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 7)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     _loc3_.scaleX = 0.75;
                     _loc3_.scaleY = 1;
                  }
               }
               ++s;
            }
            else if(s == 8)
            {
               for(_loc2_ in indexArr)
               {
                  if(indexArr[_loc2_])
                  {
                     _loc4_ = indexArr[_loc2_].index.toString();
                     _loc5_ = indexArr[_loc2_].num.toString();
                     _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                     if(indexArr[_loc2_].flag)
                     {
                        _loc3_.source = _cardImage[0];
                     }
                     else
                     {
                        _loc3_.source = _cardImage[_loc5_];
                     }
                     _loc3_.scaleX = 1;
                     _loc3_.scaleY = 1;
                  }
               }
               s = 0;
               _timer.removeEventListener(TimerEvent.TIMER,func);
               _timer.stop();
            }
            for(_loc2_ in indexArr)
            {
               if(indexArr[_loc2_])
               {
                  _loc3_ = getCardImageObj(Number(indexArr[_loc2_].index));
                  _loc3_.x = getImageX(Number(indexArr[_loc2_].index)) + _imageWidth * (1 - _loc3_.scaleX) / 2;
               }
            }
         };
         if(_timer.running)
         {
            _timer.removeEventListener(TimerEvent.TIMER,func);
            _timer.stop();
         }
         i = 1;
         while(i <= 5)
         {
            this["card" + i].x = getImageX(i);
            this["card" + i].width = _imageWidth;
            this["card" + i].scaleX = 1;
            i++;
         }
         _timer.addEventListener(TimerEvent.TIMER,func);
         _timer.start();
         for(i in indexArr)
         {
            if(indexArr[i])
            {
               cardIndex = indexArr[i].index.toString();
               cardResIndex = indexArr[i].num.toString();
               obj1 = getCardImageObj(Number(indexArr[i].index));
               if(indexArr[i].flag)
               {
                  obj1.source = _cardImage[cardResIndex];
               }
               else
               {
                  obj1.source = _cardImage[0];
               }
            }
         }
      }
      
      public function __addPlayBtn_click(param1:MouseEvent) : void
      {
         addPlayTime();
      }
      
      private function gotosoul() : void
      {
         _core.view.show(ViewManager.POPU_SOUL_PRODUCT);
      }
      
      public function addPlayTime() : void
      {
         var str:String;
         var tf:IUITextField;
         var _gold:Number;
         var handler:Function = null;
         var max:Number = _mMax;
         if(Boolean(_core.player.pmLevel) && ToolKit.isBigThan(_core.player.pmLevel,0))
         {
            max = ToolKit.add(_mMax,_core.player.pmLevel * PM_UP_TIMES);
         }
         if(_max >= max)
         {
            _core.sysMsg(Language.CARD_GAME_P[15]);
            return;
         }
         handler = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               if(!addPlayBtn.enabled)
               {
                  return;
               }
               addPlayBtn.enabled = false;
               _core.remote.call("addPlayTime",new Responder(onAddPlayTime));
            }
         };
         if(_alert)
         {
            PopUpManager.removePopUp(_alert);
            _alert = null;
         }
         _gold = ToolKit.add(ToolKit.minus(_max,5) * 5,20);
         if(Boolean(_gold) && ToolKit.isBigThan(_gold,40))
         {
            _gold = 40;
         }
         str = Language.CARD_GAME_P[3].toString().replace("{num}",_gold);
         _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
         tf = _alert.mx_internal::alertForm.mx_internal::textField;
         tf.htmlText = str;
         tf.filters = GamePredef.FILTER_TEXT1;
      }
      
      public function __awardBtn_click(param1:MouseEvent) : void
      {
         getCardAward();
      }
      
      private function onGetCardAward(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:* = undefined;
         if(param1)
         {
            _ready = false;
            _flag1 = true;
            _flag2 = true;
            _flag3 = true;
            _flag4 = true;
            _flag5 = true;
            _loc2_ = new Array();
            _loc2_.push({
               "index":1,
               "flag":_flag1,
               "num":_num1
            });
            _loc2_.push({
               "index":2,
               "flag":_flag2,
               "num":_num2
            });
            _loc2_.push({
               "index":3,
               "flag":_flag3,
               "num":_num3
            });
            _loc2_.push({
               "index":4,
               "flag":_flag4,
               "num":_num4
            });
            _loc2_.push({
               "index":5,
               "flag":_flag5,
               "num":_num5
            });
            this.changeLabel.htmlText = Language.CARD_GAME_P[5].toString().replace("{num}",0);
            this.threeLab.htmlText = Language.CARD_GAME_P[7].toString();
            _num1 = -1;
            _num2 = -1;
            _num3 = -1;
            _num4 = -1;
            _num5 = -1;
            this.changeBtn.visible = false;
            this.awardBtn.visible = false;
            if(ToolKit.isBigOrEqual(_now,_max))
            {
               this.startBtn.enabled = false;
            }
            else
            {
               this.startBtn.enabled = true;
            }
            this.startBtn.visible = true;
            this.oneLab.text = Language.CARD_GAME_P[11].toString().replace("{name}","Không");
            this.twoLab.text = Language.CARD_GAME_P[12].toString().replace("{num}","Không");
            overTurnCardTimer(_loc2_);
            _loc3_ = 1;
            while(_loc3_ <= 5)
            {
               this["card" + _loc3_].buttonMode = false;
               _loc3_++;
            }
         }
      }
   }
}

