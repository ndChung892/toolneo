package com.qeedoo.ui.view.comp
{
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LifeListItemRenderer extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      public var _LifeListItemRenderer_Label1:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":HBox,
         "propertiesFactory":function():Object
         {
            return {
               "height":18,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"_LifeListItemRenderer_Label1",
                  "propertiesFactory":function():Object
                  {
                     return {"height":18};
                  }
               })]
            };
         }
      });
      
      public function LifeListItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.height = 18;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LifeListItemRenderer._watcherSetupUtil = param1;
      }
      
      private function _LifeListItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = data.name;
         _loc1_ = data.isLearned ? 65280 : 16711680;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LifeListItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LifeListItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_LifeListItemRendererWatcherSetupUtil");
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
      
      private function _LifeListItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = data.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LifeListItemRenderer_Label1.text = param1;
         },"_LifeListItemRenderer_Label1.text");
         result[0] = binding;
         binding = new Binding(this,function():uint
         {
            return data.isLearned ? 65280 : 16711680;
         },function(param1:uint):void
         {
            _LifeListItemRenderer_Label1.setStyle("color",param1);
         },"_LifeListItemRenderer_Label1.color");
         result[1] = binding;
         return result;
      }
   }
}

