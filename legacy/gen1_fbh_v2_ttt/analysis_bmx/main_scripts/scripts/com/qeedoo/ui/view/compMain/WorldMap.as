package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.TipMap;
   import com.qeedoo.ui.view.comp.WorldMapIcon;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class WorldMap extends Canvas
   {
      
      private var _102535i31:WorldMapIcon;
      
      private var _102472i10:WorldMapIcon;
      
      private var _102541i37:WorldMapIcon;
      
      private var loader:MovieClip;
      
      private var _1122598151worldMap1:Canvas;
      
      private var _102507i24:WorldMapIcon;
      
      private var _102569i44:WorldMapIcon;
      
      private var _3309i6:WorldMapIcon;
      
      private var _102478i16:WorldMapIcon;
      
      private var _3312i9:WorldMapIcon;
      
      private var _102536i32:WorldMapIcon;
      
      private var _102473i11:WorldMapIcon;
      
      private var _102542i38:WorldMapIcon;
      
      private var _3308i5:WorldMapIcon;
      
      private var _core:Core = Core.getInstance();
      
      private var _102508i25:WorldMapIcon;
      
      private var _3311i8:WorldMapIcon;
      
      private var _102628i61:WorldMapIcon;
      
      private var _102503i20:WorldMapIcon;
      
      private var _102565i40:WorldMapIcon;
      
      private var _102634i67:WorldMapIcon;
      
      private var _102479i17:WorldMapIcon;
      
      private var _3307i4:WorldMapIcon;
      
      private var _102537i33:WorldMapIcon;
      
      private var _3310i7:WorldMapIcon;
      
      private var _102474i12:WorldMapIcon;
      
      private var _102543i39:WorldMapIcon;
      
      private var _102480i18:WorldMapIcon;
      
      private var _102509i26:WorldMapIcon;
      
      private var _102601i55:WorldMapIcon;
      
      private var _3306i3:WorldMapIcon;
      
      private var _780051395worldMapBg2:Image;
      
      private var _102504i21:WorldMapIcon;
      
      private var _102566i41:WorldMapIcon;
      
      private var _102697i88:WorldMapIcon;
      
      private var _102510i27:WorldMapIcon;
      
      private var _102538i34:WorldMapIcon;
      
      private var _102475i13:WorldMapIcon;
      
      private var _1122598152worldMap2:Canvas;
      
      private var _3305i2:WorldMapIcon;
      
      private var _102481i19:WorldMapIcon;
      
      private var _102658i70:WorldMapIcon;
      
      private var _102602i56:WorldMapIcon;
      
      private var _102505i22:WorldMapIcon;
      
      private var _102567i42:WorldMapIcon;
      
      private var _3180591i525:WorldMapIcon;
      
      private var _3304i1:WorldMapIcon;
      
      private var _102511i28:WorldMapIcon;
      
      private var _102539i35:WorldMapIcon;
      
      private var _102476i14:WorldMapIcon;
      
      private var _780051394worldMapBg1:Image;
      
      private var _102659i71:WorldMapIcon;
      
      private var _102534i30:WorldMapIcon;
      
      private var _102540i36:WorldMapIcon;
      
      private var _102506i23:WorldMapIcon;
      
      private var _102568i43:WorldMapIcon;
      
      private var _102512i29:WorldMapIcon;
      
      private var maxIndex:uint = 2;
      
      private var _102477i15:WorldMapIcon;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Canvas,
               "id":"worldMap1",
               "stylesFactory":function():void
               {
                  this.horizontalCenter = "0";
                  this.verticalCenter = "0";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "height":570,
                     "width":900,
                     "verticalScrollPolicy":"off",
                     "horizontalScrollPolicy":"off",
                     "visible":false,
                     "cacheAsBitmap":false,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Image,
                        "id":"worldMapBg1",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":0,
                              "y":0,
                              "percentWidth":100,
                              "percentHeight":100
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i1",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":342,
                              "y":185.05
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i2",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":396.4,
                              "y":212.8
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i15",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":393.45,
                              "y":235.05
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i17",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":347.1,
                              "y":242.5
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i8",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":305.6,
                              "y":235.05
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i14",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":267.25,
                              "y":276.2
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i5",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":355,
                              "y":268
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i40",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":284,
                              "y":373.7
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i16",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":357.95,
                              "y":318.25
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i6",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":384.4,
                              "y":270.85
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i4",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":290.25,
                              "y":139.05
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i3",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":349.1,
                              "y":148.15
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i18",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":417.15,
                              "y":347
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i7",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":393.45,
                              "y":355
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i19",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":368.35,
                              "y":380.95
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i23",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":358.75,
                              "y":408.85
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i29",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":342,
                              "y":429
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i36",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":345.05,
                              "y":460.3
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i41",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":287.15,
                              "y":476.85
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i42",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":300.95,
                              "y":497.75
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i21",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":302.5,
                              "y":519.75
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i20",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":380.95,
                              "y":459.3
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i38",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":266,
                              "y":429
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i39",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":266,
                              "y":313
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i30",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":434.4,
                              "y":432.15
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i43",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":574.05,
                              "y":445.4
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i22",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":563.25,
                              "y":422.7
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i35",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":602.25,
                              "y":403.65
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i34",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":549.6,
                              "y":360.2
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i31",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":627,
                              "y":347
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i13",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":535.1,
                              "y":294.65
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i32",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":647.2,
                              "y":288.85
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i12",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":582.3,
                              "y":218.25
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i26",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":515.55,
                              "y":163.95
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i25",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":454.65,
                              "y":154.6
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i9",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":440,
                              "y":228.25
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i24",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":454.7,
                              "y":86.75
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i28",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":504.25,
                              "y":58.95
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i27",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":541.85,
                              "y":85.75
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i10",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":515.55,
                              "y":116.9
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i33",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":587.3,
                              "y":325.5
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i11",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":319.85,
                              "y":353
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i37",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":391,
                              "y":110.5
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i44",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":271,
                              "y":517
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "events":{"click":"___WorldMap_Button1_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasChangeMap",
                              "x":706.8,
                              "y":378.7,
                              "width":193.2,
                              "height":191.3
                           };
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Canvas,
               "id":"worldMap2",
               "stylesFactory":function():void
               {
                  this.horizontalCenter = "0";
                  this.verticalCenter = "0";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "height":570,
                     "width":900,
                     "verticalScrollPolicy":"off",
                     "horizontalScrollPolicy":"off",
                     "cacheAsBitmap":true,
                     "visible":false,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Image,
                        "id":"worldMapBg2",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":0,
                              "y":0,
                              "percentWidth":100,
                              "percentHeight":100
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i55",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":385,
                              "y":138
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i56",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":427,
                              "y":205
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i71",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":471,
                              "y":266
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i61",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":296,
                              "y":449
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i67",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":333,
                              "y":415
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i70",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":383,
                              "y":375
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i525",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":532,
                              "y":477
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":WorldMapIcon,
                        "id":"i88",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":570,
                              "y":200
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Button,
                        "events":{"click":"___WorldMap_Button2_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CanvasChangeMap",
                              "x":706.8,
                              "y":378.7,
                              "width":193.2,
                              "height":191.3
                           };
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "events":{"click":"___WorldMap_Button3_click"},
               "stylesFactory":function():void
               {
                  this.right = "27";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"BtnPanelClose",
                     "y":10
                  };
               }
            })]};
         }
      });
      
      public function WorldMap()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasWorldMapBack";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.addEventListener("creationComplete",___WorldMap_Canvas1_creationComplete);
         this.addEventListener("show",___WorldMap_Canvas1_show);
      }
      
      public function set i70(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102658i70;
         if(_loc2_ !== param1)
         {
            this._102658i70 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i70",_loc2_,param1));
         }
      }
      
      public function set worldMap1(param1:Canvas) : void
      {
         var _loc2_:Object = this._1122598151worldMap1;
         if(_loc2_ !== param1)
         {
            this._1122598151worldMap1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldMap1",_loc2_,param1));
         }
      }
      
      public function set worldMap2(param1:Canvas) : void
      {
         var _loc2_:Object = this._1122598152worldMap2;
         if(_loc2_ !== param1)
         {
            this._1122598152worldMap2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldMap2",_loc2_,param1));
         }
      }
      
      public function set i71(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102659i71;
         if(_loc2_ !== param1)
         {
            this._102659i71 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i71",_loc2_,param1));
         }
      }
      
      public function setC(param1:int) : void
      {
         var icon:WorldMapIcon = null;
         var id:int = param1;
         try
         {
            icon = WorldMapIcon(this["i" + id]);
         }
         catch(e:*)
         {
         }
         if(icon)
         {
            this["i" + id].setC();
         }
      }
      
      public function setN(param1:int) : void
      {
         var icon:WorldMapIcon = null;
         var id:int = param1;
         try
         {
            icon = WorldMapIcon(this["i" + id]);
         }
         catch(e:*)
         {
         }
         if(icon)
         {
            this["i" + id].setN();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i525() : WorldMapIcon
      {
         return this._3180591i525;
      }
      
      public function setT(param1:int) : void
      {
         var icon:WorldMapIcon = null;
         var id:int = param1;
         try
         {
            icon = WorldMapIcon(this["i" + id]);
         }
         catch(e:*)
         {
         }
         if(icon)
         {
            this["i" + id].setT();
         }
      }
      
      public function ___WorldMap_Canvas1_show(param1:FlexEvent) : void
      {
         showMap();
      }
      
      [Bindable(event="propertyChange")]
      public function get i11() : WorldMapIcon
      {
         return this._102473i11;
      }
      
      [Bindable(event="propertyChange")]
      public function get i13() : WorldMapIcon
      {
         return this._102475i13;
      }
      
      [Bindable(event="propertyChange")]
      public function get i14() : WorldMapIcon
      {
         return this._102476i14;
      }
      
      [Bindable(event="propertyChange")]
      public function get i16() : WorldMapIcon
      {
         return this._102478i16;
      }
      
      [Bindable(event="propertyChange")]
      public function get i17() : WorldMapIcon
      {
         return this._102479i17;
      }
      
      [Bindable(event="propertyChange")]
      public function get i19() : WorldMapIcon
      {
         return this._102481i19;
      }
      
      public function set i88(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102697i88;
         if(_loc2_ !== param1)
         {
            this._102697i88 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i88",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i15() : WorldMapIcon
      {
         return this._102477i15;
      }
      
      [Bindable(event="propertyChange")]
      public function get i10() : WorldMapIcon
      {
         return this._102472i10;
      }
      
      [Bindable(event="propertyChange")]
      public function get i12() : WorldMapIcon
      {
         return this._102474i12;
      }
      
      [Bindable(event="propertyChange")]
      public function get i18() : WorldMapIcon
      {
         return this._102480i18;
      }
      
      public function set i525(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3180591i525;
         if(_loc2_ !== param1)
         {
            this._3180591i525 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i525",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i20() : WorldMapIcon
      {
         return this._102503i20;
      }
      
      [Bindable(event="propertyChange")]
      public function get i21() : WorldMapIcon
      {
         return this._102504i21;
      }
      
      [Bindable(event="propertyChange")]
      public function get i22() : WorldMapIcon
      {
         return this._102505i22;
      }
      
      [Bindable(event="propertyChange")]
      public function get i24() : WorldMapIcon
      {
         return this._102507i24;
      }
      
      [Bindable(event="propertyChange")]
      public function get i25() : WorldMapIcon
      {
         return this._102508i25;
      }
      
      [Bindable(event="propertyChange")]
      public function get i27() : WorldMapIcon
      {
         return this._102510i27;
      }
      
      [Bindable(event="propertyChange")]
      public function get i23() : WorldMapIcon
      {
         return this._102506i23;
      }
      
      public function ___WorldMap_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get i28() : WorldMapIcon
      {
         return this._102511i28;
      }
      
      [Bindable(event="propertyChange")]
      public function get i29() : WorldMapIcon
      {
         return this._102512i29;
      }
      
      [Bindable(event="propertyChange")]
      public function get i26() : WorldMapIcon
      {
         return this._102509i26;
      }
      
      [Bindable(event="propertyChange")]
      public function get i30() : WorldMapIcon
      {
         return this._102534i30;
      }
      
      [Bindable(event="propertyChange")]
      public function get i31() : WorldMapIcon
      {
         return this._102535i31;
      }
      
      [Bindable(event="propertyChange")]
      public function get i32() : WorldMapIcon
      {
         return this._102536i32;
      }
      
      [Bindable(event="propertyChange")]
      public function get i33() : WorldMapIcon
      {
         return this._102537i33;
      }
      
      [Bindable(event="propertyChange")]
      public function get i34() : WorldMapIcon
      {
         return this._102538i34;
      }
      
      [Bindable(event="propertyChange")]
      public function get i35() : WorldMapIcon
      {
         return this._102539i35;
      }
      
      [Bindable(event="propertyChange")]
      public function get i37() : WorldMapIcon
      {
         return this._102541i37;
      }
      
      [Bindable(event="propertyChange")]
      public function get i39() : WorldMapIcon
      {
         return this._102543i39;
      }
      
      public function set i10(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102472i10;
         if(_loc2_ !== param1)
         {
            this._102472i10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i10",_loc2_,param1));
         }
      }
      
      public function set i11(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102473i11;
         if(_loc2_ !== param1)
         {
            this._102473i11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i11",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i36() : WorldMapIcon
      {
         return this._102540i36;
      }
      
      public function set i12(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102474i12;
         if(_loc2_ !== param1)
         {
            this._102474i12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i12",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i38() : WorldMapIcon
      {
         return this._102542i38;
      }
      
      public function set i13(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102475i13;
         if(_loc2_ !== param1)
         {
            this._102475i13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i13",_loc2_,param1));
         }
      }
      
      public function set i14(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102476i14;
         if(_loc2_ !== param1)
         {
            this._102476i14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i14",_loc2_,param1));
         }
      }
      
      public function set i17(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102479i17;
         if(_loc2_ !== param1)
         {
            this._102479i17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i17",_loc2_,param1));
         }
      }
      
      public function set i15(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102477i15;
         if(_loc2_ !== param1)
         {
            this._102477i15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i15",_loc2_,param1));
         }
      }
      
      public function set i19(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102481i19;
         if(_loc2_ !== param1)
         {
            this._102481i19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i19",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i41() : WorldMapIcon
      {
         return this._102566i41;
      }
      
      [Bindable(event="propertyChange")]
      public function get i43() : WorldMapIcon
      {
         return this._102568i43;
      }
      
      [Bindable(event="propertyChange")]
      public function get i44() : WorldMapIcon
      {
         return this._102569i44;
      }
      
      public function set i16(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102478i16;
         if(_loc2_ !== param1)
         {
            this._102478i16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i16",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i40() : WorldMapIcon
      {
         return this._102565i40;
      }
      
      [Bindable(event="propertyChange")]
      public function get i42() : WorldMapIcon
      {
         return this._102567i42;
      }
      
      public function set i18(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102480i18;
         if(_loc2_ !== param1)
         {
            this._102480i18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i18",_loc2_,param1));
         }
      }
      
      public function ___WorldMap_Button1_click(param1:MouseEvent) : void
      {
         changeMap(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get i55() : WorldMapIcon
      {
         return this._102601i55;
      }
      
      public function set i20(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102503i20;
         if(_loc2_ !== param1)
         {
            this._102503i20 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i20",_loc2_,param1));
         }
      }
      
      public function set i21(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102504i21;
         if(_loc2_ !== param1)
         {
            this._102504i21 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i21",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i56() : WorldMapIcon
      {
         return this._102602i56;
      }
      
      public function set i22(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102505i22;
         if(_loc2_ !== param1)
         {
            this._102505i22 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i22",_loc2_,param1));
         }
      }
      
      public function set i23(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102506i23;
         if(_loc2_ !== param1)
         {
            this._102506i23 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i23",_loc2_,param1));
         }
      }
      
      public function set i24(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102507i24;
         if(_loc2_ !== param1)
         {
            this._102507i24 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i24",_loc2_,param1));
         }
      }
      
      public function set i28(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102511i28;
         if(_loc2_ !== param1)
         {
            this._102511i28 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i28",_loc2_,param1));
         }
      }
      
      public function set i25(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102508i25;
         if(_loc2_ !== param1)
         {
            this._102508i25 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i25",_loc2_,param1));
         }
      }
      
      public function set i29(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102512i29;
         if(_loc2_ !== param1)
         {
            this._102512i29 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i29",_loc2_,param1));
         }
      }
      
      public function set i26(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102509i26;
         if(_loc2_ !== param1)
         {
            this._102509i26 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i26",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i61() : WorldMapIcon
      {
         return this._102628i61;
      }
      
      [Bindable(event="propertyChange")]
      public function get i1() : WorldMapIcon
      {
         return this._3304i1;
      }
      
      [Bindable(event="propertyChange")]
      public function get i2() : WorldMapIcon
      {
         return this._3305i2;
      }
      
      [Bindable(event="propertyChange")]
      public function get i3() : WorldMapIcon
      {
         return this._3306i3;
      }
      
      [Bindable(event="propertyChange")]
      public function get i4() : WorldMapIcon
      {
         return this._3307i4;
      }
      
      private function waitForRes() : void
      {
         worldMapBg1.source = ResManager.hash(GamePredef.RES_WORLD_MAP_1);
         worldMapBg2.source = ResManager.hash(GamePredef.RES_WORLD_MAP_2);
      }
      
      [Bindable(event="propertyChange")]
      public function get i7() : WorldMapIcon
      {
         return this._3310i7;
      }
      
      [Bindable(event="propertyChange")]
      public function get i67() : WorldMapIcon
      {
         return this._102634i67;
      }
      
      [Bindable(event="propertyChange")]
      public function get i5() : WorldMapIcon
      {
         return this._3308i5;
      }
      
      public function set i27(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102510i27;
         if(_loc2_ !== param1)
         {
            this._102510i27 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i27",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i8() : WorldMapIcon
      {
         return this._3311i8;
      }
      
      [Bindable(event="propertyChange")]
      public function get i9() : WorldMapIcon
      {
         return this._3312i9;
      }
      
      [Bindable(event="propertyChange")]
      public function get i70() : WorldMapIcon
      {
         return this._102658i70;
      }
      
      [Bindable(event="propertyChange")]
      public function get worldMap1() : Canvas
      {
         return this._1122598151worldMap1;
      }
      
      [Bindable(event="propertyChange")]
      public function get i71() : WorldMapIcon
      {
         return this._102659i71;
      }
      
      public function set i30(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102534i30;
         if(_loc2_ !== param1)
         {
            this._102534i30 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i30",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i6() : WorldMapIcon
      {
         return this._3309i6;
      }
      
      private function init() : void
      {
         _core.scene.setWorld(this);
         waitForRes();
      }
      
      public function set i33(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102537i33;
         if(_loc2_ !== param1)
         {
            this._102537i33 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i33",_loc2_,param1));
         }
      }
      
      public function set i34(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102538i34;
         if(_loc2_ !== param1)
         {
            this._102538i34 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i34",_loc2_,param1));
         }
      }
      
      public function set i31(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102535i31;
         if(_loc2_ !== param1)
         {
            this._102535i31 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i31",_loc2_,param1));
         }
      }
      
      public function set i35(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102539i35;
         if(_loc2_ !== param1)
         {
            this._102539i35 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i35",_loc2_,param1));
         }
      }
      
      public function set i32(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102536i32;
         if(_loc2_ !== param1)
         {
            this._102536i32 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i32",_loc2_,param1));
         }
      }
      
      public function set i36(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102540i36;
         if(_loc2_ !== param1)
         {
            this._102540i36 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i36",_loc2_,param1));
         }
      }
      
      public function set i39(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102543i39;
         if(_loc2_ !== param1)
         {
            this._102543i39 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i39",_loc2_,param1));
         }
      }
      
      private function showMap() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         var _loc1_:* = GameData.d[GamePredef.TBL_MAP][_core.player.posMapId];
         if(_loc1_)
         {
            _loc2_ = uint(_loc1_.land);
            if(!_loc2_ || _loc2_ < 1)
            {
               _loc2_ = 1;
            }
            _loc3_ = 1;
            while(_loc3_ <= maxIndex)
            {
               this["worldMap" + _loc3_].visible = false;
               _loc3_++;
            }
            this["worldMap" + _loc2_].visible = true;
         }
         setC(_core.player.posMapId);
      }
      
      public function set i37(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102541i37;
         if(_loc2_ !== param1)
         {
            this._102541i37 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i37",_loc2_,param1));
         }
      }
      
      public function set i38(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102542i38;
         if(_loc2_ !== param1)
         {
            this._102542i38 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i38",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i88() : WorldMapIcon
      {
         return this._102697i88;
      }
      
      [Bindable(event="propertyChange")]
      public function get worldMap2() : Canvas
      {
         return this._1122598152worldMap2;
      }
      
      public function ___WorldMap_Button3_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      private function hide() : void
      {
         visible = false;
         var _loc1_:TipMap = TipMap(_core.view.getUI(ViewManager.TOOLTIP_MAP));
         _loc1_.hide();
         setN(_core.player.posMapId);
         var _loc2_:* = _core.view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
         if(_loc2_)
         {
            _loc2_.hide();
         }
      }
      
      public function set i41(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102566i41;
         if(_loc2_ !== param1)
         {
            this._102566i41 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i41",_loc2_,param1));
         }
      }
      
      public function set i43(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102568i43;
         if(_loc2_ !== param1)
         {
            this._102568i43 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i43",_loc2_,param1));
         }
      }
      
      public function set i40(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102565i40;
         if(_loc2_ !== param1)
         {
            this._102565i40 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i40",_loc2_,param1));
         }
      }
      
      public function set i44(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102569i44;
         if(_loc2_ !== param1)
         {
            this._102569i44 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i44",_loc2_,param1));
         }
      }
      
      public function set i42(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102567i42;
         if(_loc2_ !== param1)
         {
            this._102567i42 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i42",_loc2_,param1));
         }
      }
      
      public function set worldMapBg1(param1:Image) : void
      {
         var _loc2_:Object = this._780051394worldMapBg1;
         if(_loc2_ !== param1)
         {
            this._780051394worldMapBg1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldMapBg1",_loc2_,param1));
         }
      }
      
      private function changeMap(param1:uint) : void
      {
         var _loc2_:uint = 0;
         if(param1 > maxIndex)
         {
            return;
         }
         if(maxIndex > param1)
         {
            _loc2_ = param1 + 1;
            this["worldMap" + _loc2_].visible = true;
            this["worldMap" + param1].visible = false;
         }
         else
         {
            worldMap1.visible = true;
            this["worldMap" + param1].visible = false;
         }
      }
      
      public function set i55(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102601i55;
         if(_loc2_ !== param1)
         {
            this._102601i55 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i55",_loc2_,param1));
         }
      }
      
      public function set i56(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102602i56;
         if(_loc2_ !== param1)
         {
            this._102602i56 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i56",_loc2_,param1));
         }
      }
      
      public function set worldMapBg2(param1:Image) : void
      {
         var _loc2_:Object = this._780051395worldMapBg2;
         if(_loc2_ !== param1)
         {
            this._780051395worldMapBg2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"worldMapBg2",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      [Bindable(event="propertyChange")]
      public function get worldMapBg1() : Image
      {
         return this._780051394worldMapBg1;
      }
      
      public function set i61(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102628i61;
         if(_loc2_ !== param1)
         {
            this._102628i61 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i61",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get worldMapBg2() : Image
      {
         return this._780051395worldMapBg2;
      }
      
      public function set i1(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3304i1;
         if(_loc2_ !== param1)
         {
            this._3304i1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i1",_loc2_,param1));
         }
      }
      
      public function set i2(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3305i2;
         if(_loc2_ !== param1)
         {
            this._3305i2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i2",_loc2_,param1));
         }
      }
      
      public function set i3(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3306i3;
         if(_loc2_ !== param1)
         {
            this._3306i3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i3",_loc2_,param1));
         }
      }
      
      public function set i4(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3307i4;
         if(_loc2_ !== param1)
         {
            this._3307i4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i4",_loc2_,param1));
         }
      }
      
      public function set i5(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3308i5;
         if(_loc2_ !== param1)
         {
            this._3308i5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i5",_loc2_,param1));
         }
      }
      
      public function set i67(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._102634i67;
         if(_loc2_ !== param1)
         {
            this._102634i67 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i67",_loc2_,param1));
         }
      }
      
      public function set i7(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3310i7;
         if(_loc2_ !== param1)
         {
            this._3310i7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i7",_loc2_,param1));
         }
      }
      
      public function set i6(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3309i6;
         if(_loc2_ !== param1)
         {
            this._3309i6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i6",_loc2_,param1));
         }
      }
      
      public function set i8(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3311i8;
         if(_loc2_ !== param1)
         {
            this._3311i8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i8",_loc2_,param1));
         }
      }
      
      public function set i9(param1:WorldMapIcon) : void
      {
         var _loc2_:Object = this._3312i9;
         if(_loc2_ !== param1)
         {
            this._3312i9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i9",_loc2_,param1));
         }
      }
      
      public function ___WorldMap_Button2_click(param1:MouseEvent) : void
      {
         changeMap(2);
      }
   }
}

