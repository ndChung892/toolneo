package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.containers.VBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class StarEffectPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _StarEffectPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _574165043vbox_prop:VBox;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _614215097vbox_value:VBox;
      
      mx_internal var _watchers:Array = [];
      
      private var _574241035vbox_name:VBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":288,
               "height":350,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_StarEffectPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"vbox_name",
                  "stylesFactory":function():void
                  {
                     this.top = "39";
                     this.bottom = "10";
                     this.verticalGap = 5;
                     this.left = "20";
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"vbox_prop",
                  "stylesFactory":function():void
                  {
                     this.top = "39";
                     this.bottom = "10";
                     this.verticalGap = 5;
                     this.left = "100";
                  }
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"vbox_value",
                  "stylesFactory":function():void
                  {
                     this.top = "39";
                     this.bottom = "10";
                     this.verticalGap = 5;
                     this.left = "200";
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function StarEffectPanel()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "StandardContent";
         this.width = 288;
         this.height = 350;
         this.addEventListener("creationComplete",___StarEffectPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         StarEffectPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox_value() : VBox
      {
         return this._614215097vbox_value;
      }
      
      public function ___StarEffectPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox_prop() : VBox
      {
         return this._574165043vbox_prop;
      }
      
      public function set vbox_value(param1:VBox) : void
      {
         var _loc2_:Object = this._614215097vbox_value;
         if(_loc2_ !== param1)
         {
            this._614215097vbox_value = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox_value",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
      }
      
      private function _StarEffectPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.STAR_EFFCT_PANEL_U[0];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:StarEffectPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _StarEffectPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_StarEffectPanelWatcherSetupUtil");
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
      
      public function set vbox_prop(param1:VBox) : void
      {
         var _loc2_:Object = this._574165043vbox_prop;
         if(_loc2_ !== param1)
         {
            this._574165043vbox_prop = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox_prop",_loc2_,param1));
         }
      }
      
      public function set vbox_name(param1:VBox) : void
      {
         var _loc2_:Object = this._574241035vbox_name;
         if(_loc2_ !== param1)
         {
            this._574241035vbox_name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox_name",_loc2_,param1));
         }
      }
      
      private function _StarEffectPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_EFFCT_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _StarEffectPanel_BasicTitleCanvas1.text = param1;
         },"_StarEffectPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         return result;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:int = 0;
         var _loc3_:RoundedLabel = null;
         var _loc4_:RoundedLabel = null;
         var _loc5_:RoundedLabel = null;
         var _loc6_:Object = null;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         super.visible = param1;
         if(param1)
         {
            vbox_name.removeAllChildren();
            vbox_prop.removeAllChildren();
            vbox_value.removeAllChildren();
            _loc2_ = 1;
            while(_loc2_ <= 12)
            {
               _loc3_ = new RoundedLabel();
               _loc4_ = new RoundedLabel();
               _loc5_ = new RoundedLabel();
               _loc6_ = _core.player.starsData[_loc2_];
               _loc7_ = 0;
               if(_loc6_)
               {
                  _loc9_ = GameData.d[GamePredef.TBL_STARS_TEMPLATE][_loc6_.tid];
                  if(_loc9_)
                  {
                     _loc7_ = _loc9_.addValue * _loc6_.addition;
                     _loc7_ = Number(_loc7_.toFixed(2));
                     if(_loc7_ == int(_loc7_))
                     {
                        _loc7_ = int(_loc7_);
                     }
                  }
               }
               _loc8_ = Language.STAR_EFFCT_PANEL_U[_loc2_];
               _loc3_.text = Language.STAR_ADD_PANEL_U[_loc2_] + "：";
               _loc4_.text = _loc8_;
               _loc4_.setStyle("color",65280);
               _loc5_.text = " + " + _loc7_;
               if(_loc2_ == 8 || _loc2_ == 11)
               {
                  _loc5_.text += "%";
               }
               vbox_name.addChild(_loc3_);
               vbox_prop.addChild(_loc4_);
               vbox_value.addChild(_loc5_);
               _loc2_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox_name() : VBox
      {
         return this._574241035vbox_name;
      }
   }
}

