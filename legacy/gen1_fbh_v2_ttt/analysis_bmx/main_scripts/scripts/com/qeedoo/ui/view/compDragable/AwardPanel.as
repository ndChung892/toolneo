package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AwardPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":236,
               "height":246,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AwardPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "y":39,
                        "width":213,
                        "height":74,
                        "styleName":"CanvasAward",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":TextArea,
                           "id":"tip",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                              this.fontSize = 13;
                              this.fontFamily = "宋体";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selectable":false,
                                 "x":10,
                                 "y":10,
                                 "width":193,
                                 "height":54,
                                 "editable":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"getAwards",
                  "events":{"click":"__getAwards_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":32,
                        "y":177.15,
                        "styleName":"BtnStdRed",
                        "width":82
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_AwardPanel_BasicGlowButton2",
                  "events":{"click":"___AwardPanel_BasicGlowButton2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":137,
                        "y":177.15,
                        "styleName":"BtnStdRed",
                        "width":67
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"slot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":101,
                        "y":121,
                        "movable":false,
                        "height":34.2
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _114843tip:TextArea;
      
      public var _AwardPanel_BasicGlowButton2:BasicGlowButton;
      
      private var _1258484496awardItem:Object = new Object();
      
      private var setTime:Timer = null;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3533310slot:ItemSlot;
      
      private var _337438527restTime:int;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _290976940getAwards:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      public var _AwardPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public function AwardPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 236;
         this.height = 246;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AwardPanel._watcherSetupUtil = param1;
      }
      
      private function set restTime(param1:int) : void
      {
         var _loc2_:Object = this._337438527restTime;
         if(_loc2_ !== param1)
         {
            this._337438527restTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restTime",_loc2_,param1));
         }
      }
      
      public function set slot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3533310slot;
         if(_loc2_ !== param1)
         {
            this._3533310slot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AwardPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AwardPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AwardPanelWatcherSetupUtil");
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
      
      private function onItem() : void
      {
         slot.type = awardItem.ti;
         slot.giid = awardItem.ii;
         slot.stackNum = awardItem.n;
         slot.slotData = awardItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get tip() : TextArea
      {
         return this._114843tip;
      }
      
      public function init(param1:int = 1, param2:Object = null) : void
      {
         restTime = param1;
         awardItem = param2;
         show();
         x = (stage.stageWidth - width) / 2;
         y = (stage.stageHeight - height) / 2;
         onItem();
         if(restTime != 0)
         {
            getAwards.enabled = false;
            if(setTime != null)
            {
               return;
            }
            setTime = new Timer(60001,restTime);
            setTime.addEventListener(TimerEvent.TIMER,onTime);
            setTime.start();
         }
         else
         {
            getAwards.enabled = true;
            if(ToolKit.isBigThan(param2.b,0))
            {
               slot.slotData.b = 1;
            }
         }
      }
      
      private function set awardItem(param1:Object) : void
      {
         var _loc2_:Object = this._1258484496awardItem;
         if(_loc2_ !== param1)
         {
            this._1258484496awardItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awardItem",_loc2_,param1));
         }
      }
      
      private function getAward() : void
      {
         var _loc1_:Boolean = false;
         switch(slot.type)
         {
            case GamePredef.TBL_CREATURE:
               _loc1_ = _core.player.enoughPetSlot(1);
               break;
            case GamePredef.TBL_EQUIPT_TEMPLATE:
            case GamePredef.TBL_ITEM_TEMPLATE:
               _loc1_ = _core.player.enoughBag(1);
               break;
            default:
               _loc1_ = true;
         }
         if(_loc1_)
         {
            restTime = 0;
            slot.giid = -1;
            _core.view.getUI(ViewManager.MAIN_AWARD_WARN).delWarn();
            if(awardItem.sp)
            {
               _core.remote.takeSPGift();
            }
            else
            {
               _core.remote.takeNewGift();
            }
            hide();
         }
         else
         {
            _core.sysMidNote(Language.AWARDPANEL_S[2]);
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get awardItem() : Object
      {
         return this._1258484496awardItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get getAwards() : BasicGlowButton
      {
         return this._290976940getAwards;
      }
      
      public function ___AwardPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         cancel();
      }
      
      private function getTipText(param1:int) : String
      {
         var _loc2_:String = "";
         if(param1 == 0)
         {
            return Language.AWARDPANEL_S[0];
         }
         _loc2_ = Language.AWARDPANEL_S[1].toString();
         return _loc2_.replace("{time}",param1.toString());
      }
      
      public function set tip(param1:TextArea) : void
      {
         var _loc2_:Object = this._114843tip;
         if(_loc2_ !== param1)
         {
            this._114843tip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tip",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get restTime() : int
      {
         return this._337438527restTime;
      }
      
      private function _AwardPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.AWARDPANEL_U[2];
         _loc1_ = getTipText(restTime);
         _loc1_ = Language.AWARDPANEL_U[0];
         _loc1_ = Language.AWARDPANEL_U[1];
         _loc1_ = Slot.SLOT_TREASURE;
      }
      
      private function onTime(param1:TimerEvent) : void
      {
         --restTime;
         tip.text = getTipText(restTime);
         if(restTime == 0)
         {
            getAwards.enabled = true;
            setTime.stop();
            setTime.removeEventListener(TimerEvent.TIMER,onTime);
            setTime = null;
            _core.view.getUI(ViewManager.MAIN_AWARD_WARN).warnImage.source = ResManager.ICON_WARN_AWARD;
         }
      }
      
      public function __getAwards_click(param1:MouseEvent) : void
      {
         getAward();
      }
      
      public function set getAwards(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._290976940getAwards;
         if(_loc2_ !== param1)
         {
            this._290976940getAwards = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"getAwards",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         if(slot != null)
         {
            slot.giid = -1;
         }
         if(setTime == null)
         {
            return;
         }
         setTime.stop();
         setTime.removeEventListener(TimerEvent.TIMER,onTime);
         setTime = null;
      }
      
      public function viewClick() : void
      {
         show();
      }
      
      private function _AwardPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanel_BasicTitleCanvas1.text = param1;
         },"_AwardPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = getTipText(restTime);
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tip.text = param1;
         },"tip.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            getAwards.label = param1;
         },"getAwards.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWARDPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwardPanel_BasicGlowButton2.label = param1;
         },"_AwardPanel_BasicGlowButton2.label");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_TREASURE;
         },function(param1:int):void
         {
            slot.slotType = param1;
         },"slot.slotType");
         result[4] = binding;
         return result;
      }
      
      public function cancel() : void
      {
         hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get slot() : ItemSlot
      {
         return this._3533310slot;
      }
   }
}

