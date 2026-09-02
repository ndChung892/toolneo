package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.HBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipPRSChip extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1311986764tipIcon:Image;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2014185703tipLabel:Label;
      
      private var _1311839802tipName:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":HBox,
               "propertiesFactory":function():Object
               {
                  return {"childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "id":"tipIcon",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":32,
                           "height":32
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"tipName",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     }
                  })]};
               }
            }),new UIComponentDescriptor({
               "type":Label,
               "id":"tipLabel",
               "stylesFactory":function():void
               {
                  this.color = 65280;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "mouseEnabled":false,
                     "y":40,
                     "x":10
                  };
               }
            })]};
         }
      });
      
      private var _obj:Object;
      
      public function TipPRSChip()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipPRSChip_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipPRSChip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tipName() : Label
      {
         return this._1311839802tipName;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipPRSChip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipPRSChip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipPRSChipWatcherSetupUtil");
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
      
      private function _TipPRSChip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tipName.filters = param1;
         },"tipName.filters");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            tipLabel.filters = param1;
         },"tipLabel.filters");
         result[1] = binding;
         return result;
      }
      
      public function set tipName(param1:Label) : void
      {
         var _loc2_:Object = this._1311839802tipName;
         if(_loc2_ !== param1)
         {
            this._1311839802tipName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipName",_loc2_,param1));
         }
      }
      
      private function _TipPRSChip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function ___TipPRSChip_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function setTemp(param1:Object) : void
      {
         var _loc2_:Object = null;
         _loc2_ = param1.temp;
         tipIcon.source = ResManager.getIconUrl(Number(_loc2_["iconCode"]));
         tipName.text = _loc2_["name"];
         tipLabel.text = Language.PRS_PANEL[34];
      }
      
      [Bindable(event="propertyChange")]
      public function get tipLabel() : Label
      {
         return this._2014185703tipLabel;
      }
      
      public function set tipIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1311986764tipIcon;
         if(_loc2_ !== param1)
         {
            this._1311986764tipIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipIcon",_loc2_,param1));
         }
      }
      
      public function set tipLabel(param1:Label) : void
      {
         var _loc2_:Object = this._2014185703tipLabel;
         if(_loc2_ !== param1)
         {
            this._2014185703tipLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tipIcon() : Image
      {
         return this._1311986764tipIcon;
      }
      
      public function set object(param1:Object) : void
      {
         _obj = param1;
         if(!param1.temp)
         {
            return;
         }
         setTemp(param1);
      }
   }
}

