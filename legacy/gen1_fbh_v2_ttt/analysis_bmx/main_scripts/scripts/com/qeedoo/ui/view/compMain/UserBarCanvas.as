package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.logic.Battle;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
   import com.qeedoo.ui.view.comp.Slot;
   import com.qeedoo.ui.view.compBattle.BattleStage;
   import com.qeedoo.ui.view.compGameStage.BattleCreatureView;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class UserBarCanvas extends SimpleCanvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _112113s20:ItemSlot;
      
      private var _112089s17:ItemSlot;
      
      private var _334507179barDown:Button;
      
      private var _334203872barNum3:RoundedLabel;
      
      private var _112084s12:ItemSlot;
      
      private var _112090s18:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3619s6:ItemSlot;
      
      private var _112119s26:ItemSlot;
      
      private var _3622s9:ItemSlot;
      
      private var _3016320bar3:HBox;
      
      private var _112114s21:ItemSlot;
      
      public var _UserBarCanvas_SetProperty10:SetProperty;
      
      public var _UserBarCanvas_SetProperty11:SetProperty;
      
      public var _UserBarCanvas_SetProperty12:SetProperty;
      
      public var _UserBarCanvas_SetProperty13:SetProperty;
      
      public var _UserBarCanvas_SetProperty14:SetProperty;
      
      public var _UserBarCanvas_SetProperty15:SetProperty;
      
      public var _UserBarCanvas_SetProperty16:SetProperty;
      
      public var _UserBarCanvas_SetProperty17:SetProperty;
      
      public var _UserBarCanvas_SetProperty18:SetProperty;
      
      public var _UserBarCanvas_SetProperty19:SetProperty;
      
      private var _core:Core;
      
      private var _112120s27:ItemSlot;
      
      private var _3618s5:ItemSlot;
      
      public var _UserBarCanvas_SetProperty20:SetProperty;
      
      public var _UserBarCanvas_SetProperty21:SetProperty;
      
      public var _UserBarCanvas_SetProperty22:SetProperty;
      
      public var _UserBarCanvas_SetProperty23:SetProperty;
      
      public var _UserBarCanvas_SetProperty24:SetProperty;
      
      public var _UserBarCanvas_SetProperty25:SetProperty;
      
      public var _UserBarCanvas_SetProperty26:SetProperty;
      
      private var _quickSkillSize:int = 30;
      
      private var _97884btn:Button;
      
      private var _112091s19:ItemSlot;
      
      private var _112085s13:ItemSlot;
      
      private var _3621s8:ItemSlot;
      
      public var _UserBarCanvas_SetProperty1:SetProperty;
      
      public var _UserBarCanvas_SetProperty2:SetProperty;
      
      public var _UserBarCanvas_SetProperty3:SetProperty;
      
      public var _UserBarCanvas_SetProperty4:SetProperty;
      
      public var _UserBarCanvas_SetProperty5:SetProperty;
      
      public var _UserBarCanvas_SetProperty6:SetProperty;
      
      public var _UserBarCanvas_SetProperty7:SetProperty;
      
      public var _UserBarCanvas_SetProperty8:SetProperty;
      
      public var _UserBarCanvas_SetProperty9:SetProperty;
      
      private var _758632574numCanvas:Canvas;
      
      private var _3617s4:ItemSlot;
      
      private var _112115s22:ItemSlot;
      
      private var _112121s28:ItemSlot;
      
      private var _3620s7:ItemSlot;
      
      private var _1071360635btnContainer:Canvas;
      
      private var _112086s14:ItemSlot;
      
      private var _3616s3:ItemSlot;
      
      private var _334203873barNum2:RoundedLabel;
      
      private var _112144s30:ItemSlot;
      
      private var _112116s23:ItemSlot;
      
      private var _112122s29:ItemSlot;
      
      private var _93507086barUp:Button;
      
      private var _3615s2:ItemSlot;
      
      private var _3016319bar2:HBox;
      
      private var _112087s15:ItemSlot;
      
      private var _112082s10:ItemSlot;
      
      private var _3614s1:ItemSlot;
      
      private var _112117s24:ItemSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _1396254093barNum:RoundedLabel;
      
      private var _112088s16:ItemSlot;
      
      private var _96354abc:AutoBattleCanva;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3016318bar1:HBox;
      
      private var _112083s11:ItemSlot;
      
      private var _334203874barNum1:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _112118s25:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":52,
               "width":460,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"btnContainer",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":44,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "styleName":"CanvasSkillBar",
                        "width":373,
                        "x":23,
                        "y":5,
                        "clipContent":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"barNum1",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.right = "2";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"1",
                                 "y":14,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"barNum2",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.right = "2";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"2",
                                 "y":14,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"barNum3",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.right = "2";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "text":"3",
                                 "y":14,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"bar1",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "width":350,
                                 "height":37,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s1",
                                    "events":{
                                       "dragDrop":"__s1_dragDrop",
                                       "mouseDown":"__s1_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s2",
                                    "events":{
                                       "dragDrop":"__s2_dragDrop",
                                       "mouseDown":"__s2_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s3",
                                    "events":{
                                       "dragDrop":"__s3_dragDrop",
                                       "mouseDown":"__s3_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s4",
                                    "events":{
                                       "dragDrop":"__s4_dragDrop",
                                       "mouseDown":"__s4_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s5",
                                    "events":{
                                       "dragDrop":"__s5_dragDrop",
                                       "mouseDown":"__s5_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s6",
                                    "events":{
                                       "dragDrop":"__s6_dragDrop",
                                       "mouseDown":"__s6_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s7",
                                    "events":{
                                       "dragDrop":"__s7_dragDrop",
                                       "mouseDown":"__s7_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s8",
                                    "events":{
                                       "dragDrop":"__s8_dragDrop",
                                       "mouseDown":"__s8_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s9",
                                    "events":{
                                       "dragDrop":"__s9_dragDrop",
                                       "mouseDown":"__s9_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s10",
                                    "events":{
                                       "dragDrop":"__s10_dragDrop",
                                       "mouseDown":"__s10_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"bar2",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "visible":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s11",
                                    "events":{
                                       "dragDrop":"__s11_dragDrop",
                                       "mouseDown":"__s11_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s12",
                                    "events":{
                                       "dragDrop":"__s12_dragDrop",
                                       "mouseDown":"__s12_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s13",
                                    "events":{
                                       "dragDrop":"__s13_dragDrop",
                                       "mouseDown":"__s13_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s14",
                                    "events":{
                                       "dragDrop":"__s14_dragDrop",
                                       "mouseDown":"__s14_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s15",
                                    "events":{
                                       "dragDrop":"__s15_dragDrop",
                                       "mouseDown":"__s15_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s16",
                                    "events":{
                                       "dragDrop":"__s16_dragDrop",
                                       "mouseDown":"__s16_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s17",
                                    "events":{
                                       "dragDrop":"__s17_dragDrop",
                                       "mouseDown":"__s17_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s18",
                                    "events":{
                                       "dragDrop":"__s18_dragDrop",
                                       "mouseDown":"__s18_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s19",
                                    "events":{
                                       "dragDrop":"__s19_dragDrop",
                                       "mouseDown":"__s19_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s20",
                                    "events":{
                                       "dragDrop":"__s20_dragDrop",
                                       "mouseDown":"__s20_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "id":"bar3",
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":5,
                                 "visible":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s21",
                                    "events":{
                                       "dragDrop":"__s21_dragDrop",
                                       "mouseDown":"__s21_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s22",
                                    "events":{
                                       "dragDrop":"__s22_dragDrop",
                                       "mouseDown":"__s22_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s23",
                                    "events":{
                                       "dragDrop":"__s23_dragDrop",
                                       "mouseDown":"__s23_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s24",
                                    "events":{
                                       "dragDrop":"__s24_dragDrop",
                                       "mouseDown":"__s24_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s25",
                                    "events":{
                                       "dragDrop":"__s25_dragDrop",
                                       "mouseDown":"__s25_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s26",
                                    "events":{
                                       "dragDrop":"__s26_dragDrop",
                                       "mouseDown":"__s26_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s27",
                                    "events":{
                                       "dragDrop":"__s27_dragDrop",
                                       "mouseDown":"__s27_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s28",
                                    "events":{
                                       "dragDrop":"__s28_dragDrop",
                                       "mouseDown":"__s28_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s29",
                                    "events":{
                                       "dragDrop":"__s29_dragDrop",
                                       "mouseDown":"__s29_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"s30",
                                    "events":{
                                       "dragDrop":"__s30_dragDrop",
                                       "mouseDown":"__s30_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 25;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":6,
                                 "y":23,
                                 "mouseEnabled":false,
                                 "mouseChildren":false,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"1",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"2",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"3",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"4",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"5",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"6",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"7",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"8",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"9",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 1961723;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"0",
                                          "width":10,
                                          "height":15
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"numCanvas",
                           "stylesFactory":function():void
                           {
                              this.right = "-2.100006";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":22,
                                 "height":48,
                                 "y":1,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"barUp",
                                    "events":{"click":"__barUp_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"UserBarSwitchUp",
                                          "x":2,
                                          "y":3
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"barNum",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"1",
                                          "y":14,
                                          "x":1
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"barDown",
                                    "events":{"click":"__barDown_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"UserBarSwitchDown",
                                          "x":2,
                                          "y":29
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":AutoBattleCanva,
                  "id":"abc",
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":1,
                        "width":86,
                        "height":52
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn",
                  "events":{"click":"__btn_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnSkillBar",
                        "x":396,
                        "y":7
                     };
                  }
               })]
            };
         }
      });
      
      public function UserBarCanvas()
      {
         super();
         mx_internal::_document = this;
         this.clipContent = false;
         this.cacheAsBitmap = true;
         this.height = 52;
         this.width = 460;
         this.states = [_UserBarCanvas_State1_c(),_UserBarCanvas_State2_c()];
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         UserBarCanvas._watcherSetupUtil = param1;
      }
      
      public function set s23(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112116s23;
         if(_loc2_ !== param1)
         {
            this._112116s23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s23",_loc2_,param1));
         }
      }
      
      public function set s28(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112121s28;
         if(_loc2_ !== param1)
         {
            this._112121s28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s28",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s22() : ItemSlot
      {
         return this._112115s22;
      }
      
      public function set s29(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112122s29;
         if(_loc2_ !== param1)
         {
            this._112122s29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s29",_loc2_,param1));
         }
      }
      
      private function _UserBarCanvas_SetProperty23_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty23 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty23",_UserBarCanvas_SetProperty23);
         return _loc1_;
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         _core.view.getUI(ViewManager.MAIN_USER_BAR).changeBarVisible();
      }
      
      [Bindable(event="propertyChange")]
      public function get s26() : ItemSlot
      {
         return this._112119s26;
      }
      
      public function __s19_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function set s27(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112120s27;
         if(_loc2_ !== param1)
         {
            this._112120s27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s27",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s29() : ItemSlot
      {
         return this._112122s29;
      }
      
      public function set s26(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112119s26;
         if(_loc2_ !== param1)
         {
            this._112119s26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s26",_loc2_,param1));
         }
      }
      
      public function __s23_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s30() : ItemSlot
      {
         return this._112144s30;
      }
      
      [Bindable(event="propertyChange")]
      public function get s25() : ItemSlot
      {
         return this._112118s25;
      }
      
      public function set barUp(param1:Button) : void
      {
         var _loc2_:Object = this._93507086barUp;
         if(_loc2_ !== param1)
         {
            this._93507086barUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barUp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get barUp() : Button
      {
         return this._93507086barUp;
      }
      
      public function __s7_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get barNum2() : RoundedLabel
      {
         return this._334203873barNum2;
      }
      
      [Bindable(event="propertyChange")]
      public function get barNum3() : RoundedLabel
      {
         return this._334203872barNum3;
      }
      
      public function __s17_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _UserBarCanvas_SetProperty11_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty11 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty11",_UserBarCanvas_SetProperty11);
         return _loc1_;
      }
      
      private function useSlot(param1:ItemSlot, param2:Boolean = false) : void
      {
         var _loc3_:Object = null;
         var _loc4_:BattleStage = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:Object = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Object = null;
         if(param1.type == GamePredef.TBL_ITEM_TEMPLATE)
         {
            _core.useItem(param1.giid,param1,param2);
         }
         else if(_core.state == GamePredef.ST_CORE_BATTLE && BattleCreatureView.cmdMode)
         {
            _loc3_ = _core.data.getGameData(GamePredef.TBL_SKILL,param1.giid);
            if(Boolean(_loc3_) && Boolean(_loc3_.restoreSid) && _loc3_.restoreSid > 0)
            {
               _loc5_ = _core.data.getSlot({"id":_core.battlePet.equ7});
               _loc6_ = _core.data.getSlot({"id":_core.battlePet.equ8});
               _loc7_ = _core.data.getGameData(18,_loc5_.itemId);
               _loc8_ = _core.data.getGameData(18,_loc6_.itemId);
               _loc9_ = Number(_loc7_.endureLeft);
               _loc10_ = Number(_loc8_.endureLeft);
               _loc11_ = Number(_loc7_.endureMax) * 0.1;
               _loc12_ = Number(_loc8_.endureMax) * 0.1;
               if(_loc9_ > 0 && _loc9_ < _loc11_ || _loc10_ > 0 && _loc10_ < _loc12_)
               {
                  _core.sysMidNote(Language.CHARSELECTCANVAS_U[35]);
               }
               else if(_loc9_ <= 0 || _loc10_ <= 0)
               {
                  _core.sysMidNote(Language.CHARSELECTCANVAS_U[36]);
                  return;
               }
            }
            _loc4_ = BattleStage(_core.view.getUI(ViewManager.STAGE_BATTLE));
            if(Boolean(_loc3_) && _core.checkSkillRequire(_loc3_,true,Boolean(_loc4_.cPetCmd.visible)))
            {
               _core.cmdState = GamePredef.ST_BATTLE_SKILL;
               _core.skill = _loc3_;
               if(_loc3_.targetType == Battle.SKILL_TARGET_TYPE_SELF_PLAYER)
               {
                  _core.battle.battleCmd(_core.player.battleId,GamePredef.BATTLE_ACTION_SKILL,_core.skill.id,_core.skillLevel);
               }
               else if(_loc3_.targetType == Battle.SKILL_TARGET_TYPE_SELF_PET)
               {
                  _loc13_ = _core.battle.battleGetPlayerPet(_core.view.getUI(ViewManager.STAGE_BATTLE).cList);
                  if(null == _loc13_)
                  {
                     _core.sysMidNote(Language.USERBARCANVAS_S[1]);
                     return;
                  }
                  _core.battle.battleCmd(_loc13_.battleId,GamePredef.BATTLE_ACTION_SKILL,_core.skill.id,_core.skillLevel);
               }
               else
               {
                  _core.view.showSelect();
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s2() : ItemSlot
      {
         return this._3615s2;
      }
      
      [Bindable(event="propertyChange")]
      public function get s3() : ItemSlot
      {
         return this._3616s3;
      }
      
      [Bindable(event="propertyChange")]
      public function get s4() : ItemSlot
      {
         return this._3617s4;
      }
      
      [Bindable(event="propertyChange")]
      public function get s6() : ItemSlot
      {
         return this._3619s6;
      }
      
      private function _UserBarCanvas_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty3 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty3",_UserBarCanvas_SetProperty3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get s8() : ItemSlot
      {
         return this._3621s8;
      }
      
      public function __s12_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function set s30(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112144s30;
         if(_loc2_ !== param1)
         {
            this._112144s30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s30",_loc2_,param1));
         }
      }
      
      public function __s4_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s5() : ItemSlot
      {
         return this._3618s5;
      }
      
      private function _UserBarCanvas_SetProperty19_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty19 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty19",_UserBarCanvas_SetProperty19);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get s9() : ItemSlot
      {
         return this._3622s9;
      }
      
      public function __barUp_click(param1:MouseEvent) : void
      {
         userBarUp();
      }
      
      public function __s20_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set barNum1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._334203874barNum1;
         if(_loc2_ !== param1)
         {
            this._334203874barNum1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barNum1",_loc2_,param1));
         }
      }
      
      public function __barDown_click(param1:MouseEvent) : void
      {
         userBarDown();
      }
      
      [Bindable(event="propertyChange")]
      public function get s28() : ItemSlot
      {
         return this._112121s28;
      }
      
      [Bindable(event="propertyChange")]
      public function get barNum1() : RoundedLabel
      {
         return this._334203874barNum1;
      }
      
      public function __s28_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set s4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3617s4;
         if(_loc2_ !== param1)
         {
            this._3617s4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s4",_loc2_,param1));
         }
      }
      
      private function _UserBarCanvas_SetProperty22_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty22 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty22",_UserBarCanvas_SetProperty22);
         return _loc1_;
      }
      
      public function set s5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3618s5;
         if(_loc2_ !== param1)
         {
            this._3618s5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s5",_loc2_,param1));
         }
      }
      
      public function set barNum2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._334203873barNum2;
         if(_loc2_ !== param1)
         {
            this._334203873barNum2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barNum2",_loc2_,param1));
         }
      }
      
      public function set barNum3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._334203872barNum3;
         if(_loc2_ !== param1)
         {
            this._334203872barNum3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barNum3",_loc2_,param1));
         }
      }
      
      public function set s7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3620s7;
         if(_loc2_ !== param1)
         {
            this._3620s7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s1() : ItemSlot
      {
         return this._3614s1;
      }
      
      public function __s25_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function set s3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3616s3;
         if(_loc2_ !== param1)
         {
            this._3616s3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s3",_loc2_,param1));
         }
      }
      
      public function set s9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3622s9;
         if(_loc2_ !== param1)
         {
            this._3622s9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s9",_loc2_,param1));
         }
      }
      
      public function set s1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3614s1;
         if(_loc2_ !== param1)
         {
            this._3614s1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s1",_loc2_,param1));
         }
      }
      
      public function set s6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3619s6;
         if(_loc2_ !== param1)
         {
            this._3619s6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s6",_loc2_,param1));
         }
      }
      
      public function set s2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3615s2;
         if(_loc2_ !== param1)
         {
            this._3615s2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s2",_loc2_,param1));
         }
      }
      
      public function set s8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3621s8;
         if(_loc2_ !== param1)
         {
            this._3621s8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s8",_loc2_,param1));
         }
      }
      
      public function __s9_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s7() : ItemSlot
      {
         return this._3620s7;
      }
      
      private function _UserBarCanvas_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty2 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 81;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty2",_UserBarCanvas_SetProperty2);
         return _loc1_;
      }
      
      private function _UserBarCanvas_SetProperty10_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty10 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty10",_UserBarCanvas_SetProperty10);
         return _loc1_;
      }
      
      private function _UserBarCanvas_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "normal";
         _loc1_.overrides = [_UserBarCanvas_SetProperty15_i(),_UserBarCanvas_SetProperty16_i(),_UserBarCanvas_SetProperty17_i(),_UserBarCanvas_SetProperty18_i(),_UserBarCanvas_SetProperty19_i(),_UserBarCanvas_SetProperty20_i(),_UserBarCanvas_SetProperty21_i(),_UserBarCanvas_SetProperty22_i(),_UserBarCanvas_SetProperty23_i(),_UserBarCanvas_SetProperty24_i(),_UserBarCanvas_SetProperty25_i(),_UserBarCanvas_SetProperty26_i()];
         return _loc1_;
      }
      
      public function showUsableItems(param1:String) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = null;
         var _loc5_:Object = null;
         switch(param1)
         {
            case "pet":
               _loc2_ = 100;
               break;
            case "char":
               _loc2_ = _core.player.classId;
         }
         var _loc4_:int = 1;
         while(_loc4_ <= 30)
         {
            _loc3_ = this["s" + _loc4_];
            if(_loc3_.type == GamePredef.TBL_SKILL && Boolean(_loc3_.giid))
            {
               _loc5_ = _core.getTemplateData(GamePredef.TBL_SKILL,_loc3_.giid);
               if(_loc5_.reqClass.slice("|").indexOf(_loc2_) >= 0)
               {
                  this["s" + _loc4_].alpha = 1;
                  _loc3_.enabled = true;
               }
               else
               {
                  this["s" + _loc4_].alpha = 0.5;
                  _loc3_.enabled = false;
               }
            }
            else
            {
               this["s" + _loc4_].alpha = 1;
               _loc3_.enabled = true;
            }
            _loc4_++;
         }
      }
      
      public function __s7_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s14_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s12_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _UserBarCanvas_SetProperty18_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty18 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty18",_UserBarCanvas_SetProperty18);
         return _loc1_;
      }
      
      public function __s2_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get abc() : AutoBattleCanva
      {
         return this._96354abc;
      }
      
      private function _UserBarCanvas_SetProperty21_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty21 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 44;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty21",_UserBarCanvas_SetProperty21);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get bar1() : HBox
      {
         return this._3016318bar1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bar2() : HBox
      {
         return this._3016319bar2;
      }
      
      [Bindable(event="propertyChange")]
      public function get bar3() : HBox
      {
         return this._3016320bar3;
      }
      
      public function useSlotByNum(param1:Number) : void
      {
         var _loc3_:ItemSlot = null;
         var _loc4_:ItemSlot = null;
         var _loc2_:BattleStage = BattleStage(_core.view.getUI(ViewManager.STAGE_BATTLE));
         if(_loc2_.visible && _loc2_.enabled && (_loc2_.cPlayerCmd.visible || _loc2_.cPetCmd.visible))
         {
            _loc3_ = GamePredef.GLOBAL_SETTING.battleStExpan ? this["s" + param1] : this["s" + (param1 + int(barNum.text) * 10 - 10)];
            useSlot(_loc3_);
         }
         else if(_core.state == GamePredef.ST_CORE_NORMAL)
         {
            _loc4_ = this["s" + (param1 + int(barNum.text) * 10 - 10)];
            if(_loc4_.type == GamePredef.TBL_ITEM_TEMPLATE)
            {
               useSlot(_loc4_);
            }
         }
      }
      
      private function _UserBarCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return bar2;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty1.target = param1;
         },"_UserBarCanvas_SetProperty1.target");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return bar3;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty2.target = param1;
         },"_UserBarCanvas_SetProperty2.target");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return bar1;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty3.target = param1;
         },"_UserBarCanvas_SetProperty3.target");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return bar2;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty4.target = param1;
         },"_UserBarCanvas_SetProperty4.target");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return bar3;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty5.target = param1;
         },"_UserBarCanvas_SetProperty5.target");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return btnContainer;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty6.target = param1;
         },"_UserBarCanvas_SetProperty6.target");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return btnContainer;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty7.target = param1;
         },"_UserBarCanvas_SetProperty7.target");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return numCanvas;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty8.target = param1;
         },"_UserBarCanvas_SetProperty8.target");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return abc;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty9.target = param1;
         },"_UserBarCanvas_SetProperty9.target");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum1;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty10.target = param1;
         },"_UserBarCanvas_SetProperty10.target");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum2;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty11.target = param1;
         },"_UserBarCanvas_SetProperty11.target");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum2;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty12.target = param1;
         },"_UserBarCanvas_SetProperty12.target");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum3;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty13.target = param1;
         },"_UserBarCanvas_SetProperty13.target");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum3;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty14.target = param1;
         },"_UserBarCanvas_SetProperty14.target");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return bar2;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty15.target = param1;
         },"_UserBarCanvas_SetProperty15.target");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return bar3;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty16.target = param1;
         },"_UserBarCanvas_SetProperty16.target");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return bar1;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty17.target = param1;
         },"_UserBarCanvas_SetProperty17.target");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return bar2;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty18.target = param1;
         },"_UserBarCanvas_SetProperty18.target");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return bar3;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty19.target = param1;
         },"_UserBarCanvas_SetProperty19.target");
         result[18] = binding;
         binding = new Binding(this,function():Object
         {
            return btnContainer;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty20.target = param1;
         },"_UserBarCanvas_SetProperty20.target");
         result[19] = binding;
         binding = new Binding(this,function():Object
         {
            return btnContainer;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty21.target = param1;
         },"_UserBarCanvas_SetProperty21.target");
         result[20] = binding;
         binding = new Binding(this,function():Object
         {
            return numCanvas;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty22.target = param1;
         },"_UserBarCanvas_SetProperty22.target");
         result[21] = binding;
         binding = new Binding(this,function():Object
         {
            return abc;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty23.target = param1;
         },"_UserBarCanvas_SetProperty23.target");
         result[22] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum1;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty24.target = param1;
         },"_UserBarCanvas_SetProperty24.target");
         result[23] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum2;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty25.target = param1;
         },"_UserBarCanvas_SetProperty25.target");
         result[24] = binding;
         binding = new Binding(this,function():Object
         {
            return barNum3;
         },function(param1:Object):void
         {
            _UserBarCanvas_SetProperty26.target = param1;
         },"_UserBarCanvas_SetProperty26.target");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s1.slotType = param1;
         },"s1.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s2.slotType = param1;
         },"s2.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s3.slotType = param1;
         },"s3.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s4.slotType = param1;
         },"s4.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s5.slotType = param1;
         },"s5.slotType");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s6.slotType = param1;
         },"s6.slotType");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s7.slotType = param1;
         },"s7.slotType");
         result[32] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s8.slotType = param1;
         },"s8.slotType");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s9.slotType = param1;
         },"s9.slotType");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s10.slotType = param1;
         },"s10.slotType");
         result[35] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s11.slotType = param1;
         },"s11.slotType");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s12.slotType = param1;
         },"s12.slotType");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s13.slotType = param1;
         },"s13.slotType");
         result[38] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s14.slotType = param1;
         },"s14.slotType");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s15.slotType = param1;
         },"s15.slotType");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s16.slotType = param1;
         },"s16.slotType");
         result[41] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s17.slotType = param1;
         },"s17.slotType");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s18.slotType = param1;
         },"s18.slotType");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s19.slotType = param1;
         },"s19.slotType");
         result[44] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s20.slotType = param1;
         },"s20.slotType");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s21.slotType = param1;
         },"s21.slotType");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s22.slotType = param1;
         },"s22.slotType");
         result[47] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s23.slotType = param1;
         },"s23.slotType");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s24.slotType = param1;
         },"s24.slotType");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s25.slotType = param1;
         },"s25.slotType");
         result[50] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s26.slotType = param1;
         },"s26.slotType");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s27.slotType = param1;
         },"s27.slotType");
         result[52] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s28.slotType = param1;
         },"s28.slotType");
         result[53] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s29.slotType = param1;
         },"s29.slotType");
         result[54] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            s30.slotType = param1;
         },"s30.slotType");
         result[55] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.USERBARCANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn.toolTip = param1;
         },"btn.toolTip");
         result[56] = binding;
         return result;
      }
      
      public function __s23_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get barNum() : RoundedLabel
      {
         return this._1396254093barNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get numCanvas() : Canvas
      {
         return this._758632574numCanvas;
      }
      
      public function __s15_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _UserBarCanvas_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "battle";
         _loc1_.overrides = [_UserBarCanvas_SetProperty1_i(),_UserBarCanvas_SetProperty2_i(),_UserBarCanvas_SetProperty3_i(),_UserBarCanvas_SetProperty4_i(),_UserBarCanvas_SetProperty5_i(),_UserBarCanvas_SetProperty6_i(),_UserBarCanvas_SetProperty7_i(),_UserBarCanvas_SetProperty8_i(),_UserBarCanvas_SetProperty9_i(),_UserBarCanvas_SetProperty10_i(),_UserBarCanvas_SetProperty11_i(),_UserBarCanvas_SetProperty12_i(),_UserBarCanvas_SetProperty13_i(),_UserBarCanvas_SetProperty14_i()];
         return _loc1_;
      }
      
      public function __s2_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _UserBarCanvas_SetProperty1_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty1 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 43;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty1",_UserBarCanvas_SetProperty1);
         return _loc1_;
      }
      
      public function __s27_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      private function changeBarVisible() : void
      {
         _core.updateSettingNow("au",btnContainer.visible ? 0 : 1);
         btnContainer.visible = !btnContainer.visible;
         btn.selected = !btn.selected;
         barUp.visible = btnContainer.visible;
         barDown.visible = btnContainer.visible;
         barNum.visible = btnContainer.visible;
      }
      
      private function _UserBarCanvas_SetProperty17_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty17 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty17",_UserBarCanvas_SetProperty17);
         return _loc1_;
      }
      
      private function _UserBarCanvas_SetProperty20_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty20 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 4;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty20",_UserBarCanvas_SetProperty20);
         return _loc1_;
      }
      
      private function _UserBarCanvas_SetProperty9_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty9 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty9",_UserBarCanvas_SetProperty9);
         return _loc1_;
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:ItemSlot = null;
         param1.stopImmediatePropagation();
         if(_core.state == GamePredef.ST_CORE_BATTLE)
         {
            _loc2_ = ItemSlot(param1.currentTarget);
            useSlot(_loc2_);
         }
         else if(_core.state == GamePredef.ST_CORE_NORMAL && _core.player.isLockedUB)
         {
            _loc2_ = ItemSlot(param1.currentTarget);
            useSlot(_loc2_,param1.ctrlKey);
         }
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function __s4_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function set abc(param1:AutoBattleCanva) : void
      {
         var _loc2_:Object = this._96354abc;
         if(_loc2_ !== param1)
         {
            this._96354abc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"abc",_loc2_,param1));
         }
      }
      
      public function __s16_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s26_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s29_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function update() : void
      {
      }
      
      public function __s20_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s10_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set barDown(param1:Button) : void
      {
         var _loc2_:Object = this._334507179barDown;
         if(_loc2_ !== param1)
         {
            this._334507179barDown = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barDown",_loc2_,param1));
         }
      }
      
      public function set barNum(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1396254093barNum;
         if(_loc2_ !== param1)
         {
            this._1396254093barNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barNum",_loc2_,param1));
         }
      }
      
      private function _UserBarCanvas_SetProperty8_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty8 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty8",_UserBarCanvas_SetProperty8);
         return _loc1_;
      }
      
      public function __s5_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _UserBarCanvas_SetProperty16_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty16 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty16",_UserBarCanvas_SetProperty16);
         return _loc1_;
      }
      
      public function __s18_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s18_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s21_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function userBarUp() : void
      {
         if(bar1.visible)
         {
            bar1.visible = false;
            bar3.visible = true;
            barNum.text = "3";
         }
         else if(bar2.visible)
         {
            bar2.visible = false;
            bar1.visible = true;
            barNum.text = "1";
         }
         else if(bar3.visible)
         {
            bar3.visible = false;
            bar2.visible = true;
            barNum.text = "2";
         }
      }
      
      public function __s29_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function userBarDown() : void
      {
         if(bar1.visible)
         {
            bar1.visible = false;
            bar2.visible = true;
            barNum.text = "2";
         }
         else if(bar2.visible)
         {
            bar2.visible = false;
            bar3.visible = true;
            barNum.text = "3";
         }
         else if(bar3.visible)
         {
            bar3.visible = false;
            bar1.visible = true;
            barNum.text = "1";
         }
      }
      
      public function set bar2(param1:HBox) : void
      {
         var _loc2_:Object = this._3016319bar2;
         if(_loc2_ !== param1)
         {
            this._3016319bar2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar2",_loc2_,param1));
         }
      }
      
      public function __s6_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s11_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s22_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function set bar3(param1:HBox) : void
      {
         var _loc2_:Object = this._3016320bar3;
         if(_loc2_ !== param1)
         {
            this._3016320bar3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      public function __s13_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set bar1(param1:HBox) : void
      {
         var _loc2_:Object = this._3016318bar1;
         if(_loc2_ !== param1)
         {
            this._3016318bar1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bar1",_loc2_,param1));
         }
      }
      
      private function _UserBarCanvas_SetProperty15_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty15 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty15",_UserBarCanvas_SetProperty15);
         return _loc1_;
      }
      
      private function _UserBarCanvas_SetProperty7_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty7 = _loc1_;
         _loc1_.name = "height";
         _loc1_.value = 120;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty7",_UserBarCanvas_SetProperty7);
         return _loc1_;
      }
      
      public function set numCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._758632574numCanvas;
         if(_loc2_ !== param1)
         {
            this._758632574numCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numCanvas",_loc2_,param1));
         }
      }
      
      public function __s8_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set btnContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1071360635btnContainer;
         if(_loc2_ !== param1)
         {
            this._1071360635btnContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnContainer",_loc2_,param1));
         }
      }
      
      private function setSkillEnabled(param1:ItemSlot, param2:Number, param3:Boolean) : void
      {
         if(param1.type != GamePredef.TBL_SKILL || !param1.giid)
         {
            param1.alpha = 1;
            param1.enabled = true;
            return;
         }
         var _loc4_:Object = _core.getTemplateData(param1.type,param1.giid,false);
         if(!_loc4_)
         {
            param1.alpha = 0.5;
            param1.enabled = false;
            return;
         }
         if((_loc4_.reqClass == "" || _loc4_.reqClass.indexOf("|" + param2 + "|") >= 0 || _loc4_.reqClass.indexOf("|" + param2 + "@|") >= 0) && _core.checkSkillRequire(_loc4_,false,param3))
         {
            param1.alpha = 1;
            param1.enabled = true;
         }
         else
         {
            param1.alpha = 0.5;
            param1.enabled = false;
         }
      }
      
      public function updateUserBar(param1:int) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:Object = null;
         var _loc2_:ItemSlot = this["s" + param1];
         _loc2_.stackNum = 0;
         var _loc3_:int = int(GamePredef.GLOBAL_SETTING["st" + param1]);
         var _loc4_:Number = Number(GamePredef.GLOBAL_SETTING["sid" + param1]);
         _loc2_.toolTip = _loc4_ <= 0 ? Language.USERBARCANVAS_S[2] : null;
         if(_loc3_ == GamePredef.TBL_SKILL)
         {
            if(_core.player.awakenPointDict)
            {
               _loc6_ = _core.player.awakenPointDict;
               _loc7_ = GameData.d[GamePredef.TBL_SKILL][_loc4_];
               if((Boolean(_loc7_)) && Boolean(_loc6_[_loc7_.codeName]))
               {
                  _loc8_ = _loc7_.codeName;
                  _loc9_ = int(_loc6_[_loc8_]);
                  if(int(_loc7_["exSid" + _loc9_]) > 0)
                  {
                     _loc4_ = Number(_loc7_["exSid" + _loc9_]);
                  }
               }
            }
            _loc2_.giid = _loc4_;
            _loc5_ = _core.getTemplateData(_loc3_,_loc4_,false);
            _loc2_.alpha = Boolean(_loc5_) && _core.checkSkillRequire(_loc5_) ? 1 : 0.5;
         }
         else
         {
            _loc2_.giid = _loc4_;
            _loc10_ = _core.getItemNum(_loc3_,_loc4_);
            _loc2_.stackNum = _loc10_.num;
            _loc2_.alpha = _loc10_.num > 0 ? 1 : 0.5;
         }
      }
      
      public function __s8_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      private function skillGetLevel(param1:Number, param2:int) : Object
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc3_:Object = GameData.d[GamePredef.TBL_SKILL][param1];
         if(param2 > 0)
         {
            _loc4_ = _core.data.gameDataIndex[GamePredef.TBL_SKILL][_loc3_.codeName];
            for each(_loc5_ in _loc4_)
            {
               if(Number(_loc5_.level) == Number(param2))
               {
                  _loc3_ = _loc5_;
                  break;
               }
            }
         }
         return _loc3_;
      }
      
      private function _UserBarCanvas_SetProperty26_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty26 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty26",_UserBarCanvas_SetProperty26);
         return _loc1_;
      }
      
      public function __s13_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function reset() : void
      {
         if(!initialized)
         {
            return;
         }
         var _loc1_:int = 1;
         while(_loc1_ <= _quickSkillSize)
         {
            this["s" + _loc1_].clean();
            this["s" + _loc1_].toolTip = Language.USERBARCANVAS_S[2];
            _loc1_++;
         }
      }
      
      public function __s24_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s24_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get barDown() : Button
      {
         return this._334507179barDown;
      }
      
      public function __s16_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s1_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      private function _UserBarCanvas_SetProperty14_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty14 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 93;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty14",_UserBarCanvas_SetProperty14);
         return _loc1_;
      }
      
      private function _UserBarCanvas_SetProperty6_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty6 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = -38;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty6",_UserBarCanvas_SetProperty6);
         return _loc1_;
      }
      
      public function __s3_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s26_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      private function _UserBarCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = bar2;
         _loc1_ = bar3;
         _loc1_ = bar1;
         _loc1_ = bar2;
         _loc1_ = bar3;
         _loc1_ = btnContainer;
         _loc1_ = btnContainer;
         _loc1_ = numCanvas;
         _loc1_ = abc;
         _loc1_ = barNum1;
         _loc1_ = barNum2;
         _loc1_ = barNum2;
         _loc1_ = barNum3;
         _loc1_ = barNum3;
         _loc1_ = bar2;
         _loc1_ = bar3;
         _loc1_ = bar1;
         _loc1_ = bar2;
         _loc1_ = bar3;
         _loc1_ = btnContainer;
         _loc1_ = btnContainer;
         _loc1_ = numCanvas;
         _loc1_ = abc;
         _loc1_ = barNum1;
         _loc1_ = barNum2;
         _loc1_ = barNum3;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Language.USERBARCANVAS_S[0];
      }
      
      public function __s30_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnContainer() : Canvas
      {
         return this._1071360635btnContainer;
      }
      
      private function _UserBarCanvas_SetProperty25_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty25 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty25",_UserBarCanvas_SetProperty25);
         return _loc1_;
      }
      
      private function setSlot(param1:DragEvent) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:Number = NaN;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:int = 0;
         var _loc12_:Object = null;
         var _loc13_:String = null;
         var _loc14_:Object = null;
         var _loc15_:int = 0;
         var _loc16_:String = null;
         var _loc17_:String = null;
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         var _loc3_:Object = param1.dragSource.dataForFormat("slot");
         if(_loc2_ == _loc3_)
         {
            return;
         }
         var _loc4_:String = _loc2_.id.slice(1);
         if(_loc3_.type == GamePredef.TBL_ITEM_INSTANCE)
         {
            _loc5_ = _core.getTemplateData(_loc3_.type,_loc3_.giid,false);
            if(!_loc5_)
            {
               return;
            }
            if(_loc5_.skillId <= 0 && (!_loc5_.scriptUse || _loc5_.scriptUse.length <= 0))
            {
               return;
            }
            _loc2_.toolTip = null;
            _loc2_.type = GamePredef.TBL_ITEM_TEMPLATE;
            _core.updateSettingNow("st" + _loc4_,GamePredef.TBL_ITEM_TEMPLATE);
            _core.updateSettingNow("sid" + _loc4_,_loc5_.id);
         }
         else if(_loc3_.type == GamePredef.TBL_ITEM_TEMPLATE)
         {
            _loc6_ = _core.getTemplateData(_loc3_.type,_loc3_.giid,false);
            if(!_loc6_)
            {
               return;
            }
            if(_loc6_.skillId <= 0 && (!_loc6_.scriptUse || _loc6_.scriptUse.length <= 0))
            {
               return;
            }
            _loc2_.toolTip = null;
            _loc2_.type = GamePredef.TBL_ITEM_TEMPLATE;
            _core.updateSettingNow("st" + _loc4_,GamePredef.TBL_ITEM_TEMPLATE);
            _core.updateSettingNow("sid" + _loc4_,_loc6_.id);
            if(_loc3_.slotType == Slot.SLOT_USERBAR)
            {
               _loc3_.clean();
               _loc7_ = _loc3_["id"].slice(1);
               if(_loc3_["id"].charAt(0) == "s")
               {
                  _loc3_.toolTip = Language.USERBARCANVAS_S[2];
               }
               _core.updateSettingNow("sid" + _loc7_,0);
            }
         }
         else if(_loc3_.type == GamePredef.TBL_SKILL)
         {
            _loc8_ = Number(_loc3_.giid);
            _loc9_ = _core.player.awakenPointDict;
            _loc10_ = GameData.d[GamePredef.TBL_SKILL][_loc3_.giid];
            if(Boolean(_loc9_) && Boolean(_loc10_) && _loc10_.reqClass == "")
            {
               for each(_loc12_ in _core.player.skillList)
               {
                  if(_loc12_)
                  {
                     _loc14_ = GameData.d[GamePredef.TBL_SKILL][_loc12_.sid];
                     if(_loc14_)
                     {
                        if(_loc9_[_loc14_.codeName])
                        {
                           _loc15_ = int(_loc9_[_loc14_.codeName]);
                           if(!(!_loc14_["exSid" + _loc15_] || Number(_loc14_["exSid" + _loc15_]) <= 0))
                           {
                              if(Number(_loc14_["exSid" + _loc15_]) == _loc8_)
                              {
                                 _loc8_ = Number(_loc14_.id);
                                 break;
                              }
                           }
                        }
                     }
                  }
               }
            }
            _loc11_ = param1.dragSource.dataForFormat("level") as int;
            _core.remote.skillSetUserBar(_loc8_,_loc11_,_loc4_);
            _loc2_.toolTip = null;
            _loc2_.type = GamePredef.TBL_SKILL;
            _loc12_ = skillGetLevel(_loc8_,_loc11_);
            _core.updateSetting("st" + _loc4_,GamePredef.TBL_SKILL);
            _core.updateSetting("sid" + _loc4_,_loc12_.id);
            _loc13_ = _loc3_["id"].slice(0,1);
            if(_loc2_.slotType == Slot.SLOT_USERBAR)
            {
               _loc16_ = _loc3_["id"].slice(1);
               if(_loc13_ == "i")
               {
                  _core.updateSettingNow("bs" + _loc16_,0);
               }
            }
            if(Boolean(_loc3_.movable) && _loc13_ != "i")
            {
               _loc3_.clean();
               _loc17_ = _loc3_["id"].slice(1);
               _loc3_.toolTip = Language.USERBARCANVAS_S[2];
               _core.updateSettingNow("sid" + _loc17_,0);
            }
         }
      }
      
      public function __s15_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s27_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:UserBarCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _UserBarCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_UserBarCanvasWatcherSetupUtil");
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
      
      private function useSlotByClick(param1:GameEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         useSlot(_loc2_,param1.data.ctrlKey);
      }
      
      public function __s11_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s30_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s3_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s19_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set s10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112082s10;
         if(_loc2_ !== param1)
         {
            this._112082s10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s10",_loc2_,param1));
         }
      }
      
      private function _UserBarCanvas_SetProperty13_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty13 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty13",_UserBarCanvas_SetProperty13);
         return _loc1_;
      }
      
      private function _UserBarCanvas_SetProperty5_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty5 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty5",_UserBarCanvas_SetProperty5);
         return _loc1_;
      }
      
      public function set s12(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112084s12;
         if(_loc2_ !== param1)
         {
            this._112084s12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s12",_loc2_,param1));
         }
      }
      
      public function __s6_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set s14(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112086s14;
         if(_loc2_ !== param1)
         {
            this._112086s14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s14",_loc2_,param1));
         }
      }
      
      public function set s11(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112083s11;
         if(_loc2_ !== param1)
         {
            this._112083s11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s11",_loc2_,param1));
         }
      }
      
      public function __s28_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function set s13(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112085s13;
         if(_loc2_ !== param1)
         {
            this._112085s13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s13",_loc2_,param1));
         }
      }
      
      public function setAllSkill(param1:int) : void
      {
         var _loc3_:ItemSlot = null;
         var _loc2_:int = 1;
         while(_loc2_ <= _quickSkillSize)
         {
            _loc3_ = this["s" + _loc2_];
            if(_loc3_.type == GamePredef.TBL_SKILL)
            {
               if(param1 == 2)
               {
                  setSkillEnabled(_loc3_,_core.player.classId,false);
               }
               else if(param1 == 3)
               {
                  setSkillEnabled(_loc3_,100,true);
               }
               else
               {
                  _loc3_.alpha = 0.5;
                  _loc3_.enabled = true;
               }
            }
            _loc2_++;
         }
      }
      
      public function set s18(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112090s18;
         if(_loc2_ !== param1)
         {
            this._112090s18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s18",_loc2_,param1));
         }
      }
      
      public function set s15(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112087s15;
         if(_loc2_ !== param1)
         {
            this._112087s15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s15",_loc2_,param1));
         }
      }
      
      public function set s16(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112088s16;
         if(_loc2_ !== param1)
         {
            this._112088s16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s16",_loc2_,param1));
         }
      }
      
      public function set s17(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112089s17;
         if(_loc2_ !== param1)
         {
            this._112089s17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s17",_loc2_,param1));
         }
      }
      
      public function set s19(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112091s19;
         if(_loc2_ !== param1)
         {
            this._112091s19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s19",_loc2_,param1));
         }
      }
      
      public function __s22_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function setNum() : void
      {
         var _loc2_:ItemSlot = null;
         var _loc3_:Object = null;
         var _loc1_:int = 1;
         while(_loc1_ <= _quickSkillSize)
         {
            _loc2_ = this["s" + _loc1_];
            if(_loc2_.type == GamePredef.TBL_ITEM_TEMPLATE)
            {
               _loc3_ = _core.getItemNum(_loc2_.type,_loc2_.giid);
               _loc2_.stackNum = _loc3_.num;
               _loc2_.alpha = _loc3_.num <= 0 ? 0.5 : 1;
            }
            else
            {
               _loc2_.alpha = 0.5;
            }
            _loc1_++;
         }
      }
      
      private function _UserBarCanvas_SetProperty24_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty24 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = false;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty24",_UserBarCanvas_SetProperty24);
         return _loc1_;
      }
      
      public function __s17_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s12() : ItemSlot
      {
         return this._112084s12;
      }
      
      public function initView() : void
      {
         var _loc3_:ItemSlot = null;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         _core = Core.getInstance();
         btnContainer.visible = GamePredef.GLOBAL_SETTING.au;
         btn.selected = btnContainer.visible;
         var _loc1_:int = 1;
         while(_loc1_ <= _quickSkillSize)
         {
            _loc3_ = this["s" + _loc1_];
            _loc4_ = int(GamePredef.GLOBAL_SETTING["st" + _loc1_]);
            _loc5_ = Number(GamePredef.GLOBAL_SETTING["sid" + _loc1_]);
            if(_loc4_ == GamePredef.TBL_SKILL)
            {
               if(_core.player.awakenPointDict)
               {
                  _loc6_ = _core.player.awakenPointDict;
                  _loc7_ = GameData.d[GamePredef.TBL_SKILL][_loc5_];
                  if((Boolean(_loc7_)) && Boolean(_loc6_[_loc7_.codeName]))
                  {
                     _loc8_ = _loc7_.codeName;
                     _loc9_ = int(_loc6_[_loc8_]);
                     if(int(_loc7_["exSid" + _loc9_]) > 0)
                     {
                        _loc5_ = Number(_loc7_["exSid" + _loc9_]);
                     }
                  }
               }
            }
            _loc3_.type = _loc4_;
            _loc3_.giid = _loc5_;
            _loc3_.addEventListener(Slot.EVENT_SLOT_DCLICK,useSlotByClick);
            _loc3_.toolTip = _loc3_.giid <= 0 ? Language.USERBARCANVAS_S[2] : null;
            _loc1_++;
         }
         abc.initLock();
         setTimeout(setNum,2000);
         this.currentState = "normal";
         var _loc2_:int = int(barNum.text);
         this["bar" + _loc2_].visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get s14() : ItemSlot
      {
         return this._112086s14;
      }
      
      [Bindable(event="propertyChange")]
      public function get s16() : ItemSlot
      {
         return this._112088s16;
      }
      
      [Bindable(event="propertyChange")]
      public function get s10() : ItemSlot
      {
         return this._112082s10;
      }
      
      public function __s14_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __s21_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __s5_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s18() : ItemSlot
      {
         return this._112090s18;
      }
      
      private function _UserBarCanvas_SetProperty12_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty12 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 54;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty12",_UserBarCanvas_SetProperty12);
         return _loc1_;
      }
      
      private function _UserBarCanvas_SetProperty4_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _UserBarCanvas_SetProperty4 = _loc1_;
         _loc1_.name = "visible";
         _loc1_.value = true;
         BindingManager.executeBindings(this,"_UserBarCanvas_SetProperty4",_UserBarCanvas_SetProperty4);
         return _loc1_;
      }
      
      public function __s1_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s17() : ItemSlot
      {
         return this._112089s17;
      }
      
      [Bindable(event="propertyChange")]
      public function get s19() : ItemSlot
      {
         return this._112091s19;
      }
      
      [Bindable(event="propertyChange")]
      public function get s11() : ItemSlot
      {
         return this._112083s11;
      }
      
      public function __s9_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s15() : ItemSlot
      {
         return this._112087s15;
      }
      
      public function __s10_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s21() : ItemSlot
      {
         return this._112114s21;
      }
      
      public function set s21(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112114s21;
         if(_loc2_ !== param1)
         {
            this._112114s21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s23() : ItemSlot
      {
         return this._112116s23;
      }
      
      public function set s22(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112115s22;
         if(_loc2_ !== param1)
         {
            this._112115s22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s22",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s13() : ItemSlot
      {
         return this._112085s13;
      }
      
      [Bindable(event="propertyChange")]
      public function get s20() : ItemSlot
      {
         return this._112113s20;
      }
      
      public function set s24(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112117s24;
         if(_loc2_ !== param1)
         {
            this._112117s24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s24",_loc2_,param1));
         }
      }
      
      public function set s20(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112113s20;
         if(_loc2_ !== param1)
         {
            this._112113s20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s20",_loc2_,param1));
         }
      }
      
      public function set s25(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._112118s25;
         if(_loc2_ !== param1)
         {
            this._112118s25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s25",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s24() : ItemSlot
      {
         return this._112117s24;
      }
      
      public function __s25_mouseDown(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get s27() : ItemSlot
      {
         return this._112120s27;
      }
   }
}

