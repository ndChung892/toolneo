package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuildHelpPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _GuildHelpPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":480,
               "height":354,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GuildHelpPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"help",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":21,
                        "y":59,
                        "height":245,
                        "width":439
                     };
                  }
               })]
            };
         }
      });
      
      private var _3198785help:IntroText;
      
      mx_internal var _watchers:Array = [];
      
      public function GuildHelpPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 480;
         this.height = 354;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildHelpPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get help() : IntroText
      {
         return this._3198785help;
      }
      
      public function set help(param1:IntroText) : void
      {
         var _loc2_:Object = this._3198785help;
         if(_loc2_ !== param1)
         {
            this._3198785help = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"help",_loc2_,param1));
         }
      }
      
      private function _GuildHelpPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUILDPANEL_U[23];
         _loc1_ = Language.GUILD_HELP;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuildHelpPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildHelpPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuildHelpPanelWatcherSetupUtil");
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
      
      private function _GuildHelpPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildHelpPanel_BasicTitleCanvas1.text = param1;
         },"_GuildHelpPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILD_HELP;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            help.text = param1;
         },"help.text");
         result[1] = binding;
         return result;
      }
   }
}

