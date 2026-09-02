package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ChargeNoticePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ChargeNoticePanel_Label1:Label;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _206544419btn_buy:BasicGlowButton;
      
      public var _ChargeNoticePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":200,
               "height":102,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ChargeNoticePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":72,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"_ChargeNoticePanel_Label1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"DescriptionText",
                                 "x":21,
                                 "y":18,
                                 "width":157
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"btn_buy",
                           "events":{"click":"__btn_buy_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":70,
                                 "y":44,
                                 "width":60,
                                 "height":20,
                                 "styleName":"BtnNormalRed"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function ChargeNoticePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 200;
         this.height = 102;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChargeNoticePanel._watcherSetupUtil = param1;
      }
      
      public function initChargePanel() : void
      {
         initView();
         visible = true;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChargeNoticePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChargeNoticePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ChargeNoticePanelWatcherSetupUtil");
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
      
      public function __btn_buy_click(param1:MouseEvent) : void
      {
         _core.deal();
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
      }
      
      public function set btn_buy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._206544419btn_buy;
         if(_loc2_ !== param1)
         {
            this._206544419btn_buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn_buy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn_buy() : BasicGlowButton
      {
         return this._206544419btn_buy;
      }
      
      private function _ChargeNoticePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARGE_NOTICE_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChargeNoticePanel_BasicTitleCanvas1.text = param1;
         },"_ChargeNoticePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARGE_NOTICE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChargeNoticePanel_Label1.text = param1;
         },"_ChargeNoticePanel_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHARGE_NOTICE_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn_buy.label = param1;
         },"btn_buy.label");
         result[2] = binding;
         return result;
      }
      
      private function _ChargeNoticePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHARGE_NOTICE_PANEL[2];
         _loc1_ = Language.CHARGE_NOTICE_PANEL[0];
         _loc1_ = Language.CHARGE_NOTICE_PANEL[1];
      }
   }
}

