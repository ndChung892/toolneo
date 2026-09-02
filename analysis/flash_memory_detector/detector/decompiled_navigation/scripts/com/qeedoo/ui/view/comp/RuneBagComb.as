package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.ViewStack;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RuneBagComb extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1361678900chaBag:RuneBag;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _803559802pageTab:HButtonTab;
      
      mx_internal var _bindings:Array = [];
      
      private var _991704471petBag:RuneBag;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":210,
               "height":340,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":HButtonTab,
                  "id":"pageTab",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":13,
                        "y":1,
                        "selectedIndex":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"_RuneBagComb_ViewStack1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":195,
                        "height":320,
                        "y":20,
                        "x":7.5,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RuneBag,
                           "id":"chaBag"
                        }),new UIComponentDescriptor({
                           "type":RuneBag,
                           "id":"petBag"
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _RuneBagComb_ViewStack1:ViewStack;
      
      public function RuneBagComb()
      {
         super();
         mx_internal::_document = this;
         this.width = 210;
         this.height = 340;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RuneBagComb._watcherSetupUtil = param1;
      }
      
      private function _RuneBagComb_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pageTab.filters = param1;
         },"pageTab.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return Language.DECORATE_PANEL[33];
         },function(param1:Array):void
         {
            pageTab.dataArray = param1;
         },"pageTab.dataArray");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return pageTab.selectedIndex;
         },function(param1:int):void
         {
            _RuneBagComb_ViewStack1.selectedIndex = param1;
         },"_RuneBagComb_ViewStack1.selectedIndex");
         result[2] = binding;
         binding = new Binding(this,function():uint
         {
            return RuneBag.RUNE_CHAR_BAG;
         },function(param1:uint):void
         {
            chaBag.runeBagType = param1;
         },"chaBag.runeBagType");
         result[3] = binding;
         binding = new Binding(this,function():uint
         {
            return RuneBag.RUNE_PET_BAG;
         },function(param1:uint):void
         {
            petBag.runeBagType = param1;
         },"petBag.runeBagType");
         result[4] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get pageTab() : HButtonTab
      {
         return this._803559802pageTab;
      }
      
      private function _RuneBagComb_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.DECORATE_PANEL[33];
         _loc1_ = pageTab.selectedIndex;
         _loc1_ = RuneBag.RUNE_CHAR_BAG;
         _loc1_ = RuneBag.RUNE_PET_BAG;
      }
      
      public function update() : void
      {
         chaBag.update();
         petBag.update();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RuneBagComb = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RuneBagComb_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RuneBagCombWatcherSetupUtil");
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
      public function get chaBag() : RuneBag
      {
         return this._1361678900chaBag;
      }
      
      public function set petBag(param1:RuneBag) : void
      {
         var _loc2_:Object = this._991704471petBag;
         if(_loc2_ !== param1)
         {
            this._991704471petBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petBag",_loc2_,param1));
         }
      }
      
      public function set chaBag(param1:RuneBag) : void
      {
         var _loc2_:Object = this._1361678900chaBag;
         if(_loc2_ !== param1)
         {
            this._1361678900chaBag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chaBag",_loc2_,param1));
         }
      }
      
      public function set pageTab(param1:HButtonTab) : void
      {
         var _loc2_:Object = this._803559802pageTab;
         if(_loc2_ !== param1)
         {
            this._803559802pageTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageTab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petBag() : RuneBag
      {
         return this._991704471petBag;
      }
   }
}

