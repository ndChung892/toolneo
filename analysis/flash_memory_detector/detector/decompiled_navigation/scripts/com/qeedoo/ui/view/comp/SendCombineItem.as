package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.BagPanel;
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
   import mx.controls.CheckBox;
   import mx.controls.HRule;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SendCombineItem extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _98228cb3:CheckBox;
      
      private var _1872948374savingP:Label;
      
      public var buyNum:int = 0;
      
      private var _908765957scName:Label;
      
      private var _3046233cav1:Canvas;
      
      private var _100525950item1:ItemSlot;
      
      private var _3046235cav3:Canvas;
      
      private var _98226cb1:CheckBox;
      
      public var currency_arr:Object = {
         "gold":Language.SEND_COMBINE_PANEL[3],
         "point":Language.SEND_COMBINE_PANEL[4],
         "integral":Language.SEND_COMBINE_PANEL[5]
      };
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1377586698buyBtn:BasicGlowButton;
      
      private var _1547939475oldTotalP:Label;
      
      private var _1435867406oldPrice0:Label;
      
      private var _100525952item3:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      private var _100525949item0:ItemSlot;
      
      public var scObj:Object = new Object();
      
      private var _191869972curTotalP:Label;
      
      private var _1435867407oldPrice1:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _98227cb2:CheckBox;
      
      private var _303942040curPrice1:Label;
      
      private var _1435867408oldPrice2:Label;
      
      private var _3046232cav0:Canvas;
      
      private var _3046234cav2:Canvas;
      
      public var combineId:* = -1;
      
      public var curTP:int = 0;
      
      private var _303942041curPrice0:Label;
      
      private var _1435867409oldPrice3:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _100525951item2:ItemSlot;
      
      public var combineIndex:* = -1;
      
      private var _303942038curPrice3:Label;
      
      public var buyLimit:int = 0;
      
      public var oldTP:int = 0;
      
      public var buyType:String = "";
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":605,
               "height":100,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"scName",
                  "stylesFactory":function():void
                  {
                     this.color = 1961723;
                     this.fontSize = 14;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":40,
                        "y":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":120,
                        "y":5,
                        "styleName":"RoundedGradientBorder",
                        "height":90,
                        "width":485,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"cav0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":35,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"oldPrice0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":45
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"curPrice0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":65
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.strokeColor = 13421772;
                                       this.shadowColor = 13421772;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":54,
                                          "width":70,
                                          "height":1
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"cav1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":80,
                                 "y":0,
                                 "visible":false,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 15;
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":15,
                                          "text":"+"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"cb1",
                                    "events":{"change":"__cb1_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":27,
                                          "y":15,
                                          "selected":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":48,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"oldPrice1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":45
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"curPrice1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":65
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "24";
                                       this.strokeColor = 13421772;
                                       this.shadowColor = 13421772;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":54,
                                          "width":70,
                                          "height":1
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"cav2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":175,
                                 "y":0,
                                 "visible":false,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 15;
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":15,
                                          "text":"+"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"cb2",
                                    "events":{"change":"__cb2_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":27,
                                          "y":15,
                                          "selected":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":48,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"oldPrice2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":45
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"curPrice2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":65
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "24";
                                       this.strokeColor = 13421772;
                                       this.shadowColor = 13421772;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":54,
                                          "width":70,
                                          "height":1
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"cav3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":270,
                                 "y":0,
                                 "visible":false,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 15;
                                       this.color = 16775802;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":5,
                                          "y":15,
                                          "text":"+"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":CheckBox,
                                    "id":"cb3",
                                    "events":{"change":"__cb3_change"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":27,
                                          "y":15,
                                          "selected":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":48,
                                          "y":5
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"oldPrice3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":45
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"curPrice3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":65
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "24";
                                       this.strokeColor = 13421772;
                                       this.shadowColor = 13421772;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":54,
                                          "width":70,
                                          "height":1
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "stylesFactory":function():void
                           {
                              this.fontSize = 15;
                              this.color = 16775802;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":380,
                                 "y":15,
                                 "text":"="
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"oldTotalP",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 11;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":400,
                                 "y":8
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"curTotalP",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":400,
                                 "y":25
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"savingP",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 11;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":400,
                                 "y":42
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HRule,
                           "stylesFactory":function():void
                           {
                              this.left = "399";
                              this.strokeColor = 13421772;
                              this.shadowColor = 13421772;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":17,
                                 "width":70,
                                 "height":1
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"buyBtn",
                           "events":{"click":"__buyBtn_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.right = "17";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":65,
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
      
      private var _303942039curPrice2:Label;
      
      public function SendCombineItem()
      {
         super();
         mx_internal::_document = this;
         this.scaleX = 1;
         this.scaleY = 1;
         this.width = 605;
         this.height = 100;
         this.addEventListener("creationComplete",___SendCombineItem_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SendCombineItem._watcherSetupUtil = param1;
      }
      
      public function set item3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525952item3;
         if(_loc2_ !== param1)
         {
            this._100525952item3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",_loc2_,param1));
         }
      }
      
      public function set item1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525950item1;
         if(_loc2_ !== param1)
         {
            this._100525950item1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",_loc2_,param1));
         }
      }
      
      public function set scName(param1:Label) : void
      {
         var _loc2_:Object = this._908765957scName;
         if(_loc2_ !== param1)
         {
            this._908765957scName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scName",_loc2_,param1));
         }
      }
      
      public function set item0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525949item0;
         if(_loc2_ !== param1)
         {
            this._100525949item0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPrice1() : Label
      {
         return this._1435867407oldPrice1;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPrice2() : Label
      {
         return this._1435867408oldPrice2;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPrice3() : Label
      {
         return this._1435867409oldPrice3;
      }
      
      [Bindable(event="propertyChange")]
      public function get scName() : Label
      {
         return this._908765957scName;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldPrice0() : Label
      {
         return this._1435867406oldPrice0;
      }
      
      public function onBuyCombine(param1:int) : void
      {
         buyNum = param1;
         buyBtn.label = Language.SEND_COMBINE_PANEL[6] + param1 + "/" + buyLimit;
         if(buyNum == buyLimit)
         {
            buyBtn.enabled = false;
         }
      }
      
      public function set oldPrice0(param1:Label) : void
      {
         var _loc2_:Object = this._1435867406oldPrice0;
         if(_loc2_ !== param1)
         {
            this._1435867406oldPrice0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPrice0",_loc2_,param1));
         }
      }
      
      public function set oldPrice1(param1:Label) : void
      {
         var _loc2_:Object = this._1435867407oldPrice1;
         if(_loc2_ !== param1)
         {
            this._1435867407oldPrice1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPrice1",_loc2_,param1));
         }
      }
      
      public function subBuy(param1:Boolean) : void
      {
         var func:Function;
         var bagPanel:BagPanel = null;
         var flag:Boolean = param1;
         if(!flag)
         {
            return;
         }
         if(buyType == Language.SEND_COMBINE_PANEL[3])
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            if(bagPanel.goldLockFlag)
            {
               bagPanel.goldLockFlag = false;
            }
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("buySendCombine",new Responder(onBuyCombine),combineId,cb1.selected,cb2.selected,cb3.selected);
            }
         };
         Alert.show(Language.SEND_COMBINE_PANEL[10].replace("{num}",GamePredef.SEND_COMBINE_ARR[combineIndex]),null,Alert.YES | Alert.NO,null,func);
      }
      
      public function set oldPrice2(param1:Label) : void
      {
         var _loc2_:Object = this._1435867408oldPrice2;
         if(_loc2_ !== param1)
         {
            this._1435867408oldPrice2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPrice2",_loc2_,param1));
         }
      }
      
      public function set oldPrice3(param1:Label) : void
      {
         var _loc2_:Object = this._1435867409oldPrice3;
         if(_loc2_ !== param1)
         {
            this._1435867409oldPrice3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldPrice3",_loc2_,param1));
         }
      }
      
      public function changeTotalPrice(param1:int) : void
      {
         if(this["cb" + param1].selected)
         {
            oldTP += scObj.award[param1].original;
            curTP += scObj.award[param1].discount;
         }
         else
         {
            oldTP -= scObj.award[param1].original;
            curTP -= scObj.award[param1].discount;
         }
         oldTotalP.htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[0] + oldTP + buyType + "</font>";
         curTotalP.htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[1] + "<font color=\'#FF9900\' >" + curTP + "</font>" + buyType + "</font>";
         savingP.htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[2] + (oldTP - curTP) + buyType + "</font>";
      }
      
      public function testBbb() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:String = null;
         if(!scObj)
         {
            return;
         }
         for(_loc1_ in scObj.award)
         {
            buyType = currency_arr[scObj.currency];
            if(scObj.award[_loc1_].itemId == "-1")
            {
               _loc2_ = ResManager.getIconUrl(Number(scObj[_loc1_].iconCode));
               this["item" + _loc1_].setIconToolTip(_loc2_,scObj[_loc1_].description);
            }
            else
            {
               this["item" + _loc1_].setStyleName(0);
               this["item" + _loc1_].data = scObj.award[_loc1_];
               this["item" + _loc1_].stackNum = scObj.award[_loc1_].stackNum;
               this["item" + _loc1_].type = scObj.award[_loc1_].itemType;
               this["item" + _loc1_].giid = scObj.award[_loc1_].itemId;
               this["item" + _loc1_].movable = false;
               this["item" + _loc1_].slotData = scObj.award[_loc1_];
               this["item" + _loc1_].slotType = Slot.SLOT_TEMP_SLOT;
               this["item" + _loc1_].quality = scObj.award[_loc1_].quality;
               this["oldPrice" + _loc1_].htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[0] + scObj.award[_loc1_].original + buyType + "</font>";
               this["curPrice" + _loc1_].htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[1] + "<font color=\'#FF9900\' >" + scObj.award[_loc1_].discount + "</font>" + buyType + "</font>";
               if(_loc1_ > 0)
               {
                  if(scObj.award[_loc1_].checkable == "false")
                  {
                     this["cb" + _loc1_].visible = true;
                     this["cb" + _loc1_].selected = true;
                  }
                  else
                  {
                     this["cb" + _loc1_].visible = false;
                     this["cb" + _loc1_].selected = false;
                  }
               }
               this["cav" + _loc1_].visible = true;
            }
            oldTP += scObj.award[_loc1_].original;
            curTP += scObj.award[_loc1_].discount;
         }
         buyLimit = scObj.limit;
         buyNum = scObj.buyNum;
         oldTotalP.htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[0] + oldTP + buyType + "</font>";
         curTotalP.htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[1] + "<font color=\'#FF9900\' >" + curTP + "</font>" + buyType + "</font>";
         savingP.htmlText = "<font color=\'#1deefb\' >" + Language.SEND_COMBINE_PANEL[2] + (oldTP - curTP) + buyType + "</font>";
         buyBtn.label = Language.SEND_COMBINE_PANEL[6] + buyNum + "/" + buyLimit;
         if(buyNum == buyLimit)
         {
            buyBtn.enabled = false;
         }
         else
         {
            buyBtn.enabled = true;
         }
         combineId = scObj.id;
         combineIndex = scObj.index;
         scName.text = Language.SEND_COMBINE_PANEL[8] + GamePredef.SEND_COMBINE_ARR[combineIndex];
      }
      
      private function _SendCombineItem_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            scName.text = param1;
         },"scName.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            oldPrice0.text = param1;
         },"oldPrice0.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curPrice0.text = param1;
         },"curPrice0.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            oldPrice1.text = param1;
         },"oldPrice1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curPrice1.text = param1;
         },"curPrice1.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            oldPrice2.text = param1;
         },"oldPrice2.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curPrice2.text = param1;
         },"curPrice2.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            oldPrice3.text = param1;
         },"oldPrice3.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curPrice3.text = param1;
         },"curPrice3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            oldTotalP.text = param1;
         },"oldTotalP.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            curTotalP.text = param1;
         },"curTotalP.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            savingP.text = param1;
         },"savingP.text");
         result[11] = binding;
         return result;
      }
      
      public function set oldTotalP(param1:Label) : void
      {
         var _loc2_:Object = this._1547939475oldTotalP;
         if(_loc2_ !== param1)
         {
            this._1547939475oldTotalP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"oldTotalP",_loc2_,param1));
         }
      }
      
      private function initV() : void
      {
         testBbb();
      }
      
      public function set savingP(param1:Label) : void
      {
         var _loc2_:Object = this._1872948374savingP;
         if(_loc2_ !== param1)
         {
            this._1872948374savingP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"savingP",_loc2_,param1));
         }
      }
      
      override public function set data(param1:Object) : void
      {
         scObj = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav0() : Canvas
      {
         return this._3046232cav0;
      }
      
      public function set cb1(param1:CheckBox) : void
      {
         var _loc2_:Object = this._98226cb1;
         if(_loc2_ !== param1)
         {
            this._98226cb1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curPrice0() : Label
      {
         return this._303942041curPrice0;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav1() : Canvas
      {
         return this._3046233cav1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav3() : Canvas
      {
         return this._3046235cav3;
      }
      
      private function _SendCombineItem_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SEND_COMBINE_PANEL[8];
         _loc1_ = Language.SEND_COMBINE_PANEL[0];
         _loc1_ = Language.SEND_COMBINE_PANEL[1];
         _loc1_ = Language.SEND_COMBINE_PANEL[0];
         _loc1_ = Language.SEND_COMBINE_PANEL[1];
         _loc1_ = Language.SEND_COMBINE_PANEL[0];
         _loc1_ = Language.SEND_COMBINE_PANEL[1];
         _loc1_ = Language.SEND_COMBINE_PANEL[0];
         _loc1_ = Language.SEND_COMBINE_PANEL[1];
         _loc1_ = Language.SEND_COMBINE_PANEL[0];
         _loc1_ = Language.SEND_COMBINE_PANEL[1];
         _loc1_ = Language.SEND_COMBINE_PANEL[2];
      }
      
      public function set cb3(param1:CheckBox) : void
      {
         var _loc2_:Object = this._98228cb3;
         if(_loc2_ !== param1)
         {
            this._98228cb3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curPrice3() : Label
      {
         return this._303942038curPrice3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav2() : Canvas
      {
         return this._3046234cav2;
      }
      
      public function set cb2(param1:CheckBox) : void
      {
         var _loc2_:Object = this._98227cb2;
         if(_loc2_ !== param1)
         {
            this._98227cb2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cb2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curPrice1() : Label
      {
         return this._303942040curPrice1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item0() : ItemSlot
      {
         return this._100525949item0;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemSlot
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemSlot
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get curPrice2() : Label
      {
         return this._303942039curPrice2;
      }
      
      public function __cb3_change(param1:Event) : void
      {
         changeTotalPrice(3);
      }
      
      public function checkDeletePass() : void
      {
         var bagPanel:BagPanel = null;
         var func:Function = null;
         if(combineId < 0)
         {
            return;
         }
         if(buyType == Language.SEND_COMBINE_PANEL[3])
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            func = function(param1:String):void
            {
               _core.remote.call("unlockMoney",new Responder(subBuy),MD5.hash(param1));
            };
            if(bagPanel.goldLockFlag)
            {
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.NUMPANEL_U[1],func);
            }
            else
            {
               subBuy(true);
            }
         }
         else
         {
            subBuy(true);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemSlot
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get oldTotalP() : Label
      {
         return this._1547939475oldTotalP;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SendCombineItem = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SendCombineItem_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_SendCombineItemWatcherSetupUtil");
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
      public function get savingP() : Label
      {
         return this._1872948374savingP;
      }
      
      public function __cb2_change(param1:Event) : void
      {
         changeTotalPrice(2);
      }
      
      public function set cav0(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046232cav0;
         if(_loc2_ !== param1)
         {
            this._3046232cav0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cb2() : CheckBox
      {
         return this._98227cb2;
      }
      
      public function set cav3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046235cav3;
         if(_loc2_ !== param1)
         {
            this._3046235cav3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav3",_loc2_,param1));
         }
      }
      
      public function set cav1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046233cav1;
         if(_loc2_ !== param1)
         {
            this._3046233cav1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav1",_loc2_,param1));
         }
      }
      
      public function set cav2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046234cav2;
         if(_loc2_ !== param1)
         {
            this._3046234cav2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav2",_loc2_,param1));
         }
      }
      
      public function __cb1_change(param1:Event) : void
      {
         changeTotalPrice(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cb3() : CheckBox
      {
         return this._98228cb3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cb1() : CheckBox
      {
         return this._98226cb1;
      }
      
      public function set curPrice0(param1:Label) : void
      {
         var _loc2_:Object = this._303942041curPrice0;
         if(_loc2_ !== param1)
         {
            this._303942041curPrice0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curPrice0",_loc2_,param1));
         }
      }
      
      public function set curPrice3(param1:Label) : void
      {
         var _loc2_:Object = this._303942038curPrice3;
         if(_loc2_ !== param1)
         {
            this._303942038curPrice3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curPrice3",_loc2_,param1));
         }
      }
      
      public function set curPrice1(param1:Label) : void
      {
         var _loc2_:Object = this._303942040curPrice1;
         if(_loc2_ !== param1)
         {
            this._303942040curPrice1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curPrice1",_loc2_,param1));
         }
      }
      
      public function set curTotalP(param1:Label) : void
      {
         var _loc2_:Object = this._191869972curTotalP;
         if(_loc2_ !== param1)
         {
            this._191869972curTotalP = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curTotalP",_loc2_,param1));
         }
      }
      
      public function set curPrice2(param1:Label) : void
      {
         var _loc2_:Object = this._303942039curPrice2;
         if(_loc2_ !== param1)
         {
            this._303942039curPrice2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curPrice2",_loc2_,param1));
         }
      }
      
      public function __buyBtn_click(param1:MouseEvent) : void
      {
         checkDeletePass();
      }
      
      public function set buyBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1377586698buyBtn;
         if(_loc2_ !== param1)
         {
            this._1377586698buyBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buyBtn",_loc2_,param1));
         }
      }
      
      public function ___SendCombineItem_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         initV();
      }
      
      [Bindable(event="propertyChange")]
      public function get curTotalP() : Label
      {
         return this._191869972curTotalP;
      }
      
      [Bindable(event="propertyChange")]
      public function get buyBtn() : BasicGlowButton
      {
         return this._1377586698buyBtn;
      }
      
      public function set item2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525951item2;
         if(_loc2_ !== param1)
         {
            this._100525951item2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",_loc2_,param1));
         }
      }
   }
}

