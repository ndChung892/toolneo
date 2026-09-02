package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HorseRace extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var rects:Array = [];
      
      private var _1850821991action2Img:Image;
      
      private var horseC:MovieClip;
      
      private var btn_left:MovieClip;
      
      private var _934426595result:Canvas;
      
      private var popC:MovieClip;
      
      private var mPitC:UIComponent = new UIComponent();
      
      private var pitE:Boolean = false;
      
      private var btn_crash:Button;
      
      private var _1161803588action2:Label;
      
      private var btn_jump:MovieClip;
      
      private var _145245137container2:Canvas;
      
      private var HORSE_RACE_MAP_TYPE1:Object = {
         1:{
            6:3,
            15:1,
            23:2,
            39:1,
            44:3,
            60:3,
            61:2,
            76:1,
            80:2,
            87:3
         },
         2:{
            6:1,
            11:2,
            12:3,
            26:1,
            31:3,
            33:2,
            44:3,
            54:1,
            71:2,
            76:3,
            87:1,
            99:2
         },
         3:{
            6:3,
            15:2,
            26:1,
            28:3,
            39:1,
            47:2,
            59:1,
            62:3,
            76:1,
            85:2,
            96:1
         }
      };
      
      private var HORSE_RACE_MAP_TYPE2:Object = {
         1:{
            6:2,
            12:3,
            23:2,
            39:1,
            45:3,
            53:2,
            62:3,
            80:1,
            83:3,
            84:2
         },
         2:{
            12:2,
            13:3,
            19:1,
            35:3,
            39:2,
            49:3,
            61:1,
            68:3,
            69:2,
            88:1,
            94:2
         },
         3:{
            12:1,
            25:3,
            27:2,
            39:1,
            60:3,
            61:2,
            80:1,
            88:2
         }
      };
      
      private var HORSE_RACE_MAP_TYPE3:Object = {
         1:{
            9:1,
            27:3,
            29:2,
            39:2,
            40:3,
            54:1,
            79:2,
            88:2
         },
         2:{
            16:2,
            19:3,
            29:1,
            32:3,
            45:2,
            67:1,
            69:3,
            92:1
         },
         3:{
            9:3,
            12:2,
            29:2,
            44:1,
            51:3,
            67:2,
            74:3,
            82:2
         }
      };
      
      private var HORSE_RACE_MAP_TYPE4:Object = {
         1:{
            17:1,
            20:3,
            32:1,
            34:3,
            54:1,
            62:3,
            78:1,
            89:3,
            94:2
         },
         2:{
            9:2,
            25:2,
            35:2,
            47:2,
            60:2,
            74:2,
            86:2,
            87:3,
            92:2,
            94:2
         },
         3:{
            11:1,
            27:3,
            42:1,
            57:3,
            67:1,
            70:3,
            83:1,
            91:3,
            94:2
         }
      };
      
      private var HORSE_RACE_MAP_TYPE5:Object = {
         1:{
            9:2,
            19:3,
            21:2,
            33:1,
            43:3,
            46:2,
            57:2,
            62:3,
            82:3,
            87:2
         },
         2:{
            12:3,
            14:2,
            31:2,
            46:3,
            52:2,
            62:1,
            82:1
         },
         3:{
            9:2,
            15:2,
            26:3,
            28:2,
            35:2,
            44:2,
            53:3,
            54:2,
            56:2,
            58:3,
            60:2,
            62:2,
            63:3,
            64:2,
            68:1,
            76:3,
            86:2,
            94:1
         }
      };
      
      private var HORSE_RACE_MAP_TYPE6:Object = {
         1:{
            12:1,
            35:2,
            36:3,
            64:2,
            83:3,
            85:2
         },
         2:{
            14:3,
            17:2,
            35:1,
            64:3,
            90:1
         },
         3:{
            9:3,
            22:1,
            42:3,
            44:2,
            64:1,
            82:3,
            83:2
         }
      };
      
      private var _601215973currentStep:Label;
      
      private var HORSE_RACE_MAP_TYPE8:Object = {
         1:{
            11:3,
            25:2,
            41:2,
            60:2,
            69:1,
            86:2
         },
         2:{
            9:3,
            14:2,
            25:1,
            33:2,
            64:2,
            80:1,
            96:2
         },
         3:{
            10:3,
            15:1,
            41:2,
            60:1,
            73:2,
            94:2
         }
      };
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var HORSE_RACE_MAP_TYPE7:Object = {
         1:{
            9:2,
            14:3,
            26:2,
            31:3,
            44:1,
            49:3,
            68:2,
            71:3,
            90:1
         },
         2:{
            14:1,
            20:3,
            38:2,
            39:3,
            65:1,
            66:3,
            87:2
         },
         3:{
            9:3,
            20:1,
            26:3,
            42:2,
            57:3,
            59:2,
            77:1,
            78:3
         }
      };
      
      private var HORSE_RACE_MAP_TYPE9:Object = {
         1:{
            12:2,
            13:3,
            28:2,
            49:3,
            50:2,
            66:3,
            90:2
         },
         2:{
            15:1,
            17:3,
            35:2,
            61:1,
            76:3,
            90:1
         },
         3:{
            9:2,
            10:3,
            29:3,
            41:1,
            57:3,
            76:2,
            92:2
         }
      };
      
      private var horseBMC:UIComponent = new UIComponent();
      
      private var moving:Boolean = false;
      
      private var HORSE_RACE_MAP_TYPES:Object;
      
      private var btn_right:MovieClip;
      
      private var mapBMC:UIComponent = new UIComponent();
      
      private var _core:Core = Core.getInstance();
      
      private var stoneE:Boolean = false;
      
      private var mc_stone:MovieClip;
      
      private var _1850792200action1Img:Image;
      
      private var btn_down:MovieClip;
      
      private var _106433028panel:Canvas;
      
      private var mapBMs:Array = [];
      
      private var btn_start:MovieClip;
      
      private var wData:Object;
      
      private var _1457826029currentStep2:Label;
      
      private var btn_middle:MovieClip;
      
      private var load:Loader;
      
      private var HORSE_RACE_MAP_TYPE10:Object = {
         1:{
            12:3,
            18:1,
            36:3,
            53:2,
            76:1,
            77:3
         },
         2:{
            18:3,
            28:2,
            41:3,
            48:1,
            67:3,
            76:2,
            87:3,
            97:1
         },
         3:{
            10:2,
            21:3,
            30:1,
            50:3,
            61:2,
            78:3,
            94:2
         }
      };
      
      public var _HorseRace_ItemSlot1:ItemSlot;
      
      public var _HorseRace_ItemSlot2:ItemSlot;
      
      private var actions:Array = [];
      
      public var effects:Array = [];
      
      private var _1161803589action1:Label;
      
      private var mc_radish:MovieClip;
      
      private var radishE:Boolean = false;
      
      private var steps:Array = [];
      
      private var _115312txt:IntroText;
      
      private var _1835012049todayScore:Label;
      
      private var mStoneC:UIComponent = new UIComponent();
      
      private var btn_up:MovieClip;
      
      private var five_jump_counter:int = 0;
      
      private var popBMC:UIComponent = new UIComponent();
      
      public var _HorseRace_Label3:Label;
      
      public var _HorseRace_Label5:Label;
      
      public var _HorseRace_Label6:Label;
      
      private var HORSE_RACE_BOX_TYPE1:int = 1;
      
      private var HORSE_RACE_BOX_TYPE2:int = 2;
      
      private var HORSE_RACE_BOX_TYPE3:int = 3;
      
      private var mc_pit:MovieClip;
      
      private var _145245136container1:Canvas;
      
      private var horseBMDS:Array = [];
      
      private var itemBMD1:BitmapData;
      
      private var itemBMD2:BitmapData;
      
      private var itemBMD3:BitmapData;
      
      public var _HorseRace_BasicGlowButton1:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var actionImg:Array = [0,4130220000481,4130220000482,4130220000479,4130220000480,4130220000483];
      
      private var btn_cancel:MovieClip;
      
      private var _978091684rankTxt:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var mRadishC:UIComponent = new UIComponent();
      
      mx_internal var _bindings:Array = [];
      
      private var rankData:Array;
      
      public var _HorseRace_Image3:Image;
      
      private var load_state:int = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":500,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_HorseRace_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":38,
                        "width":680,
                        "height":440,
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"panel",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":665,
                                 "height":220,
                                 "x":8,
                                 "y":5,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"container1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"result",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "visible":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"currentStep2",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "-35";
                                                this.color = 65535;
                                                this.textAlign = "center";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "height":35,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"todayScore",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "0";
                                                this.color = 65535;
                                                this.textAlign = "center";
                                                this.fontSize = 30;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "percentWidth":100,
                                                   "height":35,
                                                   "mouseEnabled":false
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_HorseRace_BasicGlowButton1",
                                             "events":{"click":"___HorseRace_BasicGlowButton1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "40";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {"styleName":"BtnStdRed"};
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
                                 "width":180,
                                 "height":205,
                                 "x":8,
                                 "y":229,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"_HorseRace_ItemSlot1",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "x":25,
                                          "y":70,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"action1Img",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":26,
                                          "y":71
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"_HorseRace_ItemSlot2",
                                    "stylesFactory":function():void
                                    {
                                       this.borderStyle = "none";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "movable":false,
                                          "x":80,
                                          "y":70,
                                          "mouseEnabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"action2Img",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":81,
                                          "y":71
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_HorseRace_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "32";
                                       this.left = "0";
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.strokeColor = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":15,
                                          "y":27,
                                          "width":150,
                                          "height":1
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"currentStep",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "7";
                                       this.left = "0";
                                       this.color = 16776960;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_HorseRace_Label5",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "50";
                                       this.left = "20";
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":45,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_HorseRace_Label6",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "50";
                                       this.left = "75";
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":45,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"container2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Button,
                                             "events":{"click":"___HorseRace_Button1_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.right = "5";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"horseCrash",
                                                   "y":140
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"action1",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "105";
                                       this.left = "30";
                                       this.color = 65535;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":35,
                                          "height":16
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"action2",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "105";
                                       this.left = "85";
                                       this.color = 65535;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":35,
                                          "height":16
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
                                 "width":280,
                                 "height":205,
                                 "x":190,
                                 "y":229,
                                 "styleName":"CanvasBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"_HorseRace_Image3"
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":200,
                                 "height":205,
                                 "x":473,
                                 "y":229,
                                 "styleName":"CanvasBorder",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":IntroText,
                                    "id":"txt",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "5";
                                       this.top = "5";
                                       this.right = "5";
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":195,
                                          "mouseEnabled":false
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
      
      public var _HorseRace_BasicTitleCanvas1:BasicTitleCanvas;
      
      public function HorseRace()
      {
         HORSE_RACE_MAP_TYPES = {
            1:HORSE_RACE_MAP_TYPE1,
            2:HORSE_RACE_MAP_TYPE2,
            3:HORSE_RACE_MAP_TYPE3,
            4:HORSE_RACE_MAP_TYPE4,
            5:HORSE_RACE_MAP_TYPE5,
            6:HORSE_RACE_MAP_TYPE6,
            7:HORSE_RACE_MAP_TYPE7,
            8:HORSE_RACE_MAP_TYPE8,
            9:HORSE_RACE_MAP_TYPE9,
            10:HORSE_RACE_MAP_TYPE10
         };
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 500;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HorseRace._watcherSetupUtil = param1;
      }
      
      private function fiveJump(param1:Event = null) : void
      {
         if(int(int(wData["index"])) > 102)
         {
            wData["index"] = 102;
         }
         mapBMC.x = -50 * int(wData["index"]) + 50 * five_jump_counter;
         horseBMC.y = 10 + int(wData["line"]) * 50;
         if(five_jump_counter <= 0)
         {
            showStoneEffect();
            horseC.gotoAndPlay(horseC.currentFrame);
            popC.gotoAndPlay(horseC.currentFrame);
            return;
         }
         --five_jump_counter;
         var _loc2_:EnterFrameMove = new EnterFrameMove();
         _loc2_.target = mapBMC;
         _loc2_.stepLength = 10;
         _loc2_.yBy = 0;
         _loc2_.xBy = -25;
         _loc2_.addEventListener(EnterFrameMove.EFFECT_END,fiveJumpEnd1);
         _loc2_.play(true);
         var _loc3_:EnterFrameMove = new EnterFrameMove();
         _loc3_.target = horseBMC;
         _loc3_.stepLength = 10;
         _loc3_.xBy = 0;
         _loc3_.yBy = -25;
         horseC.gotoAndStop(1);
         _loc3_.play(true);
      }
      
      private function left(param1:Event) : void
      {
         if(moving || actions.length == 2)
         {
            return;
         }
         actions.push(4);
         refreshActionsText();
      }
      
      public function set panel(param1:Canvas) : void
      {
         var _loc2_:Object = this._106433028panel;
         if(_loc2_ !== param1)
         {
            this._106433028panel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panel",_loc2_,param1));
         }
      }
      
      public function set action1Img(param1:Image) : void
      {
         var _loc2_:Object = this._1850792200action1Img;
         if(_loc2_ !== param1)
         {
            this._1850792200action1Img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"action1Img",_loc2_,param1));
         }
      }
      
      private function jump1End(param1:Event) : void
      {
         horseBMC.y = 13 + int(wData["line"] - 1) * 50 - 25;
         popBMC.y = horseBMC.y - 10;
         var _loc2_:EnterFrameMove = new EnterFrameMove();
         _loc2_.target = horseBMC;
         _loc2_.stepLength = 10;
         _loc2_.xBy = 0;
         _loc2_.yBy = 75;
         _loc2_.addEventListener(EnterFrameMove.EFFECT_END,jump2End);
         _loc2_.play(true);
         var _loc3_:EnterFrameMove = new EnterFrameMove();
         _loc3_ = new EnterFrameMove();
         _loc3_.target = popBMC;
         _loc3_.stepLength = 10;
         _loc3_.xBy = 0;
         _loc3_.yBy = 75;
         _loc3_.play(true);
      }
      
      [Bindable(event="propertyChange")]
      public function get result() : Canvas
      {
         return this._934426595result;
      }
      
      private function right(param1:Event) : void
      {
         if(moving || actions.length == 2)
         {
            return;
         }
         actions.push(3);
         refreshActionsText();
      }
      
      [Bindable(event="propertyChange")]
      public function get panel() : Canvas
      {
         return this._106433028panel;
      }
      
      private function jump(param1:Event) : void
      {
         if(moving || actions.length == 2)
         {
            return;
         }
         actions.push(5);
         refreshActionsText();
      }
      
      private function closeHandler(param1:Event) : void
      {
         if(horseC)
         {
            horseC.gotoAndStop(horseC.currentFrame);
         }
      }
      
      public function set result(param1:Canvas) : void
      {
         var _loc2_:Object = this._934426595result;
         if(_loc2_ !== param1)
         {
            this._934426595result = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"result",_loc2_,param1));
         }
      }
      
      private function loadComplete(param1:Event) : void
      {
         var _loc2_:UIComponent = null;
         var _loc29_:Class = null;
         var _loc30_:MovieClip = null;
         var _loc31_:BitmapData = null;
         var _loc32_:Bitmap = null;
         var _loc3_:int = 1;
         while(_loc3_ <= 8)
         {
            _loc29_ = load.contentLoaderInfo.applicationDomain.getDefinition("map" + _loc3_) as Class;
            _loc30_ = new _loc29_();
            _loc31_ = new BitmapData(_loc30_.width,_loc30_.height,true,16777215);
            _loc31_.draw(_loc30_);
            _loc32_ = new Bitmap(_loc31_);
            mapBMs.push(_loc32_);
            _loc3_++;
         }
         container1.addChild(mapBMC);
         var _loc4_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("item1") as Class;
         var _loc5_:MovieClip = new _loc4_();
         itemBMD1 = new BitmapData(50,50,true,16777215);
         itemBMD1.draw(_loc5_);
         var _loc6_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("item2") as Class;
         var _loc7_:MovieClip = new _loc6_();
         itemBMD2 = new BitmapData(50,50,true,16777215);
         itemBMD2.draw(_loc7_);
         var _loc8_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("item3") as Class;
         var _loc9_:MovieClip = new _loc8_();
         itemBMD3 = new BitmapData(50,50,true,16777215);
         itemBMD3.draw(_loc9_);
         var _loc10_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_up") as Class;
         btn_up = new _loc10_();
         _loc2_ = new UIComponent();
         _loc2_.x = 42;
         _loc2_.y = 124;
         _loc2_.toolTip = Language.SUMMER_GAME_PANEL[61];
         _loc2_.addChild(btn_up);
         btn_up.addEventListener(MouseEvent.CLICK,up);
         container2.addChild(_loc2_);
         var _loc11_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_down") as Class;
         btn_down = new _loc11_();
         _loc2_ = new UIComponent();
         _loc2_.x = 42;
         _loc2_.y = 172;
         _loc2_.toolTip = Language.SUMMER_GAME_PANEL[62];
         _loc2_.addChild(btn_down);
         btn_down.addEventListener(MouseEvent.CLICK,down);
         container2.addChild(_loc2_);
         var _loc12_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_middle") as Class;
         btn_middle = new _loc12_();
         var _loc13_:UIComponent = new UIComponent();
         _loc13_.addChild(btn_middle);
         _loc13_.x = 42;
         _loc13_.y = 144;
         container2.addChildAt(_loc13_,0);
         var _loc14_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_minus") as Class;
         btn_left = new _loc14_();
         _loc2_ = new UIComponent();
         _loc2_.x = 22;
         _loc2_.y = 144;
         _loc2_.toolTip = Language.SUMMER_GAME_PANEL[64];
         _loc2_.addChild(btn_left);
         btn_left.addEventListener(MouseEvent.CLICK,left);
         container2.addChild(_loc2_);
         var _loc15_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_add") as Class;
         btn_right = new _loc15_();
         _loc2_ = new UIComponent();
         _loc2_.x = 70;
         _loc2_.y = 144;
         _loc2_.toolTip = Language.SUMMER_GAME_PANEL[63];
         _loc2_.addChild(btn_right);
         btn_right.addEventListener(MouseEvent.CLICK,right);
         container2.addChild(_loc2_);
         var _loc16_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("horse") as Class;
         horseC = new _loc16_();
         horseBMC.addChild(horseC);
         horseBMC.x = 100;
         container1.addChild(horseBMC);
         var _loc17_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("pop") as Class;
         popC = new _loc17_();
         popC.speed.text = "1";
         popBMC.addChild(popC);
         popBMC.x = horseBMC.x - 40;
         container1.addChild(popBMC);
         var _loc18_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_jump") as Class;
         btn_jump = new _loc18_();
         btn_jump.addEventListener(MouseEvent.CLICK,jump);
         var _loc19_:UIComponent = new UIComponent();
         _loc19_.addChild(btn_jump);
         _loc19_.x = 100;
         _loc19_.y = 140;
         container2.addChild(_loc19_);
         var _loc20_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_cancel") as Class;
         btn_cancel = new _loc20_();
         btn_cancel.addEventListener(MouseEvent.CLICK,back);
         var _loc21_:UIComponent = new UIComponent();
         _loc21_.x = 120;
         _loc21_.y = 90;
         _loc21_.addChild(btn_cancel);
         container2.addChild(_loc21_);
         var _loc22_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("btn_start") as Class;
         btn_start = new _loc22_();
         btn_start.addEventListener(MouseEvent.CLICK,start);
         var _loc23_:UIComponent = new UIComponent();
         _loc23_.addChild(btn_start);
         _loc23_.x = 120;
         _loc23_.y = 65;
         container2.addChild(_loc23_);
         var _loc24_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("mc_stone") as Class;
         mc_stone = new _loc24_();
         mStoneC.addChild(mc_stone);
         mStoneC.visible = false;
         container1.addChild(mStoneC);
         var _loc25_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("mc_pit") as Class;
         mc_pit = new _loc25_();
         mPitC.addChild(mc_pit);
         mPitC.visible = false;
         container1.addChild(mPitC);
         var _loc26_:Class = load.contentLoaderInfo.applicationDomain.getDefinition("mc_radish") as Class;
         mc_radish = new _loc26_();
         mRadishC.addChild(mc_radish);
         mRadishC.visible = false;
         container1.addChild(mRadishC);
         var _loc27_:Sprite = new Sprite();
         _loc27_.graphics.beginFill(16777215,1);
         _loc27_.graphics.drawRect(0,0,665,220);
         _loc27_.graphics.endFill();
         var _loc28_:UIComponent = new UIComponent();
         _loc28_.x = container1.x;
         _loc28_.y = container1.y;
         _loc28_.addChild(_loc27_);
         panel.addChild(_loc28_);
         container1.mask = _loc27_;
         load_state = 2;
         load.contentLoaderInfo.removeEventListener(Event.COMPLETE,loadComplete);
         load.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,loadError);
         init();
         _core.remote.call("summerGameHorseRace",new Responder(onGetData));
      }
      
      private function clean() : void
      {
      }
      
      private function start(param1:Event) : void
      {
         if(moving)
         {
            return;
         }
         if(actions.length < 2)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[48]);
            return;
         }
         moving = true;
         _core.remote.call("horseRaceGo",null,actions);
         actions.length = 0;
         refreshActionsText();
      }
      
      private function moveNext() : void
      {
         var _loc9_:EnterFrameMove = null;
         popC.speed.text = wData["speed"];
         if(steps.length == 0)
         {
            moving = false;
            wData["step"] = int(wData["step"]) + 1;
            popC.speed.text = wData["speed"];
            currentStep.htmlText = Language.SUMMER_GAME_PANEL[41] + "<font color=\'#00ffff\'>" + wData["step"] + "</font>";
            currentStep2.text = Language.SUMMER_GAME_PANEL[41] + wData["step"];
            showTodayScore();
            return;
         }
         var _loc1_:Object = steps.shift();
         if(!_loc1_)
         {
            moveNext();
            return;
         }
         var _loc2_:int = int(_loc1_["type"]);
         var _loc3_:int = int(_loc1_["num"]);
         var _loc4_:int = int(_loc1_["line1"]);
         var _loc5_:int = int(_loc1_["line2"]);
         var _loc6_:int = int(_loc1_["speed1"]);
         var _loc7_:int = int(_loc1_["speed2"]);
         stoneE = _loc1_["mc_stone"];
         pitE = _loc1_["mc_pit"];
         radishE = _loc1_["mc_radish"];
         if(_loc2_ == 1 || _loc2_ == 2)
         {
            wData["line"] = _loc5_;
            wData["speed"] = _loc7_;
         }
         else if(_loc2_ == 3 || _loc2_ == 4)
         {
            wData["speed"] = _loc7_;
         }
         else if(_loc2_ == 5)
         {
            wData["speed"] = _loc7_;
         }
         else if(_loc2_ == 6)
         {
            wData["speed"] = _loc7_;
         }
         if(int(wData["index"]) + _loc3_ > 102)
         {
            _loc3_ = 102 - int(wData["index"]);
            wData["index"] = 102;
         }
         else
         {
            wData["index"] = int(wData["index"]) + _loc3_;
         }
         var _loc8_:EnterFrameMove = new EnterFrameMove();
         if((_loc2_ == 1 || _loc2_ == 2) && _loc4_ != _loc5_)
         {
            _loc8_.target = horseBMC;
            _loc8_.stepLength = 10;
            _loc8_.xBy = 0;
            _loc8_.yBy = 50 * (_loc2_ == 1 ? -1 : 1);
            _loc8_.addEventListener(EnterFrameMove.EFFECT_END,lineChangeEnd);
            _loc8_.play(true);
            _loc9_ = new EnterFrameMove();
            _loc9_.target = popBMC;
            _loc9_.stepLength = 10;
            _loc9_.xBy = 0;
            _loc9_.yBy = 50 * (_loc2_ == 1 ? -1 : 1);
            _loc9_.play(true);
         }
         else if((_loc2_ == 3 || _loc2_ == 4) && _loc3_ > 0)
         {
            _loc8_.target = mapBMC;
            _loc8_.stepLength = 10 * _loc6_;
            _loc8_.yBy = 0;
            _loc8_.xBy = -50 * _loc3_;
            _loc8_.addEventListener(EnterFrameMove.EFFECT_END,mapMoveEnd);
            _loc8_.play(true);
         }
         else if(_loc2_ == 5)
         {
            _loc8_.target = horseBMC;
            _loc8_.stepLength = 10;
            _loc8_.xBy = 0;
            _loc8_.yBy = -75;
            _loc8_.addEventListener(EnterFrameMove.EFFECT_END,jump1End);
            horseC.gotoAndStop(1);
            _loc8_.play(true);
            _loc9_ = new EnterFrameMove();
            _loc9_.target = popBMC;
            _loc9_.stepLength = 10;
            _loc9_.xBy = 0;
            _loc9_.yBy = -75;
            _loc9_.play(true);
            if(_loc3_ > 0)
            {
               _loc9_ = new EnterFrameMove();
               _loc9_.target = mapBMC;
               _loc9_.stepLength = 10;
               _loc9_.yBy = 0;
               _loc9_.xBy = -50 * _loc3_;
               _loc9_.play(true);
            }
         }
         else if(_loc2_ == 6 && _loc3_ > 0)
         {
            refreshMap();
            five_jump_counter = _loc3_;
            showRadishEffect();
         }
         else
         {
            showStoneEffect();
            moving = false;
            wData["step"] = int(wData["step"]) + 1;
            popC.speed.text = wData["speed"];
            currentStep.htmlText = Language.SUMMER_GAME_PANEL[41] + "<font color=\'#00ffff\'>" + wData["step"] + "</font>";
            currentStep2.text = Language.SUMMER_GAME_PANEL[41] + wData["step"];
         }
      }
      
      private function mapMoveEnd(param1:Event) : void
      {
         if(int(int(wData["index"])) > 102)
         {
            wData["index"] = 102;
         }
         mapBMC.x = -50 * int(wData["index"]);
         showStoneEffect();
      }
      
      private function jump2End(param1:Event) : void
      {
         horseBMC.y = 13 + int(wData["line"]) * 50;
         popBMC.y = horseBMC.y - 10;
         if(int(int(wData["index"])) > 102)
         {
            wData["index"] = 102;
         }
         mapBMC.x = -50 * int(wData["index"]);
         horseC.gotoAndPlay(horseC.currentFrame);
         popC.gotoAndPlay(horseC.currentFrame);
         showStoneEffect();
      }
      
      [Bindable(event="propertyChange")]
      public function get txt() : IntroText
      {
         return this._115312txt;
      }
      
      private function refreshMap() : void
      {
         var _loc1_:int = 0;
         var _loc7_:Bitmap = null;
         var _loc8_:int = 0;
         var _loc9_:BitmapData = null;
         var _loc10_:Bitmap = null;
         while(mapBMC.numChildren > 1)
         {
            mapBMC.removeChildAt(0);
         }
         _loc1_ = 0;
         while(_loc1_ < mapBMs.length)
         {
            _loc7_ = mapBMs[_loc1_];
            _loc7_.x = 800 * _loc1_;
            mapBMC.addChild(_loc7_);
            _loc1_++;
         }
         var _loc2_:int = int(wData["type"]);
         var _loc3_:Object = wData["eats"];
         var _loc4_:Object = HORSE_RACE_MAP_TYPES[_loc2_];
         if(!_loc4_)
         {
            return;
         }
         var _loc5_:Matrix = new Matrix();
         _loc5_.scale(0.5,1);
         var _loc6_:int = 1;
         while(_loc6_ <= 3)
         {
            _loc1_ = 1;
            while(_loc1_ < 101)
            {
               _loc8_ = int(_loc4_[_loc6_][_loc1_]);
               if(_loc8_ > 0)
               {
                  _loc9_ = null;
                  if(_loc8_ == 1)
                  {
                     _loc9_ = itemBMD1;
                  }
                  else if(_loc8_ == 2)
                  {
                     _loc9_ = itemBMD2;
                  }
                  else if(_loc8_ == 3)
                  {
                     if(!(Boolean(_loc3_) && Boolean(_loc3_[_loc6_]) && Boolean(_loc3_[_loc6_][_loc1_])))
                     {
                        _loc9_ = itemBMD3;
                     }
                  }
                  if(_loc9_)
                  {
                     _loc10_ = new Bitmap(_loc9_);
                     _loc10_.x = 50 * (_loc1_ - 1) + 150;
                     _loc10_.y = 50 * (_loc6_ - 1) + 70;
                     mapBMC.addChild(_loc10_);
                  }
               }
               _loc1_++;
            }
            _loc6_++;
         }
      }
      
      private function up(param1:Event) : void
      {
         if(moving || actions.length == 2)
         {
            return;
         }
         if(int(wData["line"]) == 1 && actions.length == 0)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[54]);
            return;
         }
         actions.push(1);
         refreshActionsText();
      }
      
      private function down(param1:Event) : void
      {
         if(moving || actions.length == 2)
         {
            return;
         }
         if(int(wData["line"]) == 3 && actions.length == 0)
         {
            _core.sysMidNote(Language.SUMMER_GAME_PANEL[55]);
            return;
         }
         actions.push(2);
         refreshActionsText();
      }
      
      [Bindable(event="propertyChange")]
      private function get rankTxt() : ArrayCollection
      {
         return this._978091684rankTxt;
      }
      
      private function getAward() : void
      {
         if(!result.visible)
         {
            return;
         }
         _core.remote.call("horseRaceGetAward",new Responder(onGetAward));
      }
      
      private function clearPage() : void
      {
         rankTxt.removeAll();
      }
      
      private function showTodayScore() : void
      {
         if(Boolean(wData) && int(wData["state"]) == 2)
         {
            todayScore.text = Language.SUMMER_GAME_PANEL[40] + wData["score"];
            result.visible = true;
         }
         else
         {
            todayScore.text = Language.SUMMER_GAME_PANEL[31];
         }
      }
      
      public function ___HorseRace_Button1_click(param1:MouseEvent) : void
      {
         crash();
      }
      
      [Bindable(event="propertyChange")]
      public function get action1() : Label
      {
         return this._1161803589action1;
      }
      
      private function loadError(param1:IOErrorEvent) : void
      {
         trace(" horseRace load res Error ");
      }
      
      [Bindable(event="propertyChange")]
      public function get action2() : Label
      {
         return this._1161803588action2;
      }
      
      public function set action2Img(param1:Image) : void
      {
         var _loc2_:Object = this._1850821991action2Img;
         if(_loc2_ !== param1)
         {
            this._1850821991action2Img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"action2Img",_loc2_,param1));
         }
      }
      
      private function fiveJumpEnd1(param1:Event) : void
      {
         var _loc2_:EnterFrameMove = new EnterFrameMove();
         _loc2_.target = mapBMC;
         _loc2_.stepLength = 10;
         _loc2_.yBy = 0;
         _loc2_.xBy = -25;
         _loc2_.addEventListener(EnterFrameMove.EFFECT_END,fiveJump);
         _loc2_.play(true);
         var _loc3_:EnterFrameMove = new EnterFrameMove();
         _loc3_.target = horseBMC;
         _loc3_.stepLength = 10;
         _loc3_.xBy = 0;
         _loc3_.yBy = 25;
         _loc3_.play(true);
      }
      
      private function showRadishEffect() : void
      {
         if(radishE)
         {
            radishE = false;
            mRadishC.x = horseBMC.x;
            mRadishC.y = horseBMC.y - horseC.height;
            mRadishC.visible = true;
            setTimeout(hideRadishEffect,1000);
         }
         else
         {
            moveNext();
         }
      }
      
      public function set txt(param1:IntroText) : void
      {
         var _loc2_:Object = this._115312txt;
         if(_loc2_ !== param1)
         {
            this._115312txt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt",_loc2_,param1));
         }
      }
      
      private function back(param1:Event) : void
      {
         if(moving)
         {
            return;
         }
         if(actions.length > 0)
         {
            --actions.length;
            refreshActionsText();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentStep2() : Label
      {
         return this._1457826029currentStep2;
      }
      
      private function sortByScore(param1:Object, param2:Object) : Number
      {
         if(param1.rank == param2.rank)
         {
            return 0;
         }
         if(param1.rank > param2.rank)
         {
            return 1;
         }
         return -1;
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      private function _HorseRace_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HorseRace_BasicTitleCanvas1.text = param1;
         },"_HorseRace_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            currentStep2.filters = param1;
         },"currentStep2.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            todayScore.filters = param1;
         },"todayScore.filters");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HorseRace_BasicGlowButton1.label = param1;
         },"_HorseRace_BasicGlowButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            _HorseRace_ItemSlot1.slotType = param1;
         },"_HorseRace_ItemSlot1.slotType");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            _HorseRace_ItemSlot2.slotType = param1;
         },"_HorseRace_ItemSlot2.slotType");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[65];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HorseRace_Label3.text = param1;
         },"_HorseRace_Label3.text");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _HorseRace_Label3.filters = param1;
         },"_HorseRace_Label3.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            currentStep.filters = param1;
         },"currentStep.filters");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HorseRace_Label5.text = param1;
         },"_HorseRace_Label5.text");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _HorseRace_Label5.filters = param1;
         },"_HorseRace_Label5.filters");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SUMMER_GAME_PANEL[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HorseRace_Label6.text = param1;
         },"_HorseRace_Label6.text");
         result[11] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _HorseRace_Label6.filters = param1;
         },"_HorseRace_Label6.filters");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000724);
         },function(param1:Object):void
         {
            _HorseRace_Image3.source = param1;
         },"_HorseRace_Image3.source");
         result[13] = binding;
         return result;
      }
      
      private function onCrash(param1:Boolean) : void
      {
         if(!param1)
         {
            return;
         }
         moving = true;
         var _loc2_:EnterFrameMove = new EnterFrameMove();
         _loc2_.target = mapBMC;
         _loc2_.stepLength = 10;
         _loc2_.yBy = 0;
         _loc2_.xBy = -50 * 10;
         _loc2_.addEventListener(EnterFrameMove.EFFECT_END,crashEnd);
         _loc2_.play(true);
      }
      
      private function init() : void
      {
         addEventListener(EVENT_CLOSE,closeHandler);
         txt.htmlText = Language.SUMMER_GAME_PANEL[39];
      }
      
      [Bindable(event="propertyChange")]
      public function get action1Img() : Image
      {
         return this._1850792200action1Img;
      }
      
      private function showStoneEffect() : void
      {
         if(stoneE)
         {
            stoneE = false;
            mStoneC.x = horseBMC.x;
            mStoneC.y = horseBMC.y - horseC.height;
            mStoneC.visible = true;
            setTimeout(hideStoneEffect,1000);
         }
         else if(pitE)
         {
            pitE = false;
            mPitC.x = horseBMC.x;
            mPitC.y = horseBMC.y - horseC.height;
            mPitC.visible = true;
            setTimeout(hideStoneEffect,1000);
         }
         else
         {
            moveNext();
         }
      }
      
      private function _HorseRace_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SUMMER_GAME_PANEL[38];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.SUMMER_GAME_PANEL[16];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.SUMMER_GAME_PANEL[65];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.SUMMER_GAME_PANEL[43];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.SUMMER_GAME_PANEL[44];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = ResManager.getIconUrl(4130220000724);
      }
      
      public function onGo(param1:Object) : void
      {
         if(!param1)
         {
            moving = false;
            return;
         }
         if(!param1["flag"])
         {
            moving = false;
            this.visible = false;
            return;
         }
         steps = param1["steps"];
         wData["state"] = param1["state"];
         wData["score"] = param1["score"];
         wData["eats"] = param1["eats"];
         moveNext();
      }
      
      public function onGetData(param1:Object) : void
      {
         var _loc2_:String = null;
         if(!param1)
         {
            return;
         }
         if(!param1["data"])
         {
            visible = false;
            return;
         }
         clean();
         if(!param1["flag"])
         {
            _loc2_ = Language.SUMMER_GAME_PANEL[56];
            Alert.show(_loc2_,"",Alert.YES,null);
         }
         wData = param1["data"];
         if(int(int(wData["index"])) > 102)
         {
            wData["index"] = 102;
         }
         mapBMC.x = -50 * int(wData["index"]);
         horseBMC.y = 13 + int(wData["line"]) * 50;
         popBMC.y = horseBMC.y - 10;
         if(horseC)
         {
            horseC.gotoAndPlay(horseC.currentFrame);
         }
         currentStep.htmlText = Language.SUMMER_GAME_PANEL[41] + "<font color=\'#00ffff\'>" + wData["step"] + "</font>";
         currentStep2.text = Language.SUMMER_GAME_PANEL[41] + wData["step"];
         showTodayScore();
         refreshLand(wData["data"]);
         popC.speed.text = wData["speed"] || 1;
         refreshMap();
         if(int(wData["state"]) == 2)
         {
            result.visible = true;
         }
      }
      
      public function ___HorseRace_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      private function set rankTxt(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._978091684rankTxt;
         if(_loc2_ !== param1)
         {
            this._978091684rankTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankTxt",_loc2_,param1));
         }
      }
      
      private function refreshLand(param1:Array) : void
      {
         if(!param1)
         {
            return;
         }
         clean();
      }
      
      [Bindable(event="propertyChange")]
      public function get action2Img() : Image
      {
         return this._1850821991action2Img;
      }
      
      public function set action1(param1:Label) : void
      {
         var _loc2_:Object = this._1161803589action1;
         if(_loc2_ !== param1)
         {
            this._1161803589action1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"action1",_loc2_,param1));
         }
      }
      
      public function set action2(param1:Label) : void
      {
         var _loc2_:Object = this._1161803588action2;
         if(_loc2_ !== param1)
         {
            this._1161803588action2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"action2",_loc2_,param1));
         }
      }
      
      private function lineChangeEnd(param1:Event) : void
      {
         horseBMC.y = 13 + int(wData["line"]) * 50;
         popBMC.y = horseBMC.y - 10;
         showStoneEffect();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HorseRace = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HorseRace_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_HorseRaceWatcherSetupUtil");
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
      
      private function hideRadishEffect() : void
      {
         mRadishC.visible = false;
         fiveJump();
      }
      
      public function set container1(param1:Canvas) : void
      {
         var _loc2_:Object = this._145245136container1;
         if(_loc2_ !== param1)
         {
            this._145245136container1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container1",_loc2_,param1));
         }
      }
      
      public function set container2(param1:Canvas) : void
      {
         var _loc2_:Object = this._145245137container2;
         if(_loc2_ !== param1)
         {
            this._145245137container2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"container2",_loc2_,param1));
         }
      }
      
      public function onGetAward(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         if(!param1["flag"])
         {
            this.visible = false;
            return;
         }
         if(wData)
         {
            wData.state = 2;
         }
      }
      
      private function refreshRank() : void
      {
         rankData.sort(sortByScore);
      }
      
      public function set todayScore(param1:Label) : void
      {
         var _loc2_:Object = this._1835012049todayScore;
         if(_loc2_ !== param1)
         {
            this._1835012049todayScore = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"todayScore",_loc2_,param1));
         }
      }
      
      private function crash() : void
      {
         var func:Function;
         if(moving)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("horseCrash",new Responder(onCrash));
            }
         };
         Alert.show(Language.ANNIVERSARY_LANG[20].toString(),"",Alert.YES | Alert.NO,null,func);
      }
      
      private function hideStoneEffect() : void
      {
         mStoneC.visible = false;
         mPitC.visible = false;
         moveNext();
      }
      
      private function crashEnd(param1:Event) : void
      {
         moving = false;
         _core.remote.call("summerGameHorseRace",null);
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc4_:Object = null;
         rankTxt.removeAll();
         var _loc3_:int = 0;
         while(_loc3_ < 10)
         {
            _loc4_ = rankData[_loc3_ + param1];
            if(_loc4_)
            {
               rankTxt.addItem(_loc4_);
            }
            _loc3_++;
         }
      }
      
      public function set currentStep(param1:Label) : void
      {
         var _loc2_:Object = this._601215973currentStep;
         if(_loc2_ !== param1)
         {
            this._601215973currentStep = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentStep",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get container2() : Canvas
      {
         return this._145245137container2;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         result.visible = false;
         getHorseRaceRes();
      }
      
      [Bindable(event="propertyChange")]
      public function get todayScore() : Label
      {
         return this._1835012049todayScore;
      }
      
      [Bindable(event="propertyChange")]
      public function get container1() : Canvas
      {
         return this._145245136container1;
      }
      
      [Bindable(event="propertyChange")]
      public function get currentStep() : Label
      {
         return this._601215973currentStep;
      }
      
      private function getHorseRaceRes() : void
      {
         if(load_state != 0)
         {
            _core.remote.call("summerGameHorseRace",null);
            return;
         }
         if(!load)
         {
            load = new Loader();
            load.contentLoaderInfo.addEventListener(Event.COMPLETE,loadComplete);
            load.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,loadError);
            load.load(new URLRequest(ResManager.getResUrl(2080130000469)));
            load_state = 1;
         }
      }
      
      public function set currentStep2(param1:Label) : void
      {
         var _loc2_:Object = this._1457826029currentStep2;
         if(_loc2_ !== param1)
         {
            this._1457826029currentStep2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentStep2",_loc2_,param1));
         }
      }
      
      private function refreshActionsText() : void
      {
         action1.text = "";
         action2.text = "";
         var _loc1_:String = "";
         var _loc2_:String = "";
         if(actions.length > 1)
         {
            action2.text = Language.SUMMER_GAME_PANEL[48 + actions[1]];
            _loc2_ = ResManager.getIconUrl(actionImg[actions[1]]);
         }
         if(actions.length > 0)
         {
            action1.text = Language.SUMMER_GAME_PANEL[48 + actions[0]];
            _loc1_ = ResManager.getIconUrl(actionImg[actions[0]]);
         }
         if(action2Img.source != _loc2_)
         {
            action2Img.source = _loc2_;
         }
         if(action1Img.source != _loc1_)
         {
            action1Img.source = _loc1_;
         }
      }
   }
}

