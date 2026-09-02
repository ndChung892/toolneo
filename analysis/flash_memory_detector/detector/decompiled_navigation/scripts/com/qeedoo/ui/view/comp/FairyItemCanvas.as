package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.FairyLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
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
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.core.IUITextField;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.RemoveChild;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairyItemCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _102449glv:Label;
      
      private var _148334278useItem:ItemSlot;
      
      private var _100525950item1:ItemSlot;
      
      public var _FairyItemCanvas_RemoveChild1:RemoveChild;
      
      public var _FairyItemCanvas_RemoveChild2:RemoveChild;
      
      public var _FairyItemCanvas_RemoveChild3:RemoveChild;
      
      public var _FairyItemCanvas_RemoveChild4:RemoveChild;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3466lv:Label;
      
      private var _1289185239expNum:Label;
      
      private var _3519nm:Label;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var itemLimit:Object;
      
      private var _100525952item3:ItemSlot;
      
      public var _FairyItemCanvas_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _3237038info:Label;
      
      private var _97884btn:BasicGlowButton;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _100525951item2:ItemSlot;
      
      private var _fairy:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _p:DragableCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":250,
               "height":300,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FairyItemCanvas_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":60,
                        "x":5,
                        "width":240,
                        "height":220,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"nm",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":84,
                                 "width":89
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"lv",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":110,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"glv",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":136,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"info",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":100,
                                 "y":136,
                                 "width":130
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"useItem",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":103,
                                 "y":84,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn",
                           "events":{"click":"__btn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":122,
                                 "y":173,
                                 "styleName":"BtnNormalRed",
                                 "width":60
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "acceptable":false,
                                 "x":24,
                                 "y":19,
                                 "giid":3390
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "acceptable":false,
                                 "x":103,
                                 "y":19,
                                 "giid":3391
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "movable":false,
                                 "acceptable":false,
                                 "x":182,
                                 "y":19,
                                 "giid":3392
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"expNum",
                           "stylesFactory":function():void
                           {
                              this.color = 16756247;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":12,
                                 "y":198,
                                 "width":218
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":40,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "width":45
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":40,
                        "styleName":"HorizontalTab",
                        "width":45
                     };
                  }
               })]
            };
         }
      });
      
      public function FairyItemCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 250;
         this.height = 300;
         this.styleName = "StandardContent";
         this.states = [_FairyItemCanvas_State1_c()];
         this.addEventListener("creationComplete",___FairyItemCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairyItemCanvas._watcherSetupUtil = param1;
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
      
      public function ___FairyItemCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         fairyRaise();
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
      
      private function init() : void
      {
         useItem.addEventListener(GameEvent.SLOT_GIID_CHANGE,onItemChanged);
         currentState = "doh";
         item1.addEventListener(MouseEvent.CLICK,onExpItemClick);
         item2.addEventListener(MouseEvent.CLICK,onExpItemClick);
         item3.addEventListener(MouseEvent.CLICK,onExpItemClick);
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
      
      public function set lv(param1:Label) : void
      {
         var _loc2_:Object = this._3466lv;
         if(_loc2_ !== param1)
         {
            this._3466lv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv",_loc2_,param1));
         }
      }
      
      private function onExpItemClick(param1:MouseEvent) : void
      {
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         if(_loc2_.stackNum > 0)
         {
            useItem.type = _loc2_.type;
            useItem.giid = _loc2_.giid;
            useItem.stackNum = _loc2_.stackNum;
         }
         else
         {
            useItem.clean();
            _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[69]);
         }
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
      
      private function fairyRaise() : void
      {
         var func:Function = null;
         var itemIns:Object = null;
         var itemTemp:Object = null;
         var str:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var sidArr:Array = null;
         var obj:Object = null;
         var useSids:Array = null;
         var num:int = 0;
         var i:int = 0;
         var ins:Object = null;
         var temp:Object = null;
         if(tabBtn0.selected)
         {
            if(Boolean(useItem.slotData) && Boolean(_fairy))
            {
               func = function(param1:CloseEvent):void
               {
                  if(!param1 || param1.detail == Alert.YES)
                  {
                     _core.remote.call("fairyRaise",new Responder(onFairyRaise),_fairy.id,useItem.slotData.id,1);
                     btn.enabled = false;
                  }
               };
               itemIns = _core.data.getData(useItem.slotData.type,useItem.slotData.itemId);
               itemTemp = _core.getTemplateData(useItem.slotData.type,useItem.slotData.itemId,false);
               if(Boolean(itemTemp) && Boolean(itemIns) && itemIns.color >= 3)
               {
                  str = Language.FAIRY_MANAGER_PANEL_U[75].replace("{name}",ToolKit.getColorTxt(GamePredef.MSG_ITEM_COLOR[itemIns.color],itemTemp.name));
                  _alert = Alert.show(Language.FAIRY_MANAGER_PANEL_U[75].replace("{name}",itemTemp.name),"",Alert.YES | Alert.NO,null,func);
                  tf = _alert.mx_internal::alertForm.mx_internal::textField;
                  tf.htmlText = str;
               }
               else
               {
                  func(null);
               }
            }
         }
         else
         {
            if(FairyLogic.expToLv(_fairy.exp) >= GamePredef.FAIRY_MAX_LEVEL)
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[41]);
               return;
            }
            if(useItem.stackNum > 0 && Boolean(_fairy))
            {
               sidArr = [];
               for each(obj in _core.data.sList)
               {
                  if(Boolean(obj) && Boolean(_core.data.isBagSlot(obj.sid)) && obj.type == GamePredef.TBL_ITEM_INSTANCE)
                  {
                     ins = _core.data.gameData[obj.type][obj.itemId];
                     temp = _core.getTemplateData(obj.type,obj.itemId);
                     if(Boolean(temp) && temp.id == useItem.giid)
                     {
                        sidArr.push({
                           "id":obj.id,
                           "bind":ins.binded,
                           "num":obj.stackNum
                        });
                     }
                  }
               }
               sidArr = sidArr.sortOn("bind",Array.NUMERIC | Array.DESCENDING);
               useSids = [];
               num = 0;
               i = 0;
               while(i < sidArr.length)
               {
                  num += Number(sidArr[i].num);
                  useSids.push(sidArr[i].id);
                  if(num >= 1)
                  {
                     break;
                  }
                  i++;
               }
               if(num >= 1)
               {
                  _core.remote.call("addFairyExp",new Responder(onAddFairyExp),_fairy.id,useSids,1);
                  btn.enabled = false;
               }
            }
         }
      }
      
      private function _FairyItemCanvas_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _FairyItemCanvas_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_FairyItemCanvas_RemoveChild2",_FairyItemCanvas_RemoveChild2);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get expNum() : Label
      {
         return this._1289185239expNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get glv() : Label
      {
         return this._102449glv;
      }
      
      [Bindable(event="propertyChange")]
      public function get useItem() : ItemSlot
      {
         return this._148334278useItem;
      }
      
      public function hide() : void
      {
         this.visible = false;
      }
      
      private function onMove(param1:Event) : void
      {
         this.x = _p.x + _p.width;
         this.y = _p.y;
      }
      
      public function set expNum(param1:Label) : void
      {
         var _loc2_:Object = this._1289185239expNum;
         if(_loc2_ !== param1)
         {
            this._1289185239expNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expNum",_loc2_,param1));
         }
      }
      
      private function onFairyRaise(param1:Object) : void
      {
         var _loc2_:String = null;
         btn.enabled = true;
         if(param1.f)
         {
            if(param1.num > 0)
            {
               useItem.stackNum = param1.num;
            }
            else
            {
               useItem.clean();
            }
         }
         else
         {
            _loc2_ = param1.code;
            if(_loc2_ == "full")
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[47]);
            }
            else if(_loc2_ == "item")
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[46]);
            }
            else if(_loc2_ == "num")
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[48]);
            }
            else
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[49]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : BasicGlowButton
      {
         return this._97884btn;
      }
      
      private function _FairyItemCanvas_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _FairyItemCanvas_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_FairyItemCanvas_RemoveChild1",_FairyItemCanvas_RemoveChild1);
         return _loc1_;
      }
      
      public function set info(param1:Label) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      public function set glv(param1:Label) : void
      {
         var _loc2_:Object = this._102449glv;
         if(_loc2_ !== param1)
         {
            this._102449glv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glv",_loc2_,param1));
         }
      }
      
      private function onAddFairyExp(param1:Object) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         btn.enabled = true;
         if(param1.f)
         {
            if(param1.num > 0)
            {
               _fairy.flag["en"] = param1.en;
               expNum.text = Language.FAIRY_MANAGER_PANEL_U[73].replace("{fairy}",_fairy.name).replace("{num}",param1.en);
               if(param1.en == 0)
               {
               }
               useItem.stackNum -= param1.num;
               _loc2_ = 1;
               while(_loc2_ <= 3)
               {
                  if(this["item" + _loc2_].giid == useItem.giid)
                  {
                     this["item" + _loc2_].stackNum = useItem.stackNum;
                  }
                  _loc2_++;
               }
               if(useItem.stackNum <= 0)
               {
                  useItem.clean();
               }
            }
            else
            {
               useItem.clean();
            }
         }
         else
         {
            _loc3_ = param1.code;
            if(_loc3_ == "item")
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[46]);
            }
            else if(_loc3_ == "num")
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[48]);
            }
            else if(_loc3_ != "max")
            {
               if(_loc3_ == "out")
               {
                  _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[77]);
               }
            }
         }
      }
      
      private function _FairyItemCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyItemCanvas_BasicTitleCanvas1.text = param1;
         },"_FairyItemCanvas_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return item1;
         },function(param1:DisplayObject):void
         {
            _FairyItemCanvas_RemoveChild1.target = param1;
         },"_FairyItemCanvas_RemoveChild1.target");
         result[1] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return item2;
         },function(param1:DisplayObject):void
         {
            _FairyItemCanvas_RemoveChild2.target = param1;
         },"_FairyItemCanvas_RemoveChild2.target");
         result[2] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return item3;
         },function(param1:DisplayObject):void
         {
            _FairyItemCanvas_RemoveChild3.target = param1;
         },"_FairyItemCanvas_RemoveChild3.target");
         result[3] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return expNum;
         },function(param1:DisplayObject):void
         {
            _FairyItemCanvas_RemoveChild4.target = param1;
         },"_FairyItemCanvas_RemoveChild4.target");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            nm.filters = param1;
         },"nm.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            lv.filters = param1;
         },"lv.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            glv.filters = param1;
         },"glv.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            info.filters = param1;
         },"info.filters");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUFUNC_ITEM;
         },function(param1:int):void
         {
            useItem.slotType = param1;
         },"useItem.slotType");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn.label = param1;
         },"btn.label");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item1.type = param1;
         },"item1.type");
         result[11] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item2.type = param1;
         },"item2.type");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            item3.type = param1;
         },"item3.type");
         result[13] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            expNum.filters = param1;
         },"expNum.filters");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[16] = binding;
         return result;
      }
      
      private function _FairyItemCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[42];
         _loc1_ = item1;
         _loc1_ = item2;
         _loc1_ = item3;
         _loc1_ = expNum;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Slot.SLOT_EQUFUNC_ITEM;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[45];
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[43];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[44];
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         changeFunc(0);
      }
      
      public function set useItem(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._148334278useItem;
         if(_loc2_ !== param1)
         {
            this._148334278useItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useItem",_loc2_,param1));
         }
      }
      
      public function set nm(param1:Label) : void
      {
         var _loc2_:Object = this._3519nm;
         if(_loc2_ !== param1)
         {
            this._3519nm = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nm",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemSlot
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemSlot
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get lv() : Label
      {
         return this._3466lv;
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemSlot
      {
         return this._100525950item1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairyItemCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairyItemCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FairyItemCanvasWatcherSetupUtil");
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
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function changeFunc(param1:int) : void
      {
         if(param1 == 0)
         {
            tabBtn0.selected = true;
            tabBtn1.selected = false;
            currentState = "doh";
            itemLimit = {"type":[601,602,603,604,605]};
            useItem.acceptable = true;
         }
         else if(param1 == 1)
         {
            currentState = "";
            tabBtn0.selected = false;
            tabBtn1.selected = true;
            itemLimit = null;
            useItem.acceptable = false;
            refreshExpItemNum();
         }
         if(_fairy)
         {
            fairy = _fairy;
         }
         useItem.clean();
      }
      
      private function _FairyItemCanvas_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "doh";
         _loc1_.overrides = [_FairyItemCanvas_RemoveChild1_i(),_FairyItemCanvas_RemoveChild2_i(),_FairyItemCanvas_RemoveChild3_i(),_FairyItemCanvas_RemoveChild4_i()];
         return _loc1_;
      }
      
      private function _FairyItemCanvas_RemoveChild4_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _FairyItemCanvas_RemoveChild4 = _loc1_;
         BindingManager.executeBindings(this,"_FairyItemCanvas_RemoveChild4",_FairyItemCanvas_RemoveChild4);
         return _loc1_;
      }
      
      public function set fairy(param1:Object) : void
      {
         var _loc2_:String = null;
         _fairy = param1;
         nm.text = _fairy.name;
         if(tabBtn0.selected)
         {
            lv.text = Language.FAIRY_MANAGER_PANEL_U[8] + ":" + Math.round(_fairy.doh / 100);
            glv.text = "";
            info.text = Language.FAIRY_MANAGER_PANEL_U[70];
            btn.enabled = true;
         }
         else
         {
            lv.text = Language.FAIRY_MANAGER_PANEL_U[30] + ":" + FairyLogic.expToLv(_fairy.exp).toString();
            glv.text = Language.FAIRY_MANAGER_PANEL_U[40] + ":" + FairyLogic.gexpToLv(_fairy.gexp).toString();
            info.text = Language.FAIRY_MANAGER_PANEL_U[71];
            _loc2_ = "5";
            if(_fairy.flag)
            {
               _loc2_ = _fairy.flag["en"] || "0";
            }
            expNum.text = Language.FAIRY_MANAGER_PANEL_U[73].replace("{fairy}",_fairy.name).replace("{num}",_loc2_);
            btn.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Label
      {
         return this._3237038info;
      }
      
      public function follow(param1:DragableCanvas) : void
      {
         _p = param1;
         this.x = param1.x + param1.width;
         this.y = param1.y;
         if(this.visible)
         {
            param1.addEventListener(DragableCanvas.EVENT_MOVE,onMove);
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         changeFunc(1);
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
      
      private function onItemChanged(param1:GameEvent) : void
      {
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc2_:Object = useItem.slotData;
         if(_loc2_)
         {
            _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.itemId,false);
            if(_loc3_)
            {
               for(_loc4_ in itemLimit)
               {
                  if(!(Boolean(_loc3_[_loc4_]) && itemLimit[_loc4_].indexOf(Number(_loc3_[_loc4_])) >= 0))
                  {
                     _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[46]);
                     useItem.clean();
                  }
               }
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nm() : Label
      {
         return this._3519nm;
      }
      
      private function refreshExpItemNum() : void
      {
         var _loc1_:Object = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,3390);
         item1.stackNum = _loc1_.num;
         _loc1_ = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,3391);
         item2.stackNum = _loc1_.num;
         _loc1_ = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,3392);
         item3.stackNum = _loc1_.num;
      }
      
      private function _FairyItemCanvas_RemoveChild3_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _FairyItemCanvas_RemoveChild3 = _loc1_;
         BindingManager.executeBindings(this,"_FairyItemCanvas_RemoveChild3",_FairyItemCanvas_RemoveChild3);
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(_p)
         {
            super.visible = param1;
            if(param1)
            {
               follow(_p);
               if(this.parent)
               {
                  this.parent.setChildIndex(this,this.parent.numChildren - 1);
               }
               if(tabBtn1.selected)
               {
                  refreshExpItemNum();
               }
            }
            else
            {
               _p.removeEventListener(DragableCanvas.EVENT_MOVE,onMove);
            }
         }
         else
         {
            super.visible = false;
         }
      }
      
      public function show() : void
      {
         this.visible = !this.visible;
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

