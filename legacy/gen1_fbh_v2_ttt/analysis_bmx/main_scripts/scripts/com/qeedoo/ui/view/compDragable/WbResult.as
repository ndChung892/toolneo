package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.RendererItemArray;
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
   
   public class WbResult extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _934426595result:Label;
      
      mx_internal var _watchers:Array = [];
      
      public var _WbResult_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1603303783takeButton:BasicGlowButton;
      
      private var _1641788370okButton:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _539618554myWbAward:RendererItemArray;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":271,
               "height":270,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_WbResult_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"result",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.top = "40";
                     this.fontSize = 13;
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"height":150};
                  }
               }),new UIComponentDescriptor({
                  "type":RendererItemArray,
                  "id":"myWbAward",
                  "stylesFactory":function():void
                  {
                     this.bottom = "50";
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"takeButton",
                  "events":{"click":"__takeButton_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":110,
                        "styleName":"BtnStdRed",
                        "width":52.2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"okButton",
                  "events":{"click":"__okButton_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":110,
                        "visible":false,
                        "styleName":"BtnStdRed",
                        "width":52.2
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function WbResult()
      {
         super();
         mx_internal::_document = this;
         this.width = 271;
         this.height = 270;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WbResult._watcherSetupUtil = param1;
      }
      
      public function set result(param1:Label) : void
      {
         var _loc2_:Object = this._934426595result;
         if(_loc2_ !== param1)
         {
            this._934426595result = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"result",_loc2_,param1));
         }
      }
      
      public function __takeButton_click(param1:MouseEvent) : void
      {
         take();
      }
      
      private function take() : void
      {
         if(myWbAward.getChildren().length > 0)
         {
            _core.remote.call("takeWbAward",null,_core.player.id);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myWbAward() : RendererItemArray
      {
         return this._539618554myWbAward;
      }
      
      public function updateView(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            if(param1.award.length > 0)
            {
               _loc2_ = {"array":[]};
               _loc2_.array = param1.award;
               myWbAward.data = _loc2_;
               this.takeButton.visible = true;
               this.okButton.visible = false;
               this.myWbAward.visible = true;
               myWbAward.x = (270 - (param1.award.length * 35 + (param1.award.length - 1) * 5)) / 2;
               myWbAward.width = param1.award.length * 35 + (param1.award.length - 1) * 5;
            }
            else
            {
               this.takeButton.visible = false;
               this.okButton.visible = true;
               this.myWbAward.visible = false;
            }
            result.htmlText = Language.WB_RESULT_CANVAS_U[1].replace("{rank1}",param1.rank1).replace("{rank2}",param1.rank2).replace("{hurt}",param1.hurt).replace("{money}",param1.money).replace("{exp}",param1.exp).replace("{luckyNum}",param1.luckyNum).replace("{name}",param1.name).replace("累计造成伤害","<br>累计造成伤害");
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WbResult = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WbResult_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_WbResultWatcherSetupUtil");
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
      
      public function set myWbAward(param1:RendererItemArray) : void
      {
         var _loc2_:Object = this._539618554myWbAward;
         if(_loc2_ !== param1)
         {
            this._539618554myWbAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myWbAward",_loc2_,param1));
         }
      }
      
      public function __okButton_click(param1:MouseEvent) : void
      {
         ok();
      }
      
      private function _WbResult_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WB_RESULT_CANVAS_U[0];
         _loc1_ = Language.TREASURE_U[1];
         _loc1_ = Language.WB_RESULT_CANVAS_U[2];
      }
      
      [Bindable(event="propertyChange")]
      public function get takeButton() : BasicGlowButton
      {
         return this._1603303783takeButton;
      }
      
      private function ok() : void
      {
         this.hide();
         _core.remote.call("wbLeaveMap",null,_core.player.id);
      }
      
      [Bindable(event="propertyChange")]
      public function get result() : Label
      {
         return this._934426595result;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
      }
      
      private function _WbResult_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RESULT_CANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _WbResult_BasicTitleCanvas1.text = param1;
         },"_WbResult_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TREASURE_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            takeButton.label = param1;
         },"takeButton.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WB_RESULT_CANVAS_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            okButton.label = param1;
         },"okButton.label");
         result[2] = binding;
         return result;
      }
      
      public function set takeButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1603303783takeButton;
         if(_loc2_ !== param1)
         {
            this._1603303783takeButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"takeButton",_loc2_,param1));
         }
      }
      
      public function set okButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1641788370okButton;
         if(_loc2_ !== param1)
         {
            this._1641788370okButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"okButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get okButton() : BasicGlowButton
      {
         return this._1641788370okButton;
      }
   }
}

