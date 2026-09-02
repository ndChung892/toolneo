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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PropertyBar extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _PropertyBar_SimpleCanvas2:SimpleCanvas;
      
      mx_internal var _watchers:Array;
      
      private var _1565881260fontColor:uint = 16777215;
      
      private var _993843058propName:String = "Prop";
      
      private var _350039366frontColor:uint = 7527271;
      
      private var _1213523686infoLabel:Label;
      
      private var _1309160124backColor:uint = 0;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var _1410180319valueMin:int = 0;
      
      private var _1576354554barCornerRadius:int = 4;
      
      private var _1319662702_valueMax:int = 0;
      
      mx_internal var _bindings:Array;
      
      private var _value:int = 0;
      
      private var _2067279966showTip:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function PropertyBar()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SimpleCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":200,
                  "height":18,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":SimpleCanvas,
                     "id":"_PropertyBar_SimpleCanvas2",
                     "stylesFactory":function():void
                     {
                        this.left = "0";
                        this.top = "0";
                        this.bottom = "0";
                        this.borderStyle = "solid";
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"infoLabel",
                     "stylesFactory":function():void
                     {
                        this.horizontalCenter = "0";
                        this.verticalCenter = "0";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {"y":0};
                     }
                  })]
               };
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
            this.borderStyle = "solid";
            this.borderColor = 1656937;
            this.cornerRadius = 3;
         };
         this.width = 200;
         this.height = 18;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PropertyBar._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get barCornerRadius() : int
      {
         return this._1576354554barCornerRadius;
      }
      
      public function set barCornerRadius(param1:int) : void
      {
         var _loc2_:Object = this._1576354554barCornerRadius;
         if(_loc2_ !== param1)
         {
            this._1576354554barCornerRadius = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"barCornerRadius",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propName() : String
      {
         return this._993843058propName;
      }
      
      [Bindable(event="propertyChange")]
      private function get _valueMax() : int
      {
         return this._1319662702_valueMax;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PropertyBar = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PropertyBar_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PropertyBarWatcherSetupUtil");
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
      
      public function set propName(param1:String) : void
      {
         var _loc2_:Object = this._993843058propName;
         if(_loc2_ !== param1)
         {
            this._993843058propName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propName",_loc2_,param1));
         }
      }
      
      public function setColor(param1:uint) : void
      {
         frontColor = param1;
      }
      
      private function set _valueMax(param1:int) : void
      {
         var _loc2_:Object = this._1319662702_valueMax;
         if(_loc2_ !== param1)
         {
            this._1319662702_valueMax = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_valueMax",_loc2_,param1));
         }
      }
      
      public function set fontColor(param1:uint) : void
      {
         var _loc2_:Object = this._1565881260fontColor;
         if(_loc2_ !== param1)
         {
            this._1565881260fontColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fontColor",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get valueMin() : int
      {
         return this._1410180319valueMin;
      }
      
      public function get valueMax() : int
      {
         return _valueMax;
      }
      
      private function _PropertyBar_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = backColor;
         _loc1_ = value / _valueMax * width;
         _loc1_ = frontColor;
         _loc1_ = barCornerRadius;
         _loc1_ = propName + ":" + value.toString() + "/" + _valueMax.toString();
         _loc1_ = showTip;
         _loc1_ = fontColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get frontColor() : uint
      {
         return this._350039366frontColor;
      }
      
      [Bindable(event="propertyChange")]
      public function get backColor() : uint
      {
         return this._1309160124backColor;
      }
      
      public function set valueMin(param1:int) : void
      {
         var _loc2_:Object = this._1410180319valueMin;
         if(_loc2_ !== param1)
         {
            this._1410180319valueMin = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"valueMin",_loc2_,param1));
         }
      }
      
      public function set showTip(param1:Boolean) : void
      {
         var _loc2_:Object = this._2067279966showTip;
         if(_loc2_ !== param1)
         {
            this._2067279966showTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showTip",_loc2_,param1));
         }
      }
      
      public function set infoLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1213523686infoLabel;
         if(_loc2_ !== param1)
         {
            this._1213523686infoLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showTip() : Boolean
      {
         return this._2067279966showTip;
      }
      
      [Bindable(event="propertyChange")]
      public function get fontColor() : uint
      {
         return this._1565881260fontColor;
      }
      
      public function set valueMax(param1:int) : void
      {
         _valueMax = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function set value(param1:int) : void
      {
         var _loc2_:Object = this.value;
         if(_loc2_ !== param1)
         {
            this._111972721value = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"value",_loc2_,param1));
         }
      }
      
      private function _PropertyBar_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():uint
         {
            return backColor;
         },function(param1:uint):void
         {
            this.setStyle("backgroundColor",param1);
         },"this.backgroundColor");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return value / _valueMax * width;
         },function(param1:Number):void
         {
            _PropertyBar_SimpleCanvas2.width = param1;
         },"_PropertyBar_SimpleCanvas2.width");
         result[1] = binding;
         binding = new Binding(this,function():uint
         {
            return frontColor;
         },function(param1:uint):void
         {
            _PropertyBar_SimpleCanvas2.setStyle("backgroundColor",param1);
         },"_PropertyBar_SimpleCanvas2.backgroundColor");
         result[2] = binding;
         binding = new Binding(this,function():Number
         {
            return barCornerRadius;
         },function(param1:Number):void
         {
            _PropertyBar_SimpleCanvas2.setStyle("cornerRadius",param1);
         },"_PropertyBar_SimpleCanvas2.cornerRadius");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = propName + ":" + value.toString() + "/" + _valueMax.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            infoLabel.text = param1;
         },"infoLabel.text");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return showTip;
         },function(param1:Boolean):void
         {
            infoLabel.visible = param1;
         },"infoLabel.visible");
         result[5] = binding;
         binding = new Binding(this,function():uint
         {
            return fontColor;
         },function(param1:uint):void
         {
            infoLabel.setStyle("color",param1);
         },"infoLabel.color");
         result[6] = binding;
         return result;
      }
      
      public function get value() : int
      {
         if(_value > _valueMax)
         {
            return _valueMax;
         }
         return _value;
      }
      
      public function set frontColor(param1:uint) : void
      {
         var _loc2_:Object = this._350039366frontColor;
         if(_loc2_ !== param1)
         {
            this._350039366frontColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"frontColor",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLabel() : Label
      {
         return this._1213523686infoLabel;
      }
      
      public function set backColor(param1:uint) : void
      {
         var _loc2_:Object = this._1309160124backColor;
         if(_loc2_ !== param1)
         {
            this._1309160124backColor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"backColor",_loc2_,param1));
         }
      }
      
      private function set _111972721value(param1:int) : void
      {
         if(param1 < 0)
         {
            param1 = 0;
         }
         if(_valueMax > 0 && param1 > _valueMax)
         {
            param1 = _valueMax;
         }
         _value = param1;
      }
   }
}

