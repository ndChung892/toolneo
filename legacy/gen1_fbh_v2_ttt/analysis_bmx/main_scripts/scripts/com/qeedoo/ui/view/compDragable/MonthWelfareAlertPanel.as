package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.HtmlTextArea;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MonthWelfareAlertPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _iid:Number;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _3237038info:HtmlTextArea;
      
      public var _MonthWelfareAlertPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _97926buy:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _str:String;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":128,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MonthWelfareAlertPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":96,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HtmlTextArea,
                           "id":"info",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                              this.left = "10";
                              this.right = "10";
                              this.top = "10";
                              this.bottom = "24";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "editable":false,
                                 "selectable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"buy",
                           "events":{"click":"__buy_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":94,
                                 "y":59,
                                 "width":115,
                                 "height":27,
                                 "styleName":"HorizontalTab"
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
      
      public function MonthWelfareAlertPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 128;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MonthWelfareAlertPanel._watcherSetupUtil = param1;
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set iid(param1:Number) : void
      {
         _iid = param1;
      }
      
      public function buyMonthWelfareItem() : void
      {
         _core.remote.call("buyMonthWelfareItem",null,_iid);
         this.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get buy() : BasicGlowButton
      {
         return this._97926buy;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MonthWelfareAlertPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MonthWelfareAlertPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MonthWelfareAlertPanelWatcherSetupUtil");
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
      
      private function _MonthWelfareAlertPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MONTH_WELFARE_PANEL[0];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.MONTH_WELFARE_PANEL[6];
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         this.iid = _iid;
         this.str = _str;
      }
      
      public function set info(param1:HtmlTextArea) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      public function set str(param1:String) : void
      {
         _str = param1;
         if(initialized)
         {
            info.htmlText = _str;
         }
      }
      
      private function _MonthWelfareAlertPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MonthWelfareAlertPanel_BasicTitleCanvas1.text = param1;
         },"_MonthWelfareAlertPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            info.filters = param1;
         },"info.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MONTH_WELFARE_PANEL[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buy.label = param1;
         },"buy.label");
         result[2] = binding;
         return result;
      }
      
      public function __buy_click(param1:MouseEvent) : void
      {
         buyMonthWelfareItem();
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : HtmlTextArea
      {
         return this._3237038info;
      }
      
      public function set buy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._97926buy;
         if(_loc2_ !== param1)
         {
            this._97926buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buy",_loc2_,param1));
         }
      }
   }
}

