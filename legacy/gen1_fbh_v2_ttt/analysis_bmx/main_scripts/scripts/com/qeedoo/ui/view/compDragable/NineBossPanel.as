package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NineBossPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _68587798bossImg:Image;
      
      private var _2126222779bossInfo:IntroText;
      
      private var _1254502066gaBtn0:BasicGlowButton;
      
      private var _1254502062gaBtn4:BasicGlowButton;
      
      private var _1554141554tabBtn5:BasicGlowButton;
      
      private var _topFloor:int = 0;
      
      private var _1421659366afBtn1:BasicGlowButton;
      
      private var _1554141553tabBtn6:BasicGlowButton;
      
      private var _1421659363afBtn4:BasicGlowButton;
      
      private var _1254502063gaBtn3:BasicGlowButton;
      
      private var _1554141552tabBtn7:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _bossPrice:* = {
         0:0,
         1:30,
         2:70,
         3:115,
         4:170,
         5:245,
         6:345,
         7:480,
         8:670,
         9:920,
         10:0
      };
      
      private var _alert:Alert;
      
      private var _1554141551tabBtn8:BasicGlowButton;
      
      private var _1254502057gaBtn9:BasicGlowButton;
      
      private var _1421659364afBtn3:BasicGlowButton;
      
      public var _NineBossPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1421659360afBtn7:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _1254502060gaBtn6:BasicGlowButton;
      
      private var _finishTopFloor:int = 0;
      
      private var _1254502064gaBtn2:BasicGlowButton;
      
      private var _1554141550tabBtn9:BasicGlowButton;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _firstflag:Boolean = true;
      
      private var _1421659358afBtn9:BasicGlowButton;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _98195ca1:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _1254502058gaBtn8:BasicGlowButton;
      
      private var _currentImgeRes:Number;
      
      private var _1421659361afBtn6:BasicGlowButton;
      
      private var _1421659365afBtn2:BasicGlowButton;
      
      private var _1554141556tabBtn3:BasicGlowButton;
      
      private var _1254502065gaBtn1:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1254502061gaBtn5:BasicGlowButton;
      
      private var _234858303gaBtn10:BasicGlowButton;
      
      private var _1421659359afBtn8:BasicGlowButton;
      
      private var _1554141555tabBtn4:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _1254502059gaBtn7:BasicGlowButton;
      
      private var _1421659362afBtn5:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":495,
               "height":467,
               "creationPolicy":"all",
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_NineBossPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"ca1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":29,
                        "width":487,
                        "height":438,
                        "creationPolicy":"all",
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":0,
                                 "width":335,
                                 "height":316,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"bossImg",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":10,
                                          "width":317,
                                          "height":298
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn1",
                           "events":{"click":"__afBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":10,
                                 "height":23,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn1",
                           "events":{"click":"__gaBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":12,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn2",
                           "events":{"click":"__afBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":41,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn2",
                           "events":{"click":"__gaBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":43,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn3",
                           "events":{"click":"__afBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":72,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn3",
                           "events":{"click":"__gaBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":74,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn4",
                           "events":{"click":"__afBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":103,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn4",
                           "events":{"click":"__gaBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":105,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn5",
                           "events":{"click":"__afBtn5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":134,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn5",
                           "events":{"click":"__gaBtn5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":136,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn6",
                           "events":{"click":"__afBtn6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":165,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn6",
                           "events":{"click":"__gaBtn6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":167,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn7",
                           "events":{"click":"__afBtn7_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":196,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn7",
                           "events":{"click":"__gaBtn7_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":198,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn8",
                           "events":{"click":"__afBtn8_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":227,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn8",
                           "events":{"click":"__gaBtn8_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":229,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"afBtn9",
                           "events":{"click":"__afBtn9_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":362,
                                 "y":258,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn9",
                           "events":{"click":"__gaBtn9_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":437,
                                 "y":260,
                                 "width":59,
                                 "height":20,
                                 "enabled":false,
                                 "styleName":"BtnStdRed",
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn10",
                           "events":{"click":"__gaBtn10_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":407,
                                 "y":286,
                                 "width":70,
                                 "height":21,
                                 "enabled":false,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":80,
                                 "height":24,
                                 "x":20,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":100,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":140,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn3",
                           "events":{"click":"__tabBtn3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":180,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn4",
                           "events":{"click":"__tabBtn4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":220,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn5",
                           "events":{"click":"__tabBtn5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":260,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn6",
                           "events":{"click":"__tabBtn6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":300,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn7",
                           "events":{"click":"__tabBtn7_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":340,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn8",
                           "events":{"click":"__tabBtn8_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":380,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn9",
                           "events":{"click":"__tabBtn9_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":40,
                                 "height":24,
                                 "x":420,
                                 "y":315
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"bossInfo",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":12,
                                 "y":338,
                                 "width":465,
                                 "height":90
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"gaBtn0",
                           "events":{"click":"__gaBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":348,
                                 "y":286,
                                 "width":51,
                                 "height":21,
                                 "enabled":false,
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
      
      public function NineBossPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 495;
         this.height = 467;
         this.styleName = "StandardContent";
         this.creationPolicy = "all";
         this.cacheAsBitmap = true;
         this.addEventListener("creationComplete",___NineBossPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NineBossPanel._watcherSetupUtil = param1;
      }
      
      public function __afBtn1_click(param1:MouseEvent) : void
      {
         attackFloor(1);
      }
      
      public function ___NineBossPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initNineBossPanel();
      }
      
      public function __afBtn5_click(param1:MouseEvent) : void
      {
         attackFloor(5);
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      public function set tabBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141556tabBtn3;
         if(_loc2_ !== param1)
         {
            this._1554141556tabBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn3",_loc2_,param1));
         }
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function __afBtn9_click(param1:MouseEvent) : void
      {
         attackFloor(9);
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn4() : BasicGlowButton
      {
         return this._1421659363afBtn4;
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn5() : BasicGlowButton
      {
         return this._1421659362afBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn6() : BasicGlowButton
      {
         return this._1421659361afBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn7() : BasicGlowButton
      {
         return this._1421659360afBtn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn2() : BasicGlowButton
      {
         return this._1421659365afBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn3() : BasicGlowButton
      {
         return this._1421659364afBtn3;
      }
      
      [Bindable(event="propertyChange")]
      public function get bossImg() : Image
      {
         return this._68587798bossImg;
      }
      
      public function set ca1(param1:Canvas) : void
      {
         var _loc2_:Object = this._98195ca1;
         if(_loc2_ !== param1)
         {
            this._98195ca1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ca1",_loc2_,param1));
         }
      }
      
      public function set tabBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141552tabBtn7;
         if(_loc2_ !== param1)
         {
            this._1554141552tabBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn7",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn1() : BasicGlowButton
      {
         return this._1421659366afBtn1;
      }
      
      public function set tabBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141554tabBtn5;
         if(_loc2_ !== param1)
         {
            this._1554141554tabBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn5",_loc2_,param1));
         }
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabClick(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn8() : BasicGlowButton
      {
         return this._1421659359afBtn8;
      }
      
      [Bindable(event="propertyChange")]
      public function get afBtn9() : BasicGlowButton
      {
         return this._1421659358afBtn9;
      }
      
      public function set tabBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141555tabBtn4;
         if(_loc2_ !== param1)
         {
            this._1554141555tabBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn4",_loc2_,param1));
         }
      }
      
      public function __tabBtn3_click(param1:MouseEvent) : void
      {
         tabClick(3);
      }
      
      public function set afBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659365afBtn2;
         if(_loc2_ !== param1)
         {
            this._1421659365afBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn2",_loc2_,param1));
         }
      }
      
      public function __gaBtn0_click(param1:MouseEvent) : void
      {
         getAward(9);
      }
      
      public function set afBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659364afBtn3;
         if(_loc2_ !== param1)
         {
            this._1421659364afBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn3",_loc2_,param1));
         }
      }
      
      public function __tabBtn7_click(param1:MouseEvent) : void
      {
         tabClick(7);
      }
      
      public function __gaBtn4_click(param1:MouseEvent) : void
      {
         getAward(4);
      }
      
      public function set afBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659362afBtn5;
         if(_loc2_ !== param1)
         {
            this._1421659362afBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn5",_loc2_,param1));
         }
      }
      
      public function __gaBtn8_click(param1:MouseEvent) : void
      {
         getAward(8);
      }
      
      public function set afBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659363afBtn4;
         if(_loc2_ !== param1)
         {
            this._1421659363afBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn4",_loc2_,param1));
         }
      }
      
      public function set afBtn8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659359afBtn8;
         if(_loc2_ !== param1)
         {
            this._1421659359afBtn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn8",_loc2_,param1));
         }
      }
      
      public function set afBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659366afBtn1;
         if(_loc2_ !== param1)
         {
            this._1421659366afBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn1",_loc2_,param1));
         }
      }
      
      public function __afBtn2_click(param1:MouseEvent) : void
      {
         attackFloor(2);
      }
      
      public function set afBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659361afBtn6;
         if(_loc2_ !== param1)
         {
            this._1421659361afBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn6",_loc2_,param1));
         }
      }
      
      public function set afBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659360afBtn7;
         if(_loc2_ !== param1)
         {
            this._1421659360afBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn7",_loc2_,param1));
         }
      }
      
      public function set afBtn9(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1421659358afBtn9;
         if(_loc2_ !== param1)
         {
            this._1421659358afBtn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"afBtn9",_loc2_,param1));
         }
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         var _loc2_:BagPanel = null;
         var _loc3_:Boolean = false;
         if(param1)
         {
            _loc2_ = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            _loc3_ = _loc2_.goldLockFlag;
            if(_loc3_ != false && Boolean(_loc2_))
            {
               _loc2_.goldLockFlag = false;
            }
         }
      }
      
      private function _NineBossPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.NINE_BOSS[0];
         _loc1_ = Language.NINE_BOSS[12];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[13];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[14];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[15];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[16];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[17];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[18];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[19];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[20];
         _loc1_ = Language.NINE_BOSS[10];
         _loc1_ = Language.NINE_BOSS[21];
         _loc1_ = Language.NINE_BOSS[34];
         _loc1_ = Language.NINE_BOSS[1];
         _loc1_ = Language.NINE_BOSS[2];
         _loc1_ = Language.NINE_BOSS[3];
         _loc1_ = Language.NINE_BOSS[4];
         _loc1_ = Language.NINE_BOSS[5];
         _loc1_ = Language.NINE_BOSS[6];
         _loc1_ = Language.NINE_BOSS[7];
         _loc1_ = Language.NINE_BOSS[8];
         _loc1_ = Language.NINE_BOSS[9];
         _loc1_ = Language.NINE_BOSS[10];
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn5() : BasicGlowButton
      {
         return this._1254502061gaBtn5;
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn6() : BasicGlowButton
      {
         return this._1254502060gaBtn6;
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn0() : BasicGlowButton
      {
         return this._1254502066gaBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn1() : BasicGlowButton
      {
         return this._1254502065gaBtn1;
      }
      
      public function __afBtn6_click(param1:MouseEvent) : void
      {
         attackFloor(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn3() : BasicGlowButton
      {
         return this._1254502063gaBtn3;
      }
      
      public function set tabBtn8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141551tabBtn8;
         if(_loc2_ !== param1)
         {
            this._1554141551tabBtn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn8",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn9() : BasicGlowButton
      {
         return this._1254502057gaBtn9;
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn2() : BasicGlowButton
      {
         return this._1254502064gaBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn4() : BasicGlowButton
      {
         return this._1254502062gaBtn4;
      }
      
      public function set bossImg(param1:Image) : void
      {
         var _loc2_:Object = this._68587798bossImg;
         if(_loc2_ !== param1)
         {
            this._68587798bossImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossImg",_loc2_,param1));
         }
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn7() : BasicGlowButton
      {
         return this._1254502059gaBtn7;
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn8() : BasicGlowButton
      {
         return this._1254502058gaBtn8;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      public function __gaBtn1_click(param1:MouseEvent) : void
      {
         getAward(1);
      }
      
      public function __tabBtn8_click(param1:MouseEvent) : void
      {
         tabClick(8);
      }
      
      public function __gaBtn5_click(param1:MouseEvent) : void
      {
         getAward(5);
      }
      
      public function __tabBtn4_click(param1:MouseEvent) : void
      {
         tabClick(4);
      }
      
      public function __gaBtn9_click(param1:MouseEvent) : void
      {
         getAward(9);
      }
      
      public function set tabBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141553tabBtn6;
         if(_loc2_ !== param1)
         {
            this._1554141553tabBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn6",_loc2_,param1));
         }
      }
      
      public function set gaBtn10(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._234858303gaBtn10;
         if(_loc2_ !== param1)
         {
            this._234858303gaBtn10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn10",_loc2_,param1));
         }
      }
      
      public function __afBtn3_click(param1:MouseEvent) : void
      {
         attackFloor(3);
      }
      
      public function set tabBtn9(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141550tabBtn9;
         if(_loc2_ !== param1)
         {
            this._1554141550tabBtn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn6() : BasicGlowButton
      {
         return this._1554141553tabBtn6;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NineBossPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NineBossPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NineBossPanelWatcherSetupUtil");
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
      public function get tabBtn8() : BasicGlowButton
      {
         return this._1554141551tabBtn8;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn9() : BasicGlowButton
      {
         return this._1554141550tabBtn9;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn5() : BasicGlowButton
      {
         return this._1554141554tabBtn5;
      }
      
      public function __afBtn7_click(param1:MouseEvent) : void
      {
         attackFloor(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get ca1() : Canvas
      {
         return this._98195ca1;
      }
      
      public function set gaBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502066gaBtn0;
         if(_loc2_ !== param1)
         {
            this._1254502066gaBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn0",_loc2_,param1));
         }
      }
      
      public function set gaBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502065gaBtn1;
         if(_loc2_ !== param1)
         {
            this._1254502065gaBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      public function set gaBtn3(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502063gaBtn3;
         if(_loc2_ !== param1)
         {
            this._1254502063gaBtn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn3",_loc2_,param1));
         }
      }
      
      public function set gaBtn5(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502061gaBtn5;
         if(_loc2_ !== param1)
         {
            this._1254502061gaBtn5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn5",_loc2_,param1));
         }
      }
      
      private function getAward(param1:int) : void
      {
         var handler:Function = null;
         var str:String = null;
         var tf:IUITextField = null;
         var floorId:int = param1;
         if(!floorId || floorId < 0 || floorId > 10)
         {
            return;
         }
         if(floorId >= 1)
         {
            handler = function(param1:CloseEvent):void
            {
               var bagPanel:BagPanel = null;
               var goldLockFlag:Boolean = false;
               var gfunc:Function = null;
               var event:CloseEvent = param1;
               if(event.detail == Alert.YES)
               {
                  if(floorId < 10)
                  {
                     _core.remote.call("getNineBossAward",new Responder(onInitPanel),floorId,2);
                  }
                  else if(floorId == 10)
                  {
                     bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
                     goldLockFlag = bagPanel.goldLockFlag;
                     if(goldLockFlag || !bagPanel)
                     {
                        _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
                        gfunc = function(param1:String):void
                        {
                           _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                        };
                        _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                        return;
                     }
                     _core.remote.call("getNineBossAward",new Responder(onInitPanel),floorId,1);
                  }
               }
            };
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            str = Language.NINE_BOSS[32].toString().replace("{num}",_finishTopFloor);
            if(floorId == 10)
            {
               str = Language.NINE_BOSS[11].toString().replace("{gold}",20).replace("{num}",_topFloor);
            }
            _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
            tf = _alert.mx_internal::alertForm.mx_internal::textField;
            tf.htmlText = str;
            tf.filters = GamePredef.FILTER_TEXT1;
         }
         else
         {
            _core.remote.call("getNineBossAward",null,floorId,2);
         }
      }
      
      public function set gaBtn6(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502060gaBtn6;
         if(_loc2_ !== param1)
         {
            this._1254502060gaBtn6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn6",_loc2_,param1));
         }
      }
      
      public function __gaBtn10_click(param1:MouseEvent) : void
      {
         getAward(10);
      }
      
      public function set gaBtn8(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502058gaBtn8;
         if(_loc2_ !== param1)
         {
            this._1254502058gaBtn8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn8",_loc2_,param1));
         }
      }
      
      public function set gaBtn9(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502057gaBtn9;
         if(_loc2_ !== param1)
         {
            this._1254502057gaBtn9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn9",_loc2_,param1));
         }
      }
      
      public function set bossInfo(param1:IntroText) : void
      {
         var _loc2_:Object = this._2126222779bossInfo;
         if(_loc2_ !== param1)
         {
            this._2126222779bossInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn7() : BasicGlowButton
      {
         return this._1554141552tabBtn7;
      }
      
      public function onInitPanel(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         if(param1)
         {
            _loc2_ = param1.f;
            _finishTopFloor = 0;
            _topFloor = _loc2_;
            if(!_loc2_)
            {
               _loc4_ = 1;
               while(_loc4_ <= 9)
               {
                  this["afBtn" + _loc4_].enabled = false;
                  this["gaBtn" + _loc4_].enabled = false;
                  _loc4_++;
               }
               this.gaBtn10.enabled = false;
               this.afBtn1.enabled = true;
               this.visible = true;
               return;
            }
            _loc4_ = 1;
            while(_loc4_ <= _loc2_)
            {
               this["afBtn" + _loc4_].enabled = true;
               _loc4_++;
            }
            if(_loc2_ < 9)
            {
               _loc5_ = _loc2_ + 1;
               this["afBtn" + _loc5_].enabled = true;
            }
            if(_loc2_ >= 1)
            {
               this.gaBtn10.enabled = true;
            }
            _loc3_ = param1.df;
            if(_loc3_)
            {
               if(_loc3_[3] <= _loc3_[1])
               {
                  this.gaBtn0.enabled = false;
                  this.gaBtn10.enabled = false;
               }
               else
               {
                  _loc4_ = 9;
                  while(_loc4_ >= 1)
                  {
                     if(Boolean(_loc3_[2]) && _loc3_[2].toString().indexOf(_loc4_) >= 0)
                     {
                        _finishTopFloor = _loc4_;
                        break;
                     }
                     _loc4_--;
                  }
                  this.gaBtn0.enabled = true;
                  this.gaBtn10.enabled = true;
               }
            }
            this.visible = true;
         }
      }
      
      public function __tabBtn5_click(param1:MouseEvent) : void
      {
         tabClick(5);
      }
      
      public function __gaBtn2_click(param1:MouseEvent) : void
      {
         getAward(2);
      }
      
      private function attackFloor(param1:int) : void
      {
         if(!param1 || param1 < 0 || param1 > 9)
         {
            return;
         }
         _core.remote.call("attachThisFloorBoss",null,param1);
      }
      
      public function __gaBtn6_click(param1:MouseEvent) : void
      {
         getAward(6);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn3() : BasicGlowButton
      {
         return this._1554141556tabBtn3;
      }
      
      public function __afBtn8_click(param1:MouseEvent) : void
      {
         attackFloor(8);
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get gaBtn10() : BasicGlowButton
      {
         return this._234858303gaBtn10;
      }
      
      public function set gaBtn4(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502062gaBtn4;
         if(_loc2_ !== param1)
         {
            this._1254502062gaBtn4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn4",_loc2_,param1));
         }
      }
      
      public function __tabBtn9_click(param1:MouseEvent) : void
      {
         tabClick(9);
      }
      
      public function __afBtn4_click(param1:MouseEvent) : void
      {
         attackFloor(4);
      }
      
      public function set gaBtn7(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502059gaBtn7;
         if(_loc2_ !== param1)
         {
            this._1254502059gaBtn7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn7",_loc2_,param1));
         }
      }
      
      public function set gaBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1254502064gaBtn2;
         if(_loc2_ !== param1)
         {
            this._1254502064gaBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gaBtn2",_loc2_,param1));
         }
      }
      
      public function initNineBossPanel() : void
      {
         if(Boolean(_core) && Boolean(_core.cid))
         {
            _core.remote.call("initNineFloorPanel",new Responder(onInitPanel));
         }
         if(_firstflag)
         {
            if(this.bossImg)
            {
               this.bossImg.source = ResManager.getIconUrl(parseInt("3130090000038"));
               if(this.bossInfo)
               {
                  this.bossInfo.text = Language.NINE_BOSS[33];
               }
               if(this.tabBtn0)
               {
                  this.tabBtn0.selected = true;
               }
               _firstflag = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bossInfo() : IntroText
      {
         return this._2126222779bossInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn4() : BasicGlowButton
      {
         return this._1554141555tabBtn4;
      }
      
      private function tabClick(param1:int) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         if(this["tabBtn" + param1])
         {
            _loc2_ = 0;
            while(_loc2_ <= 9)
            {
               if(this["tabBtn" + _loc2_])
               {
                  this["tabBtn" + _loc2_].selected = false;
               }
               _loc2_++;
            }
            this["tabBtn" + param1].selected = true;
         }
         if(!param1 || param1 == 0)
         {
            this.bossInfo.text = Language.NINE_BOSS[33];
         }
         else
         {
            if(GamePredef.NINE_BOSS_ICON[param1])
            {
               this.bossImg.source = ResManager.hash(ResManager.getIconUrlNoHash(GamePredef.NINE_BOSS_ICON[param1]));
            }
            if(this.bossInfo)
            {
               _loc3_ = Number(param1) + 21;
               this.bossInfo.text = Language.NINE_BOSS[_loc3_];
            }
         }
      }
      
      public function __tabBtn6_click(param1:MouseEvent) : void
      {
         tabClick(6);
      }
      
      public function __gaBtn3_click(param1:MouseEvent) : void
      {
         getAward(3);
      }
      
      private function _NineBossPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NineBossPanel_BasicTitleCanvas1.text = param1;
         },"_NineBossPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn1.label = param1;
         },"afBtn1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn1.label = param1;
         },"gaBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn2.label = param1;
         },"afBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn2.label = param1;
         },"gaBtn2.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn3.label = param1;
         },"afBtn3.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn3.label = param1;
         },"gaBtn3.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn4.label = param1;
         },"afBtn4.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn4.label = param1;
         },"gaBtn4.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn5.label = param1;
         },"afBtn5.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn5.label = param1;
         },"gaBtn5.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn6.label = param1;
         },"afBtn6.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn6.label = param1;
         },"gaBtn6.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn7.label = param1;
         },"afBtn7.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn7.label = param1;
         },"gaBtn7.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn8.label = param1;
         },"afBtn8.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn8.label = param1;
         },"gaBtn8.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            afBtn9.label = param1;
         },"afBtn9.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn9.label = param1;
         },"gaBtn9.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn10.label = param1;
         },"gaBtn10.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn3.label = param1;
         },"tabBtn3.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn4.label = param1;
         },"tabBtn4.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn5.label = param1;
         },"tabBtn5.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn6.label = param1;
         },"tabBtn6.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn7.label = param1;
         },"tabBtn7.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn8.label = param1;
         },"tabBtn8.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn9.label = param1;
         },"tabBtn9.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NINE_BOSS[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gaBtn0.label = param1;
         },"gaBtn0.label");
         result[30] = binding;
         return result;
      }
      
      public function __gaBtn7_click(param1:MouseEvent) : void
      {
         getAward(7);
      }
   }
}

