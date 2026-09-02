package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PointSlot extends RendererItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _106845584point:Label;
      
      public var pointValue:int = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1564196393pointIcon:Image;
      
      public var pointType:String = "";
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":RendererItemSlot,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Image,
               "id":"pointIcon",
               "stylesFactory":function():void
               {
                  this.verticalAlign = "middle";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "width":30,
                     "height":30,
                     "visible":true
                  };
               }
            }),new UIComponentDescriptor({
               "type":Label,
               "id":"point",
               "stylesFactory":function():void
               {
                  this.color = 16777215;
                  this.textAlign = "right";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "width":32,
                     "y":20,
                     "text":"a"
                  };
               }
            })]};
         }
      });
      
      public function PointSlot()
      {
         super();
         mx_internal::_document = this;
         this.scaleX = 1;
         this.scaleY = 1;
         this.addEventListener("creationComplete",___PointSlot_RendererItemSlot1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PointSlot._watcherSetupUtil = param1;
      }
      
      private function initV(param1:int, param2:String = "") : void
      {
         if(param1 > 0)
         {
            point.text = "" + param1;
            if(param2 == "managePlan")
            {
               pointIcon.toolTip = Language.WELFAREPANEL_U[39] + ":" + param1;
            }
            else
            {
               pointIcon.toolTip = Language.SYSTEMSHOPPANEL_U[59] + ":" + param1;
            }
         }
      }
      
      private function _PointSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.ICON_CURRENCY_EXPOINT;
      }
      
      public function ___PointSlot_RendererItemSlot1_creationComplete(param1:FlexEvent) : void
      {
         initV(pointValue,pointType);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PointSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PointSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PointSlotWatcherSetupUtil");
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
      
      public function set pointIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1564196393pointIcon;
         if(_loc2_ !== param1)
         {
            this._1564196393pointIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointIcon",_loc2_,param1));
         }
      }
      
      private function _PointSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.ICON_CURRENCY_EXPOINT;
         },function(param1:Object):void
         {
            pointIcon.source = param1;
         },"pointIcon.source");
         result[0] = binding;
         return result;
      }
      
      public function set point(param1:Label) : void
      {
         var _loc2_:Object = this._106845584point;
         if(_loc2_ !== param1)
         {
            this._106845584point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"point",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get point() : Label
      {
         return this._106845584point;
      }
      
      [Bindable(event="propertyChange")]
      public function get pointIcon() : Image
      {
         return this._1564196393pointIcon;
      }
   }
}

