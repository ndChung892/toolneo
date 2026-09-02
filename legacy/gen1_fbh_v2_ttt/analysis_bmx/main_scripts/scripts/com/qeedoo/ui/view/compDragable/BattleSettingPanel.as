package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DescriptionLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.controls.CheckBox;
   import mx.controls.HSlider;
   import mx.controls.Label;
   import mx.controls.VRule;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.SliderEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BattleSettingPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _BattleSettingPanel_Label22:Label;
      
      public var _BattleSettingPanel_Label23:Label;
      
      public var _BattleSettingPanel_Label25:Label;
      
      public var _BattleSettingPanel_Label20:Label;
      
      public var _BattleSettingPanel_Label24:Label;
      
      private var _102472i10:ItemSlot;
      
      private var _103563hs6:HSlider;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _3305i2:ItemSlot;
      
      private var _103566hs9:HSlider;
      
      private var _3309i6:ItemSlot;
      
      public var _BattleSettingPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _BattleSettingPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _BattleSettingPanel_BasicTxtButton4:BasicTxtButton;
      
      private var _103561hs4:HSlider;
      
      private var _3312i9:ItemSlot;
      
      public var _BattleSettingPanel_BasicTxtButton2:BasicTxtButton;
      
      private var _3304i1:ItemSlot;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _103564hs7:HSlider;
      
      public var _BattleSettingPanel_Label1:Label;
      
      public var _BattleSettingPanel_Label2:Label;
      
      private var _3308i5:ItemSlot;
      
      public var _BattleSettingPanel_Label4:Label;
      
      public var _BattleSettingPanel_Label5:Label;
      
      public var _BattleSettingPanel_Label6:Label;
      
      public var _BattleSettingPanel_Label7:Label;
      
      public var _BattleSettingPanel_Label8:Label;
      
      public var _BattleSettingPanel_Label9:Label;
      
      public var _BattleSettingPanel_Label3:Label;
      
      public var _BattleSettingPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _core:Core;
      
      public var isInited:Boolean = false;
      
      private var _3311i8:ItemSlot;
      
      mx_internal var _watchers:Array;
      
      public var _BattleSettingPanel_DescriptionLabel1:DescriptionLabel;
      
      public var _BattleSettingPanel_DescriptionLabel2:DescriptionLabel;
      
      private var _71506632chkPetAutoDefense:CheckBox;
      
      private var _103562hs5:HSlider;
      
      private var _3307i4:ItemSlot;
      
      private var _1774181354chkPlayerAutoDefense:CheckBox;
      
      private var _103559hs2:HSlider;
      
      private var _battleItemSlotSize:int = 10;
      
      private var _3310i7:ItemSlot;
      
      private var _103565hs8:HSlider;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public var _BattleSettingPanel_Label10:Label;
      
      public var _BattleSettingPanel_Label11:Label;
      
      public var _BattleSettingPanel_Label12:Label;
      
      public var _BattleSettingPanel_Label15:Label;
      
      public var _BattleSettingPanel_Label16:Label;
      
      public var _BattleSettingPanel_Label18:Label;
      
      public var _BattleSettingPanel_Label19:Label;
      
      public var _BattleSettingPanel_Label13:Label;
      
      public var _BattleSettingPanel_Label14:Label;
      
      public var _BattleSettingPanel_Label17:Label;
      
      private var _103560hs3:HSlider;
      
      private var _3306i3:ItemSlot;
      
      public var _BattleSettingPanel_Label21:Label;
      
      public function BattleSettingPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":472,
                  "height":438,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicTitleCanvas,
                     "id":"_BattleSettingPanel_BasicTitleCanvas1"
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":31,
                           "width":226,
                           "height":384,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i1",
                              "events":{"dragDrop":"__i1_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":118
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs2",
                              "events":{"change":"__hs2_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":45,
                                    "y":132,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i7",
                              "events":{"dragDrop":"__i7_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i9",
                              "events":{"dragDrop":"__i9_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":188
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs3",
                              "events":{"change":"__hs3_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":42,
                                    "y":202,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i3",
                              "events":{"dragDrop":"__i3_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":257
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs4",
                              "events":{"change":"__hs4_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":42,
                                    "y":272,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i5",
                              "events":{"dragDrop":"__i5_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":341
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs5",
                              "events":{"change":"__hs5_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":42,
                                    "y":356,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":DescriptionLabel,
                              "id":"_BattleSettingPanel_DescriptionLabel1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":58,
                                    "y":40,
                                    "selectable":false,
                                    "width":147,
                                    "height":39
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":CheckBox,
                              "id":"chkPlayerAutoDefense",
                              "events":{"change":"__chkPlayerAutoDefense_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":58,
                                    "y":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicTxtButton,
                              "id":"_BattleSettingPanel_BasicTxtButton1",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":13,
                                    "y":10,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicTxtButton,
                              "id":"_BattleSettingPanel_BasicTxtButton2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":120,
                                    "y":10,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label1",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":100,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label2",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":169,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label3",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":237,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label4",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":320,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label5",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":125,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label6",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":125,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label7",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":194,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label8",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":194,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label9",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":262,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label10",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":262,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label11",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":345,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label12",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":345,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VRule,
                     "stylesFactory":function():void
                     {
                        this.top = "40";
                        this.bottom = "25";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"x":238};
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":240,
                           "y":31,
                           "width":224,
                           "height":382,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i2",
                              "events":{"dragDrop":"__i2_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":116
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs6",
                              "events":{"change":"__hs6_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":42,
                                    "y":131,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i8",
                              "events":{"dragDrop":"__i8_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":40
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i10",
                              "events":{"dragDrop":"__i10_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":186
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs7",
                              "events":{"change":"__hs7_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":42,
                                    "y":201,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i4",
                              "events":{"dragDrop":"__i4_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":254
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs8",
                              "events":{"change":"__hs8_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":42,
                                    "y":271,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"i6",
                              "events":{"dragDrop":"__i6_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":10,
                                    "y":339
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs9",
                              "events":{"change":"__hs9_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":42,
                                    "y":355,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":DescriptionLabel,
                              "id":"_BattleSettingPanel_DescriptionLabel2",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":58,
                                    "y":40,
                                    "selectable":false,
                                    "width":144,
                                    "height":38
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":CheckBox,
                              "id":"chkPetAutoDefense",
                              "events":{"change":"__chkPetAutoDefense_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":58,
                                    "y":80
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicTxtButton,
                              "id":"_BattleSettingPanel_BasicTxtButton3",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":13,
                                    "y":10,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicTxtButton,
                              "id":"_BattleSettingPanel_BasicTxtButton4",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":120,
                                    "y":10,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label13",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":100,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label14",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":169,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label15",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":237,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label16",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":76,
                                    "y":320,
                                    "width":100,
                                    "height":18
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label17",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":125,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label18",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":125,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label19",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":194,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label20",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":194,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label21",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":262,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label22",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":262,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label23",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":43,
                                    "y":345,
                                    "width":50,
                                    "height":18,
                                    "text":"0%"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_BattleSettingPanel_Label24",
                              "stylesFactory":function():void
                              {
                                 this.color = 15116365;
                                 this.fontSize = 14;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":172,
                                    "y":345,
                                    "width":50,
                                    "height":18,
                                    "text":"100%"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_BattleSettingPanel_Label25",
                     "stylesFactory":function():void
                     {
                        this.color = 0;
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":146,
                           "y":410,
                           "width":180,
                           "height":18
                        };
                     }
                  })]
               };
            }
         });
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
            this.backgroundColor = 14276567;
         };
         this.width = 472;
         this.height = 438;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___BattleSettingPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BattleSettingPanel._watcherSetupUtil = param1;
      }
      
      public function __i2_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __hs6_change(param1:SliderEvent) : void
      {
         setProgress(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get chkPlayerAutoDefense() : CheckBox
      {
         return this._1774181354chkPlayerAutoDefense;
      }
      
      public function set hs3(param1:HSlider) : void
      {
         var _loc2_:Object = this._103560hs3;
         if(_loc2_ !== param1)
         {
            this._103560hs3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i8() : ItemSlot
      {
         return this._3311i8;
      }
      
      public function set hs4(param1:HSlider) : void
      {
         var _loc2_:Object = this._103561hs4;
         if(_loc2_ !== param1)
         {
            this._103561hs4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs4",_loc2_,param1));
         }
      }
      
      public function __i1_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function set hs5(param1:HSlider) : void
      {
         var _loc2_:Object = this._103562hs5;
         if(_loc2_ !== param1)
         {
            this._103562hs5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs5",_loc2_,param1));
         }
      }
      
      public function updateView() : void
      {
         initView();
      }
      
      public function set hs6(param1:HSlider) : void
      {
         var _loc2_:Object = this._103563hs6;
         if(_loc2_ !== param1)
         {
            this._103563hs6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i3() : ItemSlot
      {
         return this._3306i3;
      }
      
      public function set i9(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3312i9;
         if(_loc2_ !== param1)
         {
            this._3312i9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i9",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         updateCharSetting();
         updatePetSetting();
      }
      
      public function set hs2(param1:HSlider) : void
      {
         var _loc2_:Object = this._103559hs2;
         if(_loc2_ !== param1)
         {
            this._103559hs2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs2",_loc2_,param1));
         }
      }
      
      public function __hs4_change(param1:SliderEvent) : void
      {
         setProgress(4);
      }
      
      public function __i3_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function ___BattleSettingPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
         isInited = true;
      }
      
      public function set hs8(param1:HSlider) : void
      {
         var _loc2_:Object = this._103565hs8;
         if(_loc2_ !== param1)
         {
            this._103565hs8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs8",_loc2_,param1));
         }
      }
      
      public function set i7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3310i7;
         if(_loc2_ !== param1)
         {
            this._3310i7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i7",_loc2_,param1));
         }
      }
      
      public function set i8(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3311i8;
         if(_loc2_ !== param1)
         {
            this._3311i8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i6() : ItemSlot
      {
         return this._3309i6;
      }
      
      public function __hs3_change(param1:SliderEvent) : void
      {
         setProgress(3);
      }
      
      public function set chkPlayerAutoDefense(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1774181354chkPlayerAutoDefense;
         if(_loc2_ !== param1)
         {
            this._1774181354chkPlayerAutoDefense = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chkPlayerAutoDefense",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i9() : ItemSlot
      {
         return this._3312i9;
      }
      
      public function set hs9(param1:HSlider) : void
      {
         var _loc2_:Object = this._103566hs9;
         if(_loc2_ !== param1)
         {
            this._103566hs9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs9",_loc2_,param1));
         }
      }
      
      public function set hs7(param1:HSlider) : void
      {
         var _loc2_:Object = this._103564hs7;
         if(_loc2_ !== param1)
         {
            this._103564hs7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs7",_loc2_,param1));
         }
      }
      
      private function _BattleSettingPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.BATTLESETTINGPANEL_U[0];
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Language.BATTLESETTINGPANEL_S[0];
         _loc1_ = Language.BATTLESETTINGPANEL_S[2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[1];
         _loc1_ = Language.BATTLESETTINGPANEL_U[2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[5];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[6];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[7];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Language.BATTLESETTINGPANEL_S[1];
         _loc1_ = Language.BATTLESETTINGPANEL_S[2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[3];
         _loc1_ = Language.BATTLESETTINGPANEL_U[2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[5];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[6];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[7];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.BATTLESETTINGPANEL_U[8];
      }
      
      public function __i4_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get chkPetAutoDefense() : CheckBox
      {
         return this._71506632chkPetAutoDefense;
      }
      
      public function __i10_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get i1() : ItemSlot
      {
         return this._3304i1;
      }
      
      [Bindable(event="propertyChange")]
      public function get i7() : ItemSlot
      {
         return this._3310i7;
      }
      
      public function set i3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3306i3;
         if(_loc2_ !== param1)
         {
            this._3306i3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i3",_loc2_,param1));
         }
      }
      
      public function __hs2_change(param1:SliderEvent) : void
      {
         setProgress(2);
      }
      
      public function set i6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3309i6;
         if(_loc2_ !== param1)
         {
            this._3309i6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i10() : ItemSlot
      {
         return this._102472i10;
      }
      
      public function __i5_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __hs9_change(param1:SliderEvent) : void
      {
         setProgress(9);
      }
      
      public function updateSlot(param1:Number) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc2_:Number = Number(GamePredef.GLOBAL_SETTING["bs" + param1]);
         var _loc3_:Object = this["i" + param1];
         _loc3_.stackNum = 0;
         if(_loc3_.type == GamePredef.TBL_SKILL)
         {
            if(_core.player.awakenPointDict)
            {
               _loc5_ = _core.player.awakenPointDict;
               _loc6_ = GameData.d[GamePredef.TBL_SKILL][_loc2_];
               _loc7_ = _loc6_.codeName;
               if(Boolean(_loc6_) && Boolean(_loc5_[_loc7_]))
               {
                  _loc8_ = int(_loc5_[_loc7_]);
                  if(int(_loc6_["exSid" + _loc8_]) > 0)
                  {
                     _loc2_ = Number(_loc6_["exSid" + _loc8_]);
                  }
               }
            }
            _loc3_.giid = _loc2_;
            _loc4_ = _core.getTemplateData(_loc3_.type,_loc2_,false);
            _loc3_.alpha = Boolean(_loc4_) && _core.checkSkillRequire(_loc4_) ? 1 : 0.5;
         }
         else
         {
            _loc3_.giid = _loc2_;
            _loc9_ = _core.getItemNum(_loc3_.type,_loc2_);
            _loc3_.stackNum = _loc9_.num;
            _loc3_.alpha = _loc3_.stackNum > 0 ? 1 : 0.5;
         }
      }
      
      public function set chkPetAutoDefense(param1:CheckBox) : void
      {
         var _loc2_:Object = this._71506632chkPetAutoDefense;
         if(_loc2_ !== param1)
         {
            this._71506632chkPetAutoDefense = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chkPetAutoDefense",_loc2_,param1));
         }
      }
      
      public function __i6_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __hs8_change(param1:SliderEvent) : void
      {
         setProgress(8);
      }
      
      private function setSlot(param1:DragEvent) : void
      {
         var _loc8_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc12_:Number = NaN;
         var _loc13_:Object = null;
         var _loc14_:Object = null;
         var _loc15_:Object = null;
         var _loc16_:Object = null;
         var _loc17_:Boolean = false;
         var _loc18_:int = 0;
         var _loc19_:Object = null;
         var _loc20_:int = 0;
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         var _loc3_:Object = param1.dragSource.dataForFormat("slot");
         if(_loc2_ == _loc3_)
         {
            return;
         }
         var _loc4_:String = "";
         var _loc5_:String = "";
         var _loc6_:String = _loc2_.id.slice(1);
         var _loc7_:Boolean = false;
         _loc4_ = "bs" + _loc6_;
         _loc5_ = "bt" + _loc6_;
         if(Number(_loc6_) % 2 == 0)
         {
            _loc7_ = true;
         }
         if(_loc7_)
         {
            if(!_core.battlePet)
            {
               return;
            }
         }
         if(_loc3_.type == GamePredef.TBL_ITEM_INSTANCE && Number(_loc6_) != 7 && Number(_loc6_) != 8)
         {
            _loc8_ = _core.getTemplateData(_loc3_.type,_loc3_.giid,false);
            if(!_loc8_)
            {
               return;
            }
            if(_loc8_.skillId <= 0 && (!_loc8_.scriptUse || _loc8_.scriptUse.length <= 0))
            {
               return;
            }
            if(_loc7_ && _loc8_.useType != 3 && _loc8_.useType != 2)
            {
               return;
            }
            if(!_loc7_ && _loc8_.useType != 3 && _loc8_.useType != 1)
            {
               return;
            }
            _loc2_.type = GamePredef.TBL_ITEM_TEMPLATE;
            if(Number(_loc6_) < 7)
            {
               _core.updateSettingNow(_loc5_,GamePredef.TBL_ITEM_TEMPLATE,_loc7_);
            }
            _core.updateSettingNow(_loc4_,_loc8_.id,_loc7_);
         }
         else if(_loc3_.type == GamePredef.TBL_ITEM_TEMPLATE && Number(_loc6_) != 7 && Number(_loc6_) != 8)
         {
            _loc9_ = _core.getTemplateData(_loc3_.type,_loc3_.giid,false);
            if(!_loc9_)
            {
               return;
            }
            if(_loc9_.skillId <= 0 && (!_loc9_.scriptUse || _loc9_.scriptUse.length <= 0))
            {
               return;
            }
            if(_loc7_ && _loc9_.useType != 3 && _loc9_.useType != 2)
            {
               return;
            }
            if(!_loc7_ && _loc9_.useType != 3 && _loc9_.useType != 1)
            {
               return;
            }
            _loc2_.type = GamePredef.TBL_ITEM_TEMPLATE;
            if(Number(_loc6_) < 7)
            {
               _core.updateSettingNow(_loc5_,GamePredef.TBL_ITEM_TEMPLATE,_loc7_);
            }
            _core.updateSettingNow(_loc4_,_loc9_.id,_loc7_);
         }
         else if(_loc3_.type == GamePredef.TBL_SKILL && Number(_loc6_) != 9 && Number(_loc6_) != 10)
         {
            _loc10_ = param1.dragSource.dataForFormat("level") as int;
            _loc2_.type = GamePredef.TBL_SKILL;
            _loc11_ = _core.getTemplateData(_loc3_.type,_loc3_.giid,false);
            if(!_loc11_)
            {
               return;
            }
            if(!_loc7_)
            {
               if(_loc11_.reqClass.indexOf("|100|") >= 0)
               {
                  return;
               }
            }
            else
            {
               _loc15_ = _core.battlePet;
               _loc17_ = false;
               _loc18_ = 1;
               while(_loc18_ <= 15)
               {
                  _loc16_ = _core.getTemplateData(GamePredef.TBL_SKILL,_loc15_["skill" + _loc18_],false);
                  if((Boolean(_loc16_)) && Boolean(_loc16_.codeName == _loc11_.codeName) && _loc16_.level >= _loc11_.level)
                  {
                     _loc17_ = true;
                     break;
                  }
                  _loc18_++;
               }
               if(!_loc17_)
               {
                  return;
               }
            }
            _loc12_ = Number(_loc3_.giid);
            _loc13_ = _core.player.awakenPointDict;
            _loc14_ = GameData.d[GamePredef.TBL_SKILL][_loc3_.giid];
            if(Boolean(_loc13_) && Boolean(_loc14_) && _loc14_.reqClass == "")
            {
               for each(_loc11_ in _core.player.skillList)
               {
                  if(_loc11_)
                  {
                     _loc19_ = GameData.d[GamePredef.TBL_SKILL][_loc11_.sid];
                     if(_loc19_)
                     {
                        if(_loc13_[_loc19_.codeName])
                        {
                           _loc20_ = int(_loc13_[_loc19_.codeName]);
                           if(!(!_loc19_["exSid" + _loc20_] || Number(_loc19_["exSid" + _loc20_]) <= 0))
                           {
                              if(Number(_loc19_["exSid" + _loc20_]) == _loc12_)
                              {
                                 _loc12_ = Number(_loc19_.id);
                                 break;
                              }
                           }
                        }
                     }
                  }
               }
            }
            _core.remote.skillSetBattle(_loc12_,_loc10_,_loc6_,_loc7_);
            if(_loc7_)
            {
               _core.updatePetSetting(_loc5_,GamePredef.TBL_SKILL);
               _core.updatePetSetting(_loc4_,_loc3_.giid);
            }
            else
            {
               _core.updateSetting(_loc5_,GamePredef.TBL_SKILL);
               _core.updateSetting(_loc4_,_loc12_);
            }
         }
         setNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get hs3() : HSlider
      {
         return this._103560hs3;
      }
      
      [Bindable(event="propertyChange")]
      public function get hs4() : HSlider
      {
         return this._103561hs4;
      }
      
      private function _BattleSettingPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_BasicTitleCanvas1.text = param1;
         },"_BattleSettingPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i1.slotType = param1;
         },"i1.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i7.slotType = param1;
         },"i7.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i9.slotType = param1;
         },"i9.slotType");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i3.slotType = param1;
         },"i3.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i5.slotType = param1;
         },"i5.slotType");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_DescriptionLabel1.text = param1;
         },"_BattleSettingPanel_DescriptionLabel1.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            chkPlayerAutoDefense.label = param1;
         },"chkPlayerAutoDefense.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_BasicTxtButton1.label = param1;
         },"_BattleSettingPanel_BasicTxtButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_BasicTxtButton2.label = param1;
         },"_BattleSettingPanel_BasicTxtButton2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label1.text = param1;
         },"_BattleSettingPanel_Label1.text");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label1.filters = param1;
         },"_BattleSettingPanel_Label1.filters");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label2.text = param1;
         },"_BattleSettingPanel_Label2.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label2.filters = param1;
         },"_BattleSettingPanel_Label2.filters");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label3.text = param1;
         },"_BattleSettingPanel_Label3.text");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label3.filters = param1;
         },"_BattleSettingPanel_Label3.filters");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label4.text = param1;
         },"_BattleSettingPanel_Label4.text");
         result[16] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label4.filters = param1;
         },"_BattleSettingPanel_Label4.filters");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label5.filters = param1;
         },"_BattleSettingPanel_Label5.filters");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label6.filters = param1;
         },"_BattleSettingPanel_Label6.filters");
         result[19] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label7.filters = param1;
         },"_BattleSettingPanel_Label7.filters");
         result[20] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label8.filters = param1;
         },"_BattleSettingPanel_Label8.filters");
         result[21] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label9.filters = param1;
         },"_BattleSettingPanel_Label9.filters");
         result[22] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label10.filters = param1;
         },"_BattleSettingPanel_Label10.filters");
         result[23] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label11.filters = param1;
         },"_BattleSettingPanel_Label11.filters");
         result[24] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label12.filters = param1;
         },"_BattleSettingPanel_Label12.filters");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i2.slotType = param1;
         },"i2.slotType");
         result[26] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i8.slotType = param1;
         },"i8.slotType");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i10.slotType = param1;
         },"i10.slotType");
         result[28] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i4.slotType = param1;
         },"i4.slotType");
         result[29] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            i6.slotType = param1;
         },"i6.slotType");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_DescriptionLabel2.text = param1;
         },"_BattleSettingPanel_DescriptionLabel2.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            chkPetAutoDefense.label = param1;
         },"chkPetAutoDefense.label");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_BasicTxtButton3.label = param1;
         },"_BattleSettingPanel_BasicTxtButton3.label");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_BasicTxtButton4.label = param1;
         },"_BattleSettingPanel_BasicTxtButton4.label");
         result[34] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label13.text = param1;
         },"_BattleSettingPanel_Label13.text");
         result[35] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label13.filters = param1;
         },"_BattleSettingPanel_Label13.filters");
         result[36] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label14.text = param1;
         },"_BattleSettingPanel_Label14.text");
         result[37] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label14.filters = param1;
         },"_BattleSettingPanel_Label14.filters");
         result[38] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label15.text = param1;
         },"_BattleSettingPanel_Label15.text");
         result[39] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label15.filters = param1;
         },"_BattleSettingPanel_Label15.filters");
         result[40] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label16.text = param1;
         },"_BattleSettingPanel_Label16.text");
         result[41] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label16.filters = param1;
         },"_BattleSettingPanel_Label16.filters");
         result[42] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label17.filters = param1;
         },"_BattleSettingPanel_Label17.filters");
         result[43] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label18.filters = param1;
         },"_BattleSettingPanel_Label18.filters");
         result[44] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label19.filters = param1;
         },"_BattleSettingPanel_Label19.filters");
         result[45] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label20.filters = param1;
         },"_BattleSettingPanel_Label20.filters");
         result[46] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label21.filters = param1;
         },"_BattleSettingPanel_Label21.filters");
         result[47] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label22.filters = param1;
         },"_BattleSettingPanel_Label22.filters");
         result[48] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label23.filters = param1;
         },"_BattleSettingPanel_Label23.filters");
         result[49] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _BattleSettingPanel_Label24.filters = param1;
         },"_BattleSettingPanel_Label24.filters");
         result[50] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BATTLESETTINGPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _BattleSettingPanel_Label25.text = param1;
         },"_BattleSettingPanel_Label25.text");
         result[51] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get hs6() : HSlider
      {
         return this._103563hs6;
      }
      
      [Bindable(event="propertyChange")]
      public function get hs7() : HSlider
      {
         return this._103564hs7;
      }
      
      [Bindable(event="propertyChange")]
      public function get hs8() : HSlider
      {
         return this._103565hs8;
      }
      
      public function __chkPetAutoDefense_change(param1:Event) : void
      {
         setAttackAvailability(true);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BattleSettingPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BattleSettingPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_BattleSettingPanelWatcherSetupUtil");
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
      
      private function updateCharSetting() : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc1_:int = 2;
         while(_loc1_ < 6)
         {
            this["hs" + _loc1_].value = GamePredef.GLOBAL_SETTING["p" + _loc1_];
            _loc1_++;
         }
         i7.type = GamePredef.TBL_SKILL;
         i9.type = GamePredef.TBL_ITEM_TEMPLATE;
         i1.type = GamePredef.GLOBAL_SETTING["bt1"];
         i3.type = GamePredef.GLOBAL_SETTING["bt3"];
         i5.type = GamePredef.GLOBAL_SETTING["bt5"];
         var _loc2_:int = 1;
         while(_loc2_ < 11)
         {
            _loc3_ = Number(GamePredef.GLOBAL_SETTING["bs" + _loc2_]);
            if(_loc3_ > 0 && Boolean(_core.player.awakenPointDict))
            {
               _loc4_ = _core.player.awakenPointDict;
               _loc5_ = GameData.d[GamePredef.TBL_SKILL][_loc3_];
               if((Boolean(_loc5_)) && Boolean(_loc4_[_loc5_.codeName]))
               {
                  _loc6_ = _loc5_.codeName;
                  _loc7_ = int(_loc4_[_loc6_]);
                  if(int(_loc5_["exSid" + _loc7_]) > 0)
                  {
                     _loc3_ = Number(_loc5_["exSid" + _loc7_]);
                  }
               }
            }
            this["i" + _loc2_].giid = _loc3_;
            _loc2_ += 2;
         }
         setNum();
      }
      
      [Bindable(event="propertyChange")]
      public function get hs9() : HSlider
      {
         return this._103566hs9;
      }
      
      public function __i7_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get hs5() : HSlider
      {
         return this._103562hs5;
      }
      
      public function set i10(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._102472i10;
         if(_loc2_ !== param1)
         {
            this._102472i10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i10",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hs2() : HSlider
      {
         return this._103559hs2;
      }
      
      public function __hs7_change(param1:SliderEvent) : void
      {
         setProgress(7);
      }
      
      private function setProgress(param1:int) : void
      {
         if(param1 >= 6 && param1 <= 9)
         {
            _core.updateSettingNow("p" + param1,int(this["hs" + param1].value),true);
         }
         else
         {
            _core.updateSettingNow("p" + param1,int(this["hs" + param1].value));
         }
      }
      
      public function __i8_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      private function setAttackAvailability(param1:Boolean) : void
      {
         if(param1)
         {
            GamePredef.BATTLE_AUTO_DEFENSE_PET = chkPetAutoDefense.selected;
            i8.enabled = !GamePredef.BATTLE_AUTO_DEFENSE_PET;
            i8.acceptable = i8.enabled;
         }
         else
         {
            GamePredef.BATTLE_AUTO_DEFENSE_PLAYER = chkPlayerAutoDefense.selected;
            i7.enabled = !GamePredef.BATTLE_AUTO_DEFENSE_PLAYER;
            i7.acceptable = i7.enabled;
         }
      }
      
      public function setNum() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc1_:int = 1;
         while(_loc1_ <= _battleItemSlotSize)
         {
            _loc2_ = this["i" + _loc1_];
            if(Boolean(_loc2_) && _loc2_.type == GamePredef.TBL_ITEM_TEMPLATE)
            {
               _loc3_ = _core.getItemNumNew(_loc2_.type,_loc2_.giid);
               _loc2_.stackNum = _loc3_.num;
               _loc2_.alpha = _loc3_.num <= 0 ? 0.5 : 1;
            }
            _loc1_++;
         }
      }
      
      public function __i9_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      public function __chkPlayerAutoDefense_change(param1:Event) : void
      {
         setAttackAvailability(false);
      }
      
      public function set i1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3304i1;
         if(_loc2_ !== param1)
         {
            this._3304i1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i1",_loc2_,param1));
         }
      }
      
      public function set i5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3308i5;
         if(_loc2_ !== param1)
         {
            this._3308i5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i5",_loc2_,param1));
         }
      }
      
      public function set i2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3305i2;
         if(_loc2_ !== param1)
         {
            this._3305i2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i2",_loc2_,param1));
         }
      }
      
      public function updatePetSetting() : void
      {
         if(!_core.battlePet)
         {
            return;
         }
         var _loc1_:int = 6;
         while(_loc1_ < 10)
         {
            this["hs" + _loc1_].value = GamePredef.GLOBAL_SETTING["p" + _loc1_];
            _loc1_++;
         }
         i8.type = GamePredef.TBL_SKILL;
         i10.type = GamePredef.TBL_ITEM_TEMPLATE;
         i2.type = GamePredef.GLOBAL_SETTING["bt2"];
         i4.type = GamePredef.GLOBAL_SETTING["bt4"];
         i6.type = GamePredef.GLOBAL_SETTING["bt6"];
         var _loc2_:int = 2;
         while(_loc2_ < 11)
         {
            this["i" + _loc2_].giid = GamePredef.GLOBAL_SETTING["bs" + _loc2_];
            _loc2_ += 2;
         }
         setNum();
      }
      
      public function set i4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3307i4;
         if(_loc2_ !== param1)
         {
            this._3307i4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i4",_loc2_,param1));
         }
      }
      
      public function __hs5_change(param1:SliderEvent) : void
      {
         setProgress(5);
      }
      
      [Bindable(event="propertyChange")]
      public function get i2() : ItemSlot
      {
         return this._3305i2;
      }
      
      [Bindable(event="propertyChange")]
      public function get i4() : ItemSlot
      {
         return this._3307i4;
      }
      
      [Bindable(event="propertyChange")]
      public function get i5() : ItemSlot
      {
         return this._3308i5;
      }
   }
}

