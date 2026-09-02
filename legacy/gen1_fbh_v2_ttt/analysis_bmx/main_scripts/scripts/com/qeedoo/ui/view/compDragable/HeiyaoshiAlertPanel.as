package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class HeiyaoshiAlertPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      public var _HeiyaoshiAlertPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3237038info:HtmlTextArea;
      
      private var _typeNum:Number;
      
      private var _str:String;
      
      private var _pointNum:Number;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":230,
               "height":110,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_HeiyaoshiAlertPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":96,
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
                              this.bottom = "24";
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
                           "id":"activate",
                           "events":{"click":"__activate_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":76.5,
                                 "y":48,
                                 "width":77,
                                 "height":24,
                                 "styleName":"CrystalBlueButton"
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1655974669activate:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public function HeiyaoshiAlertPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 230;
         this.height = 110;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         HeiyaoshiAlertPanel._watcherSetupUtil = param1;
      }
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get activate() : BasicGlowButton
      {
         return this._1655974669activate;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:HeiyaoshiAlertPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _HeiyaoshiAlertPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_HeiyaoshiAlertPanelWatcherSetupUtil");
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
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         this.pointNum = _pointNum;
         this.str = _str;
      }
      
      public function set typeNum(param1:Number) : void
      {
         _typeNum = param1;
      }
      
      private function _HeiyaoshiAlertPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.HEIYAOSHI_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _HeiyaoshiAlertPanel_BasicTitleCanvas1.text = param1;
         },"_HeiyaoshiAlertPanel_BasicTitleCanvas1.text");
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
            var _loc1_:* = Language.HEIYAOSHI_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            activate.label = param1;
         },"activate.label");
         result[2] = binding;
         return result;
      }
      
      public function __activate_click(param1:MouseEvent) : void
      {
         activateHeiyaoshiPoint();
      }
      
      public function set str(param1:String) : void
      {
         _str = param1;
         if(initialized)
         {
            info.htmlText = _str;
         }
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
      
      public function set activate(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1655974669activate;
         if(_loc2_ !== param1)
         {
            this._1655974669activate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"activate",_loc2_,param1));
         }
      }
      
      public function activateHeiyaoshiPoint() : void
      {
         var bagPanel:BagPanel = null;
         var goldLockFlag:Boolean = false;
         var gfunc:Function = null;
         if(_typeNum == 2)
         {
            bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
            goldLockFlag = bagPanel.goldLockFlag;
            if(goldLockFlag || !bagPanel)
            {
               _core.sysMsg(Language.JUHUASUAN_PANEL[15]);
               gfunc = function(param1:String):void
               {
                  _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
               };
               _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
               return;
            }
         }
         _core.remote.call("activateHeiyaoshiPoint",null,_typeNum,_pointNum);
         this.visible = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : HtmlTextArea
      {
         return this._3237038info;
      }
      
      public function set pointNum(param1:Number) : void
      {
         _pointNum = param1;
      }
      
      private function _HeiyaoshiAlertPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.HEIYAOSHI_PANEL[0];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         _loc1_ = Language.HEIYAOSHI_PANEL[2];
      }
   }
}

