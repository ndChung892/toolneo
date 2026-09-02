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
   import mx.controls.CheckBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RendererChannel extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _index:int;
      
      private var _2092246416_channelLabel:String = "";
      
      mx_internal var _watchers:Array;
      
      private var _1282089978_selected:Boolean;
      
      private var _316196445_styleName:String;
      
      private var _94627080check:CheckBox;
      
      mx_internal var _bindings:Array;
      
      public var _RendererChannel_BasicShadowButton1:BasicShadowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _567262731_selectable:Boolean = true;
      
      private var _core:Core;
      
      public function RendererChannel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SimpleCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":50,
                  "height":18,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":CheckBox,
                     "id":"check",
                     "events":{"click":"__check_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":0,
                           "y":0,
                           "width":14,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicShadowButton,
                     "id":"_RendererChannel_BasicShadowButton1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":14,
                           "y":0,
                           "width":33,
                           "height":18
                        };
                     }
                  })]
               };
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
            this.backgroundAlpha = 0;
         };
         this.width = 50;
         this.height = 18;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RendererChannel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _selected() : Boolean
      {
         return this._1282089978_selected;
      }
      
      [Bindable(event="propertyChange")]
      private function get _selectable() : Boolean
      {
         return this._567262731_selectable;
      }
      
      [Bindable(event="propertyChange")]
      public function get check() : CheckBox
      {
         return this._94627080check;
      }
      
      private function set _styleName(param1:String) : void
      {
         var _loc2_:Object = this._316196445_styleName;
         if(_loc2_ !== param1)
         {
            this._316196445_styleName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_styleName",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RendererChannel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RendererChannel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RendererChannelWatcherSetupUtil");
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         _styleName = param1.styleName;
         _channelLabel = param1.label;
         _index = param1.index;
         _selected = param1.selected;
         _selectable = param1.selectable;
      }
      
      private function set _channelLabel(param1:String) : void
      {
         var _loc2_:Object = this._2092246416_channelLabel;
         if(_loc2_ !== param1)
         {
            this._2092246416_channelLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_channelLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _styleName() : String
      {
         return this._316196445_styleName;
      }
      
      public function set check(param1:CheckBox) : void
      {
         var _loc2_:Object = this._94627080check;
         if(_loc2_ !== param1)
         {
            this._94627080check = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"check",_loc2_,param1));
         }
      }
      
      private function selectHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         data.selected = check.selected;
         _selected = check.selected;
         _core.updateSettingNow("c" + _index,Number(_selected));
      }
      
      private function set _selectable(param1:Boolean) : void
      {
         var _loc2_:Object = this._567262731_selectable;
         if(_loc2_ !== param1)
         {
            this._567262731_selectable = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_selectable",_loc2_,param1));
         }
      }
      
      public function __check_click(param1:MouseEvent) : void
      {
         selectHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      private function get _channelLabel() : String
      {
         return this._2092246416_channelLabel;
      }
      
      private function set _selected(param1:Boolean) : void
      {
         var _loc2_:Object = this._1282089978_selected;
         if(_loc2_ !== param1)
         {
            this._1282089978_selected = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_selected",_loc2_,param1));
         }
      }
      
      private function _RendererChannel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _selected;
         _loc1_ = _selectable;
         _loc1_ = _styleName;
         _loc1_ = _channelLabel;
      }
      
      private function _RendererChannel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return _selected;
         },function(param1:Boolean):void
         {
            check.selected = param1;
         },"check.selected");
         result[0] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _selectable;
         },function(param1:Boolean):void
         {
            check.visible = param1;
         },"check.visible");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return _styleName;
         },function(param1:Object):void
         {
            _RendererChannel_BasicShadowButton1.styleName = param1;
         },"_RendererChannel_BasicShadowButton1.styleName");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _channelLabel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RendererChannel_BasicShadowButton1.label = param1;
         },"_RendererChannel_BasicShadowButton1.label");
         result[3] = binding;
         return result;
      }
   }
}

