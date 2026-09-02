package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BasicTitleCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1969543397titleWrapper:Canvas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _2082343164btnClose:Button;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _205861821btnHelp:Button;
      
      public var closeFunc:Function;
      
      public var helpFunc:Function;
      
      private var _110371416title:Label;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function BasicTitleCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "height":31,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":Canvas,
                     "id":"titleWrapper",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "height":15,
                           "y":9,
                           "styleName":"StandardTitle",
                           "horizontalScrollPolicy":"off"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"title",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":8,
                           "styleName":"LabelTitle"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"btnHelp",
                     "events":{
                        "mouseDown":"__btnHelp_mouseDown",
                        "click":"__btnHelp_click"
                     },
                     "stylesFactory":function():void
                     {
                        this.right = "38";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":9,
                           "visible":false,
                           "styleName":"BtnPanelHelp"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"btnClose",
                     "events":{
                        "mouseDown":"__btnClose_mouseDown",
                        "click":"__btnClose_click"
                     },
                     "stylesFactory":function():void
                     {
                        this.right = "12";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "y":9,
                           "styleName":"BtnPanelClose"
                        };
                     }
                  })]
               };
            }
         });
         closeFunc = closeFuncDefault;
         helpFunc = helpFuncDefault;
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.textAlign = "center";
         };
         this.percentWidth = 100;
         this.height = 31;
         this.x = 0;
         this.y = 0;
         this.horizontalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BasicTitleCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnClose() : Button
      {
         return this._2082343164btnClose;
      }
      
      public function __btnHelp_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function __btnClose_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function closeFuncDefault() : void
      {
         this.parentDocument.hide();
      }
      
      public function set closeButtonVisible(param1:Boolean) : void
      {
         btnClose.visible = param1;
      }
      
      private function _BasicTitleCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            title.filters = param1;
         },"title.filters");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnHelp() : Button
      {
         return this._205861821btnHelp;
      }
      
      public function set text(param1:String) : void
      {
         title.text = param1;
         titleWrapper.width = param1.length * 17 + 90;
         titleWrapper.x = (this.parentDocument.width - titleWrapper.width) / 2;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleWrapper() : Canvas
      {
         return this._1969543397titleWrapper;
      }
      
      public function helpFuncDefault() : void
      {
         Core.getInstance().view.getUI(ViewManager.PANEL_HELP).show();
      }
      
      private function _BasicTitleCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_TITLE];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BasicTitleCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BasicTitleCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_BasicTitleCanvasWatcherSetupUtil");
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
      
      public function __btnHelp_click(param1:MouseEvent) : void
      {
         helpFunc();
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : Label
      {
         return this._110371416title;
      }
      
      public function get text() : String
      {
         return title.text;
      }
      
      public function set closeButtonEnabled(param1:Boolean) : void
      {
         btnClose.enabled = param1;
      }
      
      public function set titleWrapper(param1:Canvas) : void
      {
         var _loc2_:Object = this._1969543397titleWrapper;
         if(_loc2_ !== param1)
         {
            this._1969543397titleWrapper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleWrapper",_loc2_,param1));
         }
      }
      
      public function set title(param1:Label) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      public function set titleStyle(param1:String) : void
      {
         title.styleName = param1;
      }
      
      public function __btnClose_click(param1:MouseEvent) : void
      {
         closeFunc();
      }
      
      public function set btnHelp(param1:Button) : void
      {
         var _loc2_:Object = this._205861821btnHelp;
         if(_loc2_ !== param1)
         {
            this._205861821btnHelp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnHelp",_loc2_,param1));
         }
      }
      
      public function set btnClose(param1:Button) : void
      {
         var _loc2_:Object = this._2082343164btnClose;
         if(_loc2_ !== param1)
         {
            this._2082343164btnClose = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnClose",_loc2_,param1));
         }
      }
   }
}

