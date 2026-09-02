package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.Label;
   import mx.controls.NumericStepper;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.NumericStepperEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AddOpePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _109446num:NumericStepper;
      
      private var _haveAddNum:Number = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private const GOLD_NEED_ARR:Array = [260,260,260,260,260,270,280,290,300,310,320,330,340,350,360];
      
      public var _AddOpePanel_Label1:Label;
      
      public var _AddOpePanel_Label2:Label;
      
      private var _865288726needGold:Label;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":190,
               "height":130,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_AddOpePanel_Label1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":34,
                        "y":43,
                        "text":"增加次数："
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_AddOpePanel_Label2",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":34,
                        "y":71,
                        "text":"消耗金子："
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"needGold",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":89,
                        "y":71,
                        "text":"11111"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "events":{"click":"___AddOpePanel_BasicDelayButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.paddingBottom = 0;
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                     this.paddingTop = 0;
                     this.cornerRadius = 3;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":99,
                        "x":34,
                        "styleName":"BtnStdGreen",
                        "label":"确定",
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "events":{"click":"___AddOpePanel_BasicDelayButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.paddingBottom = 0;
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                     this.paddingTop = 0;
                     this.cornerRadius = 3;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":99,
                        "x":107,
                        "styleName":"BtnStdGreen",
                        "label":"取消",
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":NumericStepper,
                  "id":"num",
                  "events":{"change":"__num_change"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":89,
                        "y":41,
                        "value":1,
                        "maximum":99
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function AddOpePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 190;
         this.height = 130;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AddOpePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get needGold() : Label
      {
         return this._865288726needGold;
      }
      
      [Bindable(event="propertyChange")]
      public function get num() : NumericStepper
      {
         return this._109446num;
      }
      
      public function set needGold(param1:Label) : void
      {
         var _loc2_:Object = this._865288726needGold;
         if(_loc2_ !== param1)
         {
            this._865288726needGold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needGold",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AddOpePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AddOpePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AddOpePanelWatcherSetupUtil");
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
      
      private function _AddOpePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function set num(param1:NumericStepper) : void
      {
         var _loc2_:Object = this._109446num;
         if(_loc2_ !== param1)
         {
            this._109446num = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",_loc2_,param1));
         }
      }
      
      private function click1() : void
      {
         _core.remote.call("addDragonBallNum",null,_core.cid,Number(num.value),Number(needGold.text));
         this.visible = false;
      }
      
      private function click2() : void
      {
         this.visible = false;
      }
      
      private function goldChange() : void
      {
         var _loc1_:Number = Number(num.value);
         var _loc2_:Number = 0;
         var _loc3_:Number = _haveAddNum;
         var _loc4_:int = 0;
         while(_loc4_ < _loc1_)
         {
            if(_loc3_ >= GOLD_NEED_ARR.length)
            {
               _loc2_ += GOLD_NEED_ARR[GOLD_NEED_ARR.length - 1];
            }
            else
            {
               _loc2_ += GOLD_NEED_ARR[_loc3_];
            }
            _loc3_ += 1;
            _loc4_++;
         }
         needGold.text = _loc2_.toString();
      }
      
      private function _AddOpePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AddOpePanel_Label1.filters = param1;
         },"_AddOpePanel_Label1.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AddOpePanel_Label2.filters = param1;
         },"_AddOpePanel_Label2.filters");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            needGold.filters = param1;
         },"needGold.filters");
         result[2] = binding;
         return result;
      }
      
      public function ___AddOpePanel_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         click1();
      }
      
      public function ___AddOpePanel_BasicDelayButton2_click(param1:MouseEvent) : void
      {
         click2();
      }
      
      public function __num_change(param1:NumericStepperEvent) : void
      {
         goldChange();
      }
      
      public function updatePanel(param1:Number) : void
      {
         if(!visible)
         {
            this.show();
         }
         if(!initialized)
         {
            callLater(updatePanel,[param1]);
            return;
         }
         _haveAddNum = param1;
         var _loc2_:Number = Number(num.value);
         var _loc3_:Number = 0;
         var _loc4_:Number = _haveAddNum;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            if(_loc4_ >= GOLD_NEED_ARR.length)
            {
               _loc3_ += GOLD_NEED_ARR[GOLD_NEED_ARR.length - 1];
            }
            else
            {
               _loc3_ += GOLD_NEED_ARR[_loc4_];
            }
            _loc4_ += 1;
            _loc5_++;
         }
         needGold.text = _loc3_.toString();
      }
   }
}

