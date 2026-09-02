package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.RoundedButton;
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
   import mx.controls.Button;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuidePopPanel extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1847046761nextBtn:Button;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _1216617090currentGuideId:int = -1;
      
      mx_internal var _watchers:Array;
      
      private var _2147400797skipBtn:RoundedButton;
      
      private var _98496596goBtn:RoundedButton;
      
      private var _3237038info:LinkTextArea;
      
      private var firstTimeFlag:int = 0;
      
      mx_internal var _bindings:Array;
      
      private var guideList:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      public function GuidePopPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {"childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":539,
                        "height":211,
                        "styleName":"CanvasGuide",
                        "x":200,
                        "y":150,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"info",
                           "events":{"mouseMove":"__info_mouseMove"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.color = 16777215;
                              this.backgroundAlpha = 0;
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "editable":false,
                                 "height":120,
                                 "width":287,
                                 "x":173,
                                 "y":75,
                                 "selectable":false,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"nextBtn",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":439.8,
                                 "y":162,
                                 "styleName":"BtnNextGuide"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedButton,
                           "id":"skipBtn",
                           "events":{"click":"__skipBtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnRed",
                                 "x":188,
                                 "y":162,
                                 "width":158.95
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedButton,
                           "id":"goBtn",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnRed",
                                 "x":395,
                                 "y":162
                              };
                           }
                        })]
                     };
                  }
               })]};
            }
         });
         guideList = {};
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
            this.backgroundAlpha = 0.4;
            this.backgroundColor = 0;
         };
         this.percentWidth = 100;
         this.percentHeight = 100;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuidePopPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get goBtn() : RoundedButton
      {
         return this._98496596goBtn;
      }
      
      private function set currentGuideId(param1:int) : void
      {
         var _loc2_:Object = this._1216617090currentGuideId;
         if(_loc2_ !== param1)
         {
            this._1216617090currentGuideId = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentGuideId",_loc2_,param1));
         }
      }
      
      public function showGuidePanel(param1:int) : void
      {
         if(Boolean(_core.player.guideLog) && _core.player.guideLog.indexOf(String(param1)) < 0)
         {
            visible = true;
            currentGuideId = param1;
            _core.remote.setGuide(param1);
            updateView();
            if(param1 == 0)
            {
               visible = false;
            }
         }
      }
      
      public function __skipBtn_click(param1:MouseEvent) : void
      {
         skipAll();
      }
      
      private function _GuidePopPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUIDEPOPPANEL_S[2];
         _loc1_ = Language.GUIDEPOPPANEL_S[3];
      }
      
      public function set skipBtn(param1:RoundedButton) : void
      {
         var _loc2_:Object = this._2147400797skipBtn;
         if(_loc2_ !== param1)
         {
            this._2147400797skipBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skipBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get currentGuideId() : int
      {
         return this._1216617090currentGuideId;
      }
      
      private function updateView() : void
      {
         if(currentGuideId >= 0)
         {
            if(currentGuideId == 0)
            {
               nextBtn.styleName = "BtnNextGuide";
               info.text = Language.GUIDEPOPPANEL_S[0];
               goBtn.addEventListener(MouseEvent.CLICK,onNext);
               nextBtn.visible = false;
               skipBtn.visible = true;
               goBtn.visible = true;
            }
            else if(currentGuideId == 21)
            {
               info.text = Language.GUIDEPOPPANEL_S[1];
               nextBtn.addEventListener(MouseEvent.CLICK,onClose);
               nextBtn.visible = true;
               skipBtn.visible = false;
               goBtn.visible = false;
            }
            else if(currentGuideId == 22)
            {
               nextBtn.styleName = "BtnLeave";
               nextBtn.visible = true;
               skipBtn.visible = false;
               goBtn.visible = false;
            }
         }
      }
      
      private function _GuidePopPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUIDEPOPPANEL_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            skipBtn.label = param1;
         },"skipBtn.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUIDEPOPPANEL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            goBtn.label = param1;
         },"goBtn.label");
         result[1] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuidePopPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuidePopPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuidePopPanelWatcherSetupUtil");
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
      
      private function onClose(param1:MouseEvent) : void
      {
         nextBtn.removeEventListener(MouseEvent.CLICK,onClose);
         visible = false;
         _core.view.hideAll(ViewManager.TYPE_PANEL);
      }
      
      [Bindable(event="propertyChange")]
      public function get skipBtn() : RoundedButton
      {
         return this._2147400797skipBtn;
      }
      
      private function skipAll() : void
      {
         _core.remote.setAllGuide();
         this.visible = false;
      }
      
      public function __info_mouseMove(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set goBtn(param1:RoundedButton) : void
      {
         var _loc2_:Object = this._98496596goBtn;
         if(_loc2_ !== param1)
         {
            this._98496596goBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goBtn",_loc2_,param1));
         }
      }
      
      public function set info(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : LinkTextArea
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextBtn() : Button
      {
         return this._1847046761nextBtn;
      }
      
      private function onNext(param1:MouseEvent) : void
      {
         goBtn.removeEventListener(MouseEvent.CLICK,onNext);
         visible = false;
      }
      
      public function set nextBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1847046761nextBtn;
         if(_loc2_ !== param1)
         {
            this._1847046761nextBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextBtn",_loc2_,param1));
         }
      }
   }
}

