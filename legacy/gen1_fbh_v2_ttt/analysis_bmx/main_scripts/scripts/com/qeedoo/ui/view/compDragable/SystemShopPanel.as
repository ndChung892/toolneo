package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicMultiLineButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LimitShopSlot;
   import com.qeedoo.ui.view.comp.LinkTextInput;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.ShopSlot;
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
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.containers.HBox;
   import mx.containers.Tile;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SystemShopPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static var isBuyLimit:Boolean;
      
      public var _SystemShopPanel_BasicTxtButton3:BasicTxtButton;
      
      private var limitShopItem:ArrayCollection = new ArrayCollection();
      
      private var _1141924040shopSlot15:ShopSlot;
      
      public var _SystemShopPanel_BasicTxtButton1:BasicTxtButton;
      
      private var _2115046236shopSlot8:ShopSlot;
      
      private var _2115046240shopSlot4:ShopSlot;
      
      private var _1141924043shopSlot12:ShopSlot;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _543673122limitShopSlot1:LimitShopSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _1247297353tabBtnPoint:BasicGlowButton;
      
      private const ITEM_COUNT_PER_PAGE:int = 20;
      
      private var _2115046244shopSlot0:ShopSlot;
      
      public var _SystemShopPanel_BoxLabel1:BoxLabel;
      
      public var _SystemShopPanel_BoxLabel2:BoxLabel;
      
      public var _SystemShopPanel_BoxLabel3:BoxLabel;
      
      private var _1141924038shopSlot17:ShopSlot;
      
      private var _87929615tabBtnSearch:BasicMultiLineButton;
      
      private var _1123890648radioGoldBind:RadioButton;
      
      private var _1062215115currencyRadioGroup:RadioButtonGroup;
      
      private var _1118612889tabBtnNew:BasicMultiLineButton;
      
      private var myTimer:Timer;
      
      private var _543673124limitShopSlot3:LimitShopSlot;
      
      private var _387922915globalBuy:BasicGlowButton;
      
      private var _selectedSlot:ShopSlot;
      
      private var _1118607430tabBtnHot:BasicMultiLineButton;
      
      private var _2115046237shopSlot7:ShopSlot;
      
      private var _2115046241shopSlot3:ShopSlot;
      
      private var _970616069radioGold:RadioButton;
      
      private var _452648351tabBtnLimitTime:BasicMultiLineButton;
      
      private var _1314872641tileHot:Tile;
      
      private var _1058056547textInput:LinkTextInput;
      
      private var _296707362tabBtnTrolley:BasicGlowButton;
      
      private var _543673126limitShopSlot5:LimitShopSlot;
      
      public var _selectedLimitSlot:LimitShopSlot;
      
      public var _SystemShopPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _SystemShopPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _1141924042shopSlot13:ShopSlot;
      
      private var _1267322019lb_noItem:RoundedLabel;
      
      private var _1141924045shopSlot10:ShopSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private const LIMIT_ITEM_COUNT_PER_PAGE:int = 6;
      
      private var _1141924037shopSlot18:ShopSlot;
      
      public var _SystemShopPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2014444312tabBtnDiscount:BasicMultiLineButton;
      
      private var _1236300784tabBtnDress:BasicGlowButton;
      
      private var _543673121limitShopSlot0:LimitShopSlot;
      
      private var flag0:Boolean = true;
      
      private var flag1:Boolean = true;
      
      private var flag2:Boolean = true;
      
      private var flag3:Boolean = true;
      
      private var flag4:Boolean = true;
      
      private var flag5:Boolean = true;
      
      private var flag6:Boolean = true;
      
      private var _1118614808tabBtnPet:BasicGlowButton;
      
      private var flag8:Boolean = true;
      
      private var flag9:Boolean = true;
      
      private var flag7:Boolean = true;
      
      private var _2115046238shopSlot6:ShopSlot;
      
      private var _2115046242shopSlot2:ShopSlot;
      
      private var _81207RL1:RoundedLabel;
      
      private var firstTimeFlag:Boolean = true;
      
      private var _86586420tabBtnScroll:BasicGlowButton;
      
      private var _543673123limitShopSlot2:LimitShopSlot;
      
      private var _1988561714tabBtnMaterial:BasicGlowButton;
      
      private var _1141924041shopSlot14:ShopSlot;
      
      private var _81208RL2:RoundedLabel;
      
      private var _1276882458tileLimitTime:Tile;
      
      private var _904220074tabBtnTreasure:BasicGlowButton;
      
      private var _2115046235shopSlot9:ShopSlot;
      
      private var _1141924044shopSlot11:ShopSlot;
      
      private var _3178592gold:Button;
      
      private var _1237987865tabBtnFlyer:BasicGlowButton;
      
      private var _1141924036shopSlot19:ShopSlot;
      
      private var _543673125limitShopSlot4:LimitShopSlot;
      
      private var shopItemList:ArrayCollection = null;
      
      private var _1141924039shopSlot16:ShopSlot;
      
      private var _2115046239shopSlot5:ShopSlot;
      
      private var _2115046243shopSlot1:ShopSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _316913168tabBtnBook:BasicGlowButton;
      
      private var _607339634pageSelector:PageSelector;
      
      private var dict:Dictionary = new Dictionary();
      
      private var _1241471484tabBtnJewel:BasicGlowButton;
      
      private var searchResult:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":575,
               "height":405,
               "creationPolicy":"all",
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SystemShopPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_SystemShopPanel_BasicGlowButton1",
                           "events":{"click":"___SystemShopPanel_BasicGlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "199.95";
                              this.bottom = "42";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CrystalYellowButton",
                                 "width":60,
                                 "height":26
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_SystemShopPanel_BasicGlowButton2",
                           "events":{"click":"___SystemShopPanel_BasicGlowButton2_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "42";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":267.95,
                                 "styleName":"CrystalYellowButton",
                                 "width":60,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"globalBuy",
                           "events":{"click":"__globalBuy_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "179.04999";
                              this.bottom = "42";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CrystalYellowButton",
                                 "width":60,
                                 "height":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkTextInput,
                           "id":"textInput",
                           "events":{"enter":"__textInput_enter"},
                           "stylesFactory":function():void
                           {
                              this.left = "35";
                              this.bottom = "42";
                              this.fontSize = 16;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":26,
                                 "width":156.95
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "30";
                              this.bottom = "55";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":20,
                                 "width":125,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":15,
                                          "styleName":"GoldBinded",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"_SystemShopPanel_BoxLabel1",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "22";
                                       this.verticalCenter = "0";
                                       this.textAlign = "left";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":45,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"radioGoldBind",
                                    "events":{"click":"__radioGoldBind_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.right = "35";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "groupName":"currencyRadioGroup",
                                          "width":14
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_SystemShopPanel_BasicTxtButton1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.right = "0";
                                       this.verticalCenter = "0";
                                       this.color = 16776365;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":30,
                                          "height":19
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "30";
                              this.bottom = "30";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":20,
                                 "width":125,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "id":"gold",
                                    "events":{"click":"__gold_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":15,
                                          "styleName":"GoldLocked"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"_SystemShopPanel_BoxLabel2",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "22";
                                       this.verticalCenter = "0";
                                       this.textAlign = "left";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":45,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"radioGold",
                                    "events":{"click":"__radioGold_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.verticalCenter = "0";
                                       this.right = "35";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "groupName":"currencyRadioGroup",
                                          "width":14
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_SystemShopPanel_BasicTxtButton2",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                       this.fontSize = 12;
                                       this.verticalCenter = "0";
                                       this.color = 16776365;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":30,
                                          "height":19
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.right = "30";
                              this.bottom = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":20,
                                 "width":125,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Button,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":20,
                                          "height":15,
                                          "styleName":"ExchangePoint",
                                          "enabled":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BoxLabel,
                                    "id":"_SystemShopPanel_BoxLabel3",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "22";
                                       this.verticalCenter = "0";
                                       this.textAlign = "left";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":45,
                                          "height":18
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_SystemShopPanel_BasicTxtButton3",
                                    "stylesFactory":function():void
                                    {
                                       this.right = "0";
                                       this.fontSize = 12;
                                       this.textAlign = "right";
                                       this.color = 16776365;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":60,
                                          "height":19
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "events":{"mouseDown":"___SystemShopPanel_Canvas5_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.top = "60";
                              this.left = "35";
                              this.right = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":270,
                                 "styleName":"CanvasBorder",
                                 "width":520,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"lb_noItem",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.verticalCenter = "0";
                                       this.fontSize = 14;
                                       this.color = 16711680;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"visible":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Tile,
                                    "id":"tileHot",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.right = "10";
                                       this.top = "10";
                                       this.bottom = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"childDescriptors":[new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot0",
                                          "events":{
                                             "click":"__shopSlot0_click",
                                             "doubleClick":"__shopSlot0_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot1",
                                          "events":{
                                             "click":"__shopSlot1_click",
                                             "doubleClick":"__shopSlot1_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot2",
                                          "events":{
                                             "click":"__shopSlot2_click",
                                             "doubleClick":"__shopSlot2_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot3",
                                          "events":{
                                             "click":"__shopSlot3_click",
                                             "doubleClick":"__shopSlot3_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot4",
                                          "events":{
                                             "click":"__shopSlot4_click",
                                             "doubleClick":"__shopSlot4_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot5",
                                          "events":{
                                             "click":"__shopSlot5_click",
                                             "doubleClick":"__shopSlot5_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot6",
                                          "events":{
                                             "click":"__shopSlot6_click",
                                             "doubleClick":"__shopSlot6_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot7",
                                          "events":{
                                             "click":"__shopSlot7_click",
                                             "doubleClick":"__shopSlot7_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot8",
                                          "events":{
                                             "click":"__shopSlot8_click",
                                             "doubleClick":"__shopSlot8_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot9",
                                          "events":{
                                             "click":"__shopSlot9_click",
                                             "doubleClick":"__shopSlot9_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot10",
                                          "events":{
                                             "click":"__shopSlot10_click",
                                             "doubleClick":"__shopSlot10_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot11",
                                          "events":{
                                             "click":"__shopSlot11_click",
                                             "doubleClick":"__shopSlot11_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot12",
                                          "events":{
                                             "click":"__shopSlot12_click",
                                             "doubleClick":"__shopSlot12_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot13",
                                          "events":{
                                             "click":"__shopSlot13_click",
                                             "doubleClick":"__shopSlot13_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot14",
                                          "events":{
                                             "click":"__shopSlot14_click",
                                             "doubleClick":"__shopSlot14_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot15",
                                          "events":{
                                             "click":"__shopSlot15_click",
                                             "doubleClick":"__shopSlot15_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot16",
                                          "events":{
                                             "click":"__shopSlot16_click",
                                             "doubleClick":"__shopSlot16_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot17",
                                          "events":{
                                             "click":"__shopSlot17_click",
                                             "doubleClick":"__shopSlot17_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot18",
                                          "events":{
                                             "click":"__shopSlot18_click",
                                             "doubleClick":"__shopSlot18_doubleClick"
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":ShopSlot,
                                          "id":"shopSlot19",
                                          "events":{
                                             "click":"__shopSlot19_click",
                                             "doubleClick":"__shopSlot19_doubleClick"
                                          }
                                       })]};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Tile,
                                    "id":"tileLimitTime",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.right = "10";
                                       this.top = "10";
                                       this.bottom = "10";
                                       this.verticalGap = 5;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "visible":false,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":LimitShopSlot,
                                             "id":"limitShopSlot0",
                                             "events":{
                                                "click":"__limitShopSlot0_click",
                                                "doubleClick":"__limitShopSlot0_doubleClick"
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LimitShopSlot,
                                             "id":"limitShopSlot1",
                                             "events":{
                                                "click":"__limitShopSlot1_click",
                                                "doubleClick":"__limitShopSlot1_doubleClick"
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LimitShopSlot,
                                             "id":"limitShopSlot2",
                                             "events":{
                                                "click":"__limitShopSlot2_click",
                                                "doubleClick":"__limitShopSlot2_doubleClick"
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LimitShopSlot,
                                             "id":"limitShopSlot3",
                                             "events":{
                                                "click":"__limitShopSlot3_click",
                                                "doubleClick":"__limitShopSlot3_doubleClick"
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LimitShopSlot,
                                             "id":"limitShopSlot4",
                                             "events":{
                                                "click":"__limitShopSlot4_click",
                                                "doubleClick":"__limitShopSlot4_doubleClick"
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LimitShopSlot,
                                             "id":"limitShopSlot5",
                                             "events":{
                                                "click":"__limitShopSlot5_click",
                                                "doubleClick":"__limitShopSlot5_doubleClick"
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":PageSelector,
                                    "id":"pageSelector",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "6";
                                       this.horizontalCenter = "0";
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalGap = 0;
                              this.left = "45";
                              this.top = "40";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HTabWrapper",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnPet",
                                    "events":{"click":"__tabBtnPet_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnBook",
                                    "events":{"click":"__tabBtnBook_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnTreasure",
                                    "events":{"click":"__tabBtnTreasure_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnDress",
                                    "events":{"click":"__tabBtnDress_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnFlyer",
                                    "events":{"click":"__tabBtnFlyer_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnMaterial",
                                    "events":{"click":"__tabBtnMaterial_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnJewel",
                                    "events":{"click":"__tabBtnJewel_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnScroll",
                                    "events":{"click":"__tabBtnScroll_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtnPoint",
                                    "events":{"click":"__tabBtnPoint_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":51,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "stylesFactory":function():void
                           {
                              this.verticalGap = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":15,
                                 "y":70,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicMultiLineButton,
                                    "id":"tabBtnHot",
                                    "events":{"click":"__tabBtnHot_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"VerticalTab",
                                          "selected":true,
                                          "height":51
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicMultiLineButton,
                                    "id":"tabBtnDiscount",
                                    "events":{"click":"__tabBtnDiscount_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"VerticalTab",
                                          "height":51
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicMultiLineButton,
                                    "id":"tabBtnNew",
                                    "events":{"click":"__tabBtnNew_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"VerticalTab",
                                          "height":51
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicMultiLineButton,
                                    "id":"tabBtnLimitTime",
                                    "events":{"click":"__tabBtnLimitTime_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"VerticalTab",
                                          "height":51
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicMultiLineButton,
                                    "id":"tabBtnSearch",
                                    "events":{"click":"__tabBtnSearch_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"VerticalTab",
                                          "height":51
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"RL1",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.horizontalCenter = "0";
                              this.bottom = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":260,
                                 "x":157.5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"RL2",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.horizontalCenter = "0";
                              this.bottom = "15";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":260,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtnTrolley",
                           "events":{"click":"__tabBtnTrolley_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":503,
                                 "y":40,
                                 "styleName":"HorizontalTab"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _SystemShopPanel_BasicTxtButton2:BasicTxtButton;
      
      public function SystemShopPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 575;
         this.height = 405;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.creationPolicy = "all";
         _SystemShopPanel_RadioButtonGroup1_i();
         this.addEventListener("creationComplete",___SystemShopPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SystemShopPanel._watcherSetupUtil = param1;
      }
      
      public function __tabBtnFlyer_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_FLYER);
      }
      
      public function __shopSlot16_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set tabBtnBook(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._316913168tabBtnBook;
         if(_loc2_ !== param1)
         {
            this._316913168tabBtnBook = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnBook",_loc2_,param1));
         }
      }
      
      public function __shopSlot17_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
         if(Boolean(gold) && param1)
         {
            gold.styleName = "GoldLocked";
         }
         else if(gold)
         {
            gold.styleName = "GoldUnlock";
         }
      }
      
      public function set tabBtnFlyer(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1237987865tabBtnFlyer;
         if(_loc2_ !== param1)
         {
            this._1237987865tabBtnFlyer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnFlyer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnScroll() : BasicGlowButton
      {
         return this._86586420tabBtnScroll;
      }
      
      public function __tabBtnSearch_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_SEARCH);
      }
      
      public function __shopSlot6_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set tileLimitTime(param1:Tile) : void
      {
         var _loc2_:Object = this._1276882458tileLimitTime;
         if(_loc2_ !== param1)
         {
            this._1276882458tileLimitTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileLimitTime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnHot() : BasicMultiLineButton
      {
         return this._1118607430tabBtnHot;
      }
      
      public function __shopSlot0_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get gold() : Button
      {
         return this._3178592gold;
      }
      
      private function callMessageChangable() : void
      {
         myTimer = new Timer(5000,0);
         myTimer.start();
         myTimer.addEventListener(TimerEvent.TIMER,setMessageChangable);
         initDictionary();
         if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultGold,1))
         {
            radioGoldBind.selected = true;
         }
         else if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultGold,2))
         {
            radioGold.selected = true;
         }
         var _loc1_:Boolean = Boolean(_core.view.getUI(ViewManager.PANEL_BAG).goldLockFlag);
         if(_loc1_)
         {
            gold.styleName = "GoldLocked";
         }
         else
         {
            gold.styleName = "GoldUnlock";
         }
      }
      
      public function set tabBtnScroll(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._86586420tabBtnScroll;
         if(_loc2_ !== param1)
         {
            this._86586420tabBtnScroll = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnScroll",_loc2_,param1));
         }
      }
      
      public function set currencyRadioGroup(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._1062215115currencyRadioGroup;
         if(_loc2_ !== param1)
         {
            this._1062215115currencyRadioGroup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyRadioGroup",_loc2_,param1));
         }
      }
      
      private function unSelectAll() : void
      {
         tabBtnHot.selected = false;
         tabBtnDiscount.selected = false;
         tabBtnNew.selected = false;
         tabBtnPet.selected = false;
         tabBtnTreasure.selected = false;
         tabBtnMaterial.selected = false;
         tabBtnJewel.selected = false;
         tabBtnScroll.selected = false;
         tabBtnBook.selected = false;
         tabBtnPoint.selected = false;
         tabBtnDress.selected = false;
         tabBtnFlyer.selected = false;
         tabBtnSearch.selected = false;
         isBuyLimit = tabBtnLimitTime.selected = false;
      }
      
      public function __tabBtnHot_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_HOT);
      }
      
      public function setDefaultGold(param1:int) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         switch(param1)
         {
            case 1:
               if(!ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultGold,1) && Boolean(_loc2_))
               {
                  _loc2_.setDefaultGold(1);
               }
               if(Boolean(radioGold) && Boolean(radioGoldBind))
               {
                  radioGold.enabled = true;
                  radioGoldBind.enabled = true;
                  radioGoldBind.selected = true;
               }
               break;
            case 2:
               if(!ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultGold,2) && Boolean(_loc2_))
               {
                  _loc2_.setDefaultGold(2);
               }
               if(Boolean(radioGold) && Boolean(radioGoldBind))
               {
                  radioGold.enabled = true;
                  radioGoldBind.enabled = true;
                  radioGold.selected = true;
               }
         }
      }
      
      public function __radioGoldBind_click(param1:MouseEvent) : void
      {
         changeMoneyType(param1);
      }
      
      private function onGetLimitTimeShop(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         if(firstTimeFlag)
         {
            if(!(Boolean(param1) && param1.hasOwnProperty("1")))
            {
               pageSelector.onPageChanged = onPageChanged;
               pageSelector.onPageCleared = clearPage;
               setTab(GamePredef.SHOP_TAB_HOT);
               firstTimeFlag = false;
               return;
            }
            unSelectAll();
            isBuyLimit = tileLimitTime.visible = true;
            unSelectedAllLimit();
            tabBtnLimitTime.selected = true;
            firstTimeFlag = false;
         }
         limitShopItem.removeAll();
         for(_loc2_ in param1)
         {
            param1[_loc2_].type = param1[_loc2_].tid;
            limitShopItem.addItem(param1[_loc2_]);
         }
         pageSelector.onPageChanged = onLimitPageChanged;
         pageSelector.initPageSeletor(limitShopItem.length,LIMIT_ITEM_COUNT_PER_PAGE);
         _loc3_ = LIMIT_ITEM_COUNT_PER_PAGE < limitShopItem.length ? LIMIT_ITEM_COUNT_PER_PAGE : limitShopItem.length;
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(limitShopItem[_loc4_])
            {
               this["limitShopSlot" + _loc4_].slotData = limitShopItem[_loc4_];
               this["limitShopSlot" + _loc4_]._startTime = parseAndSetTime(Number(limitShopItem[_loc4_].startTime));
               this["limitShopSlot" + _loc4_]._endTime = parseAndSetTime(Number(limitShopItem[_loc4_].endTime));
               this["limitShopSlot" + _loc4_].visible = true;
               this["limitShopSlot" + _loc4_].st = 3;
            }
            _loc4_++;
         }
      }
      
      public function set tabBtnHot(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1118607430tabBtnHot;
         if(_loc2_ !== param1)
         {
            this._1118607430tabBtnHot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnHot",_loc2_,param1));
         }
      }
      
      public function __shopSlot13_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __shopSlot5_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __limitShopSlot3_click(param1:MouseEvent) : void
      {
         clickLimitHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot2() : ShopSlot
      {
         return this._2115046242shopSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot3() : ShopSlot
      {
         return this._2115046241shopSlot3;
      }
      
      public function __tabBtnDress_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_DRESS);
      }
      
      private function clickHandler(param1:Event) : void
      {
         clearSelection();
         var _loc2_:ShopSlot = ShopSlot(param1.currentTarget);
         _loc2_.selected = true;
         _selectedSlot = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot7() : ShopSlot
      {
         return this._2115046237shopSlot7;
      }
      
      public function __shopSlot11_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot9() : ShopSlot
      {
         return this._2115046235shopSlot9;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot4() : ShopSlot
      {
         return this._2115046240shopSlot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot5() : ShopSlot
      {
         return this._2115046239shopSlot5;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot1() : ShopSlot
      {
         return this._2115046243shopSlot1;
      }
      
      private function initTabs(param1:String) : int
      {
         switch(param1)
         {
            case GamePredef.SHOP_TAB_HOT:
               shopItemList = getShopListByType(GamePredef.SHOP_SELL_TYPE_HOT);
               return 0;
            case GamePredef.SHOP_TAB_DISCOUNT:
               shopItemList = getShopListByType(GamePredef.SHOP_SELL_TYPE_DISCOUNT);
               return 1;
            case GamePredef.SHOP_TAB_LIMIT:
               shopItemList = getShopListByType(GamePredef.SHOP_SELL_TYPE_LIMIT);
               return 10;
            case GamePredef.SHOP_TAB_NEW:
               shopItemList = getShopListByType(GamePredef.SHOP_SELL_TYPE_NEW);
               return 2;
            case GamePredef.SHOP_TAB_PET:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[5]);
               return 3;
            case GamePredef.SHOP_TAB_TREASURE:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[1]);
               return 4;
            case GamePredef.SHOP_TAB_MATERIAL:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[2]);
               return 5;
            case GamePredef.SHOP_TAB_JEWEL:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[0]);
               return 6;
            case GamePredef.SHOP_TAB_SCROLL:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[3]);
               return 7;
            case GamePredef.SHOP_TAB_BOOK:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[4]);
               return 8;
            case GamePredef.SHOP_TAB_POINT:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[15]);
               return 9;
            case GamePredef.SHOP_TAB_DRESS:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[6]);
               return 10;
            case GamePredef.SHOP_TAB_FLYER:
               shopItemList = getShopListByName(Language.SYSTEMSHOPPANEL_S[7]);
               return 11;
            case GamePredef.SHOP_TAB_SEARCH:
               shopItemList = searchResult;
               return 12;
            default:
               return -1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot6() : ShopSlot
      {
         return this._2115046238shopSlot6;
      }
      
      private function dClickLimitHandler(param1:Event) : void
      {
         var _loc2_:LimitShopSlot = LimitShopSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _loc2_.selected = true;
         _selectedLimitSlot = _loc2_;
         buyLimit();
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot0() : ShopSlot
      {
         return this._2115046244shopSlot0;
      }
      
      private function clickLimitHandler(param1:Event) : void
      {
         clearLimitSelection();
         var _loc2_:LimitShopSlot = LimitShopSlot(param1.currentTarget);
         _loc2_.selected = true;
         _selectedLimitSlot = _loc2_;
      }
      
      public function set tabBtnTreasure(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._904220074tabBtnTreasure;
         if(_loc2_ !== param1)
         {
            this._904220074tabBtnTreasure = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnTreasure",_loc2_,param1));
         }
      }
      
      public function set limitTimeItem(param1:Object) : void
      {
         reFreshLimitList(param1);
      }
      
      public function __shopSlot3_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set gold(param1:Button) : void
      {
         var _loc2_:Object = this._3178592gold;
         if(_loc2_ !== param1)
         {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold",_loc2_,param1));
         }
      }
      
      public function set tabBtnLimitTime(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._452648351tabBtnLimitTime;
         if(_loc2_ !== param1)
         {
            this._452648351tabBtnLimitTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnLimitTime",_loc2_,param1));
         }
      }
      
      public function __limitShopSlot5_doubleClick(param1:MouseEvent) : void
      {
         dClickLimitHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot8() : ShopSlot
      {
         return this._2115046236shopSlot8;
      }
      
      public function __gold_click(param1:MouseEvent) : void
      {
         clickLock();
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnMaterial() : BasicGlowButton
      {
         return this._1988561714tabBtnMaterial;
      }
      
      public function buyLimit() : void
      {
         var _loc1_:Number = Number(_selectedLimitSlot.slotData.gold);
         var _loc2_:Number = Number(_selectedLimitSlot.slotData.point);
         var _loc3_:String = _loc1_ > 0 ? Language.SYSTEMSHOPPANEL_U[24].replace("{num}",_loc1_) : Language.SYSTEMSHOPPANEL_U[60].replace("{num}",_loc2_);
         Alert.show(_loc3_,"",Alert.YES | Alert.NO,null,handler);
      }
      
      public function __shopSlot16_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnDiscount() : BasicMultiLineButton
      {
         return this._2014444312tabBtnDiscount;
      }
      
      public function __limitShopSlot2_doubleClick(param1:MouseEvent) : void
      {
         dClickLimitHandler(param1);
      }
      
      public function __tabBtnTrolley_click(param1:MouseEvent) : void
      {
         openShopTrolley();
      }
      
      public function __shopSlot10_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __shopSlot18_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnPet() : BasicGlowButton
      {
         return this._1118614808tabBtnPet;
      }
      
      public function ___SystemShopPanel_Canvas5_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function _SystemShopPanel_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         currencyRadioGroup = _loc1_;
         _loc1_.initialized(this,"currencyRadioGroup");
         return _loc1_;
      }
      
      private function isSystemShopSlot(param1:int) : Boolean
      {
         var _loc2_:* = undefined;
         for(_loc2_ in GamePredef.SYSTEM_SHOP_ID)
         {
            if(param1 == GamePredef.SYSTEM_SHOP_ID[_loc2_])
            {
               return true;
            }
         }
         return false;
      }
      
      public function __tabBtnPoint_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_POINT);
      }
      
      [Bindable(event="propertyChange")]
      public function get RL1() : RoundedLabel
      {
         return this._81207RL1;
      }
      
      [Bindable(event="propertyChange")]
      public function get RL2() : RoundedLabel
      {
         return this._81208RL2;
      }
      
      public function set shopSlot1(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046243shopSlot1;
         if(_loc2_ !== param1)
         {
            this._2115046243shopSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot1",_loc2_,param1));
         }
      }
      
      public function __shopSlot0_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __shopSlot8_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set shopSlot3(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046241shopSlot3;
         if(_loc2_ !== param1)
         {
            this._2115046241shopSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot3",_loc2_,param1));
         }
      }
      
      public function set shopSlot0(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046244shopSlot0;
         if(_loc2_ !== param1)
         {
            this._2115046244shopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot0",_loc2_,param1));
         }
      }
      
      public function set textInput(param1:LinkTextInput) : void
      {
         var _loc2_:Object = this._1058056547textInput;
         if(_loc2_ !== param1)
         {
            this._1058056547textInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textInput",_loc2_,param1));
         }
      }
      
      public function set shopSlot5(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046239shopSlot5;
         if(_loc2_ !== param1)
         {
            this._2115046239shopSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot5",_loc2_,param1));
         }
      }
      
      public function set shopSlot2(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046242shopSlot2;
         if(_loc2_ !== param1)
         {
            this._2115046242shopSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot2",_loc2_,param1));
         }
      }
      
      public function set shopSlot6(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046238shopSlot6;
         if(_loc2_ !== param1)
         {
            this._2115046238shopSlot6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot6",_loc2_,param1));
         }
      }
      
      public function set shopSlot7(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046237shopSlot7;
         if(_loc2_ !== param1)
         {
            this._2115046237shopSlot7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot7",_loc2_,param1));
         }
      }
      
      public function set shopSlot4(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046240shopSlot4;
         if(_loc2_ !== param1)
         {
            this._2115046240shopSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot4",_loc2_,param1));
         }
      }
      
      public function set shopSlot8(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046236shopSlot8;
         if(_loc2_ !== param1)
         {
            this._2115046236shopSlot8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot8",_loc2_,param1));
         }
      }
      
      public function __shopSlot4_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set shopSlot9(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._2115046235shopSlot9;
         if(_loc2_ !== param1)
         {
            this._2115046235shopSlot9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot9",_loc2_,param1));
         }
      }
      
      public function ___SystemShopPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         callMessageChangable();
      }
      
      public function __limitShopSlot2_click(param1:MouseEvent) : void
      {
         clickLimitHandler(param1);
      }
      
      public function __shopSlot10_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function addDataToList(param1:Object) : ArrayCollection
      {
         var _loc3_:Object = null;
         var _loc4_:SortField = null;
         var _loc5_:Sort = null;
         var _loc6_:Object = null;
         var _loc2_:ArrayCollection = new ArrayCollection();
         for each(_loc3_ in param1)
         {
            if(_loc3_ != null)
            {
               _loc6_ = new Object();
               _loc6_.slotData = _loc3_;
               _loc6_.type = _loc3_.type;
               _loc6_.giid = _loc3_.itemId;
               _loc6_.position = _loc3_.position;
               _loc6_.st = _loc3_.st;
               if(!(_loc6_.st == 3 && !isSystemShopSlot(_loc6_.slotData.sid)))
               {
                  if(_loc6_.st != GamePredef.SHOP_SELL_TYPE_HIDE)
                  {
                     _loc2_.addItem(_loc6_);
                  }
               }
            }
         }
         _loc4_ = new SortField();
         _loc4_.name = "position";
         _loc5_ = new Sort();
         _loc5_.fields = [_loc4_];
         _loc4_.numeric = true;
         _loc2_.sort = _loc5_;
         _loc2_.refresh();
         return _loc2_;
      }
      
      public function __shopSlot15_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __shopSlot9_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set tileHot(param1:Tile) : void
      {
         var _loc2_:Object = this._1314872641tileHot;
         if(_loc2_ !== param1)
         {
            this._1314872641tileHot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tileHot",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnNew() : BasicMultiLineButton
      {
         return this._1118612889tabBtnNew;
      }
      
      public function set tabBtnMaterial(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1988561714tabBtnMaterial;
         if(_loc2_ !== param1)
         {
            this._1988561714tabBtnMaterial = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnMaterial",_loc2_,param1));
         }
      }
      
      public function __tabBtnScroll_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_SCROLL);
      }
      
      public function __shopSlot15_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __tabBtnJewel_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_JEWEL);
      }
      
      private function search() : void
      {
         var _loc3_:String = null;
         var _loc4_:SortField = null;
         var _loc5_:Sort = null;
         var _loc6_:Object = null;
         var _loc1_:String = textInput.text;
         if(_loc1_ == "")
         {
            return;
         }
         var _loc2_:ArrayCollection = new ArrayCollection();
         for(_loc3_ in dict)
         {
            if(_loc3_.indexOf(_loc1_) >= 0)
            {
               for each(_loc6_ in dict[_loc3_])
               {
                  _loc2_.addItem(_loc6_);
               }
            }
         }
         _loc4_ = new SortField();
         _loc4_.name = "position";
         _loc5_ = new Sort();
         _loc5_.fields = [_loc4_];
         _loc4_.numeric = true;
         _loc2_.sort = _loc5_;
         _loc2_.refresh();
         searchResult = _loc2_;
         setTab(GamePredef.SHOP_TAB_SEARCH);
      }
      
      public function __shopSlot5_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set tabBtnTrolley(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._296707362tabBtnTrolley;
         if(_loc2_ !== param1)
         {
            this._296707362tabBtnTrolley = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnTrolley",_loc2_,param1));
         }
      }
      
      private function clearSelection() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            this["shopSlot" + _loc1_].selected = false;
            _loc1_++;
         }
      }
      
      private function initDictionary() : void
      {
         var _loc3_:ArrayCollection = null;
         var _loc4_:int = 0;
         var _loc1_:Array = [0,1,2,3,4,5,6,7,15];
         var _loc2_:int = 0;
         while(_loc2_ < _loc1_.length)
         {
            _loc3_ = getShopListByName(Language.SYSTEMSHOPPANEL_S[_loc1_[_loc2_]]);
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               getItemInfo(_loc3_[_loc4_].type,_loc3_[_loc4_].giid,_loc3_[_loc4_]);
               _loc4_++;
            }
            _loc2_++;
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            this["shopSlot" + _loc4_].type = shopItemList[_loc3_].type;
            this["shopSlot" + _loc4_].slotData = shopItemList[_loc3_].slotData;
            this["shopSlot" + _loc4_].stackNum = shopItemList[_loc3_].stackNum;
            this["shopSlot" + _loc4_].giid = shopItemList[_loc3_].giid;
            this["shopSlot" + _loc4_].st = shopItemList[_loc3_].st;
            this["shopSlot" + _loc4_].visible = true;
            _loc4_++;
         }
         if(_selectedSlot)
         {
            _selectedSlot.selected = false;
            _selectedSlot = null;
         }
      }
      
      public function set tabBtnDiscount(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._2014444312tabBtnDiscount;
         if(_loc2_ !== param1)
         {
            this._2014444312tabBtnDiscount = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnDiscount",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get radioGoldBind() : RadioButton
      {
         return this._1123890648radioGoldBind;
      }
      
      public function set radioGold(param1:RadioButton) : void
      {
         var _loc2_:Object = this._970616069radioGold;
         if(_loc2_ !== param1)
         {
            this._970616069radioGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioGold",_loc2_,param1));
         }
      }
      
      public function doBuy(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:NumPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            if(Boolean(_selectedSlot) && !isBuyLimit)
            {
               _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
               _loc3_.numStepper.enabled = true;
               _loc3_.parent = this;
               _loc3_.showSelected(_selectedSlot,null,NumPanel.TYPE_BUY,buySelected);
               _loc3_.closeWith(this);
               return;
            }
            if(Boolean(_selectedLimitSlot) && isBuyLimit)
            {
               _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
               if(12 == _selectedLimitSlot.slotData.tid)
               {
                  _loc3_.numStepper.value = 1;
                  _loc3_.numStepper.enabled = false;
               }
               else
               {
                  _loc3_.numStepper.enabled = true;
               }
               _loc3_.parent = this;
               _loc3_.showSelected(_selectedLimitSlot,null,NumPanel.TYPE_BUY,buyLimitSelected);
               _loc3_.closeWith(this);
               return;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnJewel() : BasicGlowButton
      {
         return this._1241471484tabBtnJewel;
      }
      
      public function __limitShopSlot4_doubleClick(param1:MouseEvent) : void
      {
         dClickLimitHandler(param1);
      }
      
      public function __limitShopSlot1_click(param1:MouseEvent) : void
      {
         clickLimitHandler(param1);
      }
      
      public function __shopSlot3_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnBook() : BasicGlowButton
      {
         return this._316913168tabBtnBook;
      }
      
      public function setPage(param1:String) : void
      {
         setTab(param1);
      }
      
      public function __shopSlot12_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnFlyer() : BasicGlowButton
      {
         return this._1237987865tabBtnFlyer;
      }
      
      [Bindable(event="propertyChange")]
      public function get tileLimitTime() : Tile
      {
         return this._1276882458tileLimitTime;
      }
      
      public function set tabBtnSearch(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._87929615tabBtnSearch;
         if(_loc2_ !== param1)
         {
            this._87929615tabBtnSearch = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnSearch",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyRadioGroup() : RadioButtonGroup
      {
         return this._1062215115currencyRadioGroup;
      }
      
      public function __shopSlot2_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set tabBtnPet(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1118614808tabBtnPet;
         if(_loc2_ !== param1)
         {
            this._1118614808tabBtnPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnPet",_loc2_,param1));
         }
      }
      
      public function buyStarAddItem() : void
      {
         var _loc1_:Object = GameData.d[GamePredef.TBL_SHOP_SLOT][4165];
         var _loc2_:ShopSlot = new ShopSlot();
         _loc2_.giid = _loc1_.itemId;
         _loc2_.type = _loc1_.type;
         _loc2_.slotData = _loc1_;
         _selectedSlot = _loc2_;
         if(isBuyLimit)
         {
            isBuyLimit = false;
            buy();
            isBuyLimit = true;
         }
         else
         {
            buy();
         }
      }
      
      public function __tabBtnTreasure_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_TREASURE);
      }
      
      public function set limitShopSlot0(param1:LimitShopSlot) : void
      {
         var _loc2_:Object = this._543673121limitShopSlot0;
         if(_loc2_ !== param1)
         {
            this._543673121limitShopSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitShopSlot0",_loc2_,param1));
         }
      }
      
      public function set limitShopSlot3(param1:LimitShopSlot) : void
      {
         var _loc2_:Object = this._543673124limitShopSlot3;
         if(_loc2_ !== param1)
         {
            this._543673124limitShopSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitShopSlot3",_loc2_,param1));
         }
      }
      
      private function changeMoneyType(param1:Event) : void
      {
         switch(param1.currentTarget.id)
         {
            case "radioGoldBind":
               radioGold.enabled = false;
               radioGoldBind.enabled = false;
               _core.remote.call("changeMoneyType",new Responder(onChangeMoneyType),3);
               break;
            case "radioGold":
               radioGold.enabled = false;
               radioGoldBind.enabled = false;
               _core.remote.call("changeMoneyType",new Responder(onChangeMoneyType),4);
         }
      }
      
      private function getShopListByName(param1:String) : ArrayCollection
      {
         var _loc3_:* = undefined;
         var _loc2_:Object = _core.data.gameDataIndex[GamePredef.TBL_SHOP][param1];
         for(_loc3_ in _loc2_)
         {
            if(_loc2_[_loc3_])
            {
               return addDataToList(_core.data.gameDataIndex[GamePredef.TBL_SHOP_SLOT][_loc2_[_loc3_].id]);
            }
         }
         return null;
      }
      
      public function __shopSlot8_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set limitShopSlot2(param1:LimitShopSlot) : void
      {
         var _loc2_:Object = this._543673123limitShopSlot2;
         if(_loc2_ !== param1)
         {
            this._543673123limitShopSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitShopSlot2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnTreasure() : BasicGlowButton
      {
         return this._904220074tabBtnTreasure;
      }
      
      public function __tabBtnLimitTime_click(param1:MouseEvent) : void
      {
         setLimitTimeTab();
      }
      
      public function set limitShopSlot1(param1:LimitShopSlot) : void
      {
         var _loc2_:Object = this._543673122limitShopSlot1;
         if(_loc2_ !== param1)
         {
            this._543673122limitShopSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitShopSlot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnLimitTime() : BasicMultiLineButton
      {
         return this._452648351tabBtnLimitTime;
      }
      
      public function set limitShopSlot4(param1:LimitShopSlot) : void
      {
         var _loc2_:Object = this._543673125limitShopSlot4;
         if(_loc2_ !== param1)
         {
            this._543673125limitShopSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitShopSlot4",_loc2_,param1));
         }
      }
      
      public function __globalBuy_click(param1:MouseEvent) : void
      {
         buyStyle();
      }
      
      public function set shopSlot10(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924045shopSlot10;
         if(_loc2_ !== param1)
         {
            this._1141924045shopSlot10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot10",_loc2_,param1));
         }
      }
      
      public function __shopSlot14_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set shopSlot11(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924044shopSlot11;
         if(_loc2_ !== param1)
         {
            this._1141924044shopSlot11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot11",_loc2_,param1));
         }
      }
      
      private function onLimitPageChanged(param1:int, param2:*) : void
      {
         var _loc3_:int = 0;
         unSelectedAllLimit();
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = param1 + _loc4_;
            if(limitShopItem[_loc3_])
            {
               this["limitShopSlot" + _loc4_].slotData = limitShopItem[_loc3_];
               this["limitShopSlot" + _loc4_]._startTime = parseAndSetTime(Number(limitShopItem[_loc3_].startTime));
               this["limitShopSlot" + _loc4_]._endTime = parseAndSetTime(Number(limitShopItem[_loc3_].endTime));
               this["limitShopSlot" + _loc4_].visible = true;
               this["limitShopSlot" + _loc4_].st = 3;
            }
            _loc4_++;
         }
      }
      
      public function setMessageChangable(param1:TimerEvent) : void
      {
         RL1.visible = !RL1.visible;
         RL2.visible = !RL2.visible;
      }
      
      public function onChangeMoneyType(param1:Object) : void
      {
         if(param1.flag)
         {
            switch(param1.num)
            {
               case 3:
                  setDefaultGold(1);
                  break;
               case 4:
                  setDefaultGold(2);
            }
         }
      }
      
      public function set shopSlot13(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924042shopSlot13;
         if(_loc2_ !== param1)
         {
            this._1141924042shopSlot13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot13",_loc2_,param1));
         }
      }
      
      public function set RL1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._81207RL1;
         if(_loc2_ !== param1)
         {
            this._81207RL1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RL1",_loc2_,param1));
         }
      }
      
      public function set RL2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._81208RL2;
         if(_loc2_ !== param1)
         {
            this._81208RL2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"RL2",_loc2_,param1));
         }
      }
      
      public function set shopSlot12(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924043shopSlot12;
         if(_loc2_ !== param1)
         {
            this._1141924043shopSlot12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot12",_loc2_,param1));
         }
      }
      
      public function set shopSlot16(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924039shopSlot16;
         if(_loc2_ !== param1)
         {
            this._1141924039shopSlot16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot16",_loc2_,param1));
         }
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function set shopSlot17(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924038shopSlot17;
         if(_loc2_ !== param1)
         {
            this._1141924038shopSlot17 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot17",_loc2_,param1));
         }
      }
      
      public function set shopSlot14(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924041shopSlot14;
         if(_loc2_ !== param1)
         {
            this._1141924041shopSlot14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot14",_loc2_,param1));
         }
      }
      
      public function set shopSlot15(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924040shopSlot15;
         if(_loc2_ !== param1)
         {
            this._1141924040shopSlot15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot15",_loc2_,param1));
         }
      }
      
      public function __tabBtnBook_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_BOOK);
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < ITEM_COUNT_PER_PAGE)
         {
            this["shopSlot" + _loc1_].st = -1;
            this["shopSlot" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      private function doLimitBuy(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:NumPanel = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_BAG);
            if(Boolean(_loc2_) && Boolean(_loc2_.goldSelected))
            {
               _loc2_.goldLockFlag = false;
            }
            if(_selectedLimitSlot)
            {
               _loc3_ = NumPanel(_core.view.getUI(ViewManager.PANEL_NUM));
               _loc3_.showSelected(_selectedLimitSlot,null,NumPanel.TYPE_BUY,buyLimitSelected);
               _loc3_.closeWith(this);
               _loc3_.parent = this;
            }
         }
      }
      
      private function reFreshLimitList(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc5_:int = 0;
         limitShopItem.removeAll();
         for(_loc2_ in param1)
         {
            limitShopItem.addItem(param1[_loc2_]);
         }
         _loc3_ = LIMIT_ITEM_COUNT_PER_PAGE < limitShopItem.length - pageSelector.pageNo * LIMIT_ITEM_COUNT_PER_PAGE ? LIMIT_ITEM_COUNT_PER_PAGE : int(limitShopItem.length - pageSelector.pageNo * LIMIT_ITEM_COUNT_PER_PAGE);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = pageSelector.pageNo * LIMIT_ITEM_COUNT_PER_PAGE + _loc4_;
            if(limitShopItem[_loc5_] != null)
            {
               this["limitShopSlot" + _loc4_].slotData = limitShopItem[_loc5_];
               this["limitShopSlot" + _loc4_]._startTime = parseAndSetTime(Number(limitShopItem[_loc5_].startTime));
               this["limitShopSlot" + _loc4_]._endTime = parseAndSetTime(Number(limitShopItem[_loc5_].endTime));
               this["limitShopSlot" + _loc4_].visible = true;
               this["limitShopSlot" + _loc4_].st = 3;
            }
            _loc4_++;
         }
      }
      
      public function set shopSlot19(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924036shopSlot19;
         if(_loc2_ !== param1)
         {
            this._1141924036shopSlot19 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot19",_loc2_,param1));
         }
      }
      
      public function __limitShopSlot1_doubleClick(param1:MouseEvent) : void
      {
         dClickLimitHandler(param1);
      }
      
      public function set limitShopSlot5(param1:LimitShopSlot) : void
      {
         var _loc2_:Object = this._543673126limitShopSlot5;
         if(_loc2_ !== param1)
         {
            this._543673126limitShopSlot5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitShopSlot5",_loc2_,param1));
         }
      }
      
      private function buy() : void
      {
         var bagpanel:Object = _core.view.getUI(ViewManager.PANEL_BAG);
         var func:Function = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuy),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuy(true);
         }
      }
      
      public function set shopSlot18(param1:ShopSlot) : void
      {
         var _loc2_:Object = this._1141924037shopSlot18;
         if(_loc2_ !== param1)
         {
            this._1141924037shopSlot18 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot18",_loc2_,param1));
         }
      }
      
      private function buyLimitSelected(param1:int) : void
      {
         _core.remote.call("buyLimitTimeItem",null,_selectedLimitSlot.slotData.id,param1);
      }
      
      public function __shopSlot17_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      private function _SystemShopPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[14];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[48];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[12];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[13];
         _loc1_ = _core.player.goldBind;
         _loc1_ = Language.BAGPANEL_S[16];
         _loc1_ = Language.BAGPANEL_U[8];
         _loc1_ = Language.BAGPANEL_S[18];
         _loc1_ = _core.player.gold;
         _loc1_ = Language.BAGPANEL_S[17];
         _loc1_ = Language.BAGPANEL_U[9];
         _loc1_ = _core.player.exPoint;
         _loc1_ = Language.SYSTEMSHOPPANEL_U[50];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[45];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[0];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[3];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[15];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[4];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[46];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[47];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[5];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[6];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[7];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[9];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[0];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[1];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[2];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[20];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[49];
         _loc1_ = Language.SYSTEMSHOPPANEL_S[11];
         _loc1_ = Language.SYSTEMSHOPPANEL_S[12];
         _loc1_ = Language.SYSTEMSHOPPANEL_S[16];
         _loc1_ = Language.SYSTEMSHOPPANEL_S[12];
         _loc1_ = Language.SYSTEMSHOPPANEL_U[25];
      }
      
      public function set tabBtnPoint(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1247297353tabBtnPoint;
         if(_loc2_ !== param1)
         {
            this._1247297353tabBtnPoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnPoint",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get textInput() : LinkTextInput
      {
         return this._1058056547textInput;
      }
      
      public function __shopSlot19_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __tabBtnMaterial_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_MATERIAL);
      }
      
      public function set lb_noItem(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1267322019lb_noItem;
         if(_loc2_ !== param1)
         {
            this._1267322019lb_noItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_noItem",_loc2_,param1));
         }
      }
      
      public function __shopSlot7_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get tileHot() : Tile
      {
         return this._1314872641tileHot;
      }
      
      public function __shopSlot2_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __limitShopSlot0_click(param1:MouseEvent) : void
      {
         clickLimitHandler(param1);
      }
      
      private function buyStyle() : void
      {
         if(isBuyLimit)
         {
            buyLimit();
         }
         else
         {
            buy();
         }
      }
      
      private function setLimitTimeTab() : void
      {
         unSelectAll();
         isBuyLimit = tileLimitTime.visible = true;
         tileHot.visible = false;
         unSelectedAllLimit();
         tabBtnLimitTime.selected = true;
         _core.remote.call("getLimitTimeShop",new Responder(onGetLimitTimeShop));
         pageSelector.onPageChanged = onLimitPageChanged;
         pageSelector.initPageSeletor(limitShopItem.length,LIMIT_ITEM_COUNT_PER_PAGE);
         if(limitShopItem.length == 0)
         {
            lb_noItem.visible = true;
         }
         else
         {
            lb_noItem.visible = false;
         }
      }
      
      private function clickLock() : void
      {
         var gfunc:Function = null;
         var goldLockFlag:Boolean = Boolean(_core.view.getUI(ViewManager.PANEL_BAG).goldLockFlag);
         if(goldLockFlag)
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
         }
         else
         {
            setGoldLock(true);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnTrolley() : BasicGlowButton
      {
         return this._296707362tabBtnTrolley;
      }
      
      private function openShopTrolley() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP_TROLLEY);
         _loc1_.getAcDetailText();
         if(_loc1_.visible == false)
         {
            _loc1_.show();
         }
         else
         {
            _loc1_.hide();
         }
      }
      
      public function __textInput_enter(param1:FlexEvent) : void
      {
         search();
      }
      
      private function getShopListByType(param1:String) : ArrayCollection
      {
         return addDataToList(_core.data.gameDataIndex2[GamePredef.TBL_SHOP_SLOT][param1]);
      }
      
      [Bindable(event="propertyChange")]
      public function get radioGold() : RadioButton
      {
         return this._970616069radioGold;
      }
      
      public function __shopSlot7_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function unSelectedAllLimit() : void
      {
         var _loc1_:* = 0;
         while(_loc1_ < LIMIT_ITEM_COUNT_PER_PAGE)
         {
            this["limitShopSlot" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function __shopSlot14_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      public function __limitShopSlot5_click(param1:MouseEvent) : void
      {
         clickLimitHandler(param1);
      }
      
      public function __shopSlot13_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get limitShopSlot0() : LimitShopSlot
      {
         return this._543673121limitShopSlot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get limitShopSlot1() : LimitShopSlot
      {
         return this._543673122limitShopSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get limitShopSlot2() : LimitShopSlot
      {
         return this._543673123limitShopSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get limitShopSlot3() : LimitShopSlot
      {
         return this._543673124limitShopSlot3;
      }
      
      [Bindable(event="propertyChange")]
      public function get limitShopSlot4() : LimitShopSlot
      {
         return this._543673125limitShopSlot4;
      }
      
      private function dClickHandler(param1:Event) : void
      {
         var _loc2_:ShopSlot = ShopSlot(param1.currentTarget);
         if(_loc2_.giid < 0)
         {
            return;
         }
         _loc2_.selected = true;
         buy();
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnSearch() : BasicMultiLineButton
      {
         return this._87929615tabBtnSearch;
      }
      
      [Bindable(event="propertyChange")]
      public function get limitShopSlot5() : LimitShopSlot
      {
         return this._543673126limitShopSlot5;
      }
      
      public function set tabBtnNew(param1:BasicMultiLineButton) : void
      {
         var _loc2_:Object = this._1118612889tabBtnNew;
         if(_loc2_ !== param1)
         {
            this._1118612889tabBtnNew = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnNew",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot10() : ShopSlot
      {
         return this._1141924045shopSlot10;
      }
      
      public function ___SystemShopPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         _core.view.changeVisible(ViewManager.PANEL_EXCHANGE);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot12() : ShopSlot
      {
         return this._1141924043shopSlot12;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot13() : ShopSlot
      {
         return this._1141924042shopSlot13;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot14() : ShopSlot
      {
         return this._1141924041shopSlot14;
      }
      
      public function __shopSlot4_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot16() : ShopSlot
      {
         return this._1141924039shopSlot16;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot17() : ShopSlot
      {
         return this._1141924038shopSlot17;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot18() : ShopSlot
      {
         return this._1141924037shopSlot18;
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot15() : ShopSlot
      {
         return this._1141924040shopSlot15;
      }
      
      private function buySelected(param1:int) : void
      {
         _core.remote.buySystemItemClient(_selectedSlot.slotData.id,param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot19() : ShopSlot
      {
         return this._1141924036shopSlot19;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnPoint() : BasicGlowButton
      {
         return this._1247297353tabBtnPoint;
      }
      
      private function handler(param1:CloseEvent) : void
      {
         var point:Number;
         var func:Function;
         var bagpanel:Object;
         var event:CloseEvent = param1;
         if(event != null && event.detail != Alert.YES)
         {
            return;
         }
         point = Number(_selectedLimitSlot.slotData.point);
         if(point > _core.player.exPoint)
         {
            Alert.show(Language.SYSTEMSHOPPANEL_U[61]);
            return;
         }
         if(point > 0)
         {
            doBuy(true);
            return;
         }
         bagpanel = _core.view.getUI(ViewManager.PANEL_BAG);
         func = function(param1:String):void
         {
            _core.remote.call("unlockMoney",new Responder(doBuy),MD5.hash(param1));
         };
         if(bagpanel.goldDisable())
         {
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],func);
         }
         else
         {
            doBuy(true);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get shopSlot11() : ShopSlot
      {
         return this._1141924044shopSlot11;
      }
      
      public function __tabBtnDiscount_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_DISCOUNT);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_noItem() : RoundedLabel
      {
         return this._1267322019lb_noItem;
      }
      
      public function __radioGold_click(param1:MouseEvent) : void
      {
         changeMoneyType(param1);
      }
      
      public function __shopSlot18_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _SystemShopPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BasicTitleCanvas1.text = param1;
         },"_SystemShopPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BasicGlowButton1.label = param1;
         },"_SystemShopPanel_BasicGlowButton1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BasicGlowButton2.label = param1;
         },"_SystemShopPanel_BasicGlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            globalBuy.label = param1;
         },"globalBuy.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.goldBind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BoxLabel1.text = param1;
         },"_SystemShopPanel_BoxLabel1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BAGPANEL_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            radioGoldBind.toolTip = param1;
         },"radioGoldBind.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BAGPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BasicTxtButton1.label = param1;
         },"_SystemShopPanel_BasicTxtButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BAGPANEL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gold.toolTip = param1;
         },"gold.toolTip");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.gold;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BoxLabel2.text = param1;
         },"_SystemShopPanel_BoxLabel2.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BAGPANEL_S[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            radioGold.toolTip = param1;
         },"radioGold.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.BAGPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BasicTxtButton2.label = param1;
         },"_SystemShopPanel_BasicTxtButton2.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.exPoint;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BoxLabel3.text = param1;
         },"_SystemShopPanel_BoxLabel3.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SystemShopPanel_BasicTxtButton3.label = param1;
         },"_SystemShopPanel_BasicTxtButton3.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lb_noItem.text = param1;
         },"lb_noItem.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tileHot.label = param1;
         },"tileHot.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnPet.label = param1;
         },"tabBtnPet.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnBook.label = param1;
         },"tabBtnBook.label");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnTreasure.label = param1;
         },"tabBtnTreasure.label");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnDress.label = param1;
         },"tabBtnDress.label");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnFlyer.label = param1;
         },"tabBtnFlyer.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnMaterial.label = param1;
         },"tabBtnMaterial.label");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnJewel.label = param1;
         },"tabBtnJewel.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnScroll.label = param1;
         },"tabBtnScroll.label");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnPoint.label = param1;
         },"tabBtnPoint.label");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnHot.label = param1;
         },"tabBtnHot.label");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnDiscount.label = param1;
         },"tabBtnDiscount.label");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnNew.label = param1;
         },"tabBtnNew.label");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnLimitTime.label = param1;
         },"tabBtnLimitTime.label");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnSearch.label = param1;
         },"tabBtnSearch.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            RL1.text = param1;
         },"RL1.text");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            RL1.toolTip = param1;
         },"RL1.toolTip");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            RL2.text = param1;
         },"RL2.text");
         result[31] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            RL2.toolTip = param1;
         },"RL2.toolTip");
         result[32] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SYSTEMSHOPPANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtnTrolley.label = param1;
         },"tabBtnTrolley.label");
         result[33] = binding;
         return result;
      }
      
      public function __tabBtnNew_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_NEW);
      }
      
      public function __limitShopSlot3_doubleClick(param1:MouseEvent) : void
      {
         dClickLimitHandler(param1);
      }
      
      public function __shopSlot1_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function parseAndSetTime(param1:Number) : Date
      {
         var _loc2_:Date = new Date();
         _loc2_.setTime(param1 * 1000);
         return _loc2_;
      }
      
      public function __shopSlot11_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SystemShopPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SystemShopPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SystemShopPanelWatcherSetupUtil");
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
      
      public function __shopSlot19_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set radioGoldBind(param1:RadioButton) : void
      {
         var _loc2_:Object = this._1123890648radioGoldBind;
         if(_loc2_ !== param1)
         {
            this._1123890648radioGoldBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radioGoldBind",_loc2_,param1));
         }
      }
      
      public function __shopSlot1_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      private function clearLimitSelection() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < LIMIT_ITEM_COUNT_PER_PAGE)
         {
            this["limitShopSlot" + _loc1_].selected = false;
            _loc1_++;
         }
      }
      
      public function __tabBtnPet_click(param1:MouseEvent) : void
      {
         setTab(GamePredef.SHOP_TAB_PET);
      }
      
      public function __shopSlot9_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function set globalBuy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._387922915globalBuy;
         if(_loc2_ !== param1)
         {
            this._387922915globalBuy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"globalBuy",_loc2_,param1));
         }
      }
      
      public function __shopSlot6_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __limitShopSlot4_click(param1:MouseEvent) : void
      {
         clickLimitHandler(param1);
      }
      
      private function setTab(param1:String) : void
      {
         var alias:String = param1;
         try
         {
            initTabs(alias);
            pageSelector.onPageChanged = onPageChanged;
            pageSelector.onPageCleared = clearPage;
            pageSelector.initPageSeletor(shopItemList.length,ITEM_COUNT_PER_PAGE);
            if(shopItemList.length == 0)
            {
               lb_noItem.visible = true;
            }
            else
            {
               lb_noItem.visible = false;
            }
         }
         catch(e:Error)
         {
            trace("Error in call tab name");
            return;
         }
         unSelectAll();
         tileLimitTime.visible = false;
         tileHot.visible = true;
         this["tabBtn" + alias].selected = true;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            _core.player.normalView.pause();
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         callLater(_core.player.normalView.resume);
         tileHot.visible = false;
         _core.remote.call("getLimitTimeShop",new Responder(onGetLimitTimeShop));
      }
      
      private function getItemInfo(param1:int, param2:int, param3:Object) : void
      {
         if(param2 <= 0 || param1 <= 0)
         {
            return;
         }
         var _loc4_:Object = _core.getTemplateData(param1,param2);
         if(_loc4_ != null)
         {
            if(dict[_loc4_.name] == null)
            {
               dict[_loc4_.name] = new ArrayCollection();
            }
            ArrayCollection(dict[_loc4_.name]).addItem(param3);
         }
      }
      
      public function __shopSlot12_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get globalBuy() : BasicGlowButton
      {
         return this._387922915globalBuy;
      }
      
      public function set tabBtnDress(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1236300784tabBtnDress;
         if(_loc2_ !== param1)
         {
            this._1236300784tabBtnDress = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnDress",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtnDress() : BasicGlowButton
      {
         return this._1236300784tabBtnDress;
      }
      
      public function ___SystemShopPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         search();
      }
      
      public function set tabBtnJewel(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1241471484tabBtnJewel;
         if(_loc2_ !== param1)
         {
            this._1241471484tabBtnJewel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtnJewel",_loc2_,param1));
         }
      }
      
      public function __limitShopSlot0_doubleClick(param1:MouseEvent) : void
      {
         dClickLimitHandler(param1);
      }
   }
}

