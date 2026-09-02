package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
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
   import mx.controls.HSlider;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.SliderEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SoulExpPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _104585025namel:Label;
      
      private var _3127759expL:String = "";
      
      private var _937993588expHSlider:HSlider;
      
      private var _2931038_exp:int = 0;
      
      public var _SoulExpPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1310192533expInfo:Label;
      
      public var _SoulExpPanel_Label4:Label;
      
      private var _104584993nameL:String = "";
      
      private var _1289196801expBtn:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _849919943totalExp:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":270,
               "height":110,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SoulExpPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"namel",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"expInfo",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":100,
                        "y":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"totalExp",
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.color = 16775802;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":50};
                  }
               }),new UIComponentDescriptor({
                  "type":HSlider,
                  "id":"expHSlider",
                  "events":{"change":"__expHSlider_change"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":65,
                        "width":155,
                        "liveDragging":true,
                        "minimum":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_SoulExpPanel_Label4",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":33,
                        "y":81
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"expBtn",
                  "events":{"click":"__expBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":68,
                        "width":60,
                        "styleName":"BtnNormalRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var obj:Object;
      
      private var _90862254_expL:String = "";
      
      public function SoulExpPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 270;
         this.height = 110;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SoulExpPanel._watcherSetupUtil = param1;
      }
      
      public function set namel(param1:Label) : void
      {
         var _loc2_:Object = this._104585025namel;
         if(_loc2_ !== param1)
         {
            this._104585025namel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"namel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expHSlider() : HSlider
      {
         return this._937993588expHSlider;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SoulExpPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SoulExpPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SoulExpPanelWatcherSetupUtil");
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
      
      public function set expL(param1:String) : void
      {
         var _loc2_:Object = this._3127759expL;
         if(_loc2_ !== param1)
         {
            this._3127759expL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expL",_loc2_,param1));
         }
      }
      
      private function _SoulExpPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_SOUL_S[18];
         _loc1_ = nameL;
         _loc1_ = expL;
         _loc1_ = _expL;
         _loc1_ = _exp;
         _loc1_ = Language.PET_SOUL_S[19];
         _loc1_ = Language.PET_SOUL_S[20];
      }
      
      [Bindable(event="propertyChange")]
      public function get nameL() : String
      {
         return this._104584993nameL;
      }
      
      public function set expHSlider(param1:HSlider) : void
      {
         var _loc2_:Object = this._937993588expHSlider;
         if(_loc2_ !== param1)
         {
            this._937993588expHSlider = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expHSlider",_loc2_,param1));
         }
      }
      
      public function __expBtn_click(param1:MouseEvent) : void
      {
         subPutExp();
      }
      
      public function onChangeExp() : void
      {
         expHSlider.toolTip = "" + Math.floor(expHSlider.value);
         expL = int(obj.exp) + Math.floor(expHSlider.value) + "/" + obj.upExp;
         _expL = Language.PET_SOUL_S[11] + (int(_core.player.soulExp) - Math.floor(expHSlider.value));
      }
      
      [Bindable(event="propertyChange")]
      public function get _expL() : String
      {
         return this._90862254_expL;
      }
      
      [Bindable(event="propertyChange")]
      public function get totalExp() : Label
      {
         return this._849919943totalExp;
      }
      
      public function set _exp(param1:int) : void
      {
         var _loc2_:Object = this._2931038_exp;
         if(_loc2_ !== param1)
         {
            this._2931038_exp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_exp",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get namel() : Label
      {
         return this._104585025namel;
      }
      
      public function set nameL(param1:String) : void
      {
         var _loc2_:Object = this._104584993nameL;
         if(_loc2_ !== param1)
         {
            this._104584993nameL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameL",_loc2_,param1));
         }
      }
      
      public function set expData(param1:Object) : void
      {
         obj = param1;
         _exp = param1.needExp;
         expL = param1.exp + "/" + param1.upExp;
         _expL = Language.PET_SOUL_S[11] + _core.player.soulExp;
         nameL = param1.name;
         namel.setStyle("color",param1.color);
         expHSlider.value = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get expL() : String
      {
         return this._3127759expL;
      }
      
      public function set expInfo(param1:Label) : void
      {
         var _loc2_:Object = this._1310192533expInfo;
         if(_loc2_ !== param1)
         {
            this._1310192533expInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expInfo",_loc2_,param1));
         }
      }
      
      private function _SoulExpPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SoulExpPanel_BasicTitleCanvas1.text = param1;
         },"_SoulExpPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = nameL;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            namel.text = param1;
         },"namel.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = expL;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            expInfo.text = param1;
         },"expInfo.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _expL;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            totalExp.text = param1;
         },"totalExp.text");
         result[3] = binding;
         binding = new Binding(this,function():Number
         {
            return _exp;
         },function(param1:Number):void
         {
            expHSlider.maximum = param1;
         },"expHSlider.maximum");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SoulExpPanel_Label4.text = param1;
         },"_SoulExpPanel_Label4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            expBtn.label = param1;
         },"expBtn.label");
         result[6] = binding;
         return result;
      }
      
      public function __expHSlider_change(param1:SliderEvent) : void
      {
         onChangeExp();
      }
      
      [Bindable(event="propertyChange")]
      public function get _exp() : int
      {
         return this._2931038_exp;
      }
      
      public function subPutExp() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc1_)
         {
            _loc1_.putInToExp(expHSlider.value / _exp);
         }
         this.hide();
      }
      
      [Bindable(event="propertyChange")]
      public function get expInfo() : Label
      {
         return this._1310192533expInfo;
      }
      
      public function set _expL(param1:String) : void
      {
         var _loc2_:Object = this._90862254_expL;
         if(_loc2_ !== param1)
         {
            this._90862254_expL = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_expL",_loc2_,param1));
         }
      }
      
      public function set totalExp(param1:Label) : void
      {
         var _loc2_:Object = this._849919943totalExp;
         if(_loc2_ !== param1)
         {
            this._849919943totalExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totalExp",_loc2_,param1));
         }
      }
      
      public function set expBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1289196801expBtn;
         if(_loc2_ !== param1)
         {
            this._1289196801expBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expBtn() : BasicGlowButton
      {
         return this._1289196801expBtn;
      }
   }
}

