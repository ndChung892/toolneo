package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.core.Application;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AwardWarnCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _337438527restTime:int;
      
      private var currentWarn:*;
      
      private var _1768633739warnImage:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":38,
               "height":38,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"warnImage",
                  "events":{"click":"__warnImage_click"},
                  "stylesFactory":function():void
                  {
                     this.themeColor = 2782887;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "visible":false,
                        "percentHeight":100
                     };
                  }
               })]
            };
         }
      });
      
      private var warnArray:Array = new Array();
      
      private var _core:Core = Core.getInstance();
      
      public function AwardWarnCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 38;
         this.height = 38;
         this.cacheAsBitmap = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AwardWarnCanvas._watcherSetupUtil = param1;
      }
      
      public function delWarnByType(param1:int) : void
      {
         var _loc2_:* = int(warnArray.length - 1);
         while(_loc2_ >= 0)
         {
            if(Boolean(warnArray[_loc2_]) && warnArray[_loc2_].warnType == param1)
            {
               delWarn();
               break;
            }
            _loc2_--;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get restTime() : int
      {
         return this._337438527restTime;
      }
      
      private function set restTime(param1:int) : void
      {
         var _loc2_:Object = this._337438527restTime;
         if(_loc2_ !== param1)
         {
            this._337438527restTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"restTime",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         warnArray = new Array();
         this.visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AwardWarnCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AwardWarnCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_AwardWarnCanvasWatcherSetupUtil");
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
      
      private function initView() : void
      {
         var _loc1_:* = 0;
         if(warnArray.length != 0)
         {
            this.visible = true;
            _loc1_ = int(warnArray.length - 1);
            while(_loc1_ >= 0)
            {
               if(warnArray[_loc1_])
               {
                  currentWarn = warnArray[_loc1_];
                  break;
               }
               _loc1_--;
            }
            if(currentWarn)
            {
               warnImage.visible = true;
               if(currentWarn.warnType == GamePredef.WARN_TYPE_FARM_RIPE)
               {
                  warnImage.source = ResManager.ICON_WARN_FARM_RIPE;
                  warnImage.toolTip = currentWarn.msg;
                  width = 34;
                  height = 22;
               }
               else if(currentWarn.warnType == GamePredef.WARN_TYPE_QUESTIONING)
               {
                  warnImage.source = ResManager.ICON_WARN_QUESTION;
                  warnImage.toolTip = GamePredef.WARN_TIP_QUESTIONING;
                  width = 55;
                  height = 55;
               }
               else if(currentWarn.warnType == GamePredef.WARN_TYPE_REGISTER_DXD)
               {
                  warnImage.source = ResManager.ICON_WARN_REGISTER;
                  warnImage.toolTip = GamePredef.WARN_TIP_DXD_REGISTER;
                  width = 55;
                  height = 55;
               }
               else if(currentWarn.warnType == GamePredef.WARN_TYPE_FEASTIVAL)
               {
                  warnImage.source = ResManager.ICON_WARN_AWARD;
                  warnImage.toolTip = Language.GAMEPREDEF_S[521].replace(/{feastival}/g,currentWarn.toolTip);
                  width = 38;
                  height = 38;
                  restTime = Math.ceil(currentWarn.restTime / 60000);
               }
               else
               {
                  warnImage.source = ResManager.ICON_WARN_AWARD;
                  warnImage.toolTip = GamePredef.WARN_TIP_AWARD;
                  width = 38;
                  height = 38;
                  restTime = Math.ceil(currentWarn.restTime / 60000);
               }
            }
            else
            {
               this.visible = false;
            }
         }
         else
         {
            warnImage.visible = false;
            warnImage.source = null;
            this.visible = false;
         }
      }
      
      private function _AwardWarnCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = null;
         _loc1_ = GamePredef.WARN_TIP_AWARD;
      }
      
      public function __warnImage_click(param1:MouseEvent) : void
      {
         imageClick();
      }
      
      public function addAwardWarn(param1:Object) : void
      {
         var _loc2_:* = 0;
         if(param1.warnType == GamePredef.WARN_TYPE_REGISTER_DXD)
         {
            _loc2_ = int(warnArray.length - 1);
            while(_loc2_ >= 0)
            {
               if(warnArray[_loc2_].warnType == GamePredef.WARN_TYPE_REGISTER_DXD)
               {
                  warnArray.splice(_loc2_,1);
                  break;
               }
               _loc2_--;
            }
         }
         warnArray.push(param1);
         visible = true;
         initView();
         if(param1.warnType == GamePredef.WARN_TYPE_AWARD || param1.warnType == GamePredef.WARN_TYPE_FEASTIVAL)
         {
            initTime();
         }
      }
      
      public function set warnImage(param1:Image) : void
      {
         var _loc2_:Object = this._1768633739warnImage;
         if(_loc2_ !== param1)
         {
            this._1768633739warnImage = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"warnImage",_loc2_,param1));
         }
      }
      
      private function imageClick() : void
      {
         var func:Function = null;
         if(currentWarn.warnType == GamePredef.WARN_TYPE_FARM_RIPE)
         {
            warnImage.visible = false;
            warnImage.source = null;
            delWarn();
         }
         else if(currentWarn.warnType == GamePredef.WARN_TYPE_QUESTIONING)
         {
            _core.view.getUI(ViewManager.PANEL_QUESTIONING).viewClick();
            warnImage.visible = false;
            warnImage.source = null;
            delWarn();
         }
         else if(currentWarn.warnType == GamePredef.WARN_TYPE_REGISTER_DXD)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core && _core.player && _core.remote.call("dxdRegister",null,_core.player.id,true);
               }
               else
               {
                  _core && _core.player && _core.remote.call("dxdRegister",null,_core.player.id,false);
               }
            };
            Alert.show(Language.AWARD_WARN_CANVAS_S[0],"",Alert.YES | Alert.NO,Application.application as Sprite,func);
            warnImage.visible = false;
            warnImage.source = null;
            delWarn();
         }
         else
         {
            _core.view.getUI(ViewManager.PANEL_AWARD).viewClick();
            warnImage.source = ResManager.ICON_WARN_AWARD1;
         }
      }
      
      public function delDXDRegisterWarn() : void
      {
         if(Boolean(currentWarn) && currentWarn.warnType == GamePredef.WARN_TYPE_REGISTER_DXD)
         {
            delWarn();
         }
      }
      
      public function delWarn() : void
      {
         warnArray.pop();
         currentWarn = undefined;
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get warnImage() : Image
      {
         return this._1768633739warnImage;
      }
      
      public function delQuestionWarn() : void
      {
         if(Boolean(currentWarn) && currentWarn.warnType == GamePredef.WARN_TYPE_QUESTIONING)
         {
            delWarn();
         }
      }
      
      private function _AwardWarnCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return null;
         },function(param1:Object):void
         {
            warnImage.source = param1;
         },"warnImage.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = GamePredef.WARN_TIP_AWARD;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            warnImage.toolTip = param1;
         },"warnImage.toolTip");
         result[1] = binding;
         return result;
      }
      
      private function initTime() : void
      {
         _core.view.getUI(ViewManager.PANEL_AWARD).init(restTime,currentWarn);
         _core.view.getUI(ViewManager.PANEL_AWARD).cancel();
      }
   }
}

