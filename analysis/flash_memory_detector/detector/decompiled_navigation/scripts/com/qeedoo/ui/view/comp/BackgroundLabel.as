package com.qeedoo.ui.view.comp
{
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BackgroundLabel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var clickCall:Function;
      
      private var _1215755049nameLabel:Label;
      
      public var recipeId:int;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _607740351labelText:String = "";
      
      mx_internal var _watchers:Array;
      
      private var _color:uint;
      
      mx_internal var _bindings:Array;
      
      private var _labelSelected:Boolean = false;
      
      private var _1657211086labelWidth:Number;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function BackgroundLabel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameLabel",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":5};
                  }
               })]};
            }
         });
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
            this.backgroundAlpha = 0;
            this.backgroundColor = 16776960;
         };
         this.percentWidth = 100;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("click",___BackgroundLabel_Canvas1_click);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BackgroundLabel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get labelText() : String
      {
         return this._607740351labelText;
      }
      
      public function set labelText(param1:String) : void
      {
         var _loc2_:Object = this._607740351labelText;
         if(_loc2_ !== param1)
         {
            this._607740351labelText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelText",_loc2_,param1));
         }
      }
      
      public function setLabelColor(param1:uint) : void
      {
         _color = param1;
         nameLabel.setStyle("color",_color);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BackgroundLabel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BackgroundLabel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_BackgroundLabelWatcherSetupUtil");
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
      
      private function _BackgroundLabel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = labelWidth;
         _loc1_ = labelText;
      }
      
      public function set nameLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1215755049nameLabel;
         if(_loc2_ !== param1)
         {
            this._1215755049nameLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLabel",_loc2_,param1));
         }
      }
      
      public function set labelSelected(param1:Boolean) : void
      {
         _labelSelected = param1;
         if(param1)
         {
            setStyle("backgroundAlpha","1");
            nameLabel.setStyle("color",0);
         }
         else
         {
            setStyle("backgroundAlpha","0");
            nameLabel.setStyle("color",_color);
         }
      }
      
      public function clickHandler() : void
      {
         clickCall && clickCall(recipeId);
      }
      
      private function _BackgroundLabel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return labelWidth;
         },function(param1:Number):void
         {
            nameLabel.width = param1;
         },"nameLabel.width");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = labelText;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nameLabel.text = param1;
         },"nameLabel.text");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLabel() : Label
      {
         return this._1215755049nameLabel;
      }
      
      public function ___BackgroundLabel_Canvas1_click(param1:MouseEvent) : void
      {
         clickHandler();
      }
      
      public function set labelWidth(param1:Number) : void
      {
         var _loc2_:Object = this._1657211086labelWidth;
         if(_loc2_ !== param1)
         {
            this._1657211086labelWidth = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelWidth",_loc2_,param1));
         }
      }
      
      public function get labelSelected() : Boolean
      {
         return _labelSelected;
      }
      
      [Bindable(event="propertyChange")]
      public function get labelWidth() : Number
      {
         return this._1657211086labelWidth;
      }
   }
}

