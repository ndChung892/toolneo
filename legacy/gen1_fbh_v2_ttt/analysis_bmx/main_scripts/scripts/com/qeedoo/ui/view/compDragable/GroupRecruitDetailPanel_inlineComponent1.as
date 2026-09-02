package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupRecruitDetailPanel_inlineComponent1 extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":BasicGlowButton,
               "id":"_GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1",
               "events":{"click":"___GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1_click"},
               "propertiesFactory":function():Object
               {
                  return {"styleName":"BtnStdRed2"};
               }
            })]};
         }
      });
      
      private var _88844982outerDocument:GroupRecruitDetailPanel;
      
      mx_internal var _watchers:Array = [];
      
      public function GroupRecruitDetailPanel_inlineComponent1()
      {
         super();
         mx_internal::_document = this;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupRecruitDetailPanel_inlineComponent1._watcherSetupUtil = param1;
      }
      
      private function _GroupRecruitDetailPanel_inlineComponent1_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = parentDocument.acceptButtonEnable;
         _loc1_ = Language.GROUP_RECRUIT_PANEL_U[11];
      }
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : GroupRecruitDetailPanel
      {
         return this._88844982outerDocument;
      }
      
      private function _GroupRecruitDetailPanel_inlineComponent1_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return parentDocument.acceptButtonEnable;
         },function(param1:Boolean):void
         {
            _GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1.enabled = param1;
         },"_GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1.enabled");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUP_RECRUIT_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1.label = param1;
         },"_GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1.label");
         result[1] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupRecruitDetailPanel_inlineComponent1 = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupRecruitDetailPanel_inlineComponent1_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GroupRecruitDetailPanel_inlineComponent1WatcherSetupUtil");
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
      
      public function ___GroupRecruitDetailPanel_inlineComponent1_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         parentDocument.acceptRoomApply(data.cid);
      }
      
      public function set outerDocument(param1:GroupRecruitDetailPanel) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
         }
      }
   }
}

