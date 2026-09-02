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
   
   public class JuHuaSuanAlertPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _iid:Number;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1320896211one_buy:BasicGlowButton;
      
      private var _911839512all_buy:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3237038info:HtmlTextArea;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      public var _JuHuaSuanAlertPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
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
                  "id":"_JuHuaSuanAlertPanel_BasicTitleCanvas1"
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
                           "id":"one_buy",
                           "events":{"click":"__one_buy_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":54,
                                 "y":71,
                                 "width":80,
                                 "height":20,
                                 "styleName":"HorizontalTab"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"all_buy",
                           "events":{"click":"__all_buy_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":172,
                                 "y":71,
                                 "width":80,
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
      
      public function JuHuaSuanAlertPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 128;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         JuHuaSuanAlertPanel._watcherSetupUtil = param1;
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
      
      public function buyJuHuaSuanAll() : void
      {
         _core.remote.call("buyJuHuaSuanAll",null);
         this.visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:JuHuaSuanAlertPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _JuHuaSuanAlertPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_JuHuaSuanAlertPanelWatcherSetupUtil");
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
      
      public function set one_buy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1320896211one_buy;
         if(_loc2_ !== param1)
         {
            this._1320896211one_buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"one_buy",_loc2_,param1));
         }
      }
      
      public function buyJuHuaSuanOne() : void
      {
         _core.remote.call("buyJuHuaSuanOne",null,_iid);
         this.visible = false;
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
      
      public function __all_buy_click(param1:MouseEvent) : void
      {
         buyJuHuaSuanAll();
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
      
      public function __one_buy_click(param1:MouseEvent) : void
      {
         buyJuHuaSuanOne();
      }
      
      [Bindable(event="propertyChange")]
      public function get all_buy() : BasicGlowButton
      {
         return this._911839512all_buy;
      }
      
      public function set str(param1:String) : void
      {
         _str = param1;
         if(initialized)
         {
            info.htmlText = _str;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : HtmlTextArea
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get one_buy() : BasicGlowButton
      {
         return this._1320896211one_buy;
      }
      
      private function _JuHuaSuanAlertPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.JUHUASUAN_ALERT_PANEL[0];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.JUHUASUAN_ALERT_PANEL[1];
         _loc1_ = Language.JUHUASUAN_ALERT_PANEL[2];
      }
      
      private function _JuHuaSuanAlertPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JUHUASUAN_ALERT_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _JuHuaSuanAlertPanel_BasicTitleCanvas1.text = param1;
         },"_JuHuaSuanAlertPanel_BasicTitleCanvas1.text");
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
            var _loc1_:* = Language.JUHUASUAN_ALERT_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            one_buy.label = param1;
         },"one_buy.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JUHUASUAN_ALERT_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            all_buy.label = param1;
         },"all_buy.label");
         result[3] = binding;
         return result;
      }
      
      public function set all_buy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._911839512all_buy;
         if(_loc2_ !== param1)
         {
            this._911839512all_buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"all_buy",_loc2_,param1));
         }
      }
   }
}

