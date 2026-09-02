package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.config.Debug;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.compGameStage.BattleCreatureView;
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
   
   public class AutoBattleCanvas extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const MAX_NUM:int = 150;
      
      private var _2939591_num:int;
      
      public var _AutoBattleCanvas_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      public var _AutoBattleCanvas_BasicGlowButton1:BasicGlowButton;
      
      public var _AutoBattleCanvas_RoundedLabel1:RoundedLabel;
      
      public var _AutoBattleCanvas_RoundedLabel2:RoundedLabel;
      
      mx_internal var _bindings:Array;
      
      public var auto:Boolean = false;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      public function AutoBattleCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":234,
                  "height":121,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicTitleCanvas,
                     "id":"_AutoBattleCanvas_BasicTitleCanvas1"
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_AutoBattleCanvas_RoundedLabel1",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "center";
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":32,
                           "y":47
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"_AutoBattleCanvas_BasicGlowButton1",
                     "events":{"click":"___AutoBattleCanvas_BasicGlowButton1_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":66,
                           "y":80.5,
                           "styleName":"BtnStdRed",
                           "width":102
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_AutoBattleCanvas_RoundedLabel2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "left";
                        this.color = 16711680;
                        this.fontWeight = "bold";
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":146.95,
                           "y":47
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
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
            this.backgroundColor = 16777215;
         };
         this.width = 234;
         this.height = 121;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AutoBattleCanvas._watcherSetupUtil = param1;
      }
      
      public function get maxNum() : Number
      {
         return MAX_NUM;
      }
      
      public function get num() : Number
      {
         return _num;
      }
      
      [Bindable(event="propertyChange")]
      private function get _num() : int
      {
         return this._2939591_num;
      }
      
      public function set num(param1:Number) : void
      {
         if(Debug.DEBUG_MODE)
         {
         }
         _num = param1;
         if(_num <= 0 || _num > 150)
         {
            auto = false;
            visible = false;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AutoBattleCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AutoBattleCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_AutoBattleCanvasWatcherSetupUtil");
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
      
      public function stopAuto() : void
      {
         auto = false;
         visible = false;
         BattleCreatureView.cmdMode = true;
         _core.view.getUI(ViewManager.MAIN_AUTOBATTLE_SET).changeStyle(true);
         _num = 0;
      }
      
      public function ___AutoBattleCanvas_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         stopAuto();
      }
      
      private function _AutoBattleCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUTOBATTLECANVAS_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoBattleCanvas_BasicTitleCanvas1.text = param1;
         },"_AutoBattleCanvas_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUTOBATTLECANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoBattleCanvas_RoundedLabel1.text = param1;
         },"_AutoBattleCanvas_RoundedLabel1.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AUTOBATTLECANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoBattleCanvas_BasicGlowButton1.label = param1;
         },"_AutoBattleCanvas_BasicGlowButton1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _num;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AutoBattleCanvas_RoundedLabel2.text = param1;
         },"_AutoBattleCanvas_RoundedLabel2.text");
         result[3] = binding;
         return result;
      }
      
      private function set _num(param1:int) : void
      {
         var _loc2_:Object = this._2939591_num;
         if(_loc2_ !== param1)
         {
            this._2939591_num = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_num",_loc2_,param1));
         }
      }
      
      public function startAuto() : void
      {
         visible = true;
         auto = true;
         BattleCreatureView.cmdMode = false;
         _num = MAX_NUM;
      }
      
      private function _AutoBattleCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.AUTOBATTLECANVAS_U[1];
         _loc1_ = Language.AUTOBATTLECANVAS_S[0];
         _loc1_ = Language.AUTOBATTLECANVAS_U[0];
         _loc1_ = _num;
      }
   }
}

