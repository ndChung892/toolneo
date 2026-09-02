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
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RedEnvelopeSingleItemRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const NEW_ICON:Class = RedEnvelopeSingleItemRenderer_NEW_ICON;
      
      private var _1303557306goldLable:RoundedLabel;
      
      private var _94802286cname:String;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3178592gold:String;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":237,
               "height":47,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"bg",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":3,
                        "y":3,
                        "width":231,
                        "height":41
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"cnameLable",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":3,
                        "y":15,
                        "width":110
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"goldLable",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":115,
                        "y":15,
                        "width":110
                     };
                  }
               })]
            };
         }
      });
      
      private var _1059212552cnameLable:RoundedLabel;
      
      private var _3141bg:Image;
      
      public function RedEnvelopeSingleItemRenderer()
      {
         super();
         mx_internal::_document = this;
         this.width = 237;
         this.height = 47;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RedEnvelopeSingleItemRenderer._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get goldLable() : RoundedLabel
      {
         return this._1303557306goldLable;
      }
      
      private function set gold(param1:String) : void
      {
         var _loc2_:Object = this._3178592gold;
         if(_loc2_ !== param1)
         {
            this._3178592gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gold",_loc2_,param1));
         }
      }
      
      public function set bg(param1:Image) : void
      {
         var _loc2_:Object = this._3141bg;
         if(_loc2_ !== param1)
         {
            this._3141bg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bg",_loc2_,param1));
         }
      }
      
      public function set goldLable(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1303557306goldLable;
         if(_loc2_ !== param1)
         {
            this._1303557306goldLable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldLable",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RedEnvelopeSingleItemRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RedEnvelopeSingleItemRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RedEnvelopeSingleItemRendererWatcherSetupUtil");
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
      
      private function _RedEnvelopeSingleItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = NEW_ICON;
         _loc1_ = cname;
         _loc1_ = gold + " 金票";
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1)
         {
            cname = param1.cname;
            gold = param1.cash;
         }
      }
      
      private function set cname(param1:String) : void
      {
         var _loc2_:Object = this._94802286cname;
         if(_loc2_ !== param1)
         {
            this._94802286cname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cname",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bg() : Image
      {
         return this._3141bg;
      }
      
      [Bindable(event="propertyChange")]
      private function get cname() : String
      {
         return this._94802286cname;
      }
      
      [Bindable(event="propertyChange")]
      private function get gold() : String
      {
         return this._3178592gold;
      }
      
      private function _RedEnvelopeSingleItemRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return NEW_ICON;
         },function(param1:Object):void
         {
            bg.source = param1;
         },"bg.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = cname;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cnameLable.text = param1;
         },"cnameLable.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = gold + " 金票";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goldLable.text = param1;
         },"goldLable.text");
         result[2] = binding;
         return result;
      }
      
      public function set cnameLable(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1059212552cnameLable;
         if(_loc2_ !== param1)
         {
            this._1059212552cnameLable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cnameLable",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cnameLable() : RoundedLabel
      {
         return this._1059212552cnameLable;
      }
   }
}

