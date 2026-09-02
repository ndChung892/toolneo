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
   
   public class PKGamePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const BGIMGST:Class = PKGamePanel_BGIMGST;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _PKGamePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _2099860260bgForPromote:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var url:* = "http://bbs.mc.lezi.com/forum.php?mod=viewthread&tid=19877&extra=page%3D1";
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":790,
               "height":560,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PKGamePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"bgForPromote",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":770,
                        "y":33,
                        "height":520,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_PKGamePanel_Image1",
                           "events":{"click":"___PKGamePanel_Image1_click"},
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
      
      public var _PKGamePanel_Image1:Image;
      
      public function PKGamePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 790;
         this.height = 560;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PKGamePanel._watcherSetupUtil = param1;
      }
      
      private function _PKGamePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PK_GAME_PANEL[0];
         _loc1_ = BGIMGST;
      }
      
      public function showPanel() : void
      {
         visible = true;
      }
      
      private function _PKGamePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PK_GAME_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PKGamePanel_BasicTitleCanvas1.text = param1;
         },"_PKGamePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return BGIMGST;
         },function(param1:Object):void
         {
            _PKGamePanel_Image1.source = param1;
         },"_PKGamePanel_Image1.source");
         result[1] = binding;
         return result;
      }
      
      protected function image1_clickHandler(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest(url),"_blank");
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PKGamePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PKGamePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PKGamePanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get bgForPromote() : Canvas
      {
         return this._2099860260bgForPromote;
      }
      
      public function ___PKGamePanel_Image1_click(param1:MouseEvent) : void
      {
         image1_clickHandler(param1);
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
   }
}

