package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.ItemSlotStars;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.RadioButtonGroup;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StarAdditionPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _StarAdditionPanel_RadioButton10:RadioButton;
      
      public var _StarAdditionPanel_RadioButton11:RadioButton;
      
      public var _StarAdditionPanel_RadioButton12:RadioButton;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      private var _1279380421rl_rate:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var selectType:int;
      
      public var _StarAdditionPanel_IntroText1:IntroText;
      
      private var _3242771item:ItemSlotStars;
      
      private var _1001881211rl_money:RoundedLabel;
      
      private var _5318500radiogroup:RadioButtonGroup;
      
      private var _core:Core = Core.getInstance();
      
      public var _StarAdditionPanel_RadioButton1:RadioButton;
      
      public var _StarAdditionPanel_RadioButton2:RadioButton;
      
      public var _StarAdditionPanel_RadioButton3:RadioButton;
      
      public var _StarAdditionPanel_RadioButton4:RadioButton;
      
      public var _StarAdditionPanel_RadioButton5:RadioButton;
      
      public var _StarAdditionPanel_RadioButton6:RadioButton;
      
      public var _StarAdditionPanel_RadioButton7:RadioButton;
      
      public var _StarAdditionPanel_RadioButton8:RadioButton;
      
      public var _StarAdditionPanel_RadioButton9:RadioButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _1474851885_index:int;
      
      private var _1278967158rl_desc:RoundedLabel;
      
      private var _97884btn:BasicGlowButton;
      
      private var starsData:Object;
      
      public var _StarAdditionPanel_BasicGlowButton1:BasicGlowButton;
      
      private var _1278876365rl_addi:RoundedLabel;
      
      private const ITEM_STAR_ADD:int = 3315;
      
      private var _3525ns:NumericStepper;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _928564223rl_num:RoundedLabel;
      
      public var _StarAdditionPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _1000667455rl_level:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":340,
               "height":410,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_StarAdditionPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "39";
                     this.left = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":95,
                        "height":260,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton1",
                           "stylesFactory":function():void
                           {
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":1,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton2",
                           "stylesFactory":function():void
                           {
                              this.top = "30";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":2,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton3",
                           "stylesFactory":function():void
                           {
                              this.top = "50";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":3,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton4",
                           "stylesFactory":function():void
                           {
                              this.top = "70";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":4,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton5",
                           "stylesFactory":function():void
                           {
                              this.top = "90";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":5,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton6",
                           "stylesFactory":function():void
                           {
                              this.top = "110";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":6,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton7",
                           "stylesFactory":function():void
                           {
                              this.top = "130";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":7,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton8",
                           "stylesFactory":function():void
                           {
                              this.top = "150";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":8,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton9",
                           "stylesFactory":function():void
                           {
                              this.top = "170";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":9,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton10",
                           "stylesFactory":function():void
                           {
                              this.top = "190";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":10,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton11",
                           "stylesFactory":function():void
                           {
                              this.top = "210";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":11,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RadioButton,
                           "id":"_StarAdditionPanel_RadioButton12",
                           "stylesFactory":function():void
                           {
                              this.top = "230";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":14,
                                 "value":12,
                                 "groupName":"radiogroup",
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.top = "39";
                     this.bottom = "110";
                     this.left = "113";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_level",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "10";
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_addi",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "36";
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_desc",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.top = "62";
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_StarAdditionPanel_BasicGlowButton1",
                           "events":{"click":"___StarAdditionPanel_BasicGlowButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.top = "110";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "width":50
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                              this.right = "10";
                              this.bottom = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":163,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlotStars,
                                    "id":"item",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "10";
                                       this.horizontalCenter = "0";
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rl_rate",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":52,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rl_money",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":78,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"rl_num",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":104,
                                          "text":""
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":NumericStepper,
                                    "id":"ns",
                                    "events":{"change":"__ns_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":62,
                                          "y":102,
                                          "maximum":9999
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btn",
                                    "events":{"click":"__btn_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "0";
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"BtnStdRed",
                                          "width":60
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"_StarAdditionPanel_IntroText1",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.bottom = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"height":83};
                  }
               })]
            };
         }
      });
      
      public function StarAdditionPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 340;
         this.height = 410;
         _StarAdditionPanel_RadioButtonGroup1_i();
         this.addEventListener("creationComplete",___StarAdditionPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StarAdditionPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_num() : RoundedLabel
      {
         return this._928564223rl_num;
      }
      
      public function set rl_num(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._928564223rl_num;
         if(_loc2_ !== param1)
         {
            this._928564223rl_num = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_num",_loc2_,param1));
         }
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         starAddition();
      }
      
      public function __radiogroup_change(param1:Event) : void
      {
         selectStar(param1);
      }
      
      private function updateView() : void
      {
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc1_:int = 0;
         var _loc2_:Number = 1;
         var _loc3_:String = "";
         starsData = _core.player.starsData;
         if(starsData[selectType])
         {
            _loc5_ = GameData.d[GamePredef.TBL_STARS_TEMPLATE][starsData[selectType].tid];
            _loc2_ = Number(starsData[selectType].addition);
            _loc6_ = _core.getStarColor(_loc2_);
            rl_addi.setStyle("color",GamePredef.CODE_ITEM_COLOR[_loc6_]);
            if(_loc5_)
            {
               _loc1_ = int(_loc5_.level);
               _loc7_ = _loc5_.addValue * _loc2_;
               _loc7_ = Number(_loc7_.toFixed(2));
               if(_loc7_ == int(_loc7_))
               {
                  _loc7_ = int(_loc7_);
               }
               _loc3_ = Language.CHARACTORPANEL_U[57].toString().replace("{prop}",GamePredef.STAR_PROP_DIC[selectType]).replace("{value}",_loc7_);
            }
            else
            {
               _loc3_ = Language.CHARACTORPANEL_U[57].toString().replace("{prop}",GamePredef.STAR_PROP_DIC[selectType]).replace("{value}",0);
            }
         }
         else
         {
            _loc3_ = Language.CHARACTORPANEL_U[57].toString().replace("{prop}",GamePredef.STAR_PROP_DIC[selectType]).replace("{value}",0);
            rl_addi.setStyle("color","#ffffff");
         }
         if(selectType == 8 || selectType == 11)
         {
            _loc3_ += "%";
         }
         var _loc4_:String = _loc2_.toFixed(2);
         rl_level.text = Language.STAR_ADD_PANEL_U[13] + "：" + _loc1_;
         rl_addi.text = Language.STAR_ADD_PANEL_U[14] + "：" + _loc4_;
         rl_desc.text = Language.STAR_ADD_PANEL_U[15] + "：" + _loc3_;
      }
      
      public function init() : void
      {
         item.addEventListener(GameEvent.SLOT_GIID_CHANGE,slotGiidChange);
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlotStars
      {
         return this._3242771item;
      }
      
      public function set rl_money(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1001881211rl_money;
         if(_loc2_ !== param1)
         {
            this._1001881211rl_money = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_money",_loc2_,param1));
         }
      }
      
      public function set item(param1:ItemSlotStars) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      public function slotGiidChange(param1:Event) : void
      {
         if(Boolean(item.slotData) && item.slotData.tid == ITEM_STAR_ADD)
         {
            btn.enabled = true;
            ns.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_level() : RoundedLabel
      {
         return this._1000667455rl_level;
      }
      
      private function _StarAdditionPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.STAR_ADD_PANEL_U[0];
         _loc1_ = _index;
         _loc1_ = Language.STAR_ADD_PANEL_U[1];
         _loc1_ = Language.STAR_ADD_PANEL_U[2];
         _loc1_ = Language.STAR_ADD_PANEL_U[3];
         _loc1_ = Language.STAR_ADD_PANEL_U[4];
         _loc1_ = Language.STAR_ADD_PANEL_U[5];
         _loc1_ = Language.STAR_ADD_PANEL_U[6];
         _loc1_ = Language.STAR_ADD_PANEL_U[7];
         _loc1_ = Language.STAR_ADD_PANEL_U[8];
         _loc1_ = Language.STAR_ADD_PANEL_U[9];
         _loc1_ = Language.STAR_ADD_PANEL_U[10];
         _loc1_ = Language.STAR_ADD_PANEL_U[11];
         _loc1_ = Language.STAR_ADD_PANEL_U[12];
         _loc1_ = Language.STAR_ADD_PANEL_U[13];
         _loc1_ = Language.STAR_ADD_PANEL_U[14];
         _loc1_ = Language.STAR_ADD_PANEL_U[15];
         _loc1_ = Language.STAR_ADD_PANEL_U[19];
         _loc1_ = Slot.SLOT_STARS_ADD;
         _loc1_ = Language.STAR_ADD_PANEL_U[17];
         _loc1_ = Language.STAR_SPEED_UP_PANEL_U[5];
      }
      
      private function updateRate(param1:Boolean) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:int = 0;
         if(param1 && !item.slotData)
         {
            _core.sysMidNote(Language.STAR_ADD_PANEL_S[6]);
            ns.value = 0;
         }
         if(ns.value == 0)
         {
            rl_rate.text = Language.STAR_ADD_PANEL_U[16] + ":";
            return;
         }
         var _loc2_:Object = starsData[selectType];
         if(_loc2_)
         {
            _loc7_ = _core.getStarColor(_loc2_.addition);
            _loc6_ = Number(_loc2_.addition);
            _loc5_ = GamePredef.STAR_ADDITION_BASIC_SUCCESS[_loc7_] * ns.value + GamePredef.STAR_ADDITION_ADD_SUCCESS[_loc7_];
            if(_core.MC_BIRTH_FLAG[14])
            {
               _loc5_ = GamePredef.MC_BIRTH_CONFIG[14][_loc7_] * ns.value + GamePredef.STAR_ADDITION_ADD_SUCCESS[_loc7_];
            }
            if(_loc5_ > 1)
            {
               _loc5_ = 1;
            }
         }
         else
         {
            _loc6_ = 1;
            _loc5_ = GamePredef.STAR_ADDITION_BASIC_SUCCESS[_loc7_] * ns.value + GamePredef.STAR_ADDITION_ADD_SUCCESS[_loc7_];
            if(_core.MC_BIRTH_FLAG[14])
            {
               _loc5_ = GamePredef.MC_BIRTH_CONFIG[14][_loc7_] * ns.value + GamePredef.STAR_ADDITION_ADD_SUCCESS[_loc7_];
            }
            if(_loc5_ > 1)
            {
               _loc5_ = 1;
            }
         }
         _loc3_ = Number((_loc5_ * 100).toFixed(2));
         _loc4_ = Math.round(GamePredef.STAR_ADDITION_BASIC_MONEY[selectType] * 20 * _loc5_ * _loc6_);
         rl_rate.text = Language.STAR_ADD_PANEL_U[16] + ":" + _loc3_ + "%";
         rl_money.text = Language.STAR_ADD_PANEL_U[18] + Math.round(_loc4_);
      }
      
      public function ___StarAdditionPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         buy();
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : BasicGlowButton
      {
         return this._97884btn;
      }
      
      private function _StarAdditionPanel_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         radiogroup = _loc1_;
         _loc1_.addEventListener("change",__radiogroup_change);
         BindingManager.executeBindings(this,"radiogroup",radiogroup);
         _loc1_.initialized(this,"radiogroup");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get radiogroup() : RadioButtonGroup
      {
         return this._5318500radiogroup;
      }
      
      private function selectStar(param1:Event) : void
      {
         selectType = param1.target.selectedValue;
         updateView();
         updateRate(false);
      }
      
      public function ___StarAdditionPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function starAddition() : void
      {
         var func:Function;
         if(selectType <= 0)
         {
            Alert.show(Language.STAR_ADD_PANEL_S[3]);
            return;
         }
         if(ns.value <= 0)
         {
            Alert.show(Language.STAR_ADD_PANEL_S[4]);
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.addStarAddition(selectType,ns.value,item.slotData.id);
            }
         };
         if(starsData[selectType])
         {
            _core.remote.addStarAddition(selectType,ns.value,item.slotData.id);
         }
         else
         {
            Alert.show(Language.STAR_ADD_PANEL_S[5],null,Alert.YES | Alert.NO,null,func);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_desc() : RoundedLabel
      {
         return this._1278967158rl_desc;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_money() : RoundedLabel
      {
         return this._1001881211rl_money;
      }
      
      public function set rl_level(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1000667455rl_level;
         if(_loc2_ !== param1)
         {
            this._1000667455rl_level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_level",_loc2_,param1));
         }
      }
      
      private function buy() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SYSTEM_SHOP);
         _loc1_.buyStarAddItem();
      }
      
      public function __ns_change(param1:NumericStepperEvent) : void
      {
         updateRate(true);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StarAdditionPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StarAdditionPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StarAdditionPanelWatcherSetupUtil");
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
      
      public function set rl_addi(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1278876365rl_addi;
         if(_loc2_ !== param1)
         {
            this._1278876365rl_addi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_addi",_loc2_,param1));
         }
      }
      
      public function set ns(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._3525ns;
         if(_loc2_ !== param1)
         {
            this._3525ns = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns",_loc2_,param1));
         }
      }
      
      private function set _index(param1:int) : void
      {
         var _loc2_:Object = this._1474851885_index;
         if(_loc2_ !== param1)
         {
            this._1474851885_index = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_index",_loc2_,param1));
         }
      }
      
      public function set rl_rate(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1279380421rl_rate;
         if(_loc2_ !== param1)
         {
            this._1279380421rl_rate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_rate",_loc2_,param1));
         }
      }
      
      public function set btn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ns() : NumericStepper
      {
         return this._3525ns;
      }
      
      public function set radiogroup(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._5318500radiogroup;
         if(_loc2_ !== param1)
         {
            this._5318500radiogroup = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"radiogroup",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_addi() : RoundedLabel
      {
         return this._1278876365rl_addi;
      }
      
      [Bindable(event="propertyChange")]
      private function get _index() : int
      {
         return this._1474851885_index;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_rate() : RoundedLabel
      {
         return this._1279380421rl_rate;
      }
      
      public function updateStackNum(param1:int) : void
      {
         item.stackNum -= param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         super.visible = param1;
         if(param1)
         {
            starsData = _core.player.starsData;
            item.clean();
            for each(_loc2_ in _dm.sList)
            {
               if(ToolKit.isBigThan(_loc2_.sid,GamePredef.SLOT_SID_BAG[0]) && ToolKit.isSmallOrEqual(_loc2_.sid,GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum]))
               {
                  _loc3_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_.tid];
                  if(Boolean(_loc3_) && _loc3_.type == GamePredef.ITEM_TYPE_STAR_ADD)
                  {
                     item.slotData = _loc2_;
                     item.type = _loc2_.type;
                     item.giid = _loc2_.itemId;
                     item.stackNum = _loc2_.stackNum;
                     break;
                  }
               }
            }
            if(!item.slotData)
            {
               item.type = GamePredef.TBL_ITEM_TEMPLATE;
               item.giid = ITEM_STAR_ADD;
               item.stackNum = 0;
               btn.enabled = false;
               ns.enabled = false;
            }
            else
            {
               btn.enabled = true;
               ns.enabled = true;
            }
            if(selectType > 0)
            {
               updateView();
               item.slotData && updateRate(true);
            }
         }
      }
      
      public function setTypeAndUpdateView(param1:int) : void
      {
         if(param1 > 0)
         {
            selectType = param1;
            updateRate(false);
            updateView();
         }
      }
      
      private function _StarAdditionPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_BasicTitleCanvas1.text = param1;
         },"_StarAdditionPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return _index;
         },function(param1:Object):void
         {
            radiogroup.selectedValue = param1;
         },"radiogroup.selectedValue");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton1.label = param1;
         },"_StarAdditionPanel_RadioButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton2.label = param1;
         },"_StarAdditionPanel_RadioButton2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton3.label = param1;
         },"_StarAdditionPanel_RadioButton3.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton4.label = param1;
         },"_StarAdditionPanel_RadioButton4.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton5.label = param1;
         },"_StarAdditionPanel_RadioButton5.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton6.label = param1;
         },"_StarAdditionPanel_RadioButton6.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton7.label = param1;
         },"_StarAdditionPanel_RadioButton7.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton8.label = param1;
         },"_StarAdditionPanel_RadioButton8.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton9.label = param1;
         },"_StarAdditionPanel_RadioButton9.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton10.label = param1;
         },"_StarAdditionPanel_RadioButton10.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton11.label = param1;
         },"_StarAdditionPanel_RadioButton11.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_RadioButton12.label = param1;
         },"_StarAdditionPanel_RadioButton12.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_level.text = param1;
         },"rl_level.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_addi.text = param1;
         },"rl_addi.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_desc.text = param1;
         },"rl_desc.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_BasicGlowButton1.label = param1;
         },"_StarAdditionPanel_BasicGlowButton1.label");
         result[17] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_STARS_ADD;
         },function(param1:int):void
         {
            item.slotType = param1;
         },"item.slotType");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_ADD_PANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn.label = param1;
         },"btn.label");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_SPEED_UP_PANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarAdditionPanel_IntroText1.htmlText = param1;
         },"_StarAdditionPanel_IntroText1.htmlText");
         result[20] = binding;
         return result;
      }
      
      public function set rl_desc(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1278967158rl_desc;
         if(_loc2_ !== param1)
         {
            this._1278967158rl_desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_desc",_loc2_,param1));
         }
      }
   }
}

