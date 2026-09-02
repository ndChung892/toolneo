package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SpeakText extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _timer:Timer = new Timer(1500);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _951530617content:HtmlTextArea;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _speakContent:Array = new Array();
      
      private var _1191676748selfHead:Image;
      
      private var _resCode:Number = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":454,
               "height":160,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"selfHead",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "useHandCursor":false,
                        "buttonMode":true,
                        "width":49,
                        "x":5,
                        "height":47,
                        "y":10
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HtmlTextArea,
                  "id":"content",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                     this.backgroundAlpha = 0;
                     this.color = 16777215;
                     this.left = "62";
                     this.right = "10";
                     this.top = "10";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "editable":false,
                        "selectable":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _boosResCode:Number = 0;
      
      public function SpeakText()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "txtArea";
         this.width = 454;
         this.height = 160;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SpeakText._watcherSetupUtil = param1;
      }
      
      public function set content(param1:HtmlTextArea) : void
      {
         var _loc2_:Object = this._951530617content;
         if(_loc2_ !== param1)
         {
            this._951530617content = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"content",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get selfHead() : Image
      {
         return this._1191676748selfHead;
      }
      
      private function _SpeakText_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            content.filters = param1;
         },"content.filters");
         result[0] = binding;
         return result;
      }
      
      public function speak(param1:String, param2:Number, param3:Number) : void
      {
         _speakContent = param1.split("|");
         if(_speakContent.length > 0)
         {
            if(_speakContent.length == 1 && _speakContent[0] == "")
            {
               return;
            }
            _resCode = param2;
            _boosResCode = param3;
            _timer.addEventListener(TimerEvent.TIMER,_speak);
            _timer.start();
         }
      }
      
      public function _speak(param1:Event) : void
      {
         if(!this.visible)
         {
            this.visible = true;
         }
         var _loc2_:String = _speakContent.shift();
         if(_speakContent.length == 0)
         {
            _timer.removeEventListener(TimerEvent.TIMER,_speak);
            _timer.stop();
            if(this.visible)
            {
               this.visible = false;
            }
         }
         var _loc3_:Array = _loc2_.split("-");
         if(_loc3_.length == 2)
         {
            if(Number(_loc3_[0]) == 1)
            {
               selfHead.source = ResManager.getIconUrl(_resCode);
            }
            else
            {
               selfHead.source = ResManager.getIconUrl(_boosResCode);
            }
            this.htmlText = _loc3_[1];
         }
         else
         {
            _timer.removeEventListener(TimerEvent.TIMER,_speak);
            _timer.stop();
            if(this.visible)
            {
               this.visible = false;
            }
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SpeakText = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SpeakText_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_SpeakTextWatcherSetupUtil");
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
      
      public function set text(param1:String) : void
      {
         content.text = param1;
      }
      
      public function set selfHead(param1:Image) : void
      {
         var _loc2_:Object = this._1191676748selfHead;
         if(_loc2_ !== param1)
         {
            this._1191676748selfHead = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selfHead",_loc2_,param1));
         }
      }
      
      public function get text() : String
      {
         return content.text;
      }
      
      public function set htmlText(param1:String) : void
      {
         content.htmlText = param1;
      }
      
      private function _SpeakText_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      [Bindable(event="propertyChange")]
      public function get content() : HtmlTextArea
      {
         return this._951530617content;
      }
      
      public function get htmlText() : String
      {
         return content.htmlText;
      }
   }
}

