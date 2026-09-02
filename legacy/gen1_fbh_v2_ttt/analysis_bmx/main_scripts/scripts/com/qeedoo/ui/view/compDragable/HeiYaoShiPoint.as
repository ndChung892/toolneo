package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HeiYaoShiPoint extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var pIndex:int = 1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var pointId:* = 1;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1284520878_activated:Boolean;
      
      private var _1377687758button:Button;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      public var pStage:int = 0;
      
      private var _100313435image:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Button,
               "id":"button",
               "events":{"click":"__button_click"},
               "stylesFactory":function():void
               {
                  this.horizontalCenter = "0";
                  this.verticalCenter = "0";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"BtnHeiyaoshiPointNotActive",
                     "width":20,
                     "height":20
                  };
               }
            }),new UIComponentDescriptor({
               "type":Image,
               "id":"image",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "height":40,
                     "width":40
                  };
               }
            })]};
         }
      });
      
      public function HeiYaoShiPoint()
      {
         super();
         mx_internal::_document = this;
         this.addEventListener("creationComplete",___HeiYaoShiPoint_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeiYaoShiPoint._watcherSetupUtil = param1;
      }
      
      public function get activated() : Boolean
      {
         return _activated;
      }
      
      private function updateTip() : void
      {
         var _loc2_:Object = null;
         if(!this.initialized)
         {
            return;
         }
         var _loc1_:String = "";
         if(!_activated)
         {
            _loc2_ = HeiYaoShiConfig.POINT_FIGURE[pStage + pIndex][pointId].price;
            if(_loc2_ <= 0)
            {
               _activated = true;
            }
            else if(pStage == 10)
            {
               _loc1_ = LanguageUtil.replace(Language.HEIYAOSHI_PANEL[23],{"num":_loc2_});
            }
            else
            {
               _loc1_ = LanguageUtil.replace(Language.HEIYAOSHI_PANEL[5],{"num":_loc2_});
            }
         }
         this.toolTip = _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get _activated() : Boolean
      {
         return this._1284520878_activated;
      }
      
      private function lightPoint() : void
      {
         Core.getInstance().remote.call("lightHeiyaoshiPoint",null,pStage + pIndex,pointId);
      }
      
      public function __button_click(param1:MouseEvent) : void
      {
         lightPoint();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeiYaoShiPoint = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeiYaoShiPoint_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_HeiYaoShiPointWatcherSetupUtil");
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
      
      private function _HeiYaoShiPoint_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = !_activated;
         _loc1_ = !_activated;
         _loc1_ = _activated;
         _loc1_ = ResManager.getResUrl(2080130102070);
      }
      
      public function set button(param1:Button) : void
      {
         var _loc2_:Object = this._1377687758button;
         if(_loc2_ !== param1)
         {
            this._1377687758button = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button",_loc2_,param1));
         }
      }
      
      private function _HeiYaoShiPoint_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return !_activated;
         },function(param1:Boolean):void
         {
            button.visible = param1;
         },"button.visible");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !_activated;
         },function(param1:Boolean):void
         {
            button.enabled = param1;
         },"button.enabled");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _activated;
         },function(param1:Boolean):void
         {
            image.visible = param1;
         },"image.visible");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getResUrl(2080130102070);
         },function(param1:Object):void
         {
            image.source = param1;
         },"image.source");
         result[3] = binding;
         return result;
      }
      
      public function ___HeiYaoShiPoint_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         updateTip();
      }
      
      public function set activated(param1:Boolean) : void
      {
         _activated = param1;
         this.updateTip();
      }
      
      [Bindable(event="propertyChange")]
      public function get image() : Image
      {
         return this._100313435image;
      }
      
      private function set _activated(param1:Boolean) : void
      {
         var _loc2_:Object = this._1284520878_activated;
         if(_loc2_ !== param1)
         {
            this._1284520878_activated = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_activated",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get button() : Button
      {
         return this._1377687758button;
      }
      
      public function set image(param1:Image) : void
      {
         var _loc2_:Object = this._100313435image;
         if(_loc2_ !== param1)
         {
            this._100313435image = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"image",_loc2_,param1));
         }
      }
   }
}

