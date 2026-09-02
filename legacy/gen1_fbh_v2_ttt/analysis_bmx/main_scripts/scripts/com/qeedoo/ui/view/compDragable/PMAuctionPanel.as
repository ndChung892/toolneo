package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.Currency;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LevelSlot;
   import com.qeedoo.ui.view.comp.NumSlot;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Alert;
   import mx.controls.NumericStepper;
   import mx.controls.RadioButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PMAuctionPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3437300pet3:LevelSlot;
      
      public var _PMAuctionPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _100525953item4:NumSlot;
      
      private var _947882863goldCurrency:Currency;
      
      private var _109408723moneyRadioButton:RadioButton;
      
      private var _100525950item1:NumSlot;
      
      public var _PMAuctionPanel_BasicTxtButton10:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton11:BasicTxtButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2039330033moneyCurrency:Currency;
      
      public var _PMAuctionPanel_BasicTxtButton1:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton2:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton3:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton4:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton5:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton7:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton8:BasicTxtButton;
      
      public var _PMAuctionPanel_BasicTxtButton9:BasicTxtButton;
      
      private var _3437298pet1:LevelSlot;
      
      public var _PMAuctionPanel_BasicTxtButton6:BasicTxtButton;
      
      private var _100525952item3:NumSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _3437301pet4:LevelSlot;
      
      private var _905190219moneyMaxCurrency:Currency;
      
      mx_internal var _watchers:Array = [];
      
      private var _maxNum:Number = 10;
      
      private var _289027152auctionTime:NumericStepper;
      
      private var _100525954item5:NumSlot;
      
      private var _1242201835goldMaxCurrency:Currency;
      
      public var _PMAuctionPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _PMAuctionPanel_BasicGlowButton2:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _100525951item2:NumSlot;
      
      private var _286697229costMoney:Currency;
      
      private var _3437299pet2:LevelSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _446420339goldRadioButton:RadioButton;
      
      private var _3437297pet0:LevelSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":333,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PMAuctionPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":371,
                        "height":280,
                        "styleName":"CanvasBorder",
                        "x":14.5,
                        "y":39,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"moneyRadioButton",
                           "events":{"click":"__moneyRadioButton_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "groupName":"selectRadioButton",
                                 "y":13,
                                 "selected":true,
                                 "width":68,
                                 "label":"　　　",
                                 "x":65
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"moneyCurrency",
                           "stylesFactory":function():void
                           {
                              this.disabledOverlayAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "minValue":1,
                                 "value":1,
                                 "inputEnabled":true,
                                 "y":35,
                                 "width":83,
                                 "x":66,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"moneyMaxCurrency",
                           "stylesFactory":function():void
                           {
                              this.disabledOverlayAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "inputEnabled":true,
                                 "y":57,
                                 "height":20,
                                 "width":83,
                                 "x":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"goldRadioButton",
                           "events":{"click":"__goldRadioButton_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "groupName":"selectRadioButton",
                                 "y":90,
                                 "width":68,
                                 "label":"　　　",
                                 "x":65
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"goldCurrency",
                           "stylesFactory":function():void
                           {
                              this.disabledOverlayAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":112,
                                 "minValue":1,
                                 "value":0,
                                 "inputEnabled":true,
                                 "enabled":false,
                                 "height":20,
                                 "width":83,
                                 "x":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"goldMaxCurrency",
                           "stylesFactory":function():void
                           {
                              this.disabledOverlayAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":133,
                                 "inputEnabled":true,
                                 "enabled":false,
                                 "height":20,
                                 "width":83,
                                 "x":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"auctionTime",
                           "events":{"change":"__auctionTime_change"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":68,
                                 "y":175,
                                 "stepSize":1,
                                 "value":24,
                                 "maximum":48,
                                 "width":40,
                                 "height":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Currency,
                           "id":"costMoney",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":200,
                                 "height":20,
                                 "width":76,
                                 "x":68
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PMAuctionPanel_BasicGlowButton1",
                           "events":{"click":"___PMAuctionPanel_BasicGlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "21";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdOrg",
                                 "width":61.7,
                                 "x":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_PMAuctionPanel_BasicGlowButton2",
                           "events":{"click":"___PMAuctionPanel_BasicGlowButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "21";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":86.3,
                                 "styleName":"BtnStdGreen",
                                 "width":61.7
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "stylesFactory":function():void
                           {
                              this.right = "1";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":278,
                                 "width":214,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"item1",
                                    "events":{"doubleClick":"__item1_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":4,
                                          "doubleClickEnabled":true,
                                          "y":33,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"item2",
                                    "events":{"doubleClick":"__item2_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":4,
                                          "doubleClickEnabled":true,
                                          "y":80,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"item3",
                                    "events":{"doubleClick":"__item3_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":4,
                                          "doubleClickEnabled":true,
                                          "y":127,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"item4",
                                    "events":{"doubleClick":"__item4_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":4,
                                          "doubleClickEnabled":true,
                                          "y":173,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"item5",
                                    "events":{"doubleClick":"__item5_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":4,
                                          "doubleClickEnabled":true,
                                          "y":220,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"pet0",
                                    "events":{"doubleClick":"__pet0_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "x":110,
                                          "y":33,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"pet1",
                                    "events":{"doubleClick":"__pet1_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "x":110,
                                          "y":80,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"pet2",
                                    "events":{"doubleClick":"__pet2_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "x":110,
                                          "y":127,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"pet3",
                                    "events":{"doubleClick":"__pet3_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "x":110,
                                          "y":173,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"pet4",
                                    "events":{"doubleClick":"__pet4_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "doubleClickEnabled":true,
                                          "x":110,
                                          "y":220,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PMAuctionPanel_BasicTxtButton1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":22,
                                          "y":10,
                                          "height":18,
                                          "width":50
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_PMAuctionPanel_BasicTxtButton2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":128,
                                          "y":10,
                                          "height":18,
                                          "width":50
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":83,
                                 "y":13,
                                 "height":18,
                                 "width":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":37,
                                 "height":18,
                                 "width":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":60,
                                 "height":18,
                                 "width":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":83,
                                 "y":90,
                                 "height":18,
                                 "width":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton7",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":112,
                                 "height":18,
                                 "width":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton8",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":134,
                                 "height":18,
                                 "width":53
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton9",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.paddingLeft = 0;
                              this.paddingRight = 0;
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":176,
                                 "height":18,
                                 "width":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton10",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.paddingLeft = 0;
                              this.paddingRight = 0;
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":200,
                                 "height":18,
                                 "width":54
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"_PMAuctionPanel_BasicTxtButton11",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.paddingLeft = 0;
                              this.paddingRight = 0;
                              this.paddingTop = 2;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":113,
                                 "y":176,
                                 "height":18,
                                 "width":30
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function PMAuctionPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 333;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___PMAuctionPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PMAuctionPanel._watcherSetupUtil = param1;
      }
      
      public function set item3(param1:NumSlot) : void
      {
         var _loc2_:Object = this._100525952item3;
         if(_loc2_ !== param1)
         {
            this._100525952item3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",_loc2_,param1));
         }
      }
      
      public function set item4(param1:NumSlot) : void
      {
         var _loc2_:Object = this._100525953item4;
         if(_loc2_ !== param1)
         {
            this._100525953item4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",_loc2_,param1));
         }
      }
      
      public function set item5(param1:NumSlot) : void
      {
         var _loc2_:Object = this._100525954item5;
         if(_loc2_ !== param1)
         {
            this._100525954item5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",_loc2_,param1));
         }
      }
      
      public function set pet2(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._3437299pet2;
         if(_loc2_ !== param1)
         {
            this._3437299pet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet2",_loc2_,param1));
         }
      }
      
      public function set item1(param1:NumSlot) : void
      {
         var _loc2_:Object = this._100525950item1;
         if(_loc2_ !== param1)
         {
            this._100525950item1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",_loc2_,param1));
         }
      }
      
      private function _PMAuctionPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTitleCanvas1.text = param1;
         },"_PMAuctionPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            moneyCurrency.type = param1;
         },"moneyCurrency.type");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            moneyMaxCurrency.type = param1;
         },"moneyMaxCurrency.type");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            goldCurrency.type = param1;
         },"goldCurrency.type");
         result[3] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            goldMaxCurrency.type = param1;
         },"goldMaxCurrency.type");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEYALL;
         },function(param1:uint):void
         {
            costMoney.type = param1;
         },"costMoney.type");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicGlowButton1.label = param1;
         },"_PMAuctionPanel_BasicGlowButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicGlowButton2.label = param1;
         },"_PMAuctionPanel_BasicGlowButton2.label");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_ITEM;
         },function(param1:int):void
         {
            item1.slotType = param1;
         },"item1.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_ITEM;
         },function(param1:int):void
         {
            item2.slotType = param1;
         },"item2.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_ITEM;
         },function(param1:int):void
         {
            item3.slotType = param1;
         },"item3.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_ITEM;
         },function(param1:int):void
         {
            item4.slotType = param1;
         },"item4.slotType");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_ITEM;
         },function(param1:int):void
         {
            item5.slotType = param1;
         },"item5.slotType");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_PET;
         },function(param1:int):void
         {
            pet0.slotType = param1;
         },"pet0.slotType");
         result[13] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_PET;
         },function(param1:int):void
         {
            pet1.slotType = param1;
         },"pet1.slotType");
         result[14] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_PET;
         },function(param1:int):void
         {
            pet2.slotType = param1;
         },"pet2.slotType");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_PET;
         },function(param1:int):void
         {
            pet3.slotType = param1;
         },"pet3.slotType");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_AUCTION_PET;
         },function(param1:int):void
         {
            pet4.slotType = param1;
         },"pet4.slotType");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_AUCTION_P[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton1.label = param1;
         },"_PMAuctionPanel_BasicTxtButton1.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PM_AUCTION_P[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton2.label = param1;
         },"_PMAuctionPanel_BasicTxtButton2.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton3.label = param1;
         },"_PMAuctionPanel_BasicTxtButton3.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton4.label = param1;
         },"_PMAuctionPanel_BasicTxtButton4.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton5.label = param1;
         },"_PMAuctionPanel_BasicTxtButton5.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton6.label = param1;
         },"_PMAuctionPanel_BasicTxtButton6.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton7.label = param1;
         },"_PMAuctionPanel_BasicTxtButton7.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton8.label = param1;
         },"_PMAuctionPanel_BasicTxtButton8.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton9.label = param1;
         },"_PMAuctionPanel_BasicTxtButton9.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton10.label = param1;
         },"_PMAuctionPanel_BasicTxtButton10.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUCTIONPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PMAuctionPanel_BasicTxtButton11.label = param1;
         },"_PMAuctionPanel_BasicTxtButton11.label");
         result[28] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldMaxCurrency() : Currency
      {
         return this._1242201835goldMaxCurrency;
      }
      
      public function __item1_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      private function init() : void
      {
         auctionTime.minimum = GamePredef.AUCTION_TIME[0];
         auctionTime.maximum = GamePredef.AUCTION_TIME[1];
         moneyCurrency.addEventListener(Event.CHANGE,setCostMoney);
         moneyMaxCurrency.addEventListener(Event.CHANGE,setCostMoney);
         goldCurrency.addEventListener(Event.CHANGE,setCostMoney);
         goldMaxCurrency.addEventListener(Event.CHANGE,setCostMoney);
      }
      
      public function __item3_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      public function set pet1(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._3437298pet1;
         if(_loc2_ !== param1)
         {
            this._3437298pet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet1",_loc2_,param1));
         }
      }
      
      public function __item5_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      public function set goldCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._947882863goldCurrency;
         if(_loc2_ !== param1)
         {
            this._947882863goldCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldCurrency",_loc2_,param1));
         }
      }
      
      public function set goldMaxCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._1242201835goldMaxCurrency;
         if(_loc2_ !== param1)
         {
            this._1242201835goldMaxCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldMaxCurrency",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyRadioButton() : RadioButton
      {
         return this._109408723moneyRadioButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet4() : LevelSlot
      {
         return this._3437301pet4;
      }
      
      public function set goldRadioButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._446420339goldRadioButton;
         if(_loc2_ !== param1)
         {
            this._446420339goldRadioButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldRadioButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet2() : LevelSlot
      {
         return this._3437299pet2;
      }
      
      private function removePetByIndex(param1:uint) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         if(param1 >= 0 && param1 < 5)
         {
            _loc2_ = uint(this["pet" + param1].giid);
            _loc3_ = _core.player.petList[_loc2_];
            if(_loc3_)
            {
               _loc3_.inAuction = false;
            }
            this["pet" + param1].clean();
            refreshAuctionView();
         }
      }
      
      public function __pet1_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(1);
      }
      
      public function __pet3_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(3);
      }
      
      public function ___PMAuctionPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function addItem(param1:Object) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ <= 5)
         {
            if(this["item" + _loc2_].slotData)
            {
               if(this["item" + _loc2_].slotData == param1)
               {
                  refreshAuctionView();
                  return;
               }
            }
            _loc2_++;
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 5)
         {
            if(this["item" + _loc3_].slotData == null)
            {
               this["item" + _loc3_].type = param1.type;
               this["item" + _loc3_].giid = param1.itemId;
               this["item" + _loc3_].stackNum = param1.stackNum;
               this["item" + _loc3_].slotData = param1;
               _core.view.getSlot(param1.sid).reset();
               refreshAuctionView();
               return;
            }
            _loc3_++;
         }
      }
      
      private function selectType() : void
      {
         if(moneyRadioButton.selected)
         {
            moneyCurrency.enabled = true;
            moneyMaxCurrency.enabled = true;
            goldCurrency.enabled = false;
            goldMaxCurrency.enabled = false;
            moneyCurrency.value = 1;
            moneyMaxCurrency.value = 0;
            goldCurrency.value = 0;
            goldMaxCurrency.value = 0;
         }
         else if(goldRadioButton.selected)
         {
            moneyCurrency.enabled = false;
            moneyMaxCurrency.enabled = false;
            goldCurrency.enabled = true;
            goldMaxCurrency.enabled = true;
            moneyCurrency.value = 0;
            moneyMaxCurrency.value = 0;
            goldCurrency.value = 1;
            goldMaxCurrency.value = 0;
         }
      }
      
      private function removeAndRefreshPet(param1:uint) : void
      {
         removePetByIndex(param1);
         _core.view.getUI(ViewManager.PANEL_BAG).petInit();
      }
      
      public function set moneyRadioButton(param1:RadioButton) : void
      {
         var _loc2_:Object = this._109408723moneyRadioButton;
         if(_loc2_ !== param1)
         {
            this._109408723moneyRadioButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyRadioButton",_loc2_,param1));
         }
      }
      
      private function addAuction() : void
      {
         var _loc4_:* = undefined;
         var _loc1_:Number = 0;
         var _loc2_:Object = {};
         var _loc3_:Number = 0;
         while(_loc3_ <= 4)
         {
            if(this["item" + ToolKit.add(_loc3_,1)].type == -1 || this["item" + ToolKit.add(_loc3_,1)].giid == -1 || !this["item" + ToolKit.add(_loc3_,1)].slotData)
            {
               _loc1_++;
            }
            else if(this["item" + ToolKit.add(_loc3_,1)].giid > 0)
            {
               _loc2_[_loc3_] = new Object();
               _loc2_[_loc3_].type = this["item" + ToolKit.add(_loc3_,1)].type;
               _loc2_[_loc3_].slotId = this["item" + ToolKit.add(_loc3_,1)].slotData.id;
               _loc2_[_loc3_].itemId = this["item" + ToolKit.add(_loc3_,1)].giid;
               _loc2_[_loc3_].petId = -1;
               _loc2_[_loc3_].stackNum = this["item" + ToolKit.add(_loc3_,1)].stackNum;
            }
            if(this["pet" + _loc3_].type == -1 || this["pet" + _loc3_].giid == -1)
            {
               _loc1_++;
            }
            else if(this["pet" + _loc3_].giid > 0)
            {
               _loc2_[ToolKit.add(_loc3_,10)] = new Object();
               _loc2_[ToolKit.add(_loc3_,10)].type = this["pet" + _loc3_].type;
               _loc2_[ToolKit.add(_loc3_,10)].slotId = -1;
               _loc2_[ToolKit.add(_loc3_,10)].petId = this["pet" + _loc3_].giid;
               _loc2_[ToolKit.add(_loc3_,10)].stackNum = 1;
               _loc2_[ToolKit.add(_loc3_,10)].itemId = this["pet" + _loc3_].giid;
            }
            _loc3_++;
         }
         if(Boolean(_loc1_) && ToolKit.isBigOrEqual(_loc1_,_maxNum))
         {
            Alert.show(Language.AUCTIONPANEL_S[3],"",Alert.OK);
            return;
         }
         if(moneyRadioButton.selected && goldRadioButton.selected || !moneyRadioButton.selected && !goldRadioButton.selected)
         {
            Alert.show(Language.AUCTIONPANEL_S[4] + GamePredef.CURRENCY_TIP[0] + Language.AUCTIONPANEL_S[5] + GamePredef.CURRENCY_TIP[1],"",Alert.OK);
            return;
         }
         if(moneyCurrency.value == 0 && moneyMaxCurrency.value == 0 && goldCurrency.value == 0 && goldMaxCurrency.value == 0 || (moneyCurrency.value < 0 || moneyMaxCurrency.value < 0 || goldCurrency.value < 0 || goldMaxCurrency.value < 0) || (moneyCurrency.value != 0 || moneyMaxCurrency.value != 0) && (goldCurrency.value != 0 || goldMaxCurrency.value != 0))
         {
            Alert.show(Language.AUCTIONPANEL_S[6],"",Alert.OK);
            return;
         }
         if(moneyCurrency.value > moneyMaxCurrency.value && moneyMaxCurrency.value != 0 || goldCurrency.value > goldMaxCurrency.value && goldMaxCurrency.value != 0)
         {
            Alert.show(Language.AUCTIONPANEL_S[37],"",Alert.OK);
            return;
         }
         if(auctionTime.value < GamePredef.AUCTION_TIME[0] || auctionTime.value > GamePredef.AUCTION_TIME[1])
         {
            Alert.show(Language.AUCTIONPANEL_S[7],"",Alert.OK);
            return;
         }
         if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,1))
         {
            if(costMoney.value > _core.player.moneyBind)
            {
               Alert.show(Language.AUCTIONPANEL_S[8] + GamePredef.CURRENCY_TIP[2] + "!","",Alert.OK);
               return;
            }
         }
         if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,2))
         {
            if(costMoney.value > _core.player.money)
            {
               Alert.show(Language.AUCTIONPANEL_S[9] + GamePredef.CURRENCY_TIP[0] + "!","",Alert.OK);
               return;
            }
         }
         for(_loc4_ in _loc2_)
         {
            if(_loc2_[_loc4_])
            {
               if(moneyRadioButton.selected)
               {
                  _loc2_[_loc4_].auctionType = 1;
               }
               else if(goldRadioButton.selected)
               {
                  _loc2_[_loc4_].auctionType = 2;
               }
               _loc2_[_loc4_].nowMoney = moneyCurrency.value;
               _loc2_[_loc4_].maxMoney = moneyMaxCurrency.value;
               _loc2_[_loc4_].nowGold = goldCurrency.value;
               _loc2_[_loc4_].maxGold = goldMaxCurrency.value;
               _loc2_[_loc4_].duration = auctionTime.value;
            }
         }
         _core.remote.addAuctionMoreByPM(_loc2_);
         clearAuctionView();
      }
      
      public function set moneyMaxCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._905190219moneyMaxCurrency;
         if(_loc2_ !== param1)
         {
            this._905190219moneyMaxCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyMaxCurrency",_loc2_,param1));
         }
      }
      
      private function _PMAuctionPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.AUCTIONPANEL_U[16];
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Currency.TYPE_MONEYALL;
         _loc1_ = Language.AUCTIONPANEL_U[3];
         _loc1_ = Language.AUCTIONPANEL_U[4];
         _loc1_ = Slot.SLOT_AUCTION_ITEM;
         _loc1_ = Slot.SLOT_AUCTION_ITEM;
         _loc1_ = Slot.SLOT_AUCTION_ITEM;
         _loc1_ = Slot.SLOT_AUCTION_ITEM;
         _loc1_ = Slot.SLOT_AUCTION_ITEM;
         _loc1_ = Slot.SLOT_AUCTION_PET;
         _loc1_ = Slot.SLOT_AUCTION_PET;
         _loc1_ = Slot.SLOT_AUCTION_PET;
         _loc1_ = Slot.SLOT_AUCTION_PET;
         _loc1_ = Slot.SLOT_AUCTION_PET;
         _loc1_ = Language.PM_AUCTION_P[1];
         _loc1_ = Language.PM_AUCTION_P[2];
         _loc1_ = Language.AUCTIONPANEL_U[7];
         _loc1_ = Language.AUCTIONPANEL_U[8];
         _loc1_ = Language.AUCTIONPANEL_U[1];
         _loc1_ = Language.AUCTIONPANEL_U[9];
         _loc1_ = Language.AUCTIONPANEL_U[8];
         _loc1_ = Language.AUCTIONPANEL_U[1];
         _loc1_ = Language.AUCTIONPANEL_U[10];
         _loc1_ = Language.AUCTIONPANEL_U[11];
         _loc1_ = Language.AUCTIONPANEL_U[15];
      }
      
      public function __goldRadioButton_click(param1:MouseEvent) : void
      {
         selectType();
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : NumSlot
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : NumSlot
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item4() : NumSlot
      {
         return this._100525953item4;
      }
      
      public function set auctionTime(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._289027152auctionTime;
         if(_loc2_ !== param1)
         {
            this._289027152auctionTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"auctionTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item5() : NumSlot
      {
         return this._100525954item5;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldRadioButton() : RadioButton
      {
         return this._446420339goldRadioButton;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PMAuctionPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PMAuctionPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PMAuctionPanelWatcherSetupUtil");
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
      public function get goldCurrency() : Currency
      {
         return this._947882863goldCurrency;
      }
      
      public function __item2_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      public function __item4_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : NumSlot
      {
         return this._100525950item1;
      }
      
      private function refreshAuctionView() : void
      {
         var _loc1_:Number = 0;
         var _loc2_:Number = 0;
         while(_loc2_ <= 4)
         {
            if(this["item" + ToolKit.add(_loc2_,1)].giid > 0)
            {
               _loc1_++;
            }
            if(this["pet" + _loc2_].giid > 0)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         if(!_loc1_ || ToolKit.isSmallOrEqual(_loc1_,0))
         {
            clearAuctionView();
            return;
         }
         setCostMoney();
      }
      
      public function ___PMAuctionPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         addAuction();
      }
      
      private function setCostMoney(param1:Event = null) : void
      {
         var _loc2_:Number = 0;
         var _loc3_:Number = 0;
         while(_loc3_ <= 4)
         {
            if(this["item" + ToolKit.add(_loc3_,1)].giid > 0)
            {
               _loc2_++;
            }
            if(this["pet" + _loc3_].giid > 0)
            {
               _loc2_++;
            }
            _loc3_++;
         }
         if(!_loc2_ || ToolKit.isSmallOrEqual(_loc2_,0))
         {
            return;
         }
         costMoney.value = _loc2_ * Math.round((moneyCurrency.value + moneyMaxCurrency.value) / 2 * GamePredef.AUCTION_COSTPERCENT[0] / 100 + (goldCurrency.value + goldMaxCurrency.value) / 2 * GamePredef.AUCTION_COSTPERCENT[1] / 100 + auctionTime.value * GamePredef.AUCTION_TIMENUM);
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyMaxCurrency() : Currency
      {
         return this._905190219moneyMaxCurrency;
      }
      
      [Bindable(event="propertyChange")]
      public function get auctionTime() : NumericStepper
      {
         return this._289027152auctionTime;
      }
      
      public function __pet2_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(2);
      }
      
      private function removeItem(param1:Event) : void
      {
         if(param1.currentTarget.slotData)
         {
            _core.view.getSlot(param1.currentTarget.slotData.sid).restore();
            param1.currentTarget.clean();
            refreshAuctionView();
         }
      }
      
      public function __pet4_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(4);
      }
      
      public function __moneyRadioButton_click(param1:MouseEvent) : void
      {
         selectType();
      }
      
      public function __pet0_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(0);
      }
      
      public function initPmAucPanel() : void
      {
         this.visible = true;
      }
      
      public function set costMoney(param1:Currency) : void
      {
         var _loc2_:Object = this._286697229costMoney;
         if(_loc2_ !== param1)
         {
            this._286697229costMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"costMoney",_loc2_,param1));
         }
      }
      
      public function set pet3(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._3437300pet3;
         if(_loc2_ !== param1)
         {
            this._3437300pet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet3",_loc2_,param1));
         }
      }
      
      public function set moneyCurrency(param1:Currency) : void
      {
         var _loc2_:Object = this._2039330033moneyCurrency;
         if(_loc2_ !== param1)
         {
            this._2039330033moneyCurrency = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyCurrency",_loc2_,param1));
         }
      }
      
      public function set pet4(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._3437301pet4;
         if(_loc2_ !== param1)
         {
            this._3437301pet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet4",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:* = undefined;
         super.visible = param1;
         if(param1 == false)
         {
            clearAuctionView();
            _loc2_ = _core.view.getUI(ViewManager.PANEL_AUCTION);
            if(Boolean(_loc2_) && Boolean(_loc2_.visible))
            {
               return;
            }
            _core.remote.closeAuction();
         }
      }
      
      public function ___PMAuctionPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         clearAuctionView();
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyCurrency() : Currency
      {
         return this._2039330033moneyCurrency;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet1() : LevelSlot
      {
         return this._3437298pet1;
      }
      
      [Bindable(event="propertyChange")]
      public function get costMoney() : Currency
      {
         return this._286697229costMoney;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet3() : LevelSlot
      {
         return this._3437300pet3;
      }
      
      public function addPet(param1:Number, param2:int = -1) : void
      {
         var _loc5_:Object = null;
         var _loc3_:Object = _core.player.petList[param1];
         if(!_loc3_)
         {
            return;
         }
         if(!ToolKit.isEqual(_loc3_.binded,0))
         {
            return;
         }
         if(param2 != -1)
         {
            if(this["pet" + param2].giid != -1)
            {
               _loc5_ = _core.player.petList[this["pet" + param2].giid];
               if(_loc5_)
               {
                  _loc5_.inAuction = false;
               }
            }
            this["pet" + param2].clean();
            _loc3_.inAuction = true;
            this["pet" + param2].type = GamePredef.TBL_PET;
            this["pet" + param2].giid = param1;
            refreshAuctionView();
            return;
         }
         var _loc4_:uint = 0;
         while(_loc4_ < 5)
         {
            if(this["pet" + _loc4_].isEmpty())
            {
               _loc3_.inAuction = true;
               this["pet" + _loc4_].type = GamePredef.TBL_PET;
               this["pet" + _loc4_].giid = param1;
               refreshAuctionView();
               return;
            }
            _loc4_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet0() : LevelSlot
      {
         return this._3437297pet0;
      }
      
      public function set pet0(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._3437297pet0;
         if(_loc2_ !== param1)
         {
            this._3437297pet0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet0",_loc2_,param1));
         }
      }
      
      private function clearAuctionView() : void
      {
         var _loc1_:Number = 0;
         while(_loc1_ <= 4)
         {
            if(!(this["item" + ToolKit.add(_loc1_,1)].type == -1 || this["item" + ToolKit.add(_loc1_,1)].giid == -1 || !this["item" + ToolKit.add(_loc1_,1)].slotData))
            {
               if(this["item" + ToolKit.add(_loc1_,1)].slotData)
               {
                  _core.view.getSlot(this["item" + ToolKit.add(_loc1_,1)].slotData.sid).restore();
               }
               this["item" + ToolKit.add(_loc1_,1)].clean();
            }
            if(!(this["pet" + _loc1_].type == -1 || this["pet" + _loc1_].giid == -1))
            {
               if(this["pet" + _loc1_].giid > 0)
               {
                  removeAndRefreshPet(_loc1_);
               }
            }
            _loc1_++;
         }
         moneyRadioButton.selected = true;
         moneyCurrency.enabled = true;
         moneyMaxCurrency.enabled = true;
         goldCurrency.enabled = false;
         goldMaxCurrency.enabled = false;
         moneyCurrency.value = 1;
         moneyMaxCurrency.value = 0;
         goldCurrency.value = 0;
         goldMaxCurrency.value = 0;
         costMoney.value = 0;
      }
      
      public function set item2(param1:NumSlot) : void
      {
         var _loc2_:Object = this._100525951item2;
         if(_loc2_ !== param1)
         {
            this._100525951item2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",_loc2_,param1));
         }
      }
      
      public function __auctionTime_change(param1:NumericStepperEvent) : void
      {
         setCostMoney();
      }
   }
}

