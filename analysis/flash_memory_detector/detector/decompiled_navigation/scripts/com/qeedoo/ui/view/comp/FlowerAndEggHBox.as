package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.compDragable.InputPanel;
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
   import mx.containers.HBox;
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FlowerAndEggHBox extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _150170562btnDelPop:Button;
      
      mx_internal var _watchers:Array;
      
      private var _63121260btnAddPop:Button;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _obj:Object = null;
      
      public function FlowerAndEggHBox()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":HBox,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnAddPop",
                  "events":{"click":"__btnAddPop_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnFlower"};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btnDelPop",
                  "events":{"click":"__btnDelPop_click"},
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnEgg"};
                  }
               })]};
            }
         });
         _core = Core.getInstance();
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
            this.horizontalGap = 0;
         };
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FlowerAndEggHBox._watcherSetupUtil = param1;
      }
      
      override public function set data(param1:Object) : void
      {
         _obj = param1;
      }
      
      private function useFlower(param1:int) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         if(_core.hasFlowerNum() >= param1)
         {
            _core.remote.addPopNum(_obj.name,param1);
         }
         else
         {
            _core.sysMidNote(Language.CHARACTORINFOPANEL_S[16]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAddPop() : Button
      {
         return this._63121260btnAddPop;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnDelPop() : Button
      {
         return this._150170562btnDelPop;
      }
      
      public function set btnDelPop(param1:Button) : void
      {
         var _loc2_:Object = this._150170562btnDelPop;
         if(_loc2_ !== param1)
         {
            this._150170562btnDelPop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnDelPop",_loc2_,param1));
         }
      }
      
      private function _FlowerAndEggHBox_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHARACTORINFOPANEL_S[33];
         _loc1_ = Language.CHARACTORINFOPANEL_S[34];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FlowerAndEggHBox = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FlowerAndEggHBox_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FlowerAndEggHBoxWatcherSetupUtil");
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
      
      public function __btnAddPop_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function _FlowerAndEggHBox_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnAddPop.toolTip = param1;
         },"btnAddPop.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARACTORINFOPANEL_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnDelPop.toolTip = param1;
         },"btnDelPop.toolTip");
         result[1] = binding;
         return result;
      }
      
      public function set btnAddPop(param1:Button) : void
      {
         var _loc2_:Object = this._63121260btnAddPop;
         if(_loc2_ !== param1)
         {
            this._63121260btnAddPop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAddPop",_loc2_,param1));
         }
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:InputPanel = null;
         var _loc5_:InputPanel = null;
         switch(param1.target.id)
         {
            case "btnAddPop":
               _loc2_ = _core.hasFlowerNum();
               if(_loc2_ > 0)
               {
                  _loc4_ = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
                  _loc4_.showInputNum(Language.CHARACTORINFOPANEL_S[9],"",useFlower,1,1,_loc2_);
               }
               else
               {
                  _core.sysMidNote(Language.CHARACTORINFOPANEL_S[10]);
               }
               break;
            case "btnDelPop":
               _loc3_ = _core.hasEggNum();
               if(_loc3_ > 0)
               {
                  _loc5_ = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
                  _loc5_.showInputNum(Language.ENEMYHBOX_S[9],"",useEgg,1,1,_loc3_);
               }
               else
               {
                  _core.sysMidNote(Language.ENEMYHBOX_S[8]);
               }
         }
      }
      
      public function __btnDelPop_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      private function useEgg(param1:int) : void
      {
         if(param1 <= 0)
         {
            return;
         }
         if(_core.hasEggNum() >= param1)
         {
            _core.remote.delPopNum(_obj.name,param1);
         }
         else
         {
            _core.sysMidNote(Language.ENEMYHBOX_S[7]);
         }
      }
   }
}

