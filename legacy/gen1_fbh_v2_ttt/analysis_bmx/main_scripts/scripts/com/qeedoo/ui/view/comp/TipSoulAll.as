package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.system.Core;
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
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipSoulAll extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1740106033soulList:List;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":List,
               "id":"soulList",
               "stylesFactory":function():void
               {
                  this.backgroundAlpha = 0;
                  this.right = "0";
                  this.borderStyle = "none";
                  this.left = "0";
                  this.top = "35";
                  this.verticalCenter = "0";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "horizontalScrollPolicy":"off",
                     "verticalScrollPolicy":"off",
                     "itemRenderer":_TipSoulAll_ClassFactory1_c(),
                     "width":250,
                     "height":200
                  };
               }
            })]};
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function TipSoulAll()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipSoulAll_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipSoulAll._watcherSetupUtil = param1;
      }
      
      public function set object(param1:Array) : void
      {
         soulList.height = param1.length * 25;
         soulList.dataProvider = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipSoulAll = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipSoulAll_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipSoulAllWatcherSetupUtil");
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
      
      private function _TipSoulAll_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RendererLabel2;
         return _loc1_;
      }
      
      private function _TipSoulAll_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            soulList.setStyle("borderSkin",param1);
         },"soulList.borderSkin");
         result[0] = binding;
         return result;
      }
      
      public function ___TipSoulAll_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipSoulAll_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = null;
      }
      
      public function set soulList(param1:List) : void
      {
         var _loc2_:Object = this._1740106033soulList;
         if(_loc2_ !== param1)
         {
            this._1740106033soulList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get soulList() : List
      {
         return this._1740106033soulList;
      }
      
      override public function show(param1:Object = null) : void
      {
         setPos();
         this.visible = true;
      }
   }
}

