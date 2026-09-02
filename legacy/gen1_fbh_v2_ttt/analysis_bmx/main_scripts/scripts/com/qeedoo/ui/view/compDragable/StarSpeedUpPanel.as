package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.CheckBox;
   import mx.controls.NumericStepper;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StarSpeedUpPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _starType:int;
      
      private var _core:Core = Core.getInstance();
      
      private var _1279261040rl_name:RoundedLabel;
      
      private const MINUS_TIME_PER_ITEM:Number = 300000;
      
      private var _1279447474rl_time:RoundedLabel;
      
      public var _StarSpeedUpPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _97884btn:DelayButton;
      
      private var _dm:DataManager = DataManager.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _3525ns:NumericStepper;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _928564223rl_num:RoundedLabel;
      
      private var _3242771item:ItemSlotStars;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":220,
               "height":260,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_StarSpeedUpPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "39";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":200,
                        "height":200,
                        "x":10,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlotStars,
                           "id":"item",
                           "stylesFactory":function():void
                           {
                              this.top = "36";
                              this.horizontalCenter = "0";
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_time",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {"y":84};
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_name",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.top = "10";
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_num",
                           "stylesFactory":function():void
                           {
                              this.left = "30";
                              this.bottom = "38";
                           }
                        }),new UIComponentDescriptor({
                           "type":NumericStepper,
                           "id":"ns",
                           "events":{"change":"__ns_change"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "38";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":92,
                                 "maximum":9999
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"btn",
                           "events":{"click":"__btn_click"},
                           "stylesFactory":function():void
                           {
                              this.bottom = "10";
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":5000,
                                 "styleName":"BtnStdRed",
                                 "width":60
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"checkBox",
                           "events":{"change":"__checkBox_change"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":92,
                                 "y":110,
                                 "height":22
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1536861091checkBox:CheckBox;
      
      public function StarSpeedUpPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 220;
         this.height = 260;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___StarSpeedUpPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StarSpeedUpPanel._watcherSetupUtil = param1;
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
      
      private function _StarSpeedUpPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.STAR_SPEED_UP_PANEL_U[0];
         _loc1_ = Slot.SLOT_STARS_SPEED;
         _loc1_ = Language.STAR_SPEED_UP_PANEL_U[1];
         _loc1_ = Language.STAR_SPEED_UP_PANEL_U[2];
         _loc1_ = !checkBox.selected;
         _loc1_ = Language.STAR_SPEED_UP_PANEL_U[3];
         _loc1_ = Language.STAR_SPEED_UP_PANEL_U[4];
         _loc1_ = Language.STAR_SPEED_UP_PANEL_S[4];
      }
      
      public function __ns_change(param1:NumericStepperEvent) : void
      {
         changeNum();
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         speedUp();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StarSpeedUpPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StarSpeedUpPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StarSpeedUpPanelWatcherSetupUtil");
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
      
      public function set ns(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._3525ns;
         if(_loc2_ !== param1)
         {
            this._3525ns = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ns",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlotStars
      {
         return this._3242771item;
      }
      
      private function updateMinusTime(param1:int) : void
      {
         var _loc2_:Number = MINUS_TIME_PER_ITEM * param1;
         var _loc3_:Number = _loc2_ / (60 * 1000);
         var _loc4_:int = _loc3_ / (24 * 60);
         var _loc5_:int = _loc3_ % (24 * 60) / 60;
         var _loc6_:int = _loc3_ % (24 * 60) % 60;
         var _loc7_:String = Language.STAR_SPEED_UP_PANEL_S[0].toString().replace("{d}",_loc4_).replace("{h}",_loc5_).replace("{m}",_loc6_);
         rl_time.text = Language.STAR_SPEED_UP_PANEL_U[1] + _loc7_;
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
      
      private function _StarSpeedUpPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_SPEED_UP_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarSpeedUpPanel_BasicTitleCanvas1.text = param1;
         },"_StarSpeedUpPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_STARS_SPEED;
         },function(param1:int):void
         {
            item.slotType = param1;
         },"item.slotType");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_SPEED_UP_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_time.text = param1;
         },"rl_time.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_SPEED_UP_PANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_num.text = param1;
         },"rl_num.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !checkBox.selected;
         },function(param1:Boolean):void
         {
            ns.enabled = param1;
         },"ns.enabled");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_SPEED_UP_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn.label = param1;
         },"btn.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_SPEED_UP_PANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            checkBox.label = param1;
         },"checkBox.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_SPEED_UP_PANEL_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            checkBox.toolTip = param1;
         },"checkBox.toolTip");
         result[7] = binding;
         return result;
      }
      
      public function slotGiidChange(param1:Event) : void
      {
         if(Boolean(item.slotData) && item.slotData.tid == GamePredef.STAR_SPEED_UP_ITEM_IDS[_starType])
         {
            btn.enabled = true;
            ns.enabled = true;
            checkBox.enabled = true;
            if(checkBox.selected)
            {
               ns.enabled = false;
               updateMinusTime(item.stackNum);
            }
         }
      }
      
      public function init() : void
      {
         item.addEventListener(GameEvent.SLOT_NUM_CHANGE,slotGiidChange);
      }
      
      private function changeNum() : void
      {
         if(!item.slotData)
         {
            _core.sysMidNote(Language.STAR_SPEED_UP_PANEL_S[2]);
            return;
         }
         updateMinusTime(ns.value);
      }
      
      public function set btn(param1:DelayButton) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_time() : RoundedLabel
      {
         return this._1279447474rl_time;
      }
      
      public function onSpeedUpStarLvUp(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            _loc2_ = _core.view.getUI(ViewManager.PANEL_CHARACTOR);
            _loc2_.onBeginStarLvUp(param1.d);
            item.stackNum -= param1.n;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get checkBox() : CheckBox
      {
         return this._1536861091checkBox;
      }
      
      [Bindable(event="propertyChange")]
      public function get ns() : NumericStepper
      {
         return this._3525ns;
      }
      
      private function changeSelect() : void
      {
         var _loc1_:int = 0;
         if(checkBox.selected)
         {
            _loc1_ = 0;
            _loc1_ = item.stackNum;
            item.slotData && (_loc1_);
            updateMinusTime(_loc1_);
         }
         else
         {
            updateMinusTime(ns.value);
         }
      }
      
      public function set checkBox(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1536861091checkBox;
         if(_loc2_ !== param1)
         {
            this._1536861091checkBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkBox",_loc2_,param1));
         }
      }
      
      private function speedUp() : void
      {
         var _loc1_:String = null;
         if(!item.slotData)
         {
            _core.sysMidNote(Language.STAR_SPEED_UP_PANEL_S[2]);
            return;
         }
         if(GamePredef.STAR_SPEED_UP_ITEM_IDS[_starType] != item.slotData.tid)
         {
            _loc1_ = Language.STAR_SPEED_UP_PANEL_S[1].toString().replace("{name}",Language.STAR_ADD_PANEL_U[_starType]);
            _core.sysMidNote(_loc1_);
            return;
         }
         if(!checkBox.selected && ns.value <= 0)
         {
            _core.sysMidNote(Language.STAR_SPEED_UP_PANEL_S[3]);
            return;
         }
         _core.remote.call("speedUpStarLvUp",new Responder(onSpeedUpStarLvUp),_starType,checkBox.selected,ns.value,item.slotData.id);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : DelayButton
      {
         return this._97884btn;
      }
      
      public function set rl_name(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1279261040rl_name;
         if(_loc2_ !== param1)
         {
            this._1279261040rl_name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_name",_loc2_,param1));
         }
      }
      
      public function set rl_time(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1279447474rl_time;
         if(_loc2_ !== param1)
         {
            this._1279447474rl_time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_time",_loc2_,param1));
         }
      }
      
      public function setSelectStar(param1:int) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         _starType = param1;
         rl_name.text = Language.STAR_ADD_PANEL_U[param1];
         item.clean();
         for each(_loc2_ in _dm.sList)
         {
            if(ToolKit.isBigThan(_loc2_.sid,GamePredef.SLOT_SID_BAG[0]) && ToolKit.isSmallOrEqual(_loc2_.sid,GamePredef.SLOT_SID_BAG[_core.player.bagSlotNum]))
            {
               _loc3_ = int(GamePredef.STAR_SPEED_UP_ITEM_IDS[_starType]);
               if(_loc2_.tid == _loc3_)
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
            item.giid = GamePredef.STAR_SPEED_UP_ITEM_IDS[_starType];
            item.stackNum = 0;
            btn.enabled = false;
            ns.enabled = false;
            checkBox.enabled = false;
         }
         else
         {
            btn.enabled = true;
            ns.enabled = true;
            checkBox.enabled = true;
         }
         changeSelect();
      }
      
      public function __checkBox_change(param1:Event) : void
      {
         changeSelect();
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_name() : RoundedLabel
      {
         return this._1279261040rl_name;
      }
      
      public function ___StarSpeedUpPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

