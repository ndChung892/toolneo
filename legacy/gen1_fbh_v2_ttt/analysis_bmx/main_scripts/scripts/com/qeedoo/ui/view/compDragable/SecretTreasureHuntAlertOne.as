package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.HtmlTextArea;
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
   import mx.controls.CheckBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SecretTreasureHuntAlertOne extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _SecretTreasureHuntAlertOne_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1361527750checkB:CheckBox;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3237038info:HtmlTextArea;
      
      mx_internal var _watchers:Array = [];
      
      private var _97926buy:BasicGlowButton;
      
      private var _typeNum:Number;
      
      private var _str:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":150,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SecretTreasureHuntAlertOne_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":120,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HtmlTextArea,
                           "id":"info",
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                              this.backgroundAlpha = 0;
                              this.color = 16777215;
                              this.left = "10";
                              this.right = "10";
                              this.top = "10";
                              this.bottom = "72";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "editable":false,
                                 "selectable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"buy",
                           "events":{"click":"__buy_click"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":56,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":CheckBox,
                           "id":"checkB",
                           "events":{"click":"__checkB_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":102.5,
                                 "y":90,
                                 "width":98,
                                 "selected":false
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function SecretTreasureHuntAlertOne()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 150;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretTreasureHuntAlertOne._watcherSetupUtil = param1;
      }
      
      public function set checkB(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1361527750checkB;
         if(_loc2_ !== param1)
         {
            this._1361527750checkB = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"checkB",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buy() : BasicGlowButton
      {
         return this._97926buy;
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretTreasureHuntAlertOne = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretTreasureHuntAlertOne_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SecretTreasureHuntAlertOneWatcherSetupUtil");
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
      
      private function _SecretTreasureHuntAlertOne_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SecretTreasureHuntAlertOne_BasicTitleCanvas1.text = param1;
         },"_SecretTreasureHuntAlertOne_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            info.filters = param1;
         },"info.filters");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            buy.label = param1;
         },"buy.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            checkB.label = param1;
         },"checkB.label");
         result[3] = binding;
         return result;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         this.typeNum = _typeNum;
         this.str = _str;
         checkB.selected = false;
      }
      
      public function set typeNum(param1:Number) : void
      {
         _typeNum = param1;
      }
      
      public function set buy(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._97926buy;
         if(_loc2_ !== param1)
         {
            this._97926buy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buy",_loc2_,param1));
         }
      }
      
      private function _SecretTreasureHuntAlertOne_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SEC_TREA_HUNT[0];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.SEC_TREA_HUNT[2];
         _loc1_ = Language.SEC_TREA_HUNT[6];
      }
      
      public function buySecTreaHuntSZone() : void
      {
         _core.remote.call("buySecTreaHuntSZ",null,_typeNum,1);
         this.visible = false;
      }
      
      public function set str(param1:String) : void
      {
         _str = param1;
         if(initialized)
         {
            info.htmlText = _str;
         }
      }
      
      public function __checkB_click(param1:MouseEvent) : void
      {
         isCheck();
      }
      
      public function set info(param1:HtmlTextArea) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : HtmlTextArea
      {
         return this._3237038info;
      }
      
      public function __buy_click(param1:MouseEvent) : void
      {
         buySecTreaHuntSZone();
      }
      
      [Bindable(event="propertyChange")]
      public function get checkB() : CheckBox
      {
         return this._1361527750checkB;
      }
      
      public function isCheck() : void
      {
         if(checkB.selected == true)
         {
            _core.remote.call("setSTHIfCheck",null,_typeNum,1);
         }
         else
         {
            _core.remote.call("setSTHIfCheck",null,_typeNum,0);
         }
      }
   }
}

