package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlotJewel;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class JewelExchagePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _847667717jewelExchageItem2:ItemSlotJewel;
      
      private var _100348226info0:Label;
      
      private var _1110417474label2:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _847667718jewelExchageItem1:ItemSlotJewel;
      
      private var _1110417472label4:Label;
      
      private var _3237038info:Label;
      
      private var jewel_color1:Object = [55,56,57,58,59];
      
      private var jewel_color2:Object = [60,61,62,63,64];
      
      private var _847667719jewelExchageItem0:ItemSlotJewel;
      
      private var _1322604301eTitle:BasicTitleCanvas;
      
      private var _847667715jewelExchageItem4:ItemSlotJewel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1110417475label1:Label;
      
      private var _1110417473label3:Label;
      
      private var _847667716jewelExchageItem3:ItemSlotJewel;
      
      internal var _alert:Alert;
      
      private var _matrix:Array = [new ColorMatrixFilter([0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0.3086,0.6094,0.082,0,0,0,0,0,1,0])];
      
      mx_internal var _bindings:Array = [];
      
      private var _1640725936jewelExchageButtonOne:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":306,
               "height":242,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"eTitle",
                  "events":{"creationComplete":"__eTitle_creationComplete"}
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":36,
                        "width":286,
                        "height":195,
                        "styleName":"txtArea",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"jewelExchageButtonOne",
                           "events":{"click":"__jewelExchageButtonOne_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnStdRed",
                                 "x":118,
                                 "width":50,
                                 "y":168
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"info0",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":57,
                                 "y":5,
                                 "width":257,
                                 "height":37
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlotJewel,
                  "id":"jewelExchageItem0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":84,
                        "movable":true,
                        "showStackNum":true,
                        "x":134
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlotJewel,
                  "id":"jewelExchageItem1",
                  "events":{"click":"__jewelExchageItem1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":142,
                        "movable":false,
                        "showStackNum":true,
                        "x":49
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"label1",
                  "events":{"click":"__label1_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 30;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":47,
                        "y":146,
                        "height":28,
                        "width":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlotJewel,
                  "id":"jewelExchageItem2",
                  "events":{"click":"__jewelExchageItem2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":142,
                        "movable":false,
                        "showStackNum":true,
                        "x":221
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"label2",
                  "events":{"click":"__label2_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 30;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":219,
                        "y":146,
                        "height":28,
                        "width":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlotJewel,
                  "id":"jewelExchageItem3",
                  "events":{"click":"__jewelExchageItem3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":142,
                        "movable":false,
                        "showStackNum":true,
                        "x":107
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"label3",
                  "events":{"click":"__label3_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 30;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":105,
                        "y":146,
                        "height":28
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlotJewel,
                  "id":"jewelExchageItem4",
                  "events":{"click":"__jewelExchageItem4_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":142,
                        "movable":false,
                        "showStackNum":true,
                        "x":160
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"label4",
                  "events":{"click":"__label4_click"},
                  "stylesFactory":function():void
                  {
                     this.fontSize = 30;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":158,
                        "y":146,
                        "height":28
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"info",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":49,
                        "y":182,
                        "width":257
                     };
                  }
               })]
            };
         }
      });
      
      private var _selectIndex:Number = 0;
      
      private var _core:Core = Core.getInstance();
      
      public function JewelExchagePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 306;
         this.height = 242;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         JewelExchagePanel._watcherSetupUtil = param1;
      }
      
      public function set jewelExchageItem0(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._847667719jewelExchageItem0;
         if(_loc2_ !== param1)
         {
            this._847667719jewelExchageItem0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelExchageItem0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelExchageItem2() : ItemSlotJewel
      {
         return this._847667717jewelExchageItem2;
      }
      
      public function set jewelExchageItem1(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._847667718jewelExchageItem1;
         if(_loc2_ !== param1)
         {
            this._847667718jewelExchageItem1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelExchageItem1",_loc2_,param1));
         }
      }
      
      public function set info0(param1:Label) : void
      {
         var _loc2_:Object = this._100348226info0;
         if(_loc2_ !== param1)
         {
            this._100348226info0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info0",_loc2_,param1));
         }
      }
      
      private function selectChageJewel(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(Boolean(jewelExchageItem0.slotData) && Boolean(this["jewelExchageItem" + param1].giid))
         {
            _selectIndex = 0;
            _loc2_ = 1;
            while(_loc2_ <= 4)
            {
               if(_loc2_ == param1)
               {
                  this["label" + _loc2_].htmlText = Language.JEWEL_EXCHANGE_PANEL[1];
                  _selectIndex = param1;
               }
               else
               {
                  this["label" + _loc2_].htmlText = "";
               }
               _loc2_++;
            }
         }
      }
      
      public function set label4(param1:Label) : void
      {
         var _loc2_:Object = this._1110417472label4;
         if(_loc2_ !== param1)
         {
            this._1110417472label4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label4",_loc2_,param1));
         }
      }
      
      public function set eTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1322604301eTitle;
         if(_loc2_ !== param1)
         {
            this._1322604301eTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"eTitle",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get jewelExchageItem3() : ItemSlotJewel
      {
         return this._847667716jewelExchageItem3;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelExchageItem4() : ItemSlotJewel
      {
         return this._847667715jewelExchageItem4;
      }
      
      public function set label3(param1:Label) : void
      {
         var _loc2_:Object = this._1110417473label3;
         if(_loc2_ !== param1)
         {
            this._1110417473label3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label3",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:JewelExchagePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _JewelExchagePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_JewelExchagePanelWatcherSetupUtil");
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
      public function get jewelExchageItem1() : ItemSlotJewel
      {
         return this._847667718jewelExchageItem1;
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelExchageItem0() : ItemSlotJewel
      {
         return this._847667719jewelExchageItem0;
      }
      
      public function set jewelExchageItem4(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._847667715jewelExchageItem4;
         if(_loc2_ !== param1)
         {
            this._847667715jewelExchageItem4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelExchageItem4",_loc2_,param1));
         }
      }
      
      public function set label2(param1:Label) : void
      {
         var _loc2_:Object = this._1110417474label2;
         if(_loc2_ !== param1)
         {
            this._1110417474label2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label2",_loc2_,param1));
         }
      }
      
      public function set jewelExchageButtonOne(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1640725936jewelExchageButtonOne;
         if(_loc2_ !== param1)
         {
            this._1640725936jewelExchageButtonOne = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelExchageButtonOne",_loc2_,param1));
         }
      }
      
      public function __jewelExchageItem1_click(param1:MouseEvent) : void
      {
         selectChageJewel(1);
      }
      
      public function __eTitle_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __jewelExchageItem3_click(param1:MouseEvent) : void
      {
         selectChageJewel(3);
      }
      
      private function jewelExchageItemChange(param1:Event) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         jewelExchageButtonOne.enabled = true;
         info.htmlText = Language.JEWEL_EXCHANGE_PANEL[5];
         jewelExchageItem1.clean();
         jewelExchageItem2.clean();
         jewelExchageItem3.clean();
         jewelExchageItem4.clean();
         _selectIndex = 0;
         var _loc2_:Object = jewelExchageItem0.slotData;
         if(_loc2_)
         {
            if(jewelExchageItem0.tempBagFlag)
            {
               _loc3_ = _core.getTemplateData(_loc2_.ti,_loc2_.ii);
            }
            else
            {
               _loc3_ = _core.getTemplateData(_loc2_.type,_loc2_.itemId);
            }
            if(Boolean(_loc3_) && ToolKit.isEqual(_loc3_.type,GamePredef.ITEM_TYPE_JEWEL))
            {
               _loc4_ = 0;
               if(_loc3_.id)
               {
                  for(_loc6_ in jewel_color1)
                  {
                     if(Number(jewel_color1[_loc6_]) == _loc3_.id)
                     {
                        _loc4_ = 1;
                        break;
                     }
                  }
                  for(_loc6_ in jewel_color2)
                  {
                     if(Number(jewel_color2[_loc6_]) == _loc3_.id)
                     {
                        _loc4_ = 2;
                        break;
                     }
                  }
                  if(_loc4_ == 0)
                  {
                     jewelExchageItem0.clean();
                     info.htmlText = "";
                     return;
                  }
               }
               _loc5_ = 1;
               _loc6_ = 1;
               while(_loc6_ <= 5)
               {
                  if(!ToolKit.isEqual(this["jewel_color" + _loc4_][Number(Number(_loc6_) - 1)],_loc3_.id))
                  {
                     this["jewelExchageItem" + _loc5_].type = GamePredef.TBL_ITEM_TEMPLATE;
                     this["jewelExchageItem" + _loc5_].giid = this["jewel_color" + _loc4_][Number(Number(_loc6_) - 1)];
                     this["jewelExchageItem" + _loc5_].stackNum = jewelExchageItem0.stackNum;
                     _loc5_++;
                  }
                  _loc6_++;
               }
            }
         }
      }
      
      private function init() : void
      {
         jewelExchageItem0.addEventListener(GameEvent.SLOT_NUM_CHANGE,jewelExchageItemChange);
      }
      
      public function __label4_click(param1:MouseEvent) : void
      {
         selectChageJewel(4);
      }
      
      private function _JewelExchagePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JEWEL_EXCHANGE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            eTitle.text = param1;
         },"eTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JEWEL_EXCHANGE_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            jewelExchageButtonOne.label = param1;
         },"jewelExchageButtonOne.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JEWEL_EXCHANGE_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info0.text = param1;
         },"info0.text");
         result[2] = binding;
         return result;
      }
      
      private function _JewelExchagePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.JEWEL_EXCHANGE_PANEL[0];
         _loc1_ = Language.JEWEL_EXCHANGE_PANEL[2];
         _loc1_ = Language.JEWEL_EXCHANGE_PANEL[7];
      }
      
      public function __label2_click(param1:MouseEvent) : void
      {
         selectChageJewel(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get label2() : Label
      {
         return this._1110417474label2;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Label
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get label4() : Label
      {
         return this._1110417472label4;
      }
      
      [Bindable(event="propertyChange")]
      public function get info0() : Label
      {
         return this._100348226info0;
      }
      
      public function set label1(param1:Label) : void
      {
         var _loc2_:Object = this._1110417475label1;
         if(_loc2_ !== param1)
         {
            this._1110417475label1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"label1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get jewelExchageButtonOne() : BasicGlowButton
      {
         return this._1640725936jewelExchageButtonOne;
      }
      
      [Bindable(event="propertyChange")]
      public function get label1() : Label
      {
         return this._1110417475label1;
      }
      
      [Bindable(event="propertyChange")]
      public function get label3() : Label
      {
         return this._1110417473label3;
      }
      
      private function jewelExchage() : void
      {
         var sid:Number = NaN;
         var giid:Number = NaN;
         var tempFlag:Boolean = false;
         var handler:Function = null;
         var slot:Object = null;
         var itemTmp:Object = null;
         var exchageItemTmp:Object = null;
         var str:String = null;
         if(Boolean(jewelExchageItem0.slotData && _selectIndex) && Boolean(ToolKit.isBigThan(_selectIndex,0)) && ToolKit.isBigThan(jewelExchageItem0.slotData.stackNum,0))
         {
            sid = Number(jewelExchageItem0.slotData.id);
            giid = Number(this["jewelExchageItem" + _selectIndex].giid);
            tempFlag = jewelExchageItem0.tempBagFlag;
            handler = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  info.htmlText = "";
                  jewelExchageButtonOne.enabled = false;
                  _core.remote.call("pmJewelExchage",new Responder(onJewelExchage),sid,giid,tempFlag);
               }
            };
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            slot = jewelExchageItem0.slotData;
            if(slot)
            {
               if(jewelExchageItem0.tempBagFlag)
               {
                  itemTmp = _core.getTemplateData(slot.ti,slot.ii);
               }
               else
               {
                  itemTmp = _core.getTemplateData(slot.type,slot.itemId);
               }
               exchageItemTmp = _core.getTemplateData(29,this["jewelExchageItem" + _selectIndex].giid);
               str = Language.JEWEL_EXCHANGE_PANEL[6].toString().replace("{num}",jewelExchageItem0.slotData.stackNum).replace("{name}",itemTmp.name).replace("{name1}",exchageItemTmp.name);
               _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
            }
         }
         else if(Boolean(jewelExchageItem0.slotData) && (!_selectIndex || ToolKit.isEqual(_selectIndex,0)))
         {
            _core.sysMidNote(Language.JEWEL_EXCHANGE_PANEL[5]);
         }
      }
      
      public function __label1_click(param1:MouseEvent) : void
      {
         selectChageJewel(1);
      }
      
      public function __label3_click(param1:MouseEvent) : void
      {
         selectChageJewel(3);
      }
      
      public function __jewelExchageItem2_click(param1:MouseEvent) : void
      {
         selectChageJewel(2);
      }
      
      public function __jewelExchageItem4_click(param1:MouseEvent) : void
      {
         selectChageJewel(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get eTitle() : BasicTitleCanvas
      {
         return this._1322604301eTitle;
      }
      
      public function set jewelExchageItem3(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._847667716jewelExchageItem3;
         if(_loc2_ !== param1)
         {
            this._847667716jewelExchageItem3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelExchageItem3",_loc2_,param1));
         }
      }
      
      public function __jewelExchageButtonOne_click(param1:MouseEvent) : void
      {
         jewelExchage();
      }
      
      private function onJewelExchage(param1:Object) : void
      {
         jewelExchageButtonOne.enabled = true;
         jewelExchageItem0.clean();
         jewelExchageItem1.clean();
         jewelExchageItem2.clean();
         jewelExchageItem3.clean();
         jewelExchageItem4.clean();
         _selectIndex = 0;
         var _loc2_:Number = 1;
         while(_loc2_ <= 4)
         {
            this["label" + _loc2_].htmlText = "";
            _loc2_++;
         }
         var _loc3_:String = "";
         if(param1)
         {
            if(param1.flag)
            {
               if(param1.finalNum)
               {
                  _loc3_ = Language.JEWEL_EXCHANGE_PANEL[3].toString().replace("{num}",param1.finalNum).replace("{name}",param1.finalNme);
                  _core.sysMidNote(_loc3_);
                  info.htmlText = "<font color=\'#FF0000\'>" + _loc3_ + "</font>";
               }
               else
               {
                  _core.sysMidNote(Language.JEWEL_EXCHANGE_PANEL[4]);
               }
            }
            else
            {
               _core.sysMidNote(Language.JEWEL_EXCHANGE_PANEL[4]);
            }
         }
      }
      
      public function set jewelExchageItem2(param1:ItemSlotJewel) : void
      {
         var _loc2_:Object = this._847667717jewelExchageItem2;
         if(_loc2_ !== param1)
         {
            this._847667717jewelExchageItem2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"jewelExchageItem2",_loc2_,param1));
         }
      }
   }
}

