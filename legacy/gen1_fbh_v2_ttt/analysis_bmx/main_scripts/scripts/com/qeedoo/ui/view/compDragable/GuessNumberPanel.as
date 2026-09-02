package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuessNumberPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var maxNum:int;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var _100358090input:TextInput;
      
      private var isMomoNpc:Boolean;
      
      private var _94069048btnOK:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":190,
               "height":126,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"labelText",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":40,
                        "width":170,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"input",
                  "events":{
                     "enter":"__input_enter",
                     "mouseDown":"__input_mouseDown"
                  },
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":68,
                        "width":128,
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnOK",
                  "events":{"click":"__btnOK_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-29";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":42.5,
                        "y":95,
                        "styleName":"BtnNormalRed",
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnCancel",
                  "events":{"click":"__btnCancel_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "29";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":95,
                        "styleName":"BtnNormalRed",
                        "width":40,
                        "height":19
                     };
                  }
               })]
            };
         }
      });
      
      public var hideAble:Boolean = true;
      
      private var answer:int;
      
      private var _607740351labelText:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var funcname:String;
      
      private var minNum:int;
      
      private var _117924854btnCancel:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      public function GuessNumberPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 190;
         this.height = 126;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___GuessNumberPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuessNumberPanel._watcherSetupUtil = param1;
      }
      
      private function cancel() : void
      {
         labelText.text = "";
         input.text = "";
         answer = -1;
         minNum = 0;
         maxNum = 0;
         funcname = null;
         hide();
      }
      
      public function set labelText(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._607740351labelText;
         if(_loc2_ !== param1)
         {
            this._607740351labelText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelText",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuessNumberPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuessNumberPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuessNumberPanelWatcherSetupUtil");
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
      
      public function set input(param1:TextInput) : void
      {
         var _loc2_:Object = this._100358090input;
         if(_loc2_ !== param1)
         {
            this._100358090input = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"input",_loc2_,param1));
         }
      }
      
      public function __btnCancel_click(param1:MouseEvent) : void
      {
         cancel();
      }
      
      private function _GuessNumberPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUESS_NUMBER_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnOK.label = param1;
         },"btnOK.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnCancel.label = param1;
         },"btnCancel.label");
         result[2] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnOK() : BasicGlowButton
      {
         return this._94069048btnOK;
      }
      
      [Bindable(event="propertyChange")]
      public function get labelText() : RoundedLabel
      {
         return this._607740351labelText;
      }
      
      override public function hide() : void
      {
         visible = false;
         var _loc1_:Event = new Event(DragableCanvas.EVENT_CLOSE);
         dispatchEvent(_loc1_);
      }
      
      public function showGuessNumber(param1:String, param2:int, param3:int = 100, param4:int = 500) : void
      {
         labelText.text = Language.GUESS_NUMBER_PANEL_U[1];
         answer = param2;
         minNum = param3;
         maxNum = param4;
         funcname = param1;
         input.text = "";
         input.restrict = "[0-9]";
         input.maxChars = 3;
         panelTitle.closeButtonVisible = true;
         btnCancel.visible = true;
         isMomoNpc = false;
         show();
      }
      
      [Bindable(event="propertyChange")]
      public function get input() : TextInput
      {
         return this._100358090input;
      }
      
      public function __input_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function __input_enter(param1:FlexEvent) : void
      {
         ok();
      }
      
      private function ok() : void
      {
         if(input.text.length == 0)
         {
            return;
         }
         var _loc1_:Number = Number(input.text);
         var _loc2_:Core = Core.getInstance();
         if(_loc1_ < minNum || _loc1_ > maxNum)
         {
            _loc2_.sysMsg(Language.GUESS_NUMBER_PANEL_U[2]);
            return;
         }
         if(_loc1_ < answer)
         {
            _loc2_.sysMsg(Language.GUESS_NUMBER_PANEL_U[3]);
            return;
         }
         if(_loc1_ > answer)
         {
            _loc2_.sysMsg(Language.GUESS_NUMBER_PANEL_U[4]);
            return;
         }
         if(!isMomoNpc)
         {
            _loc2_.sysMsg(Language.GUESS_NUMBER_PANEL_U[5]);
         }
         _loc2_.remote.npcScript(funcname);
         cancel();
      }
      
      public function showMomoGuessNumber(param1:String, param2:int, param3:int = 100, param4:int = 500) : void
      {
         labelText.text = Language.GUESS_NUMBER_PANEL_U[1];
         answer = param2;
         minNum = param3;
         maxNum = param4;
         funcname = param1;
         input.text = "";
         input.restrict = "[0-9]";
         input.maxChars = 3;
         panelTitle.closeButtonVisible = true;
         btnCancel.visible = true;
         isMomoNpc = true;
         show();
      }
      
      public function __btnOK_click(param1:MouseEvent) : void
      {
         ok();
      }
      
      public function ___GuessNumberPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initNumber();
      }
      
      public function set btnCancel(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._117924854btnCancel;
         if(_loc2_ !== param1)
         {
            this._117924854btnCancel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnCancel",_loc2_,param1));
         }
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      public function set btnOK(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._94069048btnOK;
         if(_loc2_ !== param1)
         {
            this._94069048btnOK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnOK",_loc2_,param1));
         }
      }
      
      private function _GuessNumberPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUESS_NUMBER_PANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[1];
      }
      
      [Bindable(event="propertyChange")]
      public function get btnCancel() : BasicGlowButton
      {
         return this._117924854btnCancel;
      }
      
      private function initNumber() : void
      {
         answer = -1;
         minNum = 0;
         maxNum = 0;
         funcname = null;
         input.text = "";
      }
      
      override public function show() : void
      {
         super.show();
         input.setFocus();
      }
   }
}

