package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.controls.Image;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.skins.halo.HaloBorder;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class Currency extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const TYPE_MONEY:uint = 0;
      
      public static const TYPE_GOLD:uint = 1;
      
      public static const TYPE_MONEY_BIND:uint = 2;
      
      public static const TYPE_GOLD_BIND:uint = 3;
      
      public static const TYPE_HONOR:uint = 4;
      
      public static const TYPE_POINT:uint = 5;
      
      public static const TYPE_EXP:uint = 6;
      
      public static const TYPE_MONEYALL:uint = 7;
      
      public static const TYPE_GOLDALL:uint = 8;
      
      public static const TYPE_EXPBATTLE:uint = 9;
      
      public static const TYPE_ACTPOINT:uint = 10;
      
      public static const TYPE_CHIVAL:uint = 11;
      
      public static const TYPE_EXPOINT:uint = 12;
      
      public static const TYPE_BTPOINT:uint = 13;
      
      public static const TYPE_DOGMEDAL:uint = 14;
      
      public static const TYPE_ACHILLESMEDAL:uint = 15;
      
      public static const TYPE_NEWYEARPNT:uint = 16;
      
      public static const TYPE_LUNAYEARPNT:uint = 17;
      
      public static const TYPE_VALENTINEPNT:uint = 18;
      
      public static const TYPE_LANTERNPNT:uint = 19;
      
      public static const TYPE_LABORPNT:uint = 20;
      
      public static const TYPE_FISHINGPNT:uint = 21;
      
      public static const TYPE_QIXIPNT:uint = 22;
      
      public static const TYPE_SUMMERPNT:uint = 23;
      
      public static const TYPE_ANNUAL_THIRD:uint = 25;
      
      public static const TYPE_PET_ARENA:uint = 26;
      
      public static const TYPE_NORMAL_CONTRIB:uint = 28;
      
      public static const TYPE_DONATE_CONTRIB:uint = 29;
      
      public static const TYPE_XMASPNT:uint = 30;
      
      public static const TYPE_GROUPPVPPNT:uint = 34;
      
      public static const TYPE_NATIONALDAY:uint = 37;
      
      public static const TYPE_PET_CHIP:uint = 38;
      
      public static const TYPE_WORLD_CUP:uint = 41;
      
      public static const TYPE_GOLD_WORLD_CUP:uint = 42;
      
      public static const TYPE_SUMMER_GAME:uint = 43;
      
      public static const TYPE_DOUBLE_11:uint = 58;
      
      public static const TYPE_EXPLORER_POINT:uint = 59;
      
      public static const TYPE_SHOWTIME_POINT:uint = 60;
      
      public static const TYPE_ANNI_POINT:uint = 49;
      
      public static const TYPE_GOLD_POINT:uint = 61;
      
      public static const TYPE_ANNI_CONSUME:uint = 62;
      
      public static const TYPE_MC_BEANS:uint = 64;
      
      public static const TYPE_PET_ARENA_ACTIVITY:uint = 65;
      
      public static const TYPE_SHOWTIME_POINT2:uint = 69;
      
      public static const TYPE_DMBKYSQJ:uint = 70;
      
      public static const TYPE_DMBKSBJL:uint = 71;
      
      private var _1088739897currencyInput:TextInput;
      
      mx_internal var _watchers:Array = [];
      
      private var _2125731805priceType:String = "";
      
      private var _1065511464textAlign:String = "left";
      
      private var _3575610type:uint = 0;
      
      private var _111972721value:Number = 0;
      
      public var minValue:Number = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _623225833inputEnabled:Boolean = false;
      
      public var _Currency_TextInput2:TextInput;
      
      public var _Currency_Image1:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _291785097showBorder:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":131,
               "height":20,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"_Currency_Image1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":16,
                        "height":16,
                        "y":1,
                        "x":-5
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"currencyInput",
                  "events":{"change":"__currencyInput_change"},
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                     this.left = "12";
                     this.disabledColor = 16777215;
                     this.color = 16777215;
                     this.fontSize = 10;
                     this.fontFamily = "Arial";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "restrict":"0-9",
                        "maxChars":10,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"_Currency_TextInput2",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                     this.backgroundAlpha = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":62,
                        "y":1,
                        "height":18,
                        "width":66,
                        "visible":false
                     };
                  }
               })]
            };
         }
      });
      
      public var maxValue:Number = 1.7976931348623157e+308;
      
      public function Currency()
      {
         super();
         mx_internal::_document = this;
         this.width = 131;
         this.height = 20;
         this.addEventListener("creationComplete",___Currency_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         Currency._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBorder() : Boolean
      {
         return this._291785097showBorder;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:Currency = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _Currency_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_CurrencyWatcherSetupUtil");
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
      
      public function set showBorder(param1:Boolean) : void
      {
         var _loc2_:Object = this._291785097showBorder;
         if(_loc2_ !== param1)
         {
            this._291785097showBorder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBorder",_loc2_,param1));
         }
      }
      
      private function imgSrc(param1:int) : Class
      {
         switch(param1)
         {
            case TYPE_MONEY:
               return ResManager.ICON_CURRENCY_MONEY;
            case TYPE_GOLD:
            case TYPE_GOLD_POINT:
               return ResManager.ICON_CURRENCY_GOLD;
            case TYPE_MONEY_BIND:
               return ResManager.ICON_CURRENCY_MONEY_BIND;
            case TYPE_GOLD_BIND:
               return ResManager.ICON_CURRENCY_GOLD_BIND;
            case TYPE_HONOR:
               return ResManager.ICON_CURRENCY_HONOR;
            case TYPE_POINT:
               return ResManager.ICON_CURRENCY_SKILL;
            case TYPE_EXP:
               return ResManager.ICON_CURRENCY_EXP;
            case TYPE_MONEYALL:
               return ResManager.ICON_CURRENCY_MONEY_ALL;
            case TYPE_GOLDALL:
               return ResManager.ICON_CURRENCY_GOLD_ALL;
            case TYPE_EXPBATTLE:
               return ResManager.ICON_CURRENCY_EXPBATTLE;
            case TYPE_ACTPOINT:
               return ResManager.ICON_CURRENCY_ACTPOINT;
            case TYPE_EXPOINT:
               return ResManager.ICON_CURRENCY_EXPOINT;
            case TYPE_DOGMEDAL:
            case TYPE_ANNI_CONSUME:
            case TYPE_MC_BEANS:
               return ResManager.ICON_CURRENCY_DOGMEDAL;
            case TYPE_PET_ARENA_ACTIVITY:
            case TYPE_BTPOINT:
            case TYPE_PET_ARENA:
               return ResManager.ICON_CURRENCY_BTPOINT;
            case TYPE_ACHILLESMEDAL:
               return ResManager.ICON_CURRENCY_ACHILLESMEDAL;
            case TYPE_NEWYEARPNT:
            case TYPE_LUNAYEARPNT:
            case TYPE_VALENTINEPNT:
            case TYPE_LANTERNPNT:
            case TYPE_LABORPNT:
            case TYPE_FISHINGPNT:
            case TYPE_QIXIPNT:
            case TYPE_SUMMERPNT:
            case TYPE_ANNUAL_THIRD:
            case TYPE_NORMAL_CONTRIB:
            case TYPE_DONATE_CONTRIB:
            case TYPE_XMASPNT:
            case TYPE_SUMMER_GAME:
            case TYPE_NATIONALDAY:
            case TYPE_PET_CHIP:
            case TYPE_DOUBLE_11:
            case TYPE_ANNI_POINT:
               return ResManager.ICON_CURRENCY_FESTIVALPOINT;
            case TYPE_GROUPPVPPNT:
               return ResManager.ICON_PVP_DOGMEDAL;
            case TYPE_WORLD_CUP:
               return ResManager.ICON_WORLD_CUP;
            case TYPE_GOLD_WORLD_CUP:
               return ResManager.ICON_WORLD_CUP_GOLD;
            default:
               return ResManager.ICON_CURRENCY_MONEY;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get priceType() : String
      {
         return this._2125731805priceType;
      }
      
      [Bindable(event="propertyChange")]
      public function get inputEnabled() : Boolean
      {
         return this._623225833inputEnabled;
      }
      
      private function _Currency_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = showBorder ? "solid" : "none";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            this.setStyle("borderStyle",param1);
         },"this.borderStyle");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = genToolTip(type) + ":" + value.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            this.toolTip = param1;
         },"this.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return imgSrc(type);
         },function(param1:Object):void
         {
            _Currency_Image1.source = param1;
         },"_Currency_Image1.source");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return inputEnabled;
         },function(param1:Boolean):void
         {
            currencyInput.enabled = param1;
         },"currencyInput.enabled");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            currencyInput.filters = param1;
         },"currencyInput.filters");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = textAlign;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            currencyInput.setStyle("textAlign",param1);
         },"currencyInput.textAlign");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = value.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            currencyInput.text = param1;
         },"currencyInput.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = priceType.toString();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _Currency_TextInput2.text = param1;
         },"_Currency_TextInput2.text");
         result[7] = binding;
         return result;
      }
      
      public function set inputEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._623225833inputEnabled;
         if(_loc2_ !== param1)
         {
            this._623225833inputEnabled = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"inputEnabled",_loc2_,param1));
         }
      }
      
      public function set textAlign(param1:String) : void
      {
         var _loc2_:Object = this._1065511464textAlign;
         if(_loc2_ !== param1)
         {
            this._1065511464textAlign = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"textAlign",_loc2_,param1));
         }
      }
      
      private function setBorder() : void
      {
         if(!inputEnabled)
         {
            currencyInput.setStyle("borderSkin",HaloBorder);
            currencyInput.setStyle("backgroundAlpha",0);
            currencyInput.setStyle("textIndent",0);
            currencyInput.validateNow();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyInput() : TextInput
      {
         return this._1088739897currencyInput;
      }
      
      [Bindable(event="propertyChange")]
      public function get type() : uint
      {
         return this._3575610type;
      }
      
      public function ___Currency_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         setBorder();
      }
      
      public function set priceType(param1:String) : void
      {
         var _loc2_:Object = this._2125731805priceType;
         if(_loc2_ !== param1)
         {
            this._2125731805priceType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceType",_loc2_,param1));
         }
      }
      
      public function __currencyInput_change(param1:Event) : void
      {
         onChange(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get textAlign() : String
      {
         return this._1065511464textAlign;
      }
      
      public function set value(param1:Number) : void
      {
         var _loc2_:Object = this._111972721value;
         if(_loc2_ !== param1)
         {
            this._111972721value = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"value",_loc2_,param1));
         }
      }
      
      private function _Currency_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = showBorder ? "solid" : "none";
         _loc1_ = genToolTip(type) + ":" + value.toString();
         _loc1_ = imgSrc(type);
         _loc1_ = inputEnabled;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = textAlign;
         _loc1_ = value.toString();
         _loc1_ = priceType.toString();
      }
      
      private function onChange(param1:Event) : void
      {
         value = Math.round(Number(currencyInput.text));
         if(value > maxValue)
         {
            value = maxValue;
         }
         if(value < minValue)
         {
            value = minValue;
         }
         dispatchEvent(param1.clone());
      }
      
      [Bindable(event="propertyChange")]
      public function get value() : Number
      {
         return this._111972721value;
      }
      
      public function set currencyInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1088739897currencyInput;
         if(_loc2_ !== param1)
         {
            this._1088739897currencyInput = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyInput",_loc2_,param1));
         }
      }
      
      public function genToolTip(param1:uint) : String
      {
         return GamePredef.CURRENCY_TIP[param1];
      }
      
      public function set type(param1:uint) : void
      {
         var _loc2_:Object = this._3575610type;
         if(_loc2_ !== param1)
         {
            this._3575610type = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"type",_loc2_,param1));
         }
      }
   }
}

