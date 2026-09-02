package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RedEnvelopeSingle;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RedEnvelopePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var RedEnvelopePanelList:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _RedEnvelopePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":400,
               "height":470,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_RedEnvelopePanel_BasicTitleCanvas1"
               })]
            };
         }
      });
      
      public function RedEnvelopePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 400;
         this.height = 470;
         this.styleName = "StandardContent";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RedEnvelopePanel._watcherSetupUtil = param1;
      }
      
      public function openRESingle(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         if(!param1)
         {
            return;
         }
         if(Boolean(param1) && Boolean(param1.data.v))
         {
            _loc2_ = RedEnvelopePanelList[param1.data.v];
            if(_loc2_)
            {
               _loc3_ = Core.getInstance().view.getUI(ViewManager.UI_PANEL).owns(_loc2_);
               if(_loc3_)
               {
                  _loc2_.onREopenHandler(param1);
               }
               else
               {
                  Core.getInstance().view.getUI(ViewManager.UI_PANEL).addChild(_loc2_);
                  _loc2_.onREopenHandler(param1);
               }
            }
            else
            {
               _loc4_ = new RedEnvelopeSingle();
               _loc4_.cid = Core.getInstance().cid;
               Core.getInstance().view.getUI(ViewManager.UI_PANEL).addChild(_loc4_);
               RedEnvelopePanelList[param1.data.v] = _loc4_;
               _loc4_.onREopenHandler(param1);
            }
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = false;
      }
      
      private function _RedEnvelopePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.RE_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RedEnvelopePanel_BasicTitleCanvas1.text = param1;
         },"_RedEnvelopePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RedEnvelopePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RedEnvelopePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_RedEnvelopePanelWatcherSetupUtil");
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
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
      }
      
      public function hideAllRedEvnelope() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         for(_loc1_ in RedEnvelopePanelList)
         {
            _loc2_ = RedEnvelopePanelList[_loc1_];
            _loc3_ = Core.getInstance().view.getUI(ViewManager.UI_PANEL).owns(_loc2_);
            if(_loc3_)
            {
               Core.getInstance().view.getUI(ViewManager.UI_PANEL).removeChild(_loc2_);
            }
         }
         RedEnvelopePanelList = [];
      }
      
      private function _RedEnvelopePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.RE_PANEL[0];
      }
   }
}

