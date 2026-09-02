package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.controls.NumericStepper;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WorldCupVSPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _104584966name1:Image;
      
      private var _3236047img2:Image;
      
      private var _1483077561myCost2:Label;
      
      private var _1607243192endTime:Label;
      
      private var _582286198introCon:IntroText;
      
      private var _105589645odds1:Label;
      
      private var _109211220save1:DelayButton;
      
      private var _1483077560myCost1:Label;
      
      private var _3392875num1:NumericStepper;
      
      private var _383327001astrologicTitle:BasicTitleCanvas;
      
      private var jieduanImage:Object = {
         7:4130220000472,
         6:4130220000473,
         5:4130220000474,
         4:4130220000475,
         2:4130220000475
      };
      
      private var _100348227info1:Canvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1289067869infoCenter:Canvas;
      
      private var _alert:Alert;
      
      public var _WorldCupVSPanel_Label2:Label;
      
      public var _WorldCupVSPanel_Label8:Label;
      
      public var _WorldCupVSPanel_Label9:Label;
      
      public var _WorldCupVSPanel_Label3:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _3236046img1:Image;
      
      private var _104584967name2:Image;
      
      mx_internal var _watchers:Array = [];
      
      public var _WorldCupVSPanel_DelayButton3:DelayButton;
      
      private var _1269235816myCost21:Label;
      
      private var _3392874num0:NumericStepper;
      
      public var _WorldCupVSPanel_DelayButton4:DelayButton;
      
      private var _1269235815myCost22:Label;
      
      private var _105589646odds2:Label;
      
      private var _109211221save2:DelayButton;
      
      private var _dataObj:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _WorldCupVSPanel_Label10:Label;
      
      private var _100348228info2:Canvas;
      
      public var _WorldCupVSPanel_Label15:Label;
      
      public var _WorldCupVSPanel_Label16:Label;
      
      public var _WorldCupVSPanel_Label17:Label;
      
      public var _WorldCupVSPanel_Image1:Image;
      
      private var _1269235846myCost12:Label;
      
      private var _1017301854myLimit1:Label;
      
      private var _1269235847myCost11:Label;
      
      private var _873453351title1:Image;
      
      mx_internal var _bindings:Array = [];
      
      public var _WorldCupVSPanel_Label20:Label;
      
      private var _1017301853myLimit2:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":600,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"astrologicTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":43,
                        "styleName":"RoundedGradientBorder",
                        "width":575,
                        "height":440,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_WorldCupVSPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":569,
                                 "height":438,
                                 "x":3,
                                 "y":3
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"img1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":35,
                                 "y":19.9,
                                 "width":133,
                                 "height":135
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"img2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":419.35,
                                 "y":21.6,
                                 "width":133,
                                 "height":135
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"title1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":208,
                                 "y":20,
                                 "width":163,
                                 "height":39
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"endTime",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.color = 16777015;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":182,
                                 "y":175.9,
                                 "width":211,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"info1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":225.9,
                                 "styleName":"RoundedGradientBorder",
                                 "width":164,
                                 "height":204.1,
                                 "visible":true,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":56,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myCost1",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":34,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myCost11",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":142,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myCost12",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":182,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myLimit1",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":102,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"num0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "stepSize":1,
                                          "maximum":99999999999,
                                          "x":21,
                                          "y":77,
                                          "width":74
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label8",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":124,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label9",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":165,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"save1",
                                    "events":{"click":"__save1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":100,
                                          "y":77,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":48
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"info2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":401,
                                 "y":225.9,
                                 "styleName":"RoundedGradientBorder",
                                 "width":164,
                                 "height":204.1,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label10",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myCost2",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":34,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myCost21",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":142,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myCost22",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":182,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"myLimit2",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777015;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":102,
                                          "width":144
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label15",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":56,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"num1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "stepSize":1,
                                          "maximum":99999999999,
                                          "x":21,
                                          "y":77,
                                          "width":74
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label16",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":124,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_WorldCupVSPanel_Label17",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":165,
                                          "width":144,
                                          "height":23
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"save2",
                                    "events":{"click":"__save2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":98,
                                          "y":77,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":48
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"infoCenter",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":182,
                                 "y":225.9,
                                 "styleName":"RoundedGradientBorder",
                                 "width":211,
                                 "height":204.1,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"introCon",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":200,
                                          "height":165,
                                          "x":5,
                                          "y":6
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"_WorldCupVSPanel_DelayButton3",
                                    "events":{"click":"___WorldCupVSPanel_DelayButton3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":7,
                                          "y":175.1,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":95
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":DelayButton,
                                    "id":"_WorldCupVSPanel_DelayButton4",
                                    "events":{"click":"___WorldCupVSPanel_DelayButton4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":110,
                                          "y":175.1,
                                          "clickDelay":3000,
                                          "styleName":"BtnStdRed",
                                          "width":95
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"name1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":42.5,
                                 "y":158.9,
                                 "width":120,
                                 "height":34
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"odds1",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.fontSize = 15;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":30,
                                 "y":194.9,
                                 "width":144,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"name2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":426.35,
                                 "y":158.9,
                                 "width":120,
                                 "height":34
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"odds2",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.fontSize = 15;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":414.35,
                                 "y":194.9,
                                 "width":144,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_WorldCupVSPanel_Label20",
                           "stylesFactory":function():void
                           {
                              this.color = 33023;
                              this.fontSize = 15;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":428.35,
                                 "y":194.9,
                                 "width":40,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_WorldCupVSPanel_Label21",
                           "stylesFactory":function():void
                           {
                              this.color = 33023;
                              this.fontSize = 15;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":46.5,
                                 "y":194.9,
                                 "width":40,
                                 "height":23
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _WorldCupVSPanel_Label21:Label;
      
      public function WorldCupVSPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 600;
         this.height = 500;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WorldCupVSPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get name2() : Image
      {
         return this._104584967name2;
      }
      
      [Bindable(event="propertyChange")]
      public function get name1() : Image
      {
         return this._104584966name1;
      }
      
      public function set name2(param1:Image) : void
      {
         var _loc2_:Object = this._104584967name2;
         if(_loc2_ !== param1)
         {
            this._104584967name2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name2",_loc2_,param1));
         }
      }
      
      public function set name1(param1:Image) : void
      {
         var _loc2_:Object = this._104584966name1;
         if(_loc2_ !== param1)
         {
            this._104584966name1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"name1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myLimit2() : Label
      {
         return this._1017301853myLimit2;
      }
      
      [Bindable(event="propertyChange")]
      public function get astrologicTitle() : BasicTitleCanvas
      {
         return this._383327001astrologicTitle;
      }
      
      public function set odds1(param1:Label) : void
      {
         var _loc2_:Object = this._105589645odds1;
         if(_loc2_ !== param1)
         {
            this._105589645odds1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"odds1",_loc2_,param1));
         }
      }
      
      public function set save2(param1:DelayButton) : void
      {
         var _loc2_:Object = this._109211221save2;
         if(_loc2_ !== param1)
         {
            this._109211221save2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"save2",_loc2_,param1));
         }
      }
      
      public function set odds2(param1:Label) : void
      {
         var _loc2_:Object = this._105589646odds2;
         if(_loc2_ !== param1)
         {
            this._105589646odds2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"odds2",_loc2_,param1));
         }
      }
      
      public function set myCost21(param1:Label) : void
      {
         var _loc2_:Object = this._1269235816myCost21;
         if(_loc2_ !== param1)
         {
            this._1269235816myCost21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myCost21",_loc2_,param1));
         }
      }
      
      public function set astrologicTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._383327001astrologicTitle;
         if(_loc2_ !== param1)
         {
            this._383327001astrologicTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"astrologicTitle",_loc2_,param1));
         }
      }
      
      public function set myCost22(param1:Label) : void
      {
         var _loc2_:Object = this._1269235815myCost22;
         if(_loc2_ !== param1)
         {
            this._1269235815myCost22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myCost22",_loc2_,param1));
         }
      }
      
      public function __save2_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOutByGold(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get info1() : Canvas
      {
         return this._100348227info1;
      }
      
      public function set infoCenter(param1:Canvas) : void
      {
         var _loc2_:Object = this._1289067869infoCenter;
         if(_loc2_ !== param1)
         {
            this._1289067869infoCenter = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoCenter",_loc2_,param1));
         }
      }
      
      public function initWorldCupVSPanel(param1:Object) : void
      {
         _dataObj = param1;
         initView();
         visible = true;
      }
      
      public function set myLimit2(param1:Label) : void
      {
         var _loc2_:Object = this._1017301853myLimit2;
         if(_loc2_ !== param1)
         {
            this._1017301853myLimit2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLimit2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info2() : Canvas
      {
         return this._100348228info2;
      }
      
      [Bindable(event="propertyChange")]
      public function get save1() : DelayButton
      {
         return this._109211220save1;
      }
      
      [Bindable(event="propertyChange")]
      public function get endTime() : Label
      {
         return this._1607243192endTime;
      }
      
      [Bindable(event="propertyChange")]
      public function get save2() : DelayButton
      {
         return this._109211221save2;
      }
      
      public function set myLimit1(param1:Label) : void
      {
         var _loc2_:Object = this._1017301854myLimit1;
         if(_loc2_ !== param1)
         {
            this._1017301854myLimit1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myLimit1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get num1() : NumericStepper
      {
         return this._3392875num1;
      }
      
      public function set myCost1(param1:Label) : void
      {
         var _loc2_:Object = this._1483077560myCost1;
         if(_loc2_ !== param1)
         {
            this._1483077560myCost1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myCost1",_loc2_,param1));
         }
      }
      
      public function set myCost2(param1:Label) : void
      {
         var _loc2_:Object = this._1483077561myCost2;
         if(_loc2_ !== param1)
         {
            this._1483077561myCost2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myCost2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myCost11() : Label
      {
         return this._1269235847myCost11;
      }
      
      [Bindable(event="propertyChange")]
      public function get myCost12() : Label
      {
         return this._1269235846myCost12;
      }
      
      [Bindable(event="propertyChange")]
      public function get introCon() : IntroText
      {
         return this._582286198introCon;
      }
      
      [Bindable(event="propertyChange")]
      public function get num0() : NumericStepper
      {
         return this._3392874num0;
      }
      
      public function set info1(param1:Canvas) : void
      {
         var _loc2_:Object = this._100348227info1;
         if(_loc2_ !== param1)
         {
            this._100348227info1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info1",_loc2_,param1));
         }
      }
      
      public function ___WorldCupVSPanel_DelayButton3_click(param1:MouseEvent) : void
      {
         bangSele(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get odds1() : Label
      {
         return this._105589645odds1;
      }
      
      [Bindable(event="propertyChange")]
      public function get odds2() : Label
      {
         return this._105589646odds2;
      }
      
      public function set info2(param1:Canvas) : void
      {
         var _loc2_:Object = this._100348228info2;
         if(_loc2_ !== param1)
         {
            this._100348228info2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info2",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WorldCupVSPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WorldCupVSPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WorldCupVSPanelWatcherSetupUtil");
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
      
      private function saveCalculateResultOnKnockOutByGold(param1:Number) : void
      {
         var goldNum:Number = NaN;
         var handler:Function = null;
         var str:String = null;
         var tf:IUITextField = null;
         var num:Number = param1;
         goldNum = Math.ceil(this["num" + num].value);
         if(Boolean(_dataObj[num]) && Boolean(goldNum) && ToolKit.isBigThan(goldNum,0))
         {
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.call("updateCharWorldCupDataByGold",null,_dataObj[num]["state"],_dataObj[num]["group"],_dataObj[num]["team"],goldNum);
               }
            };
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            str = Language.WORLD_CUP_VS_PANEL[7].toString().replace("{num}",goldNum).replace("{city}",GamePredef.WORLD_CUP_INFO[_dataObj[num]["team"]].name);
            _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = str;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myCost22() : Label
      {
         return this._1269235815myCost22;
      }
      
      private function initPanelData(param1:Object) : void
      {
         this["img1"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[param1[0]["team"]].icon2));
         this["img2"].source = ResManager.getIconUrl(parseInt(GamePredef.WORLD_CUP_INFO[param1[1]["team"]].icon2));
         var _loc2_:Date = new Date(param1[0]["time"]);
         var _loc3_:String = _loc2_.fullYear + "/" + (_loc2_.month + 1) + "/" + _loc2_.date + " " + _loc2_.hours + ":" + _loc2_.minutes + ":" + _loc2_.seconds;
         _loc3_ = Language.WORLD_CUP_PANEL[30].replace("{time}",_loc3_) + "\n";
         this["endTime"].text = _loc3_;
         this["name1"].source = ResManager.getIconUrl(GamePredef.WORLD_CUP_INFO[param1[0]["team"]].icon3);
         this["name2"].source = ResManager.getIconUrl(GamePredef.WORLD_CUP_INFO[param1[1]["team"]].icon3);
         this["odds1"].text = param1[0]["odds"];
         this["odds2"].text = param1[1]["odds"];
         this["myCost1"].text = param1[0]["cost"];
         this["myCost11"].text = Math.floor(param1[0]["cost"] * param1[0]["odds"]);
         this["myCost12"].text = param1[0]["cost"];
         this["myCost2"].text = param1[1]["cost"];
         this["myCost21"].text = Math.floor(param1[1]["cost"] * param1[1]["odds"]);
         this["myCost22"].text = param1[1]["cost"];
         this["title1"].source = ResManager.getIconUrl(parseInt(jieduanImage[param1[1]["state"]]));
         this["myLimit1"].text = Language.WORLD_CUP_VS_PANEL[11].replace("{num}",ToolKit.minus(param1[0]["goldLimit"],param1[0]["cost"]));
         this["myLimit2"].text = Language.WORLD_CUP_VS_PANEL[11].replace("{num}",ToolKit.minus(param1[1]["goldLimit"],param1[1]["cost"]));
      }
      
      public function set endTime(param1:Label) : void
      {
         var _loc2_:Object = this._1607243192endTime;
         if(_loc2_ !== param1)
         {
            this._1607243192endTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endTime",_loc2_,param1));
         }
      }
      
      private function bangSele(param1:Number) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_WORLD_CUP);
         if(_loc2_)
         {
            _loc2_.bangSeleByVsPanel(param1);
            this.visible = false;
         }
      }
      
      public function set img2(param1:Image) : void
      {
         var _loc2_:Object = this._3236047img2;
         if(_loc2_ !== param1)
         {
            this._3236047img2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img2",_loc2_,param1));
         }
      }
      
      public function set save1(param1:DelayButton) : void
      {
         var _loc2_:Object = this._109211220save1;
         if(_loc2_ !== param1)
         {
            this._109211220save1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"save1",_loc2_,param1));
         }
      }
      
      private function _WorldCupVSPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            astrologicTitle.text = param1;
         },"astrologicTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000476"));
         },function(param1:Object):void
         {
            _WorldCupVSPanel_Image1.source = param1;
         },"_WorldCupVSPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label2.text = param1;
         },"_WorldCupVSPanel_Label2.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label3.text = param1;
         },"_WorldCupVSPanel_Label3.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label8.text = param1;
         },"_WorldCupVSPanel_Label8.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label9.text = param1;
         },"_WorldCupVSPanel_Label9.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            save1.label = param1;
         },"save1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label10.text = param1;
         },"_WorldCupVSPanel_Label10.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label15.text = param1;
         },"_WorldCupVSPanel_Label15.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label16.text = param1;
         },"_WorldCupVSPanel_Label16.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label17.text = param1;
         },"_WorldCupVSPanel_Label17.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            save2.label = param1;
         },"save2.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            introCon.htmlText = param1;
         },"introCon.htmlText");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_PANEL[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_DelayButton3.label = param1;
         },"_WorldCupVSPanel_DelayButton3.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_DelayButton4.label = param1;
         },"_WorldCupVSPanel_DelayButton4.label");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            odds1.filters = param1;
         },"odds1.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            odds2.filters = param1;
         },"odds2.filters");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _WorldCupVSPanel_Label20.filters = param1;
         },"_WorldCupVSPanel_Label20.filters");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label20.text = param1;
         },"_WorldCupVSPanel_Label20.text");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            _WorldCupVSPanel_Label21.filters = param1;
         },"_WorldCupVSPanel_Label21.filters");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WORLD_CUP_VS_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WorldCupVSPanel_Label21.text = param1;
         },"_WorldCupVSPanel_Label21.text");
         result[20] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get myCost21() : Label
      {
         return this._1269235816myCost21;
      }
      
      [Bindable(event="propertyChange")]
      public function get myLimit1() : Label
      {
         return this._1017301854myLimit1;
      }
      
      public function set img1(param1:Image) : void
      {
         var _loc2_:Object = this._3236046img1;
         if(_loc2_ !== param1)
         {
            this._3236046img1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myCost1() : Label
      {
         return this._1483077560myCost1;
      }
      
      [Bindable(event="propertyChange")]
      public function get myCost2() : Label
      {
         return this._1483077561myCost2;
      }
      
      public function set title1(param1:Image) : void
      {
         var _loc2_:Object = this._873453351title1;
         if(_loc2_ !== param1)
         {
            this._873453351title1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoCenter() : Canvas
      {
         return this._1289067869infoCenter;
      }
      
      public function updateMyCost(param1:Number, param2:String, param3:Number) : void
      {
         var _loc5_:Number = NaN;
         var _loc4_:Number = 0;
         while(_loc4_ <= 1)
         {
            if(_dataObj[_loc4_]["team"] == param2)
            {
               _dataObj[_loc4_]["cost"] = param3;
               this["myCost" + ToolKit.add(_loc4_,1)].text = param3;
               this["myCost" + ToolKit.add(_loc4_,1) + "1"].text = Math.floor(_dataObj[_loc4_]["cost"] * _dataObj[_loc4_]["odds"]);
               this["myCost" + ToolKit.add(_loc4_,1) + "2"].text = _dataObj[_loc4_]["cost"];
               _loc5_ = 999999999999;
               if(_dataObj["goldLimit"] != 999999999999)
               {
                  _loc5_ = ToolKit.minus(_dataObj[_loc4_]["goldLimit"],_dataObj[_loc4_]["cost"]);
               }
               this["myLimit" + ToolKit.add(_loc4_,1)].text = Language.WORLD_CUP_VS_PANEL[11].replace("{num}",_loc5_);
            }
            _loc4_++;
         }
      }
      
      public function ___WorldCupVSPanel_DelayButton4_click(param1:MouseEvent) : void
      {
         bangSele(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get img2() : Image
      {
         return this._3236047img2;
      }
      
      public function set num0(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._3392874num0;
         if(_loc2_ !== param1)
         {
            this._3392874num0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num0",_loc2_,param1));
         }
      }
      
      private function _WorldCupVSPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WORLD_CUP_VS_PANEL[0];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000476"));
         _loc1_ = Language.WORLD_CUP_VS_PANEL[2];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[3];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[8];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[9];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[4];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[2];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[3];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[8];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[9];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[4];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[10];
         _loc1_ = Language.WORLD_CUP_PANEL[39];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[6];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[1];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.WORLD_CUP_VS_PANEL[1];
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         initPanelData(_dataObj);
      }
      
      public function set num1(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._3392875num1;
         if(_loc2_ !== param1)
         {
            this._3392875num1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get img1() : Image
      {
         return this._3236046img1;
      }
      
      [Bindable(event="propertyChange")]
      public function get title1() : Image
      {
         return this._873453351title1;
      }
      
      public function set myCost11(param1:Label) : void
      {
         var _loc2_:Object = this._1269235847myCost11;
         if(_loc2_ !== param1)
         {
            this._1269235847myCost11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myCost11",_loc2_,param1));
         }
      }
      
      public function set introCon(param1:IntroText) : void
      {
         var _loc2_:Object = this._582286198introCon;
         if(_loc2_ !== param1)
         {
            this._582286198introCon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"introCon",_loc2_,param1));
         }
      }
      
      public function set myCost12(param1:Label) : void
      {
         var _loc2_:Object = this._1269235846myCost12;
         if(_loc2_ !== param1)
         {
            this._1269235846myCost12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myCost12",_loc2_,param1));
         }
      }
      
      public function __save1_click(param1:MouseEvent) : void
      {
         saveCalculateResultOnKnockOutByGold(0);
      }
   }
}

