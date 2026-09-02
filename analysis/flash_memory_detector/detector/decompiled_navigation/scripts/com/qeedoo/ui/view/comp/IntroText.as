package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   
   public class IntroText extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":HtmlTextArea,
               "id":"content",
               "stylesFactory":function():void
               {
                  this.borderStyle = "none";
                  this.backgroundAlpha = 0;
                  this.color = 16777215;
                  this.left = "10";
                  this.right = "10";
                  this.top = "10";
                  this.bottom = "10";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "editable":false,
                     "selectable":false
                  };
               }
            })]};
         }
      });
      
      private var _951530617content:HtmlTextArea;
      
      mx_internal var _watchers:Array = [];
      
      public function IntroText()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "txtArea";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         IntroText._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : HtmlTextArea
      {
         return this._951530617content;
      }
      
      private function _IntroText_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            content.filters = param1;
         },"content.filters");
         result[0] = binding;
         return result;
      }
      
      public function set content(param1:HtmlTextArea) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
         }
      }
      
      public function get text() : String
      {
         return content.text;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:IntroText = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _IntroText_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_IntroTextWatcherSetupUtil");
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
      
      public function get htmlText() : String
      {
         return content.htmlText;
      }
      
      public function set text(param1:String) : void
      {
         content.text = param1;
      }
      
      private function _IntroText_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      public function set htmlText(param1:String) : void
      {
         content.htmlText = param1;
      }
   }
}

