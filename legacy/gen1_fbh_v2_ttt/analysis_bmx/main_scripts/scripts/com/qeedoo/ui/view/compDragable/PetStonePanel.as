package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.HButtonTab;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.PetStoneBag;
   import com.qeedoo.ui.view.comp.PetStoneEquipBag;
   import com.qeedoo.ui.view.comp.PetStoneSlot;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.NumericStepper;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.IndexChangedEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import style.Assets;
   
   use namespace mx_internal;
   
   public class PetStonePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1584105757viewStack:ViewStack;
      
      private var _1404245682setSlot2:PetStoneSlot;
      
      private var _1343200970needSilLbl:Label;
      
      private var _1404245684setSlot4:PetStoneSlot;
      
      private var _1404245686setSlot6:PetStoneSlot;
      
      private var equipBagAdded:Boolean = false;
      
      private var _2090889325subSlot1:PetStoneSlot;
      
      private var _682241456nextStoneSlot:PetStoneSlot;
      
      private var _1464994982energySlot:PetStoneSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2090889323subSlot3:PetStoneSlot;
      
      private var _503675810petStoneBag:PetStoneBag;
      
      private var _core:Core = Core.getInstance();
      
      public var _PetStonePanel_LinkButton1:LinkButton;
      
      private var _bagData:Array = [];
      
      private var _1881374169norSkillCbx:RadioButton;
      
      public var _PetStonePanel_Label10:Label;
      
      public var _PetStonePanel_Label11:Label;
      
      public var _PetStonePanel_Label12:Label;
      
      public var _PetStonePanel_Label17:Label;
      
      public var _PetStonePanel_Label18:Label;
      
      public var _PetStonePanel_Label20:Label;
      
      public var _PetStonePanel_Label21:Label;
      
      private var _1505682713equSlot:PetStoneSlot;
      
      public var _PetStonePanel_IntroText1:IntroText;
      
      public var _PetStonePanel_IntroText2:IntroText;
      
      public var _PetStonePanel_IntroText3:IntroText;
      
      public var _PetStonePanel_IntroText4:IntroText;
      
      public var _PetStonePanel_IntroText5:IntroText;
      
      private var _1990994044skillName:Label;
      
      private var _1404245681setSlot1:PetStoneSlot;
      
      private var _1404245683setSlot3:PetStoneSlot;
      
      private var _1404245685setSlot5:PetStoneSlot;
      
      public var _PetStonePanel_Label1:Label;
      
      public var _PetStonePanel_Label2:Label;
      
      public var _PetStonePanel_Label3:Label;
      
      public var _PetStonePanel_Label4:Label;
      
      public var _PetStonePanel_Label6:Label;
      
      public var _PetStonePanel_Label7:Label;
      
      public var _PetStonePanel_Label8:Label;
      
      public var _PetStonePanel_Label9:Label;
      
      private var _982857296speSkillCbx:RadioButton;
      
      private var _1952778762resolveSlot:PetStoneSlot;
      
      private var _2090889326subSlot0:PetStoneSlot;
      
      private var _1322604301eTitle:BasicTitleCanvas;
      
      private var _2090889324subSlot2:PetStoneSlot;
      
      public var _PetStonePanel_BasicGlowButton2:BasicGlowButton;
      
      public var _PetStonePanel_BasicGlowButton3:BasicGlowButton;
      
      public var _PetStonePanel_BasicGlowButton4:BasicGlowButton;
      
      private var _2067262411showBag:BasicGlowButton;
      
      private var _2090889322subSlot4:PetStoneSlot;
      
      private var _803559802pageTab:HButtonTab;
      
      private var _573030417needEnergyStoneLbl:Label;
      
      private var _2142426113skillDes:Label;
      
      private var _1715996377selectImg:Image;
      
      mx_internal var _watchers:Array = [];
      
      private var _1999908673canGetEnergyStoneLbl:Label;
      
      private var _503230304preStoneSlot:PetStoneSlot;
      
      private var _1991070036skillProp:Label;
      
      public var equipBag:Object = {};
      
      private var _1599579654resolveNum:NumericStepper;
      
      private var _2131902710changeType:RadioButtonGroup;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1802392031skillDesNew:TextArea;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":544,
               "height":325,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"eTitle"
               }),new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":36,
                        "selectedIndex":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"viewStack",
                  "events":{"change":"__viewStack_change"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":11,
                        "y":60,
                        "width":352,
                        "height":250,
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
                                    "type":IntroText,
                                    "id":"_PetStonePanel_IntroText1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":340,
                                          "height":70,
                                          "x":7,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"nextStoneSlot",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":false,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":131,
                                          "x":225
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"preStoneSlot",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":131,
                                          "x":76
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":209,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":61,
                                          "y":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":57,
                                          "y":196
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"compoNum",
                                    "events":{"change":"__compoNum_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":194,
                                          "minimum":1,
                                          "maximum":999
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "events":{"click":"___PetStonePanel_BasicGlowButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdGreen",
                                          "label":"Hợp",
                                          "x":173,
                                          "y":194
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label4",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":216,
                                          "y":195
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"needSilLbl",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"0",
                                          "x":272,
                                          "y":195
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
                                    "type":IntroText,
                                    "id":"_PetStonePanel_IntroText2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":340,
                                          "height":70,
                                          "x":7,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"subSlot0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":130,
                                          "x":158
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"subSlot1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":108,
                                          "x":77
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"subSlot2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":108,
                                          "x":243
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"subSlot3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":160,
                                          "x":77
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"subSlot4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":160,
                                          "x":243
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label6",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":155.5,
                                          "y":102
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label7",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":241,
                                          "y":83
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label8",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":83
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_PetStonePanel_BasicGlowButton2",
                                    "events":{"click":"___PetStonePanel_BasicGlowButton2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdGreen",
                                          "x":159,
                                          "y":195
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
                                    "type":IntroText,
                                    "id":"_PetStonePanel_IntroText3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":340,
                                          "height":70,
                                          "x":7,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"equSlot",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":true,
                                          "width":34,
                                          "height":34,
                                          "y":136,
                                          "x":41
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"selectImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":127,
                                          "y":83,
                                          "mouseEnabled":false,
                                          "visible":true,
                                          "mouseChildren":false,
                                          "maintainAspectRatio":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"setSlot1",
                                    "events":{"click":"__setSlot1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":108,
                                          "x":122
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"setSlot2",
                                    "events":{"click":"__setSlot2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":108,
                                          "x":182
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"setSlot3",
                                    "events":{"click":"__setSlot3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":108,
                                          "x":247
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"setSlot4",
                                    "events":{"click":"__setSlot4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":163,
                                          "x":122
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"setSlot5",
                                    "events":{"click":"__setSlot5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":163,
                                          "x":182
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"setSlot6",
                                    "events":{"click":"__setSlot6_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":163,
                                          "x":247
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label9",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":32,
                                          "y":108
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
                                    "type":IntroText,
                                    "id":"_PetStonePanel_IntroText4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":340,
                                          "height":70,
                                          "x":7,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LinkButton,
                                    "id":"_PetStonePanel_LinkButton1",
                                    "events":{"click":"___PetStonePanel_LinkButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.textDecoration = "underline";
                                       this.fontSize = 11;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":-1,
                                          "y":77
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"energySlot",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":126,
                                          "x":85
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label10",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":94
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label11",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":233.5,
                                          "y":94
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label12",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38.5,
                                          "y":168
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"skillProp",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "x":186,
                                          "y":114
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"skillName",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "x":186,
                                          "y":140
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"skillDes",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":true,
                                          "x":186,
                                          "y":165
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":TextArea,
                                    "id":"skillDesNew",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":243,
                                          "y":166,
                                          "width":99,
                                          "height":73,
                                          "alpha":0
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"needEnergyStoneLbl",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"1000",
                                          "x":174.5,
                                          "y":168
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"speSkillCbx",
                                    "events":{"click":"__speSkillCbx_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":203,
                                          "groupName":"changeType",
                                          "selected":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"norSkillCbx",
                                    "events":{"click":"__norSkillCbx_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 11;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":38,
                                          "y":219,
                                          "groupName":"changeType"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_PetStonePanel_BasicGlowButton3",
                                    "events":{"click":"___PetStonePanel_BasicGlowButton3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdGreen",
                                          "x":152,
                                          "y":213
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
                                    "type":IntroText,
                                    "id":"_PetStonePanel_IntroText5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":340,
                                          "height":70,
                                          "x":7,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PetStoneSlot,
                                    "id":"resolveSlot",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "acceptable":true,
                                          "movable":false,
                                          "width":34,
                                          "height":34,
                                          "y":115,
                                          "x":159
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label17",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":143.5,
                                          "y":89
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_PetStonePanel_Label18",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":128,
                                          "y":157
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"canGetEnergyStoneLbl",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"0",
                                          "x":202,
                                          "y":157
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"resolveNum",
                                    "events":{"change":"__resolveNum_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":108,
                                          "y":194,
                                          "minimum":1,
                                          "maximum":9999
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_PetStonePanel_BasicGlowButton4",
                                    "events":{"click":"___PetStonePanel_BasicGlowButton4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdGreen",
                                          "x":190,
                                          "y":194
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_PetStonePanel_Label20",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 65535;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":403,
                        "y":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_PetStonePanel_Label21",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 65535;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":477,
                        "y":39
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PetStoneBag,
                  "id":"petStoneBag",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":67,
                        "x":371
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"showBag",
                  "events":{"click":"__showBag_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":530,
                        "y":110,
                        "height":155,
                        "width":12,
                        "styleName":"EquipBagRight"
                     };
                  }
               })]
            };
         }
      });
      
      private var _599377882compoNum:NumericStepper;
      
      private var _cid:Number = 0;
      
      public function PetStonePanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 544;
         this.height = 325;
         _PetStonePanel_RadioButtonGroup1_i();
         this.addEventListener("creationComplete",___PetStonePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetStonePanel._watcherSetupUtil = param1;
      }
      
      public function set resolveNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._1599579654resolveNum;
         if(_loc2_ !== param1)
         {
            this._1599579654resolveNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolveNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillDes() : Label
      {
         return this._2142426113skillDes;
      }
      
      public function __compoNum_change(param1:NumericStepperEvent) : void
      {
         updateNeedSilLbl();
      }
      
      [Bindable(event="propertyChange")]
      public function get resolveSlot() : PetStoneSlot
      {
         return this._1952778762resolveSlot;
      }
      
      public function updatePetStoneSetSlot() : void
      {
         _core.remote.call("getPetStoneByEid",new Responder(onUpdatePetStoneSetSlot),(this["equSlot"] as PetStoneSlot).giid);
      }
      
      public function set changeType(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._2131902710changeType;
         if(_loc2_ !== param1)
         {
            this._2131902710changeType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeType",_loc2_,param1));
         }
      }
      
      public function set skillDes(param1:Label) : void
      {
         var _loc2_:Object = this._2142426113skillDes;
         if(_loc2_ !== param1)
         {
            this._2142426113skillDes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillDes",_loc2_,param1));
         }
      }
      
      public function updatePetStoneResolveSlot(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = GameData.d[GamePredef.TBL_PET_STONE][param1.giid];
         if(Number(_loc2_["energyFlag"] == 1))
         {
            Alert.show(Language.PET_STONE_PANEL[14]);
         }
         var _loc3_:PetStoneSlot = this["resolveSlot"] as PetStoneSlot;
         _loc3_.type = GamePredef.TBL_PET_STONE;
         _loc3_.quality = param1.quality;
         _loc3_.giid = param1.giid;
         _loc3_.slotData = param1.slotData;
         _loc3_.stackNum = param1.stackNum;
         _loc3_.skillId = param1.skillId;
         (this["resolveNum"] as NumericStepper).maximum = _loc3_.stackNum;
         _loc3_.sid = param1.sid;
         updateCanGetEnergyStoneLbl();
      }
      
      public function updatePetStoneSetEquipSlot(param1:Object) : void
      {
         var _loc2_:PetStoneSlot = this["equSlot"] as PetStoneSlot;
         _loc2_.type = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc2_.quality = param1.quality;
         _loc2_.giid = param1.giid;
         _loc2_.slotData = param1.slotData;
         _loc2_.stackNum = param1.stackNum;
         updatePetStoneSetSlot();
      }
      
      public function set resolveSlot(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1952778762resolveSlot;
         if(_loc2_ !== param1)
         {
            this._1952778762resolveSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resolveSlot",_loc2_,param1));
         }
      }
      
      public function __setSlot4_click(param1:MouseEvent) : void
      {
         dispatchPetStoneEvt(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get compoNum() : NumericStepper
      {
         return this._599377882compoNum;
      }
      
      public function __showBag_click(param1:MouseEvent) : void
      {
         changeBagVis();
      }
      
      public function clearSlotData() : void
      {
         var _loc1_:int = 0;
         var _loc2_:PetStoneSlot = null;
         (this["preStoneSlot"] as Slot).clean();
         (this["nextStoneSlot"] as Slot).clean();
         (this["needSilLbl"] as Label).text = "0";
         (this["canGetEnergyStoneLbl"] as Label).text = "0";
         (this["resolveSlot"] as PetStoneSlot).clean();
         _loc1_ = 0;
         while(_loc1_ < 5)
         {
            _loc2_ = this["subSlot" + _loc1_] as PetStoneSlot;
            _loc2_.clean();
            _loc1_++;
         }
         (this["equSlot"] as PetStoneSlot).clean();
         _loc1_ = 1;
         while(_loc1_ <= 6)
         {
            _loc2_ = this["setSlot" + _loc1_] as PetStoneSlot;
            _loc2_.clean();
            _loc1_++;
         }
         energySlot.clean();
         skillProp.text = Language.PET_STONE_PANEL[5];
         skillProp.visible = false;
         skillDesNew.text = "";
         skillDesNew.visible = false;
         skillDes.visible = false;
         skillName.text = Language.PET_STONE_PANEL[6];
         skillName.visible = false;
      }
      
      private function composePetStone() : void
      {
         var _loc1_:PetStoneSlot = this["preStoneSlot"] as PetStoneSlot;
         if(_loc1_.giid < 1)
         {
            Alert.show(Language.PET_STONE_PANEL[7]);
            return;
         }
         var _loc2_:int = (this["compoNum"] as NumericStepper).value;
         _core.remote.call("composePetStone",new Responder(updatePetStoneBagData),_loc1_.sid,_loc2_,_core.cid);
         (this["preStoneSlot"] as Slot).clean();
         (this["nextStoneSlot"] as Slot).clean();
         (this["needSilLbl"] as Label).text = "0";
      }
      
      public function ___PetStonePanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         absorbPetStone();
      }
      
      private function skillInfoShow() : void
      {
         Alert.show(Language.PET_STONE_PANEL[44]);
      }
      
      public function set compoNum(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._599377882compoNum;
         if(_loc2_ !== param1)
         {
            this._599377882compoNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"compoNum",_loc2_,param1));
         }
      }
      
      public function set selectImg(param1:Image) : void
      {
         var _loc2_:Object = this._1715996377selectImg;
         if(_loc2_ !== param1)
         {
            this._1715996377selectImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectImg",_loc2_,param1));
         }
      }
      
      public function __speSkillCbx_click(param1:MouseEvent) : void
      {
         changeSkillType();
      }
      
      public function __setSlot1_click(param1:MouseEvent) : void
      {
         dispatchPetStoneEvt(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get nextStoneSlot() : PetStoneSlot
      {
         return this._682241456nextStoneSlot;
      }
      
      public function updatePetStoneBagData(param1:Array) : void
      {
         _bagData = param1;
         if(param1)
         {
            (this["petStoneBag"] as PetStoneBag).updatePage(param1);
         }
      }
      
      public function __viewStack_change(param1:IndexChangedEvent) : void
      {
         changeSelectedIndex();
      }
      
      public function set needSilLbl(param1:Label) : void
      {
         var _loc2_:Object = this._1343200970needSilLbl;
         if(_loc2_ !== param1)
         {
            this._1343200970needSilLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needSilLbl",_loc2_,param1));
         }
      }
      
      public function updatePetStoneEnergySlot(param1:PetStoneSlot, param2:PetStoneSlot) : void
      {
         var _loc6_:PetStoneSlot = null;
         var _loc7_:int = 0;
         var _loc3_:Object = GameData.d[GamePredef.TBL_PET_STONE][param1.giid];
         if(Number(_loc3_["level"]) < 5)
         {
            Alert.show(Language.PET_STONE_PANEL[9]);
            return;
         }
         if(Number(_loc3_["energyFlag"] == 1))
         {
            Alert.show(Language.PET_STONE_PANEL[10]);
            return;
         }
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         while(_loc5_ < 5)
         {
            _loc6_ = this["subSlot" + _loc5_] as PetStoneSlot;
            _loc7_ = _loc6_.giid;
            if(_loc7_ == param1.giid)
            {
               _loc4_++;
            }
            _loc5_++;
         }
         if(_loc4_ >= _bagData[param1.sid][1])
         {
            Alert.show(Language.PET_STONE_PANEL[11]);
            return;
         }
         param2.type = GamePredef.TBL_PET_STONE;
         param2.quality = param1.quality;
         param2.giid = param1.giid;
         param2.slotData = param1.slotData;
         param2.sid = param1.sid;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillName() : Label
      {
         return this._1990994044skillName;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      private function changePetStoneEnergy() : void
      {
         var func:Function;
         var t:Number = NaN;
         var skill:Object = null;
         if(energySlot.giid < 1)
         {
            Alert.show(Language.PET_STONE_PANEL[15]);
            return;
         }
         if(speSkillCbx.selected)
         {
            t = 2;
         }
         else
         {
            t = 1;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("changePetStoneEnergy",new Responder(onChangePetStoneEnergy),energySlot.sid,_cid,t);
            }
         };
         if(Boolean(energySlot) && Boolean(energySlot.giid > 0) && energySlot.skillId > 0)
         {
            skill = GameData.d[GamePredef.TBL_SKILL][energySlot.skillId];
            if(skill.exStoneSid > 0)
            {
               if(t == 1)
               {
                  Alert.show(Language.PET_STONE_PANEL[46],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  _core.remote.call("changePetStoneEnergy",new Responder(onChangePetStoneEnergy),energySlot.sid,_cid,t);
               }
            }
            else if(t == 2)
            {
               Alert.show(Language.PET_STONE_PANEL[45],"",Alert.YES | Alert.NO,null,func);
            }
            else
            {
               _core.remote.call("changePetStoneEnergy",new Responder(onChangePetStoneEnergy),energySlot.sid,_cid,t);
            }
         }
         else if(Boolean(energySlot) && energySlot.giid > 0)
         {
            _core.remote.call("changePetStoneEnergy",new Responder(onChangePetStoneEnergy),energySlot.sid,_cid,t);
         }
      }
      
      private function resolvePetStone() : void
      {
         var resolveNum:int;
         var resolveSlot:PetStoneSlot;
         var gfunc:Function = null;
         if(!_core.delPass)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         resolveSlot = this["resolveSlot"] as PetStoneSlot;
         if(resolveSlot.giid < 1)
         {
            Alert.show(Language.PET_STONE_PANEL[15]);
            return;
         }
         resolveNum = (this["resolveNum"] as NumericStepper).value;
         _core.remote.call("resolvePetStone",new Responder(updatePetStoneBagData),resolveSlot.sid,resolveNum,_cid);
         (this["canGetEnergyStoneLbl"] as Label).text = "0";
         resolveSlot.clean();
      }
      
      public function onPetStoneSet(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:PetStoneSlot = null;
         var _loc8_:Object = null;
         if(param1)
         {
            _loc2_ = param1["bagData"];
            _loc3_ = Number(param1["slotId"]);
            _loc4_ = Number(param1["newId"]);
            _loc5_ = Number(param1["skillId"]);
            _loc6_ = param1["equData"];
            _core.data.updateData(GamePredef.TBL_EQUIPT_INSTANCE,_loc6_);
            updatePetStoneBagData(_loc2_);
            _loc7_ = this["setSlot" + _loc3_] as PetStoneSlot;
            _loc7_.clean();
            if(_loc4_)
            {
               _loc8_ = GameData.d[GamePredef.TBL_PET_STONE][_loc4_];
               _loc7_.type = GamePredef.TBL_PET_STONE;
               _loc7_.quality = _loc8_.level - 1;
               _loc7_.slotData = _loc8_;
               _loc7_.stackNum = 1;
               _loc7_.giid = _loc4_;
               _loc7_.skillId = _loc5_;
            }
         }
      }
      
      public function __setSlot6_click(param1:MouseEvent) : void
      {
         dispatchPetStoneEvt(6);
      }
      
      public function set nextStoneSlot(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._682241456nextStoneSlot;
         if(_loc2_ !== param1)
         {
            this._682241456nextStoneSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextStoneSlot",_loc2_,param1));
         }
      }
      
      private function dispatchPetStoneEvt(param1:int) : void
      {
         var _loc2_:PetStoneSlot = this["setSlot" + param1] as PetStoneSlot;
         var _loc3_:* = equSlot.giid;
         var _loc4_:* = new GameEvent(GameEvent.PET_STONE_SET);
         _loc4_.data = _loc3_;
         _loc2_.dispatchEvent(_loc4_);
      }
      
      [Bindable(event="propertyChange")]
      public function get energySlot() : PetStoneSlot
      {
         return this._1464994982energySlot;
      }
      
      [Bindable(event="propertyChange")]
      public function get preStoneSlot() : PetStoneSlot
      {
         return this._503230304preStoneSlot;
      }
      
      public function set skillProp(param1:Label) : void
      {
         var _loc2_:Object = this._1991070036skillProp;
         if(_loc2_ !== param1)
         {
            this._1991070036skillProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillProp",_loc2_,param1));
         }
      }
      
      public function ___PetStonePanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         resolvePetStone();
      }
      
      [Bindable(event="propertyChange")]
      public function get setSlot1() : PetStoneSlot
      {
         return this._1404245681setSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get setSlot2() : PetStoneSlot
      {
         return this._1404245682setSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get setSlot6() : PetStoneSlot
      {
         return this._1404245686setSlot6;
      }
      
      [Bindable(event="propertyChange")]
      public function get setSlot5() : PetStoneSlot
      {
         return this._1404245685setSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get canGetEnergyStoneLbl() : Label
      {
         return this._1999908673canGetEnergyStoneLbl;
      }
      
      [Bindable(event="propertyChange")]
      public function get setSlot3() : PetStoneSlot
      {
         return this._1404245683setSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get setSlot4() : PetStoneSlot
      {
         return this._1404245684setSlot4;
      }
      
      private function changeBagVis() : void
      {
         if(!equipBagAdded)
         {
            equipBag = null;
            equipBag = new PetStoneEquipBag();
            equipBag.x = 544;
            equipBag.y = 58;
            width = 710;
            addChild(equipBag as PetStoneEquipBag);
            equipBagAdded = true;
            showBag.styleName = "EquipBagLeft";
         }
         else if(equipBag.visible)
         {
            equipBag.visible = false;
            showBag.styleName = "EquipBagRight";
            width = 544;
         }
         else
         {
            equipBag.visible = true;
            width = 710;
            showBag.styleName = "EquipBagLeft";
         }
         eTitle.text = eTitle.text;
      }
      
      public function updatePetStonePanel(param1:Array) : void
      {
         _bagData = param1;
         changeBagVis();
         updatePetStoneBagData(param1);
      }
      
      private function absorbPetStone() : void
      {
         var _loc4_:int = 0;
         var _loc5_:PetStoneSlot = null;
         var _loc1_:Array = [];
         var _loc2_:int = 0;
         while(_loc2_ < 5)
         {
            if((this["subSlot" + _loc2_] as PetStoneSlot).giid < 1)
            {
               Alert.show(Language.PET_STONE_PANEL[12]);
               return;
            }
            _loc4_ = (this["subSlot" + _loc2_] as PetStoneSlot).sid;
            _loc1_.push(_loc4_);
            _loc2_++;
         }
         if(_loc1_.length < 5)
         {
            Alert.show(Language.PET_STONE_PANEL[13]);
            return;
         }
         _core.remote.call("absorbPetStone",new Responder(updatePetStoneBagData),_loc1_,_cid);
         var _loc3_:int = 0;
         while(_loc3_ < 5)
         {
            _loc5_ = this["subSlot" + _loc3_] as PetStoneSlot;
            _loc5_.clean();
            _loc3_++;
         }
      }
      
      private function updateNeedSilLbl() : void
      {
         var _loc1_:PetStoneSlot = this["preStoneSlot"] as PetStoneSlot;
         var _loc2_:Object = GameData.d[GamePredef.TBL_PET_STONE][_loc1_.giid];
         (this["needSilLbl"] as Label).text = String(Number(_loc2_["costSil"]) * (this["compoNum"] as NumericStepper).value);
      }
      
      private function _PetStonePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_STONE_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[1];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = Language.PET_STONE_PANEL[38];
         _loc1_ = Slot.SLOT_PET_STONE_COMPO;
         _loc1_ = Language.PET_STONE_PANEL[19];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[20];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[21];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[22];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[39];
         _loc1_ = Slot.SLOT_PET_STONE_NORMAL;
         _loc1_ = Slot.SLOT_PET_STONE_NORMAL;
         _loc1_ = Slot.SLOT_PET_STONE_NORMAL;
         _loc1_ = Slot.SLOT_PET_STONE_NORMAL;
         _loc1_ = Slot.SLOT_PET_STONE_NORMAL;
         _loc1_ = Language.PET_STONE_PANEL[23];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[24];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[24];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[25];
         _loc1_ = Language.PET_STONE_PANEL[40];
         _loc1_ = Slot.SLOT_PET_STONE_EQUIPT;
         _loc1_ = Assets.ENERGY_STAR;
         _loc1_ = Slot.SLOT_PET_STONE_SET;
         _loc1_ = Slot.SLOT_PET_STONE_SET;
         _loc1_ = Slot.SLOT_PET_STONE_SET;
         _loc1_ = Slot.SLOT_PET_STONE_SET;
         _loc1_ = Slot.SLOT_PET_STONE_SET;
         _loc1_ = Slot.SLOT_PET_STONE_SET;
         _loc1_ = Language.PET_STONE_PANEL[26];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[41];
         _loc1_ = Language.PET_STONE_PANEL[43];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Slot.SLOT_PET_STONE_CHANGE_SKILL;
         _loc1_ = Language.PET_STONE_PANEL[27];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[28];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[29];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[5];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[6];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[30];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[31];
         _loc1_ = Language.PET_STONE_PANEL[32];
         _loc1_ = Language.PET_STONE_PANEL[33];
         _loc1_ = Language.PET_STONE_PANEL[42];
         _loc1_ = Slot.SLOT_PET_STONE_RESOLVE;
         _loc1_ = Language.PET_STONE_PANEL[34];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[35];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.PET_STONE_PANEL[36];
         _loc1_ = Language.PET_STONE_PANEL[37];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = _core.player.energyStone;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function __setSlot3_click(param1:MouseEvent) : void
      {
         dispatchPetStoneEvt(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get equSlot() : PetStoneSlot
      {
         return this._1505682713equSlot;
      }
      
      [Bindable(event="propertyChange")]
      public function get viewStack() : ViewStack
      {
         return this._1584105757viewStack;
      }
      
      public function ___PetStonePanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         composePetStone();
      }
      
      [Bindable(event="propertyChange")]
      public function get eTitle() : BasicTitleCanvas
      {
         return this._1322604301eTitle;
      }
      
      private function onChangePetStoneEnergy(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Array = null;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         if(param1)
         {
            _loc2_ = Number(param1["sid"]);
            _loc3_ = Number(param1["skillId"]);
            _loc4_ = param1["bagData"];
            _loc5_ = Number(param1["newSid"]);
            _loc6_ = GameData.d[GamePredef.TBL_PET_STONE][energySlot.giid];
            skillProp.text = Language.PET_STONE_PANEL[5] + Language.PET_STONE_PANEL[4][_loc6_["propType"]] + "+" + _loc6_["propNum"];
            skillProp.visible = true;
            energySlot.skillId = _loc3_;
            energySlot.sid = _loc5_;
            _loc7_ = GameData.d[GamePredef.TBL_SKILL][energySlot.skillId];
            skillName.text = Language.PET_STONE_PANEL[6] + _loc7_["name"];
            skillName.visible = true;
            skillDes.visible = true;
            _loc8_ = Number(_loc7_["exStoneSid"]);
            if(_loc8_ > 0)
            {
               _loc9_ = GameData.d[GamePredef.TBL_SKILL][_loc8_];
               skillDesNew.text = _loc9_["description"];
            }
            else
            {
               skillDesNew.text = _loc7_["description"];
            }
            skillDesNew.visible = true;
            _bagData = _loc4_;
            updatePetStoneBagData(_loc4_);
         }
      }
      
      public function set skillName(param1:Label) : void
      {
         var _loc2_:Object = this._1990994044skillName;
         if(_loc2_ !== param1)
         {
            this._1990994044skillName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillName",_loc2_,param1));
         }
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
            _core.remote.call("initPetStonePanel",new Responder(updatePetStonePanel),_cid);
            clearSlotData();
            refreshPetEquiptBag();
         }
         else
         {
            show();
         }
      }
      
      public function setPetStone(param1:PetStoneSlot, param2:PetStoneSlot) : void
      {
         if(!equSlot.giid > 0)
         {
            Alert.show(Language.PET_STONE_PANEL[16]);
            return;
         }
         if(param2.id.indexOf("1") > -1)
         {
            if(Number(param1.slotData["energyFlag"]) != 1)
            {
               Alert.show(Language.PET_STONE_PANEL[17]);
               return;
            }
         }
         var _loc3_:Number = Number(param2.id.charAt(7));
         var _loc4_:Number = Number((this["equSlot"] as PetStoneSlot).giid);
         _core.remote.call("petStoneSet",new Responder(onPetStoneSet),_loc4_,_loc3_,param1.sid,_core.cid);
      }
      
      public function ___PetStonePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function init() : void
      {
         var _loc2_:PetStoneSlot = null;
         var _loc1_:int = 1;
         while(_loc1_ <= 6)
         {
            _loc2_ = this["setSlot" + _loc1_] as PetStoneSlot;
            _loc2_.addEventListener(GameEvent.PET_STONE_SET,removePetStone);
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get changeType() : RadioButtonGroup
      {
         return this._2131902710changeType;
      }
      
      private function updateCanGetEnergyStoneLbl() : void
      {
         var _loc1_:PetStoneSlot = this["resolveSlot"] as PetStoneSlot;
         var _loc2_:Object = GameData.d[GamePredef.TBL_PET_STONE][_loc1_.giid];
         (this["canGetEnergyStoneLbl"] as Label).text = String(Number(_loc2_["resolveNum"]) * (this["resolveNum"] as NumericStepper).value);
      }
      
      private function removePetStone(param1:Event) : void
      {
         var _loc2_:PetStoneSlot = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         if(param1.target == param1.currentTarget)
         {
            _loc2_ = param1.target as PetStoneSlot;
            _loc3_ = Number(_loc2_.id.charAt(7));
            _loc4_ = Number((this["equSlot"] as PetStoneSlot).giid);
            _loc5_ = int(GameEvent(param1).data);
            _core.remote.call("removePetStone",new Responder(onPetStoneSet),_loc4_,_loc3_,_core.cid,_loc5_);
            param1.stopImmediatePropagation();
         }
      }
      
      public function set subSlot1(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._2090889325subSlot1;
         if(_loc2_ !== param1)
         {
            this._2090889325subSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subSlot1",_loc2_,param1));
         }
      }
      
      public function set subSlot2(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._2090889324subSlot2;
         if(_loc2_ !== param1)
         {
            this._2090889324subSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subSlot2",_loc2_,param1));
         }
      }
      
      public function set subSlot3(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._2090889323subSlot3;
         if(_loc2_ !== param1)
         {
            this._2090889323subSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subSlot3",_loc2_,param1));
         }
      }
      
      private function changeSelectedIndex() : void
      {
         clearSlotData();
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
      public function get needSilLbl() : Label
      {
         return this._1343200970needSilLbl;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectImg() : Image
      {
         return this._1715996377selectImg;
      }
      
      private function refreshPetEquiptBag() : void
      {
         if(equipBagAdded && Boolean(equipBag))
         {
            equipBag.getPetEquiptData();
         }
      }
      
      public function set petStoneBag(param1:PetStoneBag) : void
      {
         var _loc2_:Object = this._503675810petStoneBag;
         if(_loc2_ !== param1)
         {
            this._503675810petStoneBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petStoneBag",_loc2_,param1));
         }
      }
      
      public function set energySlot(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1464994982energySlot;
         if(_loc2_ !== param1)
         {
            this._1464994982energySlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"energySlot",_loc2_,param1));
         }
      }
      
      private function _PetStonePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eTitle.text = param1;
         },"eTitle.text");
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
            return Language.PET_STONE_PANEL[1];
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
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_IntroText1.htmlText = param1;
         },"_PetStonePanel_IntroText1.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_COMPO;
         },function(param1:int):void
         {
            preStoneSlot.slotType = param1;
         },"preStoneSlot.slotType");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label1.text = param1;
         },"_PetStonePanel_Label1.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label1.filters = param1;
         },"_PetStonePanel_Label1.filters");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label2.text = param1;
         },"_PetStonePanel_Label2.text");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label2.filters = param1;
         },"_PetStonePanel_Label2.filters");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label3.text = param1;
         },"_PetStonePanel_Label3.text");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label3.filters = param1;
         },"_PetStonePanel_Label3.filters");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label4.text = param1;
         },"_PetStonePanel_Label4.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label4.filters = param1;
         },"_PetStonePanel_Label4.filters");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            needSilLbl.filters = param1;
         },"needSilLbl.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_IntroText2.htmlText = param1;
         },"_PetStonePanel_IntroText2.htmlText");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_NORMAL;
         },function(param1:int):void
         {
            subSlot0.slotType = param1;
         },"subSlot0.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_NORMAL;
         },function(param1:int):void
         {
            subSlot1.slotType = param1;
         },"subSlot1.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_NORMAL;
         },function(param1:int):void
         {
            subSlot2.slotType = param1;
         },"subSlot2.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_NORMAL;
         },function(param1:int):void
         {
            subSlot3.slotType = param1;
         },"subSlot3.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_NORMAL;
         },function(param1:int):void
         {
            subSlot4.slotType = param1;
         },"subSlot4.slotType");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label6.text = param1;
         },"_PetStonePanel_Label6.text");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label6.filters = param1;
         },"_PetStonePanel_Label6.filters");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label7.text = param1;
         },"_PetStonePanel_Label7.text");
         result[23] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label7.filters = param1;
         },"_PetStonePanel_Label7.filters");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label8.text = param1;
         },"_PetStonePanel_Label8.text");
         result[25] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label8.filters = param1;
         },"_PetStonePanel_Label8.filters");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_BasicGlowButton2.label = param1;
         },"_PetStonePanel_BasicGlowButton2.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[40];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_IntroText3.htmlText = param1;
         },"_PetStonePanel_IntroText3.htmlText");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_EQUIPT;
         },function(param1:int):void
         {
            equSlot.slotType = param1;
         },"equSlot.slotType");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return Assets.ENERGY_STAR;
         },function(param1:Object):void
         {
            selectImg.source = param1;
         },"selectImg.source");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_SET;
         },function(param1:int):void
         {
            setSlot1.slotType = param1;
         },"setSlot1.slotType");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_SET;
         },function(param1:int):void
         {
            setSlot2.slotType = param1;
         },"setSlot2.slotType");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_SET;
         },function(param1:int):void
         {
            setSlot3.slotType = param1;
         },"setSlot3.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_SET;
         },function(param1:int):void
         {
            setSlot4.slotType = param1;
         },"setSlot4.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_SET;
         },function(param1:int):void
         {
            setSlot5.slotType = param1;
         },"setSlot5.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_SET;
         },function(param1:int):void
         {
            setSlot6.slotType = param1;
         },"setSlot6.slotType");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label9.text = param1;
         },"_PetStonePanel_Label9.text");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label9.filters = param1;
         },"_PetStonePanel_Label9.filters");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_IntroText4.htmlText = param1;
         },"_PetStonePanel_IntroText4.htmlText");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_LinkButton1.label = param1;
         },"_PetStonePanel_LinkButton1.label");
         result[40] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_LinkButton1.filters = param1;
         },"_PetStonePanel_LinkButton1.filters");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_CHANGE_SKILL;
         },function(param1:int):void
         {
            energySlot.slotType = param1;
         },"energySlot.slotType");
         result[42] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label10.text = param1;
         },"_PetStonePanel_Label10.text");
         result[43] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label10.filters = param1;
         },"_PetStonePanel_Label10.filters");
         result[44] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label11.text = param1;
         },"_PetStonePanel_Label11.text");
         result[45] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label11.filters = param1;
         },"_PetStonePanel_Label11.filters");
         result[46] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label12.text = param1;
         },"_PetStonePanel_Label12.text");
         result[47] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label12.filters = param1;
         },"_PetStonePanel_Label12.filters");
         result[48] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            skillProp.text = param1;
         },"skillProp.text");
         result[49] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            skillProp.filters = param1;
         },"skillProp.filters");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            skillName.text = param1;
         },"skillName.text");
         result[51] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            skillName.filters = param1;
         },"skillName.filters");
         result[52] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            skillDes.text = param1;
         },"skillDes.text");
         result[53] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            skillDes.filters = param1;
         },"skillDes.filters");
         result[54] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            needEnergyStoneLbl.filters = param1;
         },"needEnergyStoneLbl.filters");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            speSkillCbx.label = param1;
         },"speSkillCbx.label");
         result[56] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            norSkillCbx.label = param1;
         },"norSkillCbx.label");
         result[57] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_BasicGlowButton3.label = param1;
         },"_PetStonePanel_BasicGlowButton3.label");
         result[58] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_IntroText5.htmlText = param1;
         },"_PetStonePanel_IntroText5.htmlText");
         result[59] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_STONE_RESOLVE;
         },function(param1:int):void
         {
            resolveSlot.slotType = param1;
         },"resolveSlot.slotType");
         result[60] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label17.text = param1;
         },"_PetStonePanel_Label17.text");
         result[61] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label17.filters = param1;
         },"_PetStonePanel_Label17.filters");
         result[62] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label18.text = param1;
         },"_PetStonePanel_Label18.text");
         result[63] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label18.filters = param1;
         },"_PetStonePanel_Label18.filters");
         result[64] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            canGetEnergyStoneLbl.filters = param1;
         },"canGetEnergyStoneLbl.filters");
         result[65] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_BasicGlowButton4.label = param1;
         },"_PetStonePanel_BasicGlowButton4.label");
         result[66] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_STONE_PANEL[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label20.text = param1;
         },"_PetStonePanel_Label20.text");
         result[67] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label20.filters = param1;
         },"_PetStonePanel_Label20.filters");
         result[68] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.energyStone;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetStonePanel_Label21.text = param1;
         },"_PetStonePanel_Label21.text");
         result[69] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _PetStonePanel_Label21.filters = param1;
         },"_PetStonePanel_Label21.filters");
         result[70] = binding;
         return result;
      }
      
      public function ___PetStonePanel_LinkButton1_click(param1:MouseEvent) : void
      {
         skillInfoShow();
      }
      
      [Bindable(event="propertyChange")]
      public function get skillProp() : Label
      {
         return this._1991070036skillProp;
      }
      
      public function set preStoneSlot(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._503230304preStoneSlot;
         if(_loc2_ !== param1)
         {
            this._503230304preStoneSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"preStoneSlot",_loc2_,param1));
         }
      }
      
      public function set subSlot4(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._2090889322subSlot4;
         if(_loc2_ !== param1)
         {
            this._2090889322subSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subSlot4",_loc2_,param1));
         }
      }
      
      private function changeSkillType() : void
      {
         if(speSkillCbx.selected == true)
         {
            needEnergyStoneLbl.text = "1000";
         }
         else if(norSkillCbx.selected == true)
         {
            needEnergyStoneLbl.text = "500";
         }
      }
      
      public function set subSlot0(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._2090889326subSlot0;
         if(_loc2_ !== param1)
         {
            this._2090889326subSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"subSlot0",_loc2_,param1));
         }
      }
      
      public function __setSlot5_click(param1:MouseEvent) : void
      {
         dispatchPetStoneEvt(5);
      }
      
      public function set speSkillCbx(param1:RadioButton) : void
      {
         var _loc2_:Object = this._982857296speSkillCbx;
         if(_loc2_ !== param1)
         {
            this._982857296speSkillCbx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"speSkillCbx",_loc2_,param1));
         }
      }
      
      public function set setSlot1(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1404245681setSlot1;
         if(_loc2_ !== param1)
         {
            this._1404245681setSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setSlot1",_loc2_,param1));
         }
      }
      
      public function set setSlot2(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1404245682setSlot2;
         if(_loc2_ !== param1)
         {
            this._1404245682setSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setSlot2",_loc2_,param1));
         }
      }
      
      public function set setSlot6(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1404245686setSlot6;
         if(_loc2_ !== param1)
         {
            this._1404245686setSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setSlot6",_loc2_,param1));
         }
      }
      
      public function set setSlot3(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1404245683setSlot3;
         if(_loc2_ !== param1)
         {
            this._1404245683setSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setSlot3",_loc2_,param1));
         }
      }
      
      public function ___PetStonePanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         changePetStoneEnergy();
      }
      
      public function set setSlot5(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1404245685setSlot5;
         if(_loc2_ !== param1)
         {
            this._1404245685setSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setSlot5",_loc2_,param1));
         }
      }
      
      private function onUpdatePetStoneSetSlot(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:PetStoneSlot = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Number = NaN;
         var _loc8_:Object = null;
         if(Number(param1) == -1)
         {
            (this["equSlot"] as PetStoneSlot).clean();
            _loc3_ = 1;
            while(_loc3_ <= 6)
            {
               _loc4_ = this["setSlot" + _loc3_] as PetStoneSlot;
               _loc4_.clean();
               _loc3_++;
            }
            return;
         }
         var _loc2_:int = 1;
         while(_loc2_ <= 6)
         {
            _loc4_ = this["setSlot" + _loc2_] as PetStoneSlot;
            _loc4_.clean();
            _loc2_++;
         }
         if(param1)
         {
            for(_loc5_ in param1)
            {
               _loc6_ = param1[_loc5_];
               _loc7_ = Number(_loc6_[0]);
               _loc4_ = this["setSlot" + _loc5_] as PetStoneSlot;
               _loc8_ = GameData.d[GamePredef.TBL_PET_STONE][_loc7_];
               _loc4_.type = GamePredef.TBL_PET_STONE;
               _loc4_.quality = Number(_loc8_["level"]) - 1;
               _loc4_.giid = _loc7_;
               _loc4_.slotData = _loc8_;
               if(Number(_loc5_) == 1)
               {
                  if(Number(_loc6_[2]))
                  {
                     _loc4_.skillId = Number(_loc6_[2]);
                  }
               }
            }
         }
      }
      
      public function set setSlot4(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1404245684setSlot4;
         if(_loc2_ !== param1)
         {
            this._1404245684setSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setSlot4",_loc2_,param1));
         }
      }
      
      public function set canGetEnergyStoneLbl(param1:Label) : void
      {
         var _loc2_:Object = this._1999908673canGetEnergyStoneLbl;
         if(_loc2_ !== param1)
         {
            this._1999908673canGetEnergyStoneLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canGetEnergyStoneLbl",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetStonePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetStonePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetStonePanelWatcherSetupUtil");
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
      public function get subSlot0() : PetStoneSlot
      {
         return this._2090889326subSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get subSlot1() : PetStoneSlot
      {
         return this._2090889325subSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get subSlot2() : PetStoneSlot
      {
         return this._2090889324subSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get subSlot3() : PetStoneSlot
      {
         return this._2090889323subSlot3;
      }
      
      public function __setSlot2_click(param1:MouseEvent) : void
      {
         dispatchPetStoneEvt(2);
      }
      
      public function set showBag(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2067262411showBag;
         if(_loc2_ !== param1)
         {
            this._2067262411showBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petStoneBag() : PetStoneBag
      {
         return this._503675810petStoneBag;
      }
      
      [Bindable(event="propertyChange")]
      public function get subSlot4() : PetStoneSlot
      {
         return this._2090889322subSlot4;
      }
      
      public function updatePetStoneCompoSlot(param1:PetStoneSlot) : void
      {
         var _loc2_:PetStoneSlot = this["preStoneSlot"] as PetStoneSlot;
         var _loc3_:Object = GameData.d[GamePredef.TBL_PET_STONE][param1.giid];
         if(Number(_loc3_["level"]) >= 5 || Boolean(Number(_loc3_["energyFlag"] == 1)))
         {
            Alert.show(Language.PET_STONE_PANEL[8]);
            return;
         }
         _loc2_.type = GamePredef.TBL_PET_STONE;
         _loc2_.quality = param1.quality;
         _loc2_.giid = param1.giid;
         _loc2_.slotData = param1.slotData;
         _loc2_.stackNum = param1.stackNum;
         _loc2_.sid = param1.sid;
         var _loc4_:Number = Number(_loc3_["nextId"]);
         var _loc5_:PetStoneSlot = this["nextStoneSlot"] as PetStoneSlot;
         _loc5_.type = GamePredef.TBL_PET_STONE;
         _loc5_.slotData = GameData.d[GamePredef.TBL_PET_STONE][_loc4_];
         _loc5_.quality = param1.quality + 1;
         _loc5_.giid = _loc4_;
         updateNeedSilLbl();
      }
      
      [Bindable(event="propertyChange")]
      public function get speSkillCbx() : RadioButton
      {
         return this._982857296speSkillCbx;
      }
      
      public function set norSkillCbx(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1881374169norSkillCbx;
         if(_loc2_ !== param1)
         {
            this._1881374169norSkillCbx = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"norSkillCbx",_loc2_,param1));
         }
      }
      
      public function __resolveNum_change(param1:NumericStepperEvent) : void
      {
         updateCanGetEnergyStoneLbl();
      }
      
      public function set skillDesNew(param1:TextArea) : void
      {
         var _loc2_:Object = this._1802392031skillDesNew;
         if(_loc2_ !== param1)
         {
            this._1802392031skillDesNew = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillDesNew",_loc2_,param1));
         }
      }
      
      public function __norSkillCbx_click(param1:MouseEvent) : void
      {
         changeSkillType();
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
      
      private function _PetStonePanel_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         changeType = _loc1_;
         _loc1_.initialized(this,"changeType");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBag() : BasicGlowButton
      {
         return this._2067262411showBag;
      }
      
      public function set equSlot(param1:PetStoneSlot) : void
      {
         var _loc2_:Object = this._1505682713equSlot;
         if(_loc2_ !== param1)
         {
            this._1505682713equSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"equSlot",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get norSkillCbx() : RadioButton
      {
         return this._1881374169norSkillCbx;
      }
      
      public function set needEnergyStoneLbl(param1:Label) : void
      {
         var _loc2_:Object = this._573030417needEnergyStoneLbl;
         if(_loc2_ !== param1)
         {
            this._573030417needEnergyStoneLbl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needEnergyStoneLbl",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillDesNew() : TextArea
      {
         return this._1802392031skillDesNew;
      }
      
      public function set eTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1322604301eTitle;
         if(_loc2_ !== param1)
         {
            this._1322604301eTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needEnergyStoneLbl() : Label
      {
         return this._573030417needEnergyStoneLbl;
      }
      
      public function updateChangeSkill(param1:PetStoneSlot) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc2_:Object = GameData.d[GamePredef.TBL_PET_STONE][param1.giid];
         if(!Number(_loc2_["energyFlag"]))
         {
            Alert.show(Language.PET_STONE_PANEL[18]);
            return;
         }
         var _loc3_:PetStoneSlot = this["energySlot"] as PetStoneSlot;
         _loc3_.type = GamePredef.TBL_PET_STONE;
         _loc3_.quality = param1.quality;
         _loc3_.giid = param1.giid;
         _loc3_.slotData = param1.slotData;
         _loc3_.sid = param1.sid;
         _loc3_.stackNum = 1;
         _loc3_.skillId = param1.skillId;
         skillProp.text = Language.PET_STONE_PANEL[5] + Language.PET_STONE_PANEL[4][_loc2_["propType"]] + "+" + _loc2_["propNum"];
         skillProp.visible = true;
         if(_loc3_.skillId > 0)
         {
            _loc4_ = GameData.d[GamePredef.TBL_SKILL][_loc3_.skillId];
            skillName.text = Language.PET_STONE_PANEL[6] + _loc4_["name"];
            skillName.visible = true;
            skillDes.visible = true;
            skillDesNew.visible = true;
            _loc5_ = Number(_loc4_["exStoneSid"]);
            if(_loc5_ > 0)
            {
               _loc6_ = GameData.d[GamePredef.TBL_SKILL][_loc5_];
               skillDesNew.text = _loc6_["description"];
            }
            else
            {
               skillDesNew.text = _loc4_["description"];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resolveNum() : NumericStepper
      {
         return this._1599579654resolveNum;
      }
   }
}

