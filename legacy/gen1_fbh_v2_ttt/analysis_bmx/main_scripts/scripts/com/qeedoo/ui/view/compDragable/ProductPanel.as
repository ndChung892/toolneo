package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.HSlider;
   import mx.controls.Label;
   import mx.controls.ProgressBar;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.SliderEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ProductPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _109446num:int = 0;
      
      private var _1177184812itemIcon:ItemSlot;
      
      private const LEVEL_DECREASE:Number = 0.05;
      
      public var _ProductPanel_Label3:Label;
      
      public var _ProductPanel_Label4:Label;
      
      public var _ProductPanel_Label5:Label;
      
      private var _3317767left:int = 0;
      
      private var timer:Timer;
      
      private var handler:int = -1;
      
      private const DELAY_NEXT:int = 1000;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _ProductPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3339hs:HSlider;
      
      public var _ProductPanel_BasicTxtButton1:BasicTxtButton;
      
      private var flag:Boolean = false;
      
      private var _core:Core;
      
      public var isInited:Boolean = false;
      
      public var _ProductPanel_BasicGlowButton1:BasicGlowButton;
      
      mx_internal var _watchers:Array;
      
      private var _963188850gloveIcon:ItemSlot;
      
      private var _122370912manaIcon:ItemSlot;
      
      private var _3237038info:Label;
      
      private var _111277pro:ProgressBar;
      
      private var _2116189043itemNum:Label;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var npcId:Number;
      
      mx_internal var _bindings:Array;
      
      private var _1335252116descid:IntroText;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ProductPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":300,
                  "height":411,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicTitleCanvas,
                     "id":"_ProductPanel_BasicTitleCanvas1"
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "events":{"mouseDown":"___ProductPanel_Canvas1_mouseDown"},
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "none";
                        this.borderColor = 0;
                        this.backgroundColor = 16777215;
                        this.backgroundAlpha = 0;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":15,
                           "y":37,
                           "width":270,
                           "height":206,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"itemIcon",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":9,
                                    "y":8,
                                    "movable":false
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"info",
                              "stylesFactory":function():void
                              {
                                 this.textAlign = "center";
                                 this.color = 16777215;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":47.5,
                                    "y":6
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"manaIcon",
                              "events":{"dragDrop":"__manaIcon_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":9,
                                    "y":109
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ItemSlot,
                              "id":"gloveIcon",
                              "events":{"dragDrop":"__gloveIcon_dragDrop"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":9,
                                    "y":153
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HSlider,
                              "id":"hs",
                              "events":{"change":"__hs_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":49,
                                    "y":121,
                                    "minimum":0,
                                    "maximum":100,
                                    "allowTrackClick":true,
                                    "value":10,
                                    "width":209
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":ProgressBar,
                              "id":"pro",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "mode":"manual",
                                    "x":10,
                                    "y":51,
                                    "labelPlacement":"center",
                                    "height":10,
                                    "width":248,
                                    "label":" "
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"itemNum",
                              "stylesFactory":function():void
                              {
                                 this.color = 6205693;
                                 this.textAlign = "center";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":49,
                                    "y":24
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"_ProductPanel_Label3",
                              "stylesFactory":function():void
                              {
                                 this.color = 16777215;
                                 this.textAlign = "right";
                                 this.right = "10";
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"y":24};
                              }
                           }),new UIComponentDescriptor({
                              "type":BasicGlowButton,
                              "id":"_ProductPanel_BasicGlowButton1",
                              "events":{"click":"___ProductPanel_BasicGlowButton1_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":190,
                                    "y":166,
                                    "styleName":"BtnRed",
                                    "width":70,
                                    "height":19
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":IntroText,
                     "id":"descid",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":19,
                           "y":244,
                           "width":263,
                           "height":148
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_ProductPanel_BasicTxtButton1",
                     "stylesFactory":function():void
                     {
                        this.paddingLeft = 1;
                        this.paddingRight = 1;
                        this.paddingTop = 1;
                        this.paddingBottom = 1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":103,
                           "y":121,
                           "width":95,
                           "height":19
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_ProductPanel_Label4",
                     "stylesFactory":function():void
                     {
                        this.color = 15116365;
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":70,
                           "y":150,
                           "width":50,
                           "height":18,
                           "text":"0%"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"_ProductPanel_Label5",
                     "stylesFactory":function():void
                     {
                        this.color = 15116365;
                        this.fontSize = 14;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":230,
                           "y":150,
                           "width":50,
                           "height":18,
                           "text":"100%"
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         timer = new Timer(100);
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.borderStyle = "solid";
            this.borderColor = 0;
            this.backgroundColor = 11589631;
            this.backgroundAlpha = 0.5;
         };
         this.width = 300;
         this.height = 411;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___ProductPanel_DragableCanvas1_creationComplete);
      }
      
      public static function isGloveEquip(param1:*) : Boolean
      {
         var _loc2_:* = undefined;
         for(_loc2_ in GamePredef.PROUDCT_GLOVE_EQUIP)
         {
            if(param1 == GamePredef.PROUDCT_GLOVE_EQUIP[_loc2_])
            {
               return true;
            }
         }
         return false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ProductPanel._watcherSetupUtil = param1;
      }
      
      private function stop() : void
      {
         timer.removeEventListener(TimerEvent.TIMER,showProgress);
         timer.stop();
         timer.reset();
      }
      
      [Bindable(event="propertyChange")]
      private function get left() : int
      {
         return this._3317767left;
      }
      
      private function set num(param1:int) : void
      {
         var _loc2_:Object = this._109446num;
         if(_loc2_ !== param1)
         {
            this._109446num = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",_loc2_,param1));
         }
      }
      
      public function updateView() : void
      {
         initView();
      }
      
      public function updateGlove(param1:Number) : void
      {
         if(gloveIcon == null)
         {
            return;
         }
         gloveIcon.type = GamePredef.TBL_EQUIPT_INSTANCE;
         gloveIcon.giid = param1;
         if(gloveIcon.giid > 0)
         {
            flag = true;
         }
         else
         {
            flag = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hs() : HSlider
      {
         return this._3339hs;
      }
      
      private function set left(param1:int) : void
      {
         var _loc2_:Object = this._3317767left;
         if(_loc2_ !== param1)
         {
            this._3317767left = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"left",_loc2_,param1));
         }
      }
      
      public function set hs(param1:HSlider) : void
      {
         var _loc2_:Object = this._3339hs;
         if(_loc2_ !== param1)
         {
            this._3339hs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hs",_loc2_,param1));
         }
      }
      
      public function init(param1:Object) : void
      {
         visible = true;
         gloveIcon.type = GamePredef.TBL_EQUIPT_INSTANCE;
         gloveIcon.giid = GamePredef.GLOBAL_SETTING["glid"];
         if(gloveIcon.giid > 0)
         {
            flag = true;
         }
         npcId = param1.nid;
         itemIcon.giid = param1.iid;
         num = 0;
         info.text = Language.PRODUCTPANEL_S[11];
         info.setStyle("color","#99FF99");
         if(!flag)
         {
            Alert.show(Language.PRODUCTPANEL_S[10]);
            return;
         }
         produceReady();
      }
      
      public function ___ProductPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
         isInited = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemIcon() : ItemSlot
      {
         return this._1177184812itemIcon;
      }
      
      private function setStack() : void
      {
         var _loc1_:Object = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,manaIcon.giid);
         manaIcon.stackNum = _loc1_.num;
         if(manaIcon.stackNum > 0)
         {
            manaIcon.alpha = 1;
         }
         else
         {
            manaIcon.alpha = 0.5;
         }
      }
      
      public function onUpdateView(param1:Object) : void
      {
         productEnd(param1);
      }
      
      public function __gloveIcon_dragDrop(param1:DragEvent) : void
      {
         setGloveSlot(param1);
      }
      
      private function showProgress(param1:TimerEvent) : void
      {
         pro.setProgress(timer.currentCount,timer.repeatCount);
      }
      
      public function set itemIcon(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1177184812itemIcon;
         if(_loc2_ !== param1)
         {
            this._1177184812itemIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemIcon",_loc2_,param1));
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
      public function get manaIcon() : ItemSlot
      {
         return this._122370912manaIcon;
      }
      
      public function set pro(param1:ProgressBar) : void
      {
         var _loc2_:Object = this._111277pro;
         if(_loc2_ !== param1)
         {
            this._111277pro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pro",_loc2_,param1));
         }
      }
      
      private function start() : void
      {
         timer.reset();
         timer.start();
         info.text = Language.PRODUCTPANEL_S[1];
         info.setStyle("color","#99FF99");
      }
      
      public function __manaIcon_dragDrop(param1:DragEvent) : void
      {
         setSlot(param1);
      }
      
      private function productEnd(param1:Object) : void
      {
         var _loc2_:String = null;
         if(manaIcon.giid > 0 && _core.player.currentMp / _core.player.property.finalMp * 100 < hs.value)
         {
            _core.useItem(manaIcon.giid,manaIcon);
         }
         if(param1 is Number)
         {
            info.text = Language.PRODUCTPANEL_S[2];
            info.setStyle("color","#9999FF");
            handler = setTimeout(start,DELAY_NEXT);
            ++num;
            left = Number(param1);
            if(left <= 0)
            {
               handler = -1;
               stop();
               hide();
            }
            return;
         }
         if(param1 == "s")
         {
            info.text = Language.PRODUCTPANEL_S[3];
            info.setStyle("color","#9999FF");
            handler = setTimeout(start,DELAY_NEXT);
            ++num;
         }
         else if(param1 == "f")
         {
            info.text = Language.PRODUCTPANEL_S[4];
            info.setStyle("color","#FF9999");
            handler = setTimeout(start,DELAY_NEXT);
         }
         else
         {
            _loc2_ = Language.PRODUCTPANEL_S[12];
            if(param1 == "ed")
            {
               _loc2_ = Language.PRODUCTPANEL_S[14];
            }
            else if(param1 == "eg")
            {
               _loc2_ = Language.PRODUCTPANEL_S[15];
            }
            else if(param1 == "em")
            {
               _loc2_ = Language.PRODUCTPANEL_S[16];
            }
            else if(param1 == "eb")
            {
               _loc2_ = Language.PRODUCTPANEL_S[17];
            }
            else if(param1 == "ea")
            {
               _loc2_ = Language.PRODUCTPANEL_S[18];
            }
            else if(param1 == "ee")
            {
               _loc2_ = Language.PRODUCTPANEL_S[19];
            }
            else if(param1 == "el")
            {
               _loc2_ = Language.PRODUCTPANEL_S[20];
            }
            info.text = Language.PRODUCTPANEL_S[5];
            handler = -1;
            Alert.show(_loc2_);
            stop();
            _core.remote.onProductCancel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gloveIcon() : ItemSlot
      {
         return this._963188850gloveIcon;
      }
      
      [Bindable(event="propertyChange")]
      public function get descid() : IntroText
      {
         return this._1335252116descid;
      }
      
      [Bindable(event="propertyChange")]
      public function get itemNum() : Label
      {
         return this._2116189043itemNum;
      }
      
      private function setSlot(param1:DragEvent) : void
      {
         var _loc4_:Object = null;
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         var _loc3_:Object = param1.dragSource.dataForFormat("slot");
         if(_loc2_ == _loc3_)
         {
            return;
         }
         if(_loc3_.type == GamePredef.TBL_ITEM_INSTANCE || _loc3_.type == GamePredef.TBL_ITEM_TEMPLATE)
         {
            _loc4_ = _core.getTemplateData(_loc3_.type,_loc3_.giid,false);
            if(!_loc4_ || _loc4_.skillId <= 0 && (!_loc4_.scriptUse || _loc4_.scriptUse.length <= 0))
            {
               return;
            }
            _core.updateSettingNow("pid",_loc4_.id);
         }
      }
      
      private function buyGlove() : void
      {
         _core.remote.clickShop(275);
      }
      
      public function __hs_change(param1:SliderEvent) : void
      {
         setProgress();
      }
      
      [Bindable(event="propertyChange")]
      private function get num() : int
      {
         return this._109446num;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ProductPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ProductPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ProductPanelWatcherSetupUtil");
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
      
      private function produceReady() : void
      {
         stop();
         info.text = Language.PRODUCTPANEL_S[0];
         info.setStyle("color","#99FF99");
         var _loc1_:Object = {};
         _loc1_.npcId = npcId;
         _loc1_.gloveId = gloveIcon.giid;
         _core.remote.call("onProductReady",new Responder(onStart),_loc1_);
      }
      
      private function _ProductPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PRODUCTPANEL_U[0];
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = Language.PRODUCTPANEL_S[6];
         _loc1_ = Language.PRODUCTPANEL_S[21];
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = Slot.SLOT_USERBAR;
         _loc1_ = Language.PRODUCTPANEL_S[22];
         _loc1_ = GamePredef.TBL_EQUIPT_INSTANCE;
         _loc1_ = Slot.SLOT_EQUIP;
         _loc1_ = [13];
         _loc1_ = [GamePredef.TBL_EQUIPT_INSTANCE];
         _loc1_ = Language.PRODUCTPANEL_S[7] + num;
         _loc1_ = Language.PRODUCTPANEL_S[8] + left;
         _loc1_ = Language.PRODUCTPANEL_U[2];
         _loc1_ = Language.PRODUCTPANEL_U[1];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : Label
      {
         return this._3237038info;
      }
      
      private function setProgress() : void
      {
         _core.updateSettingNow("p1",int(hs.value));
      }
      
      public function updateMana(param1:Number) : void
      {
         manaIcon.type = GamePredef.TBL_ITEM_TEMPLATE;
         manaIcon.giid = param1;
         setStack();
      }
      
      [Bindable(event="propertyChange")]
      public function get pro() : ProgressBar
      {
         return this._111277pro;
      }
      
      private function setGloveSlot(param1:DragEvent) : void
      {
         var _loc4_:Object = null;
         var _loc2_:ItemSlot = ItemSlot(param1.currentTarget);
         var _loc3_:Object = param1.dragSource.dataForFormat("slot");
         if(_loc2_ == _loc3_)
         {
            return;
         }
         if(_loc3_.type == GamePredef.TBL_EQUIPT_INSTANCE)
         {
            _loc4_ = _core.getTemplateData(_loc3_.type,_loc3_.giid,false);
            if(!_loc4_ || !isGloveEquip(_loc4_.id) || _core.player.level < _loc4_.reqLevel)
            {
               return;
            }
            _core.updateSettingNow("glid",_loc3_.giid);
            produceReady();
         }
      }
      
      private function timeoutOnProduct(param1:TimerEvent) : void
      {
         stop();
         produceReady();
      }
      
      public function ___ProductPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         buyGlove();
      }
      
      public function set manaIcon(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._122370912manaIcon;
         if(_loc2_ !== param1)
         {
            this._122370912manaIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"manaIcon",_loc2_,param1));
         }
      }
      
      private function onStart(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1 == "e")
         {
            Alert.show(Language.PRODUCTPANEL_S[12]);
         }
         else if(param1 == "ed")
         {
            Alert.show(Language.PRODUCTPANEL_S[14]);
         }
         else if(param1 == "eg")
         {
            Alert.show(Language.PRODUCTPANEL_S[15]);
         }
         else if(param1 == "em")
         {
            Alert.show(Language.PRODUCTPANEL_S[16]);
         }
         else if(param1 == "eb")
         {
            Alert.show(Language.PRODUCTPANEL_S[17]);
         }
         else if(param1 == "ea")
         {
            Alert.show(Language.PRODUCTPANEL_S[18]);
         }
         else
         {
            visible = true;
            left = Number(param1);
            _loc2_ = _core.getTemplateData(gloveIcon.type,gloveIcon.giid,true);
            if(_loc2_ == null)
            {
               return;
            }
            timer.repeatCount = Number(_loc2_.proTime) * 10;
            timer.addEventListener(TimerEvent.TIMER,showProgress);
            pro.setProgress(0,timer.repeatCount);
            handler = setTimeout(start,DELAY_NEXT);
         }
      }
      
      override public function initView() : void
      {
         if(_core.player.maxActpoint == 9999)
         {
            descid.text = Language.PRODUCTPANEL_S[9];
         }
         else
         {
            descid.text = Language.PRODUCTPANEL_S[13];
         }
         manaIcon.type = GamePredef.TBL_ITEM_TEMPLATE;
         manaIcon.giid = GamePredef.GLOBAL_SETTING["pid"];
         hs.value = GamePredef.GLOBAL_SETTING["p1"];
         setStack();
      }
      
      public function ___ProductPanel_Canvas1_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set descid(param1:IntroText) : void
      {
         var _loc2_:Object = this._1335252116descid;
         if(_loc2_ !== param1)
         {
            this._1335252116descid = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"descid",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1)
         {
            _core.player.walkable = false;
         }
         else
         {
            if(_core.player)
            {
               _core.player.setConditionWalkable();
            }
            if(this.visible)
            {
               _core.remote.onProductCancel();
            }
            npcId = -1;
            stop();
            if(handler)
            {
               clearTimeout(handler);
               handler = -1;
            }
         }
         super.visible = param1;
      }
      
      public function set itemNum(param1:Label) : void
      {
         var _loc2_:Object = this._2116189043itemNum;
         if(_loc2_ !== param1)
         {
            this._2116189043itemNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"itemNum",_loc2_,param1));
         }
      }
      
      private function _ProductPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ProductPanel_BasicTitleCanvas1.text = param1;
         },"_ProductPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            itemIcon.type = param1;
         },"itemIcon.type");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            info.text = param1;
         },"info.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_S[21];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            manaIcon.text = param1;
         },"manaIcon.text");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            manaIcon.type = param1;
         },"manaIcon.type");
         result[4] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_USERBAR;
         },function(param1:int):void
         {
            manaIcon.slotType = param1;
         },"manaIcon.slotType");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_S[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            gloveIcon.text = param1;
         },"gloveIcon.text");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_EQUIPT_INSTANCE;
         },function(param1:int):void
         {
            gloveIcon.type = param1;
         },"gloveIcon.type");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_EQUIP;
         },function(param1:int):void
         {
            gloveIcon.slotType = param1;
         },"gloveIcon.slotType");
         result[8] = binding;
         binding = new Binding(this,function():Array
         {
            return [13];
         },function(param1:Array):void
         {
            gloveIcon.acceptPos = param1;
         },"gloveIcon.acceptPos");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.TBL_EQUIPT_INSTANCE];
         },function(param1:Array):void
         {
            gloveIcon.acceptType = param1;
         },"gloveIcon.acceptType");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_S[7] + num;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            itemNum.text = param1;
         },"itemNum.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_S[8] + left;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ProductPanel_Label3.text = param1;
         },"_ProductPanel_Label3.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ProductPanel_BasicGlowButton1.label = param1;
         },"_ProductPanel_BasicGlowButton1.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PRODUCTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ProductPanel_BasicTxtButton1.label = param1;
         },"_ProductPanel_BasicTxtButton1.label");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _ProductPanel_Label4.filters = param1;
         },"_ProductPanel_Label4.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _ProductPanel_Label5.filters = param1;
         },"_ProductPanel_Label5.filters");
         result[16] = binding;
         return result;
      }
      
      public function set gloveIcon(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._963188850gloveIcon;
         if(_loc2_ !== param1)
         {
            this._963188850gloveIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gloveIcon",_loc2_,param1));
         }
      }
      
      public function onUpdateGloveEquip(param1:int, param2:Number) : void
      {
         if(param1 == 1)
         {
            _core.updateSettingNow("glid",param2);
            if(Boolean(this.gloveIcon) && _core.player.state == GamePredef.ST_PRODUCT)
            {
               gloveIcon.giid = param2;
               produceReady();
            }
         }
         else if(param1 == 2)
         {
            _core.updateSettingNow("glid",0);
            stop();
            _core.remote.onProductCancel();
         }
      }
   }
}

