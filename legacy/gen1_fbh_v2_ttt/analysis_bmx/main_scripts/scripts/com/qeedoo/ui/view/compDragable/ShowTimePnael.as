package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.event.GameDataEvent;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.ShowTimeCard;
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
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ShowTimePnael extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      private var _1925399228stCard5:ShowTimeCard;
      
      private var _helpAlert2:Alert;
      
      private var _helpAlert:Alert;
      
      private var _1081500497cardContainer:Canvas;
      
      private var _showTimeArray:Array = [];
      
      private var _1925399230stCard3:ShowTimeCard;
      
      mx_internal var _watchers:Array = [];
      
      private var neededItemId:int = 8888;
      
      private var _607339634pageSelector:PageSelector;
      
      private var inited:Boolean = false;
      
      private var _1925399227stCard6:ShowTimeCard;
      
      private var _1925399233stCard0:ShowTimeCard;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _ShowTimePnael_BasicDelayButton1:BasicDelayButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1925399232stCard1:ShowTimeCard;
      
      private var _1925399226stCard7:ShowTimeCard;
      
      private var itemNumPrePage:int = 8;
      
      mx_internal var _bindings:Array = [];
      
      public var _ShowTimePnael_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1925399229stCard4:ShowTimeCard;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":770,
               "height":550,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ShowTimePnael_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cardContainer",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "30";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":192.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":375,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":557.5,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":246
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":192.5,
                                 "y":246
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":375,
                                 "y":246
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ShowTimeCard,
                           "id":"stCard7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":557.5,
                                 "y":246
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "stylesFactory":function():void
                  {
                     this.bottom = "15";
                     this.left = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"text":"投票时间: 2024-2-1 10:00 ~ 2024-2-21 22:00"};
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSelector",
                  "stylesFactory":function():void
                  {
                     this.bottom = "15";
                     this.horizontalCenter = "-7";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"onPageChanged":onPageChanged};
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"_ShowTimePnael_BasicDelayButton1",
                  "events":{"click":"___ShowTimePnael_BasicDelayButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "15";
                     this.right = "160";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":7000,
                        "styleName":"BtnStdGreen"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "events":{"click":"___ShowTimePnael_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "20";
                     this.bottom = "15";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"label":"规则说明"};
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "events":{"click":"___ShowTimePnael_LinkButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "90";
                     this.bottom = "15";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"label":"奖励说明"};
                  }
               })]
            };
         }
      });
      
      private var _1925399231stCard2:ShowTimeCard;
      
      private var _pageNumberNow:int = -1;
      
      public function ShowTimePnael()
      {
         super();
         mx_internal::_document = this;
         this.width = 770;
         this.height = 550;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShowTimePnael._watcherSetupUtil = param1;
      }
      
      public function set stCard1(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399232stCard1;
         if(_loc2_ !== param1)
         {
            this._1925399232stCard1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard1",_loc2_,param1));
         }
      }
      
      public function set stCard2(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399231stCard2;
         if(_loc2_ !== param1)
         {
            this._1925399231stCard2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard2",_loc2_,param1));
         }
      }
      
      private function helpInfo2() : void
      {
         if(_helpAlert2)
         {
            PopUpManager.removePopUp(_helpAlert2);
            _helpAlert2 = null;
         }
         var _loc1_:String = Language.SHOW_TIME_PANEL[9].toString();
         _helpAlert2 = Alert.show(_loc1_,Language.CARD_GAME_P[19].toString(),Alert.YES,null,null);
      }
      
      public function set stCard3(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399230stCard3;
         if(_loc2_ !== param1)
         {
            this._1925399230stCard3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard3",_loc2_,param1));
         }
      }
      
      public function set stCard4(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399229stCard4;
         if(_loc2_ !== param1)
         {
            this._1925399229stCard4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard4",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         visible = true;
         initView();
      }
      
      public function set stCard5(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399228stCard5;
         if(_loc2_ !== param1)
         {
            this._1925399228stCard5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard5",_loc2_,param1));
         }
      }
      
      public function set stCard6(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399227stCard6;
         if(_loc2_ !== param1)
         {
            this._1925399227stCard6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard6",_loc2_,param1));
         }
      }
      
      protected function image1_clickHandler(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.lezi.com/campaign/mc/2022/202211cp/"),"_blank");
      }
      
      public function set stCard7(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399226stCard7;
         if(_loc2_ !== param1)
         {
            this._1925399226stCard7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard7",_loc2_,param1));
         }
      }
      
      public function set stCard0(param1:ShowTimeCard) : void
      {
         var _loc2_:Object = this._1925399233stCard0;
         if(_loc2_ !== param1)
         {
            this._1925399233stCard0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"stCard0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.SHOW_TIME_PANEL[8].toString();
         _helpAlert = Alert.show(_loc1_,Language.CARD_GAME_P[19].toString(),Alert.YES,null,null);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShowTimePnael = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShowTimePnael_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ShowTimePnaelWatcherSetupUtil");
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
      
      public function ___ShowTimePnael_LinkButton2_click(param1:MouseEvent) : void
      {
         helpInfo2();
      }
      
      public function set cardContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._1081500497cardContainer;
         if(_loc2_ !== param1)
         {
            this._1081500497cardContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cardContainer",_loc2_,param1));
         }
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
      
      private function clearAllCards() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < 8)
         {
            this["stCard" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      public function ___ShowTimePnael_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         _core.remote.call("getShowTimeInfo",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard1() : ShowTimeCard
      {
         return this._1925399232stCard1;
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard2() : ShowTimeCard
      {
         return this._1925399231stCard2;
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard3() : ShowTimeCard
      {
         return this._1925399230stCard3;
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard4() : ShowTimeCard
      {
         return this._1925399229stCard4;
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard5() : ShowTimeCard
      {
         return this._1925399228stCard5;
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard6() : ShowTimeCard
      {
         return this._1925399227stCard6;
      }
      
      public function onGetShowTimeData(param1:Object, param2:Boolean = false) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:int = 0;
         var _loc6_:* = undefined;
         if(!param1)
         {
            return;
         }
         var _loc3_:Array = [];
         for(_loc4_ in param1)
         {
            _loc6_ = param1[_loc4_];
            if(_loc6_)
            {
               _loc6_.id = _loc4_;
               _loc3_.push(_loc6_);
            }
         }
         _loc3_.sortOn("v",Array.NUMERIC);
         _loc3_.reverse();
         _showTimeArray = _loc3_;
         _pageNumberNow = pageSelector.pageNo;
         _loc5_ = int(_showTimeArray.length);
         pageSelector.initPageSeletor(_loc5_,itemNumPrePage);
         if(param2)
         {
            _core.sysMidNote(Language.SHOW_TIME_PANEL[6]);
         }
         else
         {
            _core.sysMidNote(Language.SHOW_TIME_PANEL[7]);
         }
         if(_pageNumberNow >= 0)
         {
            pageSelector.pageNo = _pageNumberNow;
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc6_:int = 0;
         var _loc7_:ShowTimeCard = null;
         var _loc3_:* = param1 + param2;
         var _loc4_:* = param1;
         if(_showTimeArray.length <= 0 || _showTimeArray.length < _loc3_)
         {
            return;
         }
         clearAllCards();
         var _loc5_:int = _loc4_;
         while(_loc5_ < _loc3_)
         {
            _loc6_ = _loc5_ - _loc4_;
            _loc7_ = this["stCard" + _loc6_];
            if(_loc7_)
            {
               _showTimeArray[_loc5_].r = _loc5_ + 1;
               _loc7_.cardData = _showTimeArray[_loc5_];
               _loc7_.visible = true;
            }
            _loc5_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard0() : ShowTimeCard
      {
         return this._1925399233stCard0;
      }
      
      public function ___ShowTimePnael_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get cardContainer() : Canvas
      {
         return this._1081500497cardContainer;
      }
      
      override public function initView() : void
      {
         this.addEventListener("showTimeCardClick",showTimeCardClickHandler);
         _core.remote.call("getShowTimeInfo",null);
         _pageNumberNow = -1;
      }
      
      private function showTimeCardClickHandler(param1:GameDataEvent) : void
      {
         var slotList_yushou:Array;
         var slotList:Array;
         var cardData:Object = null;
         var slotObj:Object = null;
         var stackNum:* = undefined;
         var useMultiFunc:Function = null;
         var event:GameDataEvent = param1;
         cardData = event.data;
         if(!cardData)
         {
            return;
         }
         slotList = _core.basic.getItemSlotList(ItemConfig.ITEM_AIMUZHIXIN);
         slotList_yushou = _core.basic.getItemSlotList(ItemConfig.ITEM_AIMUZHIXIN_YUSHOU);
         if(slotList.length > 0)
         {
            slotObj = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_AIMUZHIXIN);
            if(!slotObj.slot || slotObj.slot.cid != _core.cid)
            {
               return;
            }
            stackNum = slotObj.num;
            if(stackNum > 1)
            {
               useMultiFunc = function(param1:uint):void
               {
                  _core.remote.call("voteForShowTime",null,cardData.id,Number(param1),ItemConfig.ITEM_AIMUZHIXIN);
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[31],Language.SHOW_TIME_PANEL[5],useMultiFunc,1,1,stackNum);
            }
            else
            {
               if(stackNum != 1)
               {
                  _core.sysMidNote(Language.SHOW_TIME_PANEL[4]);
                  return;
               }
               _core.remote.call("voteForShowTime",null,cardData.id,stackNum,ItemConfig.ITEM_AIMUZHIXIN);
            }
         }
         else
         {
            if(slotList_yushou.length <= 0)
            {
               _core.sysMidNote(Language.SHOW_TIME_PANEL[4]);
               return;
            }
            slotObj = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_AIMUZHIXIN_YUSHOU);
            if(!slotObj.slot || slotObj.slot.cid != _core.cid)
            {
               return;
            }
            stackNum = slotObj.num;
            if(stackNum > 1)
            {
               useMultiFunc = function(param1:uint):void
               {
                  _core.remote.call("voteForShowTime",null,cardData.id,Number(param1),ItemConfig.ITEM_AIMUZHIXIN_YUSHOU);
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInputNum(Language.PLAYER_S[31],Language.SHOW_TIME_PANEL[10],useMultiFunc,1,1,stackNum);
            }
            else
            {
               if(stackNum != 1)
               {
                  _core.sysMidNote(Language.SHOW_TIME_PANEL[4]);
                  return;
               }
               _core.remote.call("voteForShowTime",null,cardData.id,stackNum,ItemConfig.ITEM_AIMUZHIXIN_YUSHOU);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get stCard7() : ShowTimeCard
      {
         return this._1925399226stCard7;
      }
      
      private function _ShowTimePnael_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SHOW_TIME_PANEL[0];
         _loc1_ = Language.TRIPLE_TOWN_PANEL[19];
      }
      
      private function _ShowTimePnael_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SHOW_TIME_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShowTimePnael_BasicTitleCanvas1.text = param1;
         },"_ShowTimePnael_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TRIPLE_TOWN_PANEL[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ShowTimePnael_BasicDelayButton1.label = param1;
         },"_ShowTimePnael_BasicDelayButton1.label");
         result[1] = binding;
         return result;
      }
   }
}

