package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SecretTreasureHuntEnd extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1241479642goExit:BasicGlowButton;
      
      public var _SecretTreasureHuntEnd_Image1:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _164628312goAgain:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _3242771item:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _itemNum:Number = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":279,
               "height":180,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":150,
                        "y":30,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_SecretTreasureHuntEnd_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":5,
                                 "y":0,
                                 "width":270,
                                 "height":145
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"goAgain",
                           "events":{"click":"__goAgain_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":28,
                                 "y":105,
                                 "width":74,
                                 "height":31,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":122.5,
                                 "y":47,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"goExit",
                           "events":{"click":"__goExit_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":175,
                                 "y":109,
                                 "width":74,
                                 "height":31,
                                 "styleName":"BtnStdGreen"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function SecretTreasureHuntEnd()
      {
         super();
         mx_internal::_document = this;
         this.width = 279;
         this.height = 180;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SecretTreasureHuntEnd._watcherSetupUtil = param1;
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function __goAgain_click(param1:MouseEvent) : void
      {
         goAgainFunc();
      }
      
      public function set item(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      public function goExitFunc() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc1_)
         {
            _loc1_.visible = false;
         }
         visible = false;
      }
      
      private function _SecretTreasureHuntEnd_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220000670);
         _loc1_ = Language.SEC_TREA_HUNT[9];
         _loc1_ = Language.SEC_TREA_HUNT[10];
      }
      
      public function __goExit_click(param1:MouseEvent) : void
      {
         goExitFunc();
      }
      
      public function set goExit(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1241479642goExit;
         if(_loc2_ !== param1)
         {
            this._1241479642goExit = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goExit",_loc2_,param1));
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         this.itemNum = _itemNum;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SecretTreasureHuntEnd = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SecretTreasureHuntEnd_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SecretTreasureHuntEndWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlot
      {
         return this._3242771item;
      }
      
      public function set itemNum(param1:Number) : void
      {
         _itemNum = param1;
         if(initialized)
         {
            item.type = GamePredef.TBL_ITEM_TEMPLATE;
            item.giid = param1;
            item.slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goAgain() : BasicGlowButton
      {
         return this._164628312goAgain;
      }
      
      public function set goAgain(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._164628312goAgain;
         if(_loc2_ !== param1)
         {
            this._164628312goAgain = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goAgain",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goExit() : BasicGlowButton
      {
         return this._1241479642goExit;
      }
      
      private function _SecretTreasureHuntEnd_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000670);
         },function(param1:Object):void
         {
            _SecretTreasureHuntEnd_Image1.source = param1;
         },"_SecretTreasureHuntEnd_Image1.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goAgain.label = param1;
         },"goAgain.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SEC_TREA_HUNT[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goExit.label = param1;
         },"goExit.label");
         result[2] = binding;
         return result;
      }
      
      public function goAgainFunc() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_SECRET_TREASUREHUNT);
         if(_loc1_)
         {
            _loc1_.showPanel();
         }
         visible = false;
      }
   }
}

