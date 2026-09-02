package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
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
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TradePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3437300pet3:LevelSlot;
      
      public var _TradePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _100525953item4:NumSlot;
      
      private var _607770528labelSelf:RoundedLabel;
      
      private var _2104895376targetItem4:NumSlot;
      
      private var _236983790confirmButton:BasicGlowButton;
      
      private var _1492307572myMoney:Currency;
      
      private var _486484002targetPet0:LevelSlot;
      
      private var _2104895379targetItem1:NumSlot;
      
      private var _100525950item1:NumSlot;
      
      private var _486484006targetPet4:LevelSlot;
      
      private var _73192869labelTarget:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _486484005targetPet3:LevelSlot;
      
      private var _3437298pet1:LevelSlot;
      
      private var _2101341777targetMoney:Currency;
      
      private var _2104895377targetItem3:NumSlot;
      
      private var _100525952item3:NumSlot;
      
      private var _406719549lockButton:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      private var _3437301pet4:LevelSlot;
      
      public var _TradePanel_BasicGlowButton3:BasicGlowButton;
      
      private var targetId:Number;
      
      private var state:String = "normal";
      
      private var _486484004targetPet2:LevelSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _100525954item5:NumSlot;
      
      private var _2104895375targetItem5:NumSlot;
      
      private var _98750030targetStateInfo:RoundedLabel;
      
      private var _1321841395selfStateInfo:RoundedLabel;
      
      private var _1060418516myGold:Currency;
      
      private var targetName:String;
      
      private var _2104895378targetItem2:NumSlot;
      
      private var _100525951item2:NumSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _486484003targetPet1:LevelSlot;
      
      public var _TradePanel_BasicTxtButton1:BasicTxtButton;
      
      public var _TradePanel_BasicTxtButton2:BasicTxtButton;
      
      public var _TradePanel_BasicTxtButton3:BasicTxtButton;
      
      public var _TradePanel_BasicTxtButton4:BasicTxtButton;
      
      private var _3437299pet2:LevelSlot;
      
      private var _3437297pet0:LevelSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":471,
               "height":449,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TradePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.left = "15";
                     this.right = "15";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"confirmButton",
                           "events":{"click":"__confirmButton_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.bottom = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdGreen",
                                 "width":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"lockButton",
                           "events":{"click":"__lockButton_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "5";
                              this.horizontalCenter = "-58";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_TradePanel_BasicGlowButton3",
                           "events":{"click":"___TradePanel_BasicGlowButton3_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "58";
                              this.bottom = "4";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":48
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":SimpleCanvas,
                           "stylesFactory":function():void
                           {
                              this.left = "1";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":214,
                                 "height":360,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"labelTarget",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16711680;
                                       this.fontSize = 14;
                                       this.horizontalCenter = "0";
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":5,
                                          "width":92
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"targetStateInfo",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":29,
                                          "width":128
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_TradePanel_BasicTxtButton1",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                       this.paddingTop = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":44,
                                          "y":65,
                                          "width":32,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_TradePanel_BasicTxtButton2",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                       this.paddingTop = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":150,
                                          "y":65,
                                          "width":32,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"targetMoney",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":323,
                                          "x":10,
                                          "width":90
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"targetGold",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":323,
                                          "x":116,
                                          "width":90
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"targetItem1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "index":2006,
                                          "x":4,
                                          "y":85,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"targetItem2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "index":2007,
                                          "x":4,
                                          "y":132,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"targetItem3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "index":2008,
                                          "x":4,
                                          "y":178,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"targetItem4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "index":2009,
                                          "x":4,
                                          "y":225,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"targetItem5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "index":2010,
                                          "x":4,
                                          "y":271,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"targetPet0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":110,
                                          "y":85,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"targetPet1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":110,
                                          "y":132,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"targetPet2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":110,
                                          "y":178,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"targetPet3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":110,
                                          "y":225,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":LevelSlot,
                                    "id":"targetPet4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":110,
                                          "y":271,
                                          "styleName":"CanvasShopSlot"
                                       };
                                    }
                                 })]
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
                                 "height":360,
                                 "width":214,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"labelSelf",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.horizontalCenter = "0";
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":5,
                                          "width":90
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"selfStateInfo",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "center";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":29,
                                          "width":128
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_TradePanel_BasicTxtButton3",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                       this.paddingTop = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":44,
                                          "y":65,
                                          "width":32,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_TradePanel_BasicTxtButton4",
                                    "stylesFactory":function():void
                                    {
                                       this.paddingLeft = 0;
                                       this.paddingRight = 0;
                                       this.paddingTop = 1;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":150,
                                          "y":65,
                                          "width":32,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"myMoney",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":323,
                                          "inputEnabled":true,
                                          "x":6,
                                          "width":90
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Currency,
                                    "id":"myGold",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "inputEnabled":true,
                                          "x":112,
                                          "width":90,
                                          "y":323
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumSlot,
                                    "id":"item1",
                                    "events":{"doubleClick":"__item1_doubleClick"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":4,
                                          "index":2001,
                                          "doubleClickEnabled":true,
                                          "y":85,
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
                                          "index":2002,
                                          "doubleClickEnabled":true,
                                          "y":132,
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
                                          "index":2003,
                                          "doubleClickEnabled":true,
                                          "y":178,
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
                                          "index":2004,
                                          "doubleClickEnabled":true,
                                          "y":225,
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
                                          "index":2005,
                                          "doubleClickEnabled":true,
                                          "y":271,
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
                                          "y":85,
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
                                          "y":132,
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
                                          "y":178,
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
                                          "y":225,
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
                                          "y":271,
                                          "styleName":"CanvasShopSlot"
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
      
      private var _486225297targetGold:Currency;
      
      public function TradePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 471;
         this.height = 449;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TradePanel._watcherSetupUtil = param1;
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
      
      public function set item2(param1:NumSlot) : void
      {
         var _loc2_:Object = this._100525951item2;
         if(_loc2_ !== param1)
         {
            this._100525951item2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",_loc2_,param1));
         }
      }
      
      public function set targetItem1(param1:NumSlot) : void
      {
         var _loc2_:Object = this._2104895379targetItem1;
         if(_loc2_ !== param1)
         {
            this._2104895379targetItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetItem1",_loc2_,param1));
         }
      }
      
      public function set selfStateInfo(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1321841395selfStateInfo;
         if(_loc2_ !== param1)
         {
            this._1321841395selfStateInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfStateInfo",_loc2_,param1));
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
      
      [Bindable(event="propertyChange")]
      public function get pet4() : LevelSlot
      {
         return this._3437301pet4;
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
      
      [Bindable(event="propertyChange")]
      public function get confirmButton() : BasicGlowButton
      {
         return this._236983790confirmButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get selfStateInfo() : RoundedLabel
      {
         return this._1321841395selfStateInfo;
      }
      
      public function __item1_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      private function _TradePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TRADEPANEL_U[0];
         _loc1_ = Language.TRADEPANEL_U[0];
         _loc1_ = Language.TRADEPANEL_S[10];
         _loc1_ = Language.TRADEPANEL_U[1];
         _loc1_ = Language.TRADEPANEL_U[2];
         _loc1_ = Language.TRADEPANEL_S[11];
         _loc1_ = Language.TRADEPANEL_S[12];
         _loc1_ = Language.TRADEPANEL_U[3];
         _loc1_ = Language.TRADEPANEL_U[4];
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Language.TRADEPANEL_S[13];
         _loc1_ = Language.TRADEPANEL_S[14];
         _loc1_ = Language.TRADEPANEL_U[3];
         _loc1_ = Language.TRADEPANEL_U[4];
         _loc1_ = Currency.TYPE_MONEY;
         _loc1_ = Currency.TYPE_GOLD;
         _loc1_ = Slot.SLOT_TRADE_ITEM;
         _loc1_ = Slot.SLOT_TRADE_ITEM;
         _loc1_ = Slot.SLOT_TRADE_ITEM;
         _loc1_ = Slot.SLOT_TRADE_ITEM;
         _loc1_ = Slot.SLOT_TRADE_ITEM;
         _loc1_ = Slot.SLOT_TRADE_PET;
         _loc1_ = Slot.SLOT_TRADE_PET;
         _loc1_ = Slot.SLOT_TRADE_PET;
         _loc1_ = Slot.SLOT_TRADE_PET;
         _loc1_ = Slot.SLOT_TRADE_PET;
      }
      
      public function __item5_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      public function set targetItem5(param1:NumSlot) : void
      {
         var _loc2_:Object = this._2104895375targetItem5;
         if(_loc2_ !== param1)
         {
            this._2104895375targetItem5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetItem5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet3() : LevelSlot
      {
         return this._3437300pet3;
      }
      
      public function set confirmButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._236983790confirmButton;
         if(_loc2_ !== param1)
         {
            this._236983790confirmButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confirmButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetPet3() : LevelSlot
      {
         return this._486484005targetPet3;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetPet2() : LevelSlot
      {
         return this._486484004targetPet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetPet4() : LevelSlot
      {
         return this._486484006targetPet4;
      }
      
      public function startTrade() : void
      {
         show();
         labelTarget.text = targetName;
         labelSelf.text = _core.player.name;
         myMoney.maxValue = _core.player.money;
         myGold.maxValue = _core.player.gold;
      }
      
      public function set targetItem3(param1:NumSlot) : void
      {
         var _loc2_:Object = this._2104895377targetItem3;
         if(_loc2_ !== param1)
         {
            this._2104895377targetItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetItem3",_loc2_,param1));
         }
      }
      
      public function __item3_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      public function __confirmButton_click(param1:MouseEvent) : void
      {
         tradeConfirm();
      }
      
      private function _TradePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TradePanel_BasicTitleCanvas1.text = param1;
         },"_TradePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            confirmButton.label = param1;
         },"confirmButton.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lockButton.toolTip = param1;
         },"lockButton.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lockButton.label = param1;
         },"lockButton.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TradePanel_BasicGlowButton3.label = param1;
         },"_TradePanel_BasicGlowButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            labelTarget.text = param1;
         },"labelTarget.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            targetStateInfo.text = param1;
         },"targetStateInfo.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TradePanel_BasicTxtButton1.label = param1;
         },"_TradePanel_BasicTxtButton1.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TradePanel_BasicTxtButton2.label = param1;
         },"_TradePanel_BasicTxtButton2.label");
         result[8] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            targetMoney.type = param1;
         },"targetMoney.type");
         result[9] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            targetGold.type = param1;
         },"targetGold.type");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            labelSelf.text = param1;
         },"labelSelf.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            selfStateInfo.text = param1;
         },"selfStateInfo.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TradePanel_BasicTxtButton3.label = param1;
         },"_TradePanel_BasicTxtButton3.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRADEPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TradePanel_BasicTxtButton4.label = param1;
         },"_TradePanel_BasicTxtButton4.label");
         result[14] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEY;
         },function(param1:uint):void
         {
            myMoney.type = param1;
         },"myMoney.type");
         result[15] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_GOLD;
         },function(param1:uint):void
         {
            myGold.type = param1;
         },"myGold.type");
         result[16] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_ITEM;
         },function(param1:int):void
         {
            item1.slotType = param1;
         },"item1.slotType");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_ITEM;
         },function(param1:int):void
         {
            item2.slotType = param1;
         },"item2.slotType");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_ITEM;
         },function(param1:int):void
         {
            item3.slotType = param1;
         },"item3.slotType");
         result[19] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_ITEM;
         },function(param1:int):void
         {
            item4.slotType = param1;
         },"item4.slotType");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_ITEM;
         },function(param1:int):void
         {
            item5.slotType = param1;
         },"item5.slotType");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_PET;
         },function(param1:int):void
         {
            pet0.slotType = param1;
         },"pet0.slotType");
         result[22] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_PET;
         },function(param1:int):void
         {
            pet1.slotType = param1;
         },"pet1.slotType");
         result[23] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_PET;
         },function(param1:int):void
         {
            pet2.slotType = param1;
         },"pet2.slotType");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_PET;
         },function(param1:int):void
         {
            pet3.slotType = param1;
         },"pet3.slotType");
         result[25] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TRADE_PET;
         },function(param1:int):void
         {
            pet4.slotType = param1;
         },"pet4.slotType");
         result[26] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get lockButton() : BasicGlowButton
      {
         return this._406719549lockButton;
      }
      
      private function removePetByIndex(param1:uint) : void
      {
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         if(state == "normal")
         {
            if(param1 >= 0 && param1 < 5)
            {
               _loc2_ = uint(this["pet" + param1].giid);
               _loc3_ = _core.player.petList[_loc2_];
               if(_loc3_)
               {
                  _loc3_.inTrade = false;
               }
               this["pet" + param1].clean();
            }
         }
      }
      
      override public function hide() : void
      {
         if(visible == false)
         {
            return;
         }
         super.hide();
         _core.remote.call("stopTrade",null);
         tradeClear();
      }
      
      [Bindable(event="propertyChange")]
      public function get targetPet1() : LevelSlot
      {
         return this._486484003targetPet1;
      }
      
      public function set targetPet2(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._486484004targetPet2;
         if(_loc2_ !== param1)
         {
            this._486484004targetPet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetPet2",_loc2_,param1));
         }
      }
      
      public function tradeClear() : void
      {
         state = "normal";
         targetId = -1;
         targetName = "";
         myMoney.inputEnabled = true;
         myGold.inputEnabled = true;
         myMoney.maxValue = 0;
         myGold.maxValue = 0;
         myMoney.value = 0;
         myGold.value = 0;
         targetMoney.maxValue = 0;
         targetGold.maxValue = 0;
         targetMoney.value = 0;
         targetGold.value = 0;
         var _loc1_:int = 1;
         while(_loc1_ <= 5)
         {
            if(this["item" + _loc1_].slotData)
            {
               if(_core.view.getSlot(this["item" + _loc1_].slotData.sid))
               {
                  _core.view.getSlot(this["item" + _loc1_].slotData.sid).restore();
               }
            }
            this["item" + _loc1_].clean();
            this["targetItem" + _loc1_].clean();
            _loc1_++;
         }
         lockButton.enabled = true;
         confirmButton.enabled = true;
         item1.enabled = true;
         item2.enabled = true;
         item3.enabled = true;
         item4.enabled = true;
         item5.enabled = true;
         targetStateInfo.text = Language.TRADEPANEL_S[0];
         selfStateInfo.text = Language.TRADEPANEL_S[1];
         removePet();
         removeTargetPet();
         targetPet0.clean();
      }
      
      public function __pet1_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(1);
      }
      
      public function set targetPet0(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._486484002targetPet0;
         if(_loc2_ !== param1)
         {
            this._486484002targetPet0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetPet0",_loc2_,param1));
         }
      }
      
      public function __pet3_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(3);
      }
      
      public function set targetPet1(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._486484003targetPet1;
         if(_loc2_ !== param1)
         {
            this._486484003targetPet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetPet1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myGold() : Currency
      {
         return this._1060418516myGold;
      }
      
      public function set targetGold(param1:Currency) : void
      {
         var _loc2_:Object = this._486225297targetGold;
         if(_loc2_ !== param1)
         {
            this._486225297targetGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetGold",_loc2_,param1));
         }
      }
      
      public function onTargetConfirm() : void
      {
         targetStateInfo.text = Language.TRADEPANEL_S[7];
      }
      
      public function set targetPet4(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._486484006targetPet4;
         if(_loc2_ !== param1)
         {
            this._486484006targetPet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetPet4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetStateInfo() : RoundedLabel
      {
         return this._98750030targetStateInfo;
      }
      
      private function removeAndRefreshPet(param1:uint) : void
      {
         if(state == "normal")
         {
            removePetByIndex(param1);
            _core.view.getUI(ViewManager.PANEL_BAG).petInit();
         }
      }
      
      public function set myGold(param1:Currency) : void
      {
         var _loc2_:Object = this._1060418516myGold;
         if(_loc2_ !== param1)
         {
            this._1060418516myGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myGold",_loc2_,param1));
         }
      }
      
      public function set labelTarget(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._73192869labelTarget;
         if(_loc2_ !== param1)
         {
            this._73192869labelTarget = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelTarget",_loc2_,param1));
         }
      }
      
      public function addItem(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         if(state == "normal")
         {
            _loc2_ = 1;
            while(_loc2_ <= 5)
            {
               if(this["item" + _loc2_].slotData)
               {
                  if(this["item" + _loc2_].slotData == param1)
                  {
                     return;
                  }
               }
               _loc2_++;
            }
            _loc3_ = 1;
            while(_loc3_ <= 5)
            {
               if(this["item" + _loc3_].slotData == null)
               {
                  this["item" + _loc3_].type = param1.type;
                  this["item" + _loc3_].giid = param1.itemId;
                  this["item" + _loc3_].stackNum = param1.stackNum;
                  this["item" + _loc3_].slotData = param1;
                  _core.view.getSlot(param1.sid).reset();
                  return;
               }
               _loc3_++;
            }
         }
      }
      
      public function set targetMoney(param1:Currency) : void
      {
         var _loc2_:Object = this._2101341777targetMoney;
         if(_loc2_ !== param1)
         {
            this._2101341777targetMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetMoney",_loc2_,param1));
         }
      }
      
      public function set targetPet3(param1:LevelSlot) : void
      {
         var _loc2_:Object = this._486484005targetPet3;
         if(_loc2_ !== param1)
         {
            this._486484005targetPet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetPet3",_loc2_,param1));
         }
      }
      
      public function onStopTrade() : void
      {
         if(visible)
         {
            visible = false;
            tradeClear();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetPet0() : LevelSlot
      {
         return this._486484002targetPet0;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetItem1() : NumSlot
      {
         return this._2104895379targetItem1;
      }
      
      public function ___TradePanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get targetItem5() : NumSlot
      {
         return this._2104895375targetItem5;
      }
      
      [Bindable(event="propertyChange")]
      public function get myMoney() : Currency
      {
         return this._1492307572myMoney;
      }
      
      public function onSelfConfirm(param1:Object) : void
      {
         if(param1 != null)
         {
            if(param1.flag == true)
            {
               confirmButton.enabled = false;
               state = "confirm";
               selfStateInfo.text = Language.TRADEPANEL_S[6];
            }
            else
            {
               _core.sysMidNote(param1.info);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetItem3() : NumSlot
      {
         return this._2104895377targetItem3;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetItem4() : NumSlot
      {
         return this._2104895376targetItem4;
      }
      
      public function set lockButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._406719549lockButton;
         if(_loc2_ !== param1)
         {
            this._406719549lockButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetItem2() : NumSlot
      {
         return this._2104895378targetItem2;
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
      
      [Bindable(event="propertyChange")]
      public function get item5() : NumSlot
      {
         return this._100525954item5;
      }
      
      public function onTradeFail(param1:String) : void
      {
         trace(param1);
         hide();
         _core.sysMidNote(Language.TRADEPANEL_S[8]);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TradePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TradePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TradePanelWatcherSetupUtil");
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
      
      public function onRequestTrade(param1:Number, param2:String) : void
      {
         this.targetId = param1;
         this.targetName = param2;
         startTrade();
      }
      
      public function onSelfLock(param1:Object) : void
      {
         if(param1.flag)
         {
            lockButton.enabled = false;
            myMoney.inputEnabled = false;
            myGold.inputEnabled = false;
            state = "lock";
            selfStateInfo.text = Language.TRADEPANEL_S[2];
         }
         else
         {
            _core.sysMidNote(param1.info);
         }
      }
      
      public function __item4_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      public function set targetStateInfo(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._98750030targetStateInfo;
         if(_loc2_ !== param1)
         {
            this._98750030targetStateInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetStateInfo",_loc2_,param1));
         }
      }
      
      public function __item2_doubleClick(param1:MouseEvent) : void
      {
         removeItem(param1);
      }
      
      public function onTargetLock(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         targetStateInfo.text = Language.TRADEPANEL_S[3];
         targetMoney.value = param1.money;
         targetGold.value = param1.gold;
         var _loc2_:Object = param1.itemList;
         if(_loc2_ != null)
         {
            for(_loc4_ in _loc2_)
            {
               if(_loc2_[_loc4_] != null && _loc2_[_loc4_] != undefined)
               {
                  this["targetItem" + _loc4_].type = _loc2_[_loc4_].type;
                  this["targetItem" + _loc4_].giid = _loc2_[_loc4_].itemId;
                  this["targetItem" + _loc4_].stackNum = _loc2_[_loc4_].stackNum;
               }
            }
         }
         var _loc3_:Object = param1.petIds;
         if(_loc3_)
         {
            for(_loc4_ in _loc3_)
            {
               _loc5_ = int(_loc3_[_loc4_]);
               if(_loc5_ != -1)
               {
                  this["targetPet" + _loc4_].type = GamePredef.TBL_PET;
                  this["targetPet" + _loc4_].giid = _loc5_;
               }
            }
         }
      }
      
      public function onNewTrade(param1:Object) : void
      {
         if(param1)
         {
            if(param1.flag == true)
            {
               startTrade();
            }
            else
            {
               targetId = -1;
               targetName = "";
               _core.sysMidNote(param1.info);
            }
         }
      }
      
      public function newTrade(param1:Number, param2:String) : void
      {
         if(param1 == _core.cid)
         {
            return;
         }
         if(_core.player.actionState == GamePredef.ST_NORMAL)
         {
            this.targetId = param1;
            this.targetName = param2;
            _core.remote.call("newTrade",new Responder(onNewTrade),param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelTarget() : RoundedLabel
      {
         return this._73192869labelTarget;
      }
      
      [Bindable(event="propertyChange")]
      public function get labelSelf() : RoundedLabel
      {
         return this._607770528labelSelf;
      }
      
      [Bindable(event="propertyChange")]
      public function get targetGold() : Currency
      {
         return this._486225297targetGold;
      }
      
      private function removeTargetPet() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ < 5)
         {
            this["targetPet" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      public function onTradeSuccess() : void
      {
         hide();
         _core.sysMidNote(Language.TRADEPANEL_S[9]);
      }
      
      private function tradeLock() : void
      {
         var _loc2_:uint = 0;
         var _loc3_:LevelSlot = null;
         var _loc1_:Object = {};
         _loc1_.money = myMoney.value;
         _loc1_.gold = myGold.value;
         _loc1_.petIds = [];
         _loc2_ = 0;
         while(_loc2_ < 5)
         {
            _loc3_ = this["pet" + _loc2_] as LevelSlot;
            if(_loc3_.isEmpty())
            {
               _loc1_.petIds.push(-1);
            }
            else
            {
               _loc1_.petIds.push(_loc3_.giid);
            }
            _loc2_++;
         }
         if(Boolean(pet0.giid) && Boolean(pet0.giid != -1) && pet0.type != -1)
         {
            _loc1_.petId = pet0.giid;
         }
         else
         {
            _loc1_.petId = -1;
         }
         _loc1_.items = {};
         _loc2_ = 1;
         while(_loc2_ <= 5)
         {
            if(this["item" + _loc2_].slotData)
            {
               _loc1_.items[_loc2_] = this["item" + _loc2_].slotData.id;
            }
            _loc2_++;
         }
         _core.remote.call("tradeLock",new Responder(onSelfLock),_loc1_);
      }
      
      [Bindable(event="propertyChange")]
      public function get targetMoney() : Currency
      {
         return this._2101341777targetMoney;
      }
      
      private function removeItem(param1:Event) : void
      {
         if(state == "normal")
         {
            if(param1.currentTarget.slotData)
            {
               _core.view.getSlot(param1.currentTarget.slotData.sid).restore();
               param1.currentTarget.clean();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : NumSlot
      {
         return this._100525950item1;
      }
      
      public function set labelSelf(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._607770528labelSelf;
         if(_loc2_ !== param1)
         {
            this._607770528labelSelf = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelSelf",_loc2_,param1));
         }
      }
      
      public function addPet(param1:Number, param2:int = -1) : void
      {
         var _loc3_:Object = null;
         var _loc4_:uint = 0;
         var _loc5_:Object = null;
         if(state == "normal")
         {
            _loc3_ = _core.player.petList[param1];
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
                     _loc5_.inTrade = false;
                  }
               }
               this["pet" + param2].clean();
               _loc3_.inTrade = true;
               this["pet" + param2].type = GamePredef.TBL_PET;
               this["pet" + param2].giid = param1;
               return;
            }
            _loc4_ = 0;
            while(_loc4_ < 5)
            {
               if(this["pet" + _loc4_].isEmpty())
               {
                  _loc3_.inTrade = true;
                  this["pet" + _loc4_].type = GamePredef.TBL_PET;
                  this["pet" + _loc4_].giid = param1;
                  return;
               }
               _loc4_++;
            }
         }
      }
      
      private function tradeConfirm() : void
      {
         var num:int = 0;
         var i:uint = 0;
         var petNum:uint = 0;
         var bagpanel:* = undefined;
         var tradeItem:Function = null;
         if(state == "lock")
         {
            num = 0;
            i = 1;
            while(i <= 5)
            {
               if(this["targetItem" + i].giid > 0)
               {
                  num++;
               }
               i++;
            }
            petNum = 0;
            i = 0;
            while(i < 5)
            {
               if(this["targetPet" + i].giid > 0)
               {
                  petNum++;
               }
               i++;
            }
            if(_core.player.enoughBag(num) && _core.player.enoughPetSlot(petNum))
            {
               bagpanel = _core.view.getUI(ViewManager.PANEL_BAG);
               if(Boolean(_core.delPass) && !bagpanel.goldLockFlag)
               {
                  _core.remote.call("tradeConfirm",new Responder(onSelfConfirm),_core.delPass);
               }
               else
               {
                  tradeItem = function(param1:String):void
                  {
                     _core.remote.call("tradeConfirm",new Responder(onSelfConfirm),MD5.hash(param1));
                  };
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.TRADEPANEL_S[14],tradeItem);
               }
            }
            else if(!_core.player.enoughBag(num) && !_core.player.enoughPetSlot(petNum))
            {
               _core.sysMidNote(Language.TRADEPANEL_S[16]);
            }
            else if(!_core.player.enoughBag(num))
            {
               _core.sysMidNote(Language.TRADEPANEL_S[4]);
            }
            else if(!_core.player.enoughPetSlot(petNum))
            {
               _core.sysMidNote(Language.TRADEPANEL_S[15]);
            }
         }
         else
         {
            _core.sysMidNote(Language.TRADEPANEL_S[5]);
         }
      }
      
      public function __pet0_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(0);
      }
      
      public function __pet2_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(2);
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
      
      public function set targetItem2(param1:NumSlot) : void
      {
         var _loc2_:Object = this._2104895378targetItem2;
         if(_loc2_ !== param1)
         {
            this._2104895378targetItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetItem2",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(_core.player)
         {
            if(!param1)
            {
               _core.view.getUI(ViewManager.PANEL_BAG).visible = true;
            }
         }
      }
      
      public function __pet4_doubleClick(param1:MouseEvent) : void
      {
         removeAndRefreshPet(4);
      }
      
      public function set myMoney(param1:Currency) : void
      {
         var _loc2_:Object = this._1492307572myMoney;
         if(_loc2_ !== param1)
         {
            this._1492307572myMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myMoney",_loc2_,param1));
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
      
      public function __lockButton_click(param1:MouseEvent) : void
      {
         tradeLock();
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
      
      [Bindable(event="propertyChange")]
      public function get pet0() : LevelSlot
      {
         return this._3437297pet0;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet1() : LevelSlot
      {
         return this._3437298pet1;
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
      
      public function set targetItem4(param1:NumSlot) : void
      {
         var _loc2_:Object = this._2104895376targetItem4;
         if(_loc2_ !== param1)
         {
            this._2104895376targetItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetItem4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet2() : LevelSlot
      {
         return this._3437299pet2;
      }
      
      private function removePet() : void
      {
         var _loc1_:uint = 0;
         var _loc2_:uint = 0;
         var _loc3_:Object = null;
         if(state == "normal")
         {
            _loc1_ = 0;
            while(_loc1_ < 5)
            {
               _loc2_ = uint(this["pet" + _loc1_].giid);
               _loc3_ = _core.player.petList[_loc2_];
               if(_loc3_)
               {
                  _loc3_.inTrade = false;
               }
               this["pet" + _loc1_].clean();
               _loc1_++;
            }
            _core.view.getUI(ViewManager.PANEL_BAG).petInit();
         }
      }
      
      override public function show() : void
      {
         super.show();
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         _loc1_.startFollow(this);
         _loc1_.show();
      }
   }
}

