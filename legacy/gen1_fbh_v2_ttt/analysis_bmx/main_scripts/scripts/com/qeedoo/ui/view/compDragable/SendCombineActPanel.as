package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.SendCombineItem;
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
   import mx.containers.Box;
   import mx.containers.Canvas;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SendCombineActPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3613077vbox:Box;
      
      private var lastSelectedIndex:int = -1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      public var _SendCombineActPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var actIndex:Array = new Array();
      
      mx_internal var _bindings:Array = [];
      
      private var wlListItemArr:Array = new Array();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":635,
               "height":480,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SendCombineActPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.bottom = "40";
                     this.top = "40";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":Box,
                        "id":"vbox",
                        "stylesFactory":function():void
                        {
                           this.verticalGap = 0;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "direction":"vertical",
                              "x":5,
                              "y":0,
                              "width":625,
                              "height":394,
                              "verticalScrollPolicy":"auto",
                              "horizontalScrollPolicy":"auto"
                           };
                        }
                     })]};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"scTime",
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.color = 16711680;
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":220,
                        "text":"",
                        "width":300
                     };
                  }
               })]
            };
         }
      });
      
      private var _908579523scTime:Label;
      
      public function SendCombineActPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 635;
         this.height = 480;
         this.styleName = "StandardContent";
         this.x = 135;
         this.y = 308;
         this.addEventListener("creationComplete",___SendCombineActPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SendCombineActPanel._watcherSetupUtil = param1;
      }
      
      private function _SendCombineActPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SEND_COMBINE_PANEL[7];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SendCombineActPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SendCombineActPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SendCombineActPanelWatcherSetupUtil");
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
      
      public function onGetSendCombineAct(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:int = 0;
         var _loc4_:SendCombineItem = null;
         if(!param1)
         {
            return;
         }
         vbox.removeAllChildren();
         for(_loc2_ in param1)
         {
            _loc3_ = int(_loc2_);
            param1[_loc2_].index = _loc2_;
            _loc4_ = new SendCombineItem();
            _loc4_.data = param1[_loc2_];
            vbox.addChild(_loc4_);
            scTime.text = Language.SEND_COMBINE_PANEL[9] + timeToDate(param1[_loc2_].end);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get scTime() : Label
      {
         return this._908579523scTime;
      }
      
      public function ___SendCombineActPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function init() : void
      {
         _core.remote.call("getSendCombineAct",new Responder(onGetSendCombineAct));
      }
      
      [Bindable(event="propertyChange")]
      public function get vbox() : Box
      {
         return this._3613077vbox;
      }
      
      public function set scTime(param1:Label) : void
      {
         var _loc2_:Object = this._908579523scTime;
         if(_loc2_ !== param1)
         {
            this._908579523scTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"scTime",_loc2_,param1));
         }
      }
      
      public function set vbox(param1:Box) : void
      {
         var _loc2_:Object = this._3613077vbox;
         if(_loc2_ !== param1)
         {
            this._3613077vbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vbox",_loc2_,param1));
         }
      }
      
      private function timeToDate(param1:Number) : String
      {
         var _loc2_:Date = new Date();
         if(param1)
         {
            _loc2_ = new Date(param1);
         }
         return (_loc2_.getMonth() + 1 < 10 ? "0" + (_loc2_.getMonth() + 1) : _loc2_.getMonth() + 1) + "/" + _loc2_.getDate() + " " + (_loc2_.getHours() < 10 ? "0" + _loc2_.getHours() : _loc2_.getHours()) + ":" + (_loc2_.getMinutes() < 10 ? "0" + _loc2_.getMinutes() : _loc2_.getMinutes());
      }
      
      private function _SendCombineActPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEND_COMBINE_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SendCombineActPanel_BasicTitleCanvas1.text = param1;
         },"_SendCombineActPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         return result;
      }
   }
}

