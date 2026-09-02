package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.vo.ToolTipVO;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.states.RemoveChild;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipItem extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _439241862reqClass:Text;
      
      private var _148001439useType:Text;
      
      private var dm:DataManager;
      
      mx_internal var _bindings:Array = [];
      
      private var _3582325vBox:VBox;
      
      mx_internal var _watchers:Array = [];
      
      private var _1638753418iconImg:Image;
      
      private var _1611566147customize:Text;
      
      public var _TipItem_RemoveChild1:RemoveChild;
      
      public var _TipItem_Label1:Label;
      
      public var _TipItem_Label2:Label;
      
      public var _TipItem_Text1:Text;
      
      public var _TipItem_Text2:Text;
      
      public var _TipItem_Text7:Text;
      
      private var _549739330canSell:Label;
      
      private var _3769vo:ToolTipVO;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipItem_Button1:Button;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _431118970reqLevel:Text;
      
      private var _747928928propJewel:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "id":"vBox",
               "stylesFactory":function():void
               {
                  this.verticalGap = 0;
                  this.paddingLeft = 5;
                  this.paddingRight = 5;
                  this.paddingTop = 5;
                  this.paddingBottom = 5;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Canvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":64,
                              "horizontalScrollPolicy":"off",
                              "verticalScrollPolicy":"off",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TipItem_Label1",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":61,
                                       "y":5,
                                       "text":"完美的什么装备名字[金]"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TipItem_Label2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 3997440;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":2,
                                       "y":50,
                                       "text":"已绑定"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"iconImg",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":5,
                                       "y":5,
                                       "width":48,
                                       "height":48
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipItem_Text1",
                        "stylesFactory":function():void
                        {
                           this.color = 16773307;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"装备描述"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipItem_Text2",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"物品类型: 武器"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"useType",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"使用对象: 123"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"reqLevel",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"等级需求: 123"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"reqClass",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"职业需求: 工程师 艺术家"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"propJewel",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"宝石属性"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipItem_Text7",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"装备描述2"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"customize",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "text":"自定义字段，如“当前剩余使用次数: 10”",
                              "visible":false
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Currency,
                        "id":"currencyPrice",
                        "propertiesFactory":function():Object
                        {
                           return {"width":100};
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"canSell",
                        "stylesFactory":function():void
                        {
                           this.color = 13158600;
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "id":"_TipItem_Button1",
               "events":{"click":"___TipItem_Button1_click"},
               "stylesFactory":function():void
               {
                  this.right = "5";
                  this.top = "5";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"BtnToolTipClose",
                     "width":15,
                     "height":15
                  };
               }
            })]};
         }
      });
      
      private var _1095316408currencyPrice:Currency;
      
      private var _core:Core;
      
      public function TipItem()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.currentState = "common";
         this.states = [_TipItem_State1_c(),_TipItem_State2_c()];
         this.addEventListener("resize",___TipItem_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipItem._watcherSetupUtil = param1;
      }
      
      public function set object(param1:Object) : void
      {
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         vo = new ToolTipVO();
         setCommon(param1);
         if(Boolean(param1.tempBagFlag || param1.slotType == Slot.SLOT_TREASURE || param1.slotType == Slot.SLOT_LOTTO) || Boolean(param1.slotType == Slot.SLOT_TEMP_SLOT) || param1.slotType == Slot.SLOT_TEMPORARY_BAG)
         {
            setTreasure(param1);
         }
         if(param1.type == BasicToolTip.TYPE_INST)
         {
            setTemp(param1);
         }
      }
      
      public function set customize(param1:Text) : void
      {
         var _loc2_:Object = this._1611566147customize;
         if(_loc2_ !== param1)
         {
            this._1611566147customize = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"customize",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg() : Image
      {
         return this._1638753418iconImg;
      }
      
      public function set canSell(param1:Label) : void
      {
         var _loc2_:Object = this._549739330canSell;
         if(_loc2_ !== param1)
         {
            this._549739330canSell = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSell",_loc2_,param1));
         }
      }
      
      public function set reqClass(param1:Text) : void
      {
         var _loc2_:Object = this._439241862reqClass;
         if(_loc2_ !== param1)
         {
            this._439241862reqClass = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqClass",_loc2_,param1));
         }
      }
      
      private function getItemTypeName(param1:int) : String
      {
         var _loc2_:String = GamePredef.ITEM_TYPE_NAME[param1];
         var _loc3_:String = GamePredef.ITEM_TYPE_NAME[GamePredef.ITEM_TYPE_OTHER];
         return null == _loc2_ ? _loc3_ : _loc2_;
      }
      
      public function set reqLevel(param1:Text) : void
      {
         var _loc2_:Object = this._431118970reqLevel;
         if(_loc2_ !== param1)
         {
            this._431118970reqLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevel",_loc2_,param1));
         }
      }
      
      private function _TipItem_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "simplify";
         _loc1_.overrides = [_TipItem_RemoveChild1_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqLevel() : Text
      {
         return this._431118970reqLevel;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipItem = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipItem_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipItemWatcherSetupUtil");
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
      public function get reqClass() : Text
      {
         return this._439241862reqClass;
      }
      
      [Bindable(event="propertyChange")]
      public function get propJewel() : Text
      {
         return this._747928928propJewel;
      }
      
      private function setTreasure(param1:Object) : void
      {
         var color:int = 0;
         var cb:Function = null;
         var value:Object = param1;
         vo.costVisible = value.temp.tradable > 0;
         if(ToolKit.isBigOrEqual(value.temp.color,0))
         {
            color = int(value.temp.color);
         }
         else if(value.slotData)
         {
            if(value.slotData.q)
            {
               color = _core.basic.getColorByQuality(value.slotData.q);
            }
            else if(value.slotData.quality)
            {
               color = _core.basic.getColorByQuality(value.slotData.quality);
            }
         }
         else
         {
            color = 0;
         }
         vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[color] + "\'>" + vo.name + (ToolKit.isOriginalMaterial(value.temp) ? "[" + GamePredef.POSTFIX_MATERIAL_NAME[color] + "]" : (ToolKit.isLifeMaterial(value.temp) ? "[" + Language.TIPITEM_S[29].toString().replace("{itemLevel}",value.temp.itemLevel) + "]" : "")) + "</font>";
         if(Boolean(value.slotData) && (Boolean(value.slotData.b) || Boolean(value.slotData.b == 0)))
         {
            vo.bind = value.slotData.b > 0 ? Language.TIPITEM_S[22] : Language.TIPITEM_S[23];
         }
         if(Boolean(value.slotData) && value.slotData.st == 3)
         {
            cb = function(param1:int):void
            {
               var _loc2_:String = null;
               if(param1 >= 0)
               {
                  _loc2_ = Language.TIPITEM_S[28];
                  _loc2_ = _loc2_.replace("{amount}",value.slotData.amount);
                  _loc2_ = _loc2_.replace("{remain}",param1);
                  _loc2_ = BasicToolTip.COLOR_YELLOW.replace("{str}",_loc2_);
                  vo.customize = _loc2_;
                  customize.visible = true;
               }
            };
            _core.remote.call("getRemainShopConfig",new Responder(cb),value.slotData.id);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyPrice() : Currency
      {
         return this._1095316408currencyPrice;
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      public function set iconImg(param1:Image) : void
      {
         var _loc2_:Object = this._1638753418iconImg;
         if(_loc2_ !== param1)
         {
            this._1638753418iconImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canSell() : Label
      {
         return this._549739330canSell;
      }
      
      [Bindable(event="propertyChange")]
      public function get customize() : Text
      {
         return this._1611566147customize;
      }
      
      private function _TipItem_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return currencyPrice;
         },function(param1:DisplayObject):void
         {
            _TipItem_RemoveChild1.target = param1;
         },"_TipItem_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipItem_Label1.htmlText = param1;
         },"_TipItem_Label1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipItem_Label2.htmlText = param1;
         },"_TipItem_Label2.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.urlIcon;
         },function(param1:Object):void
         {
            iconImg.source = param1;
         },"iconImg.source");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipItem_Text1.htmlText = param1;
         },"_TipItem_Text1.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.type;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipItem_Text2.htmlText = param1;
         },"_TipItem_Text2.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.useType;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useType.htmlText = param1;
         },"useType.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqLevel.htmlText = param1;
         },"reqLevel.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqClass;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqClass.htmlText = param1;
         },"reqClass.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propJewel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propJewel.htmlText = param1;
         },"propJewel.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.info;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipItem_Text7.htmlText = param1;
         },"_TipItem_Text7.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.customize;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            customize.htmlText = param1;
         },"customize.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.currency;
         },function(param1:Number):void
         {
            currencyPrice.value = param1;
         },"currencyPrice.value");
         result[12] = binding;
         binding = new Binding(this,function():uint
         {
            return vo.currencyType;
         },function(param1:uint):void
         {
            currencyPrice.type = param1;
         },"currencyPrice.type");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            currencyPrice.visible = param1;
         },"currencyPrice.visible");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            currencyPrice.includeInLayout = param1;
         },"currencyPrice.includeInLayout");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.priceType;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            currencyPrice.priceType = param1;
         },"currencyPrice.priceType");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !vo.costVisible;
         },function(param1:Boolean):void
         {
            canSell.visible = param1;
         },"canSell.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !vo.costVisible;
         },function(param1:Boolean):void
         {
            canSell.includeInLayout = param1;
         },"canSell.includeInLayout");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPITEM_S[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            canSell.text = param1;
         },"canSell.text");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.btnVisible;
         },function(param1:Boolean):void
         {
            _TipItem_Button1.visible = param1;
         },"_TipItem_Button1.visible");
         result[20] = binding;
         return result;
      }
      
      public function set propJewel(param1:Text) : void
      {
         var _loc2_:Object = this._747928928propJewel;
         if(_loc2_ !== param1)
         {
            this._747928928propJewel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propJewel",_loc2_,param1));
         }
      }
      
      public function set useType(param1:Text) : void
      {
         var _loc2_:Object = this._148001439useType;
         if(_loc2_ !== param1)
         {
            this._148001439useType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useType",_loc2_,param1));
         }
      }
      
      private function _TipItem_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "common";
         return _loc1_;
      }
      
      private function setTemp(param1:Object) : void
      {
         var _loc2_:Date = null;
         var _loc3_:String = null;
         if(ToolKit.isBigThan(param1.inst.t,0))
         {
            _loc2_ = new Date(Number(param1.inst.t));
            _loc3_ = Language.TIPITEM_S[24].toString();
            _loc3_ = _loc3_.replace("{fullYear}",_loc2_.fullYear);
            _loc3_ = _loc3_.replace("{lastMonth}",ToolKit.add(_loc2_.month,1));
            _loc3_ = _loc3_.replace("{lastDate}",_loc2_.date);
            _loc3_ = _loc3_.replace("{lastHour}",_loc2_.hours);
            _loc3_ = _loc3_.replace("{lastMinutes}",_loc2_.minutes);
            vo.info += _loc3_;
         }
         vo.costVisible = param1.temp.tradable > 0;
         if(vo.costVisible)
         {
            if(param1.temp.price > 0)
            {
               vo.priceType = Language.TIPITEM_S[27];
               vo.currency = int(param1.temp.price / 4);
               if(param1.inst.binded > 0)
               {
                  vo.currencyType = Currency.TYPE_MONEY_BIND;
               }
               else
               {
                  vo.currencyType = Currency.TYPE_MONEY;
               }
            }
            if(param1.temp.gold > 0)
            {
               vo.priceType = Language.TIPITEM_S[27];
               vo.currency = 1;
               if(param1.inst.binded > 0)
               {
                  vo.currencyType = Currency.TYPE_MONEY_BIND;
               }
               else
               {
                  vo.currencyType = Currency.TYPE_MONEY;
               }
            }
         }
         vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.inst.color] + "\'>" + vo.name + (ToolKit.isOriginalMaterial(param1.temp) ? "[" + GamePredef.POSTFIX_MATERIAL_NAME[param1.inst.color] + "]" : (ToolKit.isLifeMaterial(param1.temp) ? "[" + Language.TIPITEM_S[29].toString().replace("{itemLevel}",param1.temp.itemLevel) + "]" : "")) + "</font>";
         vo.bind = param1.inst.binded > 0 ? Language.TIPITEM_S[22] : Language.TIPITEM_S[23];
      }
      
      private function _TipItem_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipItem_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_TipItem_RemoveChild1",_TipItem_RemoveChild1);
         return _loc1_;
      }
      
      public function ___TipItem_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipItem_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currencyPrice;
         _loc1_ = vo.name;
         _loc1_ = vo.bind;
         _loc1_ = vo.urlIcon;
         _loc1_ = vo.description;
         _loc1_ = vo.type;
         _loc1_ = vo.useType;
         _loc1_ = vo.reqLevel;
         _loc1_ = vo.reqClass;
         _loc1_ = vo.propJewel;
         _loc1_ = vo.info;
         _loc1_ = vo.customize;
         _loc1_ = vo.currency;
         _loc1_ = vo.currencyType;
         _loc1_ = vo.costVisible;
         _loc1_ = vo.costVisible;
         _loc1_ = vo.priceType;
         _loc1_ = !vo.costVisible;
         _loc1_ = !vo.costVisible;
         _loc1_ = Language.TIPITEM_S[25];
         _loc1_ = vo.btnVisible;
      }
      
      private function setCommon(param1:Object) : void
      {
         var lastDate:Date = null;
         var endableTimeString:String = null;
         var minute:int = 0;
         var hour:int = 0;
         var day:int = 0;
         var month:int = 0;
         var year:int = 0;
         var i:int = 0;
         var tempObj:Object = null;
         var classAry:Array = null;
         var classNumAll:int = 0;
         var p:int = 0;
         var classAry2:Array = null;
         var classNumAll2:int = 0;
         var q:int = 0;
         var cb:Function = null;
         var value:Object = param1;
         vo.btnVisible = value.btnVisible;
         vo.name = value.temp.name;
         if(ToolKit.isBigOrEqual(value.temp.color,0))
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[value.temp.color] + "\'>" + value.temp.name + "</font>";
         }
         vo.urlIcon = ResManager.getIconUrl(value.temp.iconCode);
         ResManager.setColorCode(iconImg,value.temp.colorCode);
         vo.description = value.temp.description;
         vo.info = value.temp.info;
         if(Boolean(value.tempBagOt) && ToolKit.isBigThan(value.tempBagOt,0))
         {
            lastDate = new Date(Number(value.tempBagOt));
            endableTimeString = Language.TIPITEM_S[24].toString();
            endableTimeString = endableTimeString.replace("{fullYear}",lastDate.fullYear);
            endableTimeString = endableTimeString.replace("{lastMonth}",ToolKit.add(lastDate.month,1));
            endableTimeString = endableTimeString.replace("{lastDate}",lastDate.date);
            endableTimeString = endableTimeString.replace("{lastHour}",lastDate.hours);
            endableTimeString = endableTimeString.replace("{lastMinutes}",lastDate.minutes);
            vo.info += endableTimeString;
         }
         else if(ToolKit.isBigThan(value.temp.t,0) && ToolKit.isSmallOrEqual(value.temp.t,100000000000))
         {
            if(vo.info.length > 0)
            {
               vo.info += "<br>";
            }
            vo.info += Language.TIPITEM_S[0];
            minute = value.temp.t % 60;
            hour = Math.floor(value.temp.t / 60) % 24;
            day = Math.floor(value.temp.t / 1440) % 31;
            month = Math.floor(value.temp.t / 44640) % 365;
            year = Math.floor(value.temp.t / 16293600);
            if(ToolKit.isBigThan(year,0))
            {
               vo.info += Language.TIPITEM_S[1].toString().replace("{year}",year);
            }
            if(ToolKit.isBigThan(month,0))
            {
               vo.info += Language.TIPITEM_S[2].toString().replace("{month}",month);
            }
            if(ToolKit.isBigThan(day,0))
            {
               vo.info += Language.TIPITEM_S[3].toString().replace("{day}",day);
            }
            if(ToolKit.isBigThan(hour,0))
            {
               vo.info += Language.TIPITEM_S[4].toString().replace("{hour}",hour);
            }
            if(ToolKit.isBigThan(minute,0))
            {
               vo.info += Language.TIPITEM_S[5].toString().replace("{minute}",minute);
            }
         }
         vo.costVisible = true;
         vo.type = Language.TIPITEM_S[6] + getItemTypeName(value.temp.type);
         vo.bind = GamePredef.PROP_BINDTYPE[value.temp.bindType];
         if(value.cost > 0)
         {
            vo.currency = value.cost;
            vo.currencyType = value.costType;
         }
         else
         {
            if(value.temp.price > 0)
            {
               vo.priceType = Language.TIPITEM_S[26];
               vo.currency = value.temp.price;
               vo.currencyType = Currency.TYPE_MONEYALL;
            }
            if(value.temp.gold > 0)
            {
               vo.priceType = Language.TIPITEM_S[26];
               vo.currency = value.temp.gold;
               vo.currencyType = Currency.TYPE_GOLDALL;
            }
         }
         if(ToolKit.isEqual(value.temp.type,GamePredef.ITEM_TYPE_CREBOOK) || ToolKit.isEqual(value.temp.type,GamePredef.ITEM_TYPE_FAIRY_SKILL_ITEM))
         {
            propJewel.includeInLayout = false;
            propJewel.visible = false;
         }
         else if(value.temp.propType > 0)
         {
            propJewel.includeInLayout = true;
            propJewel.visible = true;
            if(ToolKit.isEqual(value.temp.type,GamePredef.ITEM_TYPE_PETFUNC))
            {
               if(ToolKit.isEqual(value.temp.propType,GamePredef.ITEM_TYPE_PETFUNC_TYPE[3]))
               {
                  vo.propJewel = Language.TIPITEM_S[7] + FONT_COLOR_PRE_PROP + value.temp.proplNum / 100 + FONT_COLOR_SUF_PROP;
               }
               else if(ToolKit.isEqual(value.temp.propType,GamePredef.ITEM_TYPE_PETFUNC_TYPE[2]))
               {
                  switch(Number(value.temp.proplNum))
                  {
                     case GamePredef.ITEM_TYPE_XSD_TYPE[1]:
                        vo.propJewel = Language.TIPITEM_S[8];
                        break;
                     case GamePredef.ITEM_TYPE_XSD_TYPE[2]:
                        vo.propJewel = Language.TIPITEM_S[9];
                        break;
                     case GamePredef.ITEM_TYPE_XSD_TYPE[3]:
                        vo.propJewel = Language.TIPITEM_S[10];
                        break;
                     case GamePredef.ITEM_TYPE_XSD_TYPE[4]:
                        vo.propJewel = Language.TIPITEM_S[11];
                        break;
                     case GamePredef.ITEM_TYPE_XSD_TYPE[5]:
                        vo.propJewel = Language.TIPITEM_S[12];
                  }
               }
            }
            else if(ToolKit.isEqual(value.temp.type,GamePredef.ITEM_TYPE_TEMP_BAG))
            {
               vo.propJewel = Language.TIPITEM_S[30] + ": " + value.temp.proplNum;
            }
            else
            {
               vo.propJewel = GamePredef.JEWEL_PROP_NAME[value.temp.propType] + ": " + FONT_COLOR_PRE_PROP + value.temp.proplNum + FONT_COLOR_SUF_PROP;
            }
         }
         else if(value.temp.kind == GamePredef.ITEM_KIND_FEATHER)
         {
            propJewel.includeInLayout = true;
            propJewel.visible = true;
            vo.propJewel = "";
            i = 1;
            while(i <= 3)
            {
               if(value.temp["i" + i] > 0)
               {
                  if(value.temp.type == GamePredef.ITEM_TYPE_FEATHER_MIX)
                  {
                     tempObj = _core.data.gameData[GamePredef.TBL_ITEM_TEMPLATE][value.temp["i" + i]];
                     if(tempObj)
                     {
                        vo.propJewel += tempObj.name + ": " + Language.TIPITEM_S[31].replace("{num}",value.temp["n" + i]) + "\n";
                     }
                  }
                  else
                  {
                     vo.propJewel += GamePredef.FEATHER_PROP_NAME[value.temp["i" + i]] + ": " + FONT_COLOR_PRE_PROP + value.temp["n" + i];
                     if(value.temp.type == GamePredef.ITEM_TYPE_FEATHER_D)
                     {
                        vo.propJewel += "%";
                     }
                     vo.propJewel += FONT_COLOR_SUF_PROP + "\n";
                  }
               }
               i++;
            }
            vo.propJewel.substr(0,vo.propJewel.length - 2);
         }
         switch(Number(value.temp.useType))
         {
            case 1:
               vo.useType = Language.TIPITEM_S[13];
               if(value.temp.reqLevel)
               {
                  vo.reqLevel = Language.TIPITEM_S[14].toString().replace("{reqLevel}",value.temp.reqLevel);
                  if(ToolKit.isSmallThan(_core.player.level,value.temp.reqLevel))
                  {
                     vo.reqLevel = FONT_COLOR_RED_PROP + vo.reqLevel + FONT_COLOR_SUF_PROP;
                  }
               }
               if(value.temp.reqClass)
               {
                  vo.reqClass = Language.TIPITEM_S[15];
                  classAry = value.temp.reqClass.split("|");
                  classNumAll = 0;
                  for each(p in classAry)
                  {
                     if(Boolean(p) && Boolean(p >= 1) && p <= 6)
                     {
                        vo.reqClass += dm.getGameDataList(GamePredef.TBL_CLASS)[p].name + " ";
                        classNumAll += p;
                     }
                  }
                  if(classNumAll == 21)
                  {
                     vo.reqClass = Language.TIPITEM_S[16];
                  }
                  if(String(value.temp.reqClass).indexOf("|" + _core.player.classId + "|") < 0)
                  {
                     vo.reqClass = FONT_COLOR_RED_PROP + vo.reqClass + FONT_COLOR_SUF_PROP;
                  }
               }
               useType.includeInLayout = true;
               reqLevel.includeInLayout = true;
               reqClass.includeInLayout = true;
               useType.visible = true;
               reqLevel.visible = true;
               reqClass.visible = true;
               break;
            case 2:
               vo.useType = Language.TIPITEM_S[17];
               if(value.temp.reqLevel)
               {
                  vo.reqLevel = Language.TIPITEM_S[14].toString().replace("{reqLevel}",value.temp.reqLevel);
               }
               useType.includeInLayout = true;
               reqLevel.includeInLayout = true;
               reqClass.includeInLayout = false;
               useType.visible = true;
               reqLevel.visible = true;
               reqClass.visible = true;
               break;
            case 3:
               vo.useType = Language.TIPITEM_S[18];
               if(value.temp.reqLevel)
               {
                  vo.reqLevel = Language.TIPITEM_S[14].toString().replace("{reqLevel}",value.temp.reqLevel);
                  if(ToolKit.isSmallThan(_core.player.level,value.temp.reqLevel))
                  {
                     vo.reqLevel = FONT_COLOR_RED_PROP + vo.reqLevel + FONT_COLOR_SUF_PROP;
                  }
               }
               useType.includeInLayout = true;
               reqLevel.includeInLayout = true;
               reqClass.includeInLayout = false;
               useType.visible = true;
               reqLevel.visible = true;
               reqClass.visible = false;
               break;
            case 4:
               useType.includeInLayout = false;
               reqLevel.includeInLayout = false;
               reqClass.includeInLayout = false;
               useType.visible = false;
               reqLevel.visible = false;
               reqClass.visible = false;
         }
         if(ToolKit.isEqual(value.temp.type,GamePredef.ITEM_TYPE_CREBOOK))
         {
            vo.useType = Language.TIPITEM_S[19];
            classAry2 = value.temp.reqClass.split("|");
            classNumAll2 = 0;
            for each(q in classAry2)
            {
               if(Boolean(q) && Boolean(q >= 1) && q <= 6)
               {
                  vo.useType += " " + GamePredef.CREATURE_CLASS_NAME[q];
                  classNumAll2 += q;
               }
            }
            if(classNumAll2 == 21)
            {
               vo.useType = Language.TIPITEM_S[20];
            }
            vo.useType += Language.TIPITEM_S[21].toString().replace("{CREATURE_QLEVEL}",GamePredef.CREATURE_QLEVEL[value.temp.proplNum]);
            useType.includeInLayout = true;
            reqLevel.includeInLayout = false;
            reqClass.includeInLayout = false;
            useType.visible = true;
            reqLevel.visible = false;
            reqClass.visible = false;
         }
         if(ToolKit.isEqual(value.temp.type,GamePredef.ITEM_TYPE_FAIRY_SKILL_ITEM))
         {
            vo.useType = Language.TIPITEM_S[32];
            vo.reqLevel = Language.TIPITEM_S[33].toString().replace("{reqLevel}",value.temp.reqLevel);
            useType.includeInLayout = true;
            reqLevel.includeInLayout = true;
            reqClass.includeInLayout = false;
            useType.visible = true;
            reqLevel.visible = true;
            reqClass.visible = false;
         }
         if(Boolean(value.inst) && Boolean(value.inst.f) && String(value.inst.f).indexOf("tipFormat") >= 0)
         {
            cb = function(param1:*):void
            {
               var _loc2_:String = param1.tipFormat;
               var _loc3_:Array = _loc2_.split("|");
               var _loc4_:String = "";
               var _loc5_:int = 0;
               while(_loc5_ < _loc3_.length)
               {
                  _loc4_ += param1[_loc3_[_loc5_]];
                  _loc5_++;
               }
               vo.customize = _loc4_;
               customize.visible = true;
            };
            _core.remote.call("getItemInst_f",new Responder(cb),value.inst.id);
         }
      }
      
      public function set currencyPrice(param1:Currency) : void
      {
         var _loc2_:Object = this._1095316408currencyPrice;
         if(_loc2_ !== param1)
         {
            this._1095316408currencyPrice = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyPrice",_loc2_,param1));
         }
      }
      
      public function set vBox(param1:VBox) : void
      {
         var _loc2_:Object = this._3582325vBox;
         if(_loc2_ !== param1)
         {
            this._3582325vBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vBox",_loc2_,param1));
         }
      }
      
      private function set vo(param1:ToolTipVO) : void
      {
         var _loc2_:Object = this._3769vo;
         if(_loc2_ !== param1)
         {
            this._3769vo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vo",_loc2_,param1));
         }
      }
      
      public function currencyHide(param1:String) : void
      {
         if(param1 == "temp")
         {
            currentState = "simplify";
         }
         if(param1 == "inst")
         {
            if(!vo.currency || vo.currency < 500 || canSell.visible)
            {
               currentState = "simplify";
            }
            else
            {
               currentState = "common";
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vBox() : VBox
      {
         return this._3582325vBox;
      }
      
      public function ___TipItem_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get useType() : Text
      {
         return this._148001439useType;
      }
   }
}

