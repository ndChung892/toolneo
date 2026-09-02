package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TKYYHInfoPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const BGIMGST:Class = TKYYHInfoPanel_BGIMGST;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TKYYHInfoPanel_Image1:Image;
      
      private var _2099860260bgForPromote:Canvas;
      
      public var _TKYYHInfoPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":870,
               "height":570,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_TKYYHInfoPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"bgForPromote",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":850,
                        "y":33,
                        "height":570,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_TKYYHInfoPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "buttonMode":true
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      public function TKYYHInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 870;
         this.height = 570;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TKYYHInfoPanel._watcherSetupUtil = param1;
      }
      
      private function _TKYYHInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PK_GAME_PANEL[1];
         _loc1_ = BGIMGST;
      }
      
      public function set bgForPromote(param1:Canvas) : void
      {
         var _loc2_:Object = this._2099860260bgForPromote;
         if(_loc2_ !== param1)
         {
            this._2099860260bgForPromote = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgForPromote",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         visible = true;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TKYYHInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TKYYHInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TKYYHInfoPanelWatcherSetupUtil");
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
      
      private function _TKYYHInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PK_GAME_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TKYYHInfoPanel_BasicTitleCanvas1.text = param1;
         },"_TKYYHInfoPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return BGIMGST;
         },function(param1:Object):void
         {
            _TKYYHInfoPanel_Image1.source = param1;
         },"_TKYYHInfoPanel_Image1.source");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get bgForPromote() : Canvas
      {
         return this._2099860260bgForPromote;
      }
   }
}

