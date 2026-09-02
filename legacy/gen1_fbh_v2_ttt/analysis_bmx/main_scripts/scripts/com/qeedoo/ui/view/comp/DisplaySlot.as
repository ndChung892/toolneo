package com.qeedoo.ui.view.comp
{
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class DisplaySlot extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1086740055slotName:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _3533310slot:Slot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Label,
               "id":"slotName",
               "stylesFactory":function():void
               {
                  this.textAlign = "center";
                  this.color = 16776960;
                  this.horizontalCenter = "0";
               }
            }),new UIComponentDescriptor({
               "type":Slot,
               "id":"slot",
               "stylesFactory":function():void
               {
                  this.horizontalCenter = "0";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"TransparentSlot",
                     "movable":false,
                     "acceptable":false,
                     "stackNum":1,
                     "y":20,
                     "width":34,
                     "height":34
                  };
               }
            })]};
         }
      });
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public function DisplaySlot()
      {
         super();
         mx_internal::_document = this;
         this.clipContent = false;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         DisplaySlot._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get slot() : Slot
      {
         return this._3533310slot;
      }
      
      [Bindable(event="propertyChange")]
      public function get slotName() : Label
      {
         return this._1086740055slotName;
      }
      
      public function setData(param1:Object = null) : void
      {
         var _loc2_:Object = null;
         if(!this.initialized)
         {
            this.callLater(setData,[param1]);
            return;
         }
         if(!param1)
         {
            slotName.text = "";
            slot.clean();
            return;
         }
         _loc2_ = param1.slotData;
         slot.slotData = _loc2_;
         slot.type = param1.type;
         slot.giid = param1.giid;
         var _loc3_:int = int(_loc2_.color);
         if(!_loc3_ || _loc3_ < 0)
         {
            _loc3_ = 0;
         }
         slotName.htmlText = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc3_] + "\'>" + _loc2_.name + "</font>";
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:DisplaySlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _DisplaySlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_DisplaySlotWatcherSetupUtil");
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
      
      private function _DisplaySlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            slotName.filters = param1;
         },"slotName.filters");
         result[0] = binding;
         return result;
      }
      
      public function set slotName(param1:Label) : void
      {
         var _loc2_:Object = this._1086740055slotName;
         if(_loc2_ !== param1)
         {
            this._1086740055slotName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotName",_loc2_,param1));
         }
      }
      
      public function set slot(param1:Slot) : void
      {
         var _loc2_:Object = this._3533310slot;
         if(_loc2_ !== param1)
         {
            this._3533310slot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slot",_loc2_,param1));
         }
      }
      
      private function _DisplaySlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
   }
}

