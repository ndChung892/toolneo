package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
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
   import mx.containers.VBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipRuneChip extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1662402277chipIcon:Image;
      
      private var _246322237chipNameLabel:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _746357798chipDes:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _obj:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "propertiesFactory":function():Object
               {
                  return {"childDescriptors":[new UIComponentDescriptor({
                     "type":HBox,
                     "propertiesFactory":function():Object
                     {
                        return {"childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"chipIcon",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":32,
                                 "height":32
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"chipNameLabel"
                        })]};
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"chipDes",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":14};
                     }
                  })]};
               }
            })]};
         }
      });
      
      public function TipRuneChip()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipRuneChip_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipRuneChip._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipNameLabel() : Label
      {
         return this._246322237chipNameLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get chipIcon() : Image
      {
         return this._1662402277chipIcon;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipRuneChip = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipRuneChip_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipRuneChipWatcherSetupUtil");
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
      
      private function _TipRuneChip_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            chipNameLabel.filters = param1;
         },"chipNameLabel.filters");
         result[0] = binding;
         return result;
      }
      
      public function set chipDes(param1:Label) : void
      {
         var _loc2_:Object = this._746357798chipDes;
         if(_loc2_ !== param1)
         {
            this._746357798chipDes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipDes",_loc2_,param1));
         }
      }
      
      private function setTemp(param1:Object) : void
      {
         var _loc2_:Object = param1["temp"];
         var _loc3_:int = int(_loc2_["rid"]);
         var _loc4_:String = _loc2_["name"];
         var _loc5_:int = int(_loc2_["num"]);
         var _loc6_:Object = GameData.d[GamePredef.TBL_DECO_RUNE][_loc3_];
         var _loc7_:int = int(_loc6_["qulity"]);
         var _loc8_:String = TipDecoRune.QUL_COLOR[_loc7_];
         var _loc9_:String = _loc6_["name"];
         chipIcon.source = ResManager.getIconUrl(param1.temp.iconCode);
         chipNameLabel.setStyle("color",_loc8_);
         chipNameLabel.text = _loc4_;
         chipDes.text = Language.DECORATE_PANEL[61].toString().replace("{num}",_loc5_).replace("{name}",_loc9_);
      }
      
      public function set chipIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1662402277chipIcon;
         if(_loc2_ !== param1)
         {
            this._1662402277chipIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipIcon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get chipDes() : Label
      {
         return this._746357798chipDes;
      }
      
      public function ___TipRuneChip_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipRuneChip_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      public function set chipNameLabel(param1:Label) : void
      {
         var _loc2_:Object = this._246322237chipNameLabel;
         if(_loc2_ !== param1)
         {
            this._246322237chipNameLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chipNameLabel",_loc2_,param1));
         }
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

