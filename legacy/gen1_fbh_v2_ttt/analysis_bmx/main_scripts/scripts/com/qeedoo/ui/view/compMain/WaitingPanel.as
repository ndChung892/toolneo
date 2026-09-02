package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.Alert;
   import mx.controls.ProgressBar;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class WaitingPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static const MAX_WAIT_TIME:int = 25000;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _watchers:Array;
      
      private var proTimer:Timer;
      
      private var closeTimer:Timer;
      
      private var _111277pro:ProgressBar;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _3446lb:RoundedLabel;
      
      public function WaitingPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":300,
                        "height":120,
                        "styleName":"CanvasPopup",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"lb",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":52,
                                 "width":280
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":ProgressBar,
                           "id":"pro",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.fontSize = 8;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "mode":"manual",
                                 "label":"",
                                 "y":78,
                                 "labelPlacement":"center",
                                 "height":10,
                                 "visible":false
                              };
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         closeTimer = new Timer(MAX_WAIT_TIME,1);
         proTimer = new Timer(500);
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
            this.backgroundColor = 16712451;
            this.backgroundAlpha = 0;
         };
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         WaitingPanel._watcherSetupUtil = param1;
      }
      
      private function _WaitingPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.WAITINGPANEL_S[1];
      }
      
      private function _WaitingPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.WAITINGPANEL_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lb.text = param1;
         },"lb.text");
         result[0] = binding;
         return result;
      }
      
      public function showText(param1:String) : void
      {
         if(lb)
         {
            lb.text = param1;
         }
         this.visible = true;
         if(param1 == Language.CALLBACK_S[57])
         {
         }
      }
      
      private function hidePro(param1:TimerEvent) : void
      {
         pro.visible = false;
         proTimer.removeEventListener(TimerEvent.TIMER,updatePro);
         proTimer.removeEventListener(TimerEvent.TIMER_COMPLETE,hidePro);
         proTimer.reset();
      }
      
      public function set lb(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3446lb;
         if(_loc2_ !== param1)
         {
            this._3446lb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pro() : ProgressBar
      {
         return this._111277pro;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:WaitingPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _WaitingPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_WaitingPanelWatcherSetupUtil");
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
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            closeTimer.reset();
            closeTimer.addEventListener(TimerEvent.TIMER,close);
            closeTimer.start();
         }
         else
         {
            closeTimer.stop();
            closeTimer.removeEventListener(TimerEvent.TIMER,close);
            setStyle("backgroundAlpha",0);
         }
      }
      
      public function showText2(param1:String, param2:Function) : void
      {
         if(lb)
         {
            lb.text = param1;
         }
         this.visible = true;
         closeTimer.reset();
         closeTimer.removeEventListener(TimerEvent.TIMER,close);
         closeTimer.addEventListener(TimerEvent.TIMER,param2);
         closeTimer.start();
      }
      
      public function showTime(param1:int) : void
      {
         proTimer.addEventListener(TimerEvent.TIMER,updatePro);
         proTimer.addEventListener(TimerEvent.TIMER_COMPLETE,hidePro);
         proTimer.repeatCount = param1 * 2;
         proTimer.reset();
         proTimer.start();
         pro.visible = true;
         pro.setProgress(0,100);
      }
      
      public function removeTimeOutListener(param1:Function) : *
      {
         closeTimer.removeEventListener(TimerEvent.TIMER,param1);
      }
      
      public function set pro(param1:ProgressBar) : void
      {
         var _loc2_:Object = this._111277pro;
         if(_loc2_ !== param1)
         {
            this._111277pro = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pro",_loc2_,param1));
         }
      }
      
      private function close(param1:TimerEvent) : void
      {
         closeTimer.removeEventListener(TimerEvent.TIMER,close);
         visible = false;
         Alert.show(Language.WAITINGPANEL_S[0],"",Alert.YES,null,Core.getInstance().remote.nc.client.onLogout);
      }
      
      public function addTimeOutListener(param1:Function, param2:int) : *
      {
         closeTimer.addEventListener(TimerEvent.TIMER,param1,false,param2);
      }
      
      private function updatePro(param1:TimerEvent) : void
      {
         pro.setProgress(proTimer.currentCount,proTimer.repeatCount);
      }
      
      [Bindable(event="propertyChange")]
      public function get lb() : RoundedLabel
      {
         return this._3446lb;
      }
   }
}

