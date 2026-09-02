package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Alert;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MarriageSeekingPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2041562624_marriageWords:String;
      
      private var _94069048btnOK:BasicGlowButton;
      
      public var _MarriageSeekingPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _113000rlb:RoundedLabel;
      
      private var _type:int;
      
      mx_internal var _watchers:Array = [];
      
      private var _1033818675ta_introduce:TextArea;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _flag:int = 0;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _117924854btnCancel:BasicGlowButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _item:Object;
      
      private var _288628502ta_notice:TextArea;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":220,
               "height":285,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MarriageSeekingPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"rlb",
                  "stylesFactory":function():void
                  {
                     this.bottom = "145";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "width":200
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"ta_introduce",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.bottom = "37";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CSSBorder",
                        "x":10,
                        "width":200,
                        "height":100,
                        "maxChars":255,
                        "enabled":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnOK",
                  "events":{"click":"__btnOK_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "10";
                     this.horizontalCenter = "-30";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
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
                     this.bottom = "10";
                     this.horizontalCenter = "30";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalRed",
                        "width":40,
                        "height":19
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":TextArea,
                  "id":"ta_notice",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CSSBorder",
                        "x":10,
                        "y":39,
                        "width":200,
                        "height":75,
                        "maxChars":255,
                        "editable":false
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function MarriageSeekingPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 220;
         this.height = 285;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MarriageSeekingPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _marriageWords() : String
      {
         return this._2041562624_marriageWords;
      }
      
      private function cancel() : void
      {
         hide();
      }
      
      private function set _marriageWords(param1:String) : void
      {
         var _loc2_:Object = this._2041562624_marriageWords;
         if(_loc2_ !== param1)
         {
            this._2041562624_marriageWords = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_marriageWords",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MarriageSeekingPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MarriageSeekingPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MarriageSeekingPanelWatcherSetupUtil");
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
      
      public function set ta_introduce(param1:TextArea) : void
      {
         var _loc2_:Object = this._1033818675ta_introduce;
         if(_loc2_ !== param1)
         {
            this._1033818675ta_introduce = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ta_introduce",_loc2_,param1));
         }
      }
      
      public function __btnCancel_click(param1:MouseEvent) : void
      {
         cancel();
      }
      
      public function set item(param1:Object) : void
      {
         _item = param1;
      }
      
      private function _MarriageSeekingPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MARRIAGE_PANEL_U[16];
         _loc1_ = _marriageWords;
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[1];
         _loc1_ = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
      }
      
      [Bindable(event="propertyChange")]
      public function get btnOK() : BasicGlowButton
      {
         return this._94069048btnOK;
      }
      
      [Bindable(event="propertyChange")]
      public function get ta_introduce() : TextArea
      {
         return this._1033818675ta_introduce;
      }
      
      public function set rlb(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._113000rlb;
         if(_loc2_ !== param1)
         {
            this._113000rlb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rlb",_loc2_,param1));
         }
      }
      
      public function set ta_notice(param1:TextArea) : void
      {
         var _loc2_:Object = this._288628502ta_notice;
         if(_loc2_ !== param1)
         {
            this._288628502ta_notice = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ta_notice",_loc2_,param1));
         }
      }
      
      private function ok() : void
      {
         var func:Function;
         var msg:String = null;
         if(_core.haveBadWord(ta_introduce.text))
         {
            return;
         }
         func = function(param1:CloseEvent):*
         {
            if(param1.detail == Alert.YES)
            {
               if(_type == GamePredef.TYPE_MARRIAGE_SEEKING)
               {
                  _core.remote.marriageSeeking(ta_introduce.text,_flag);
               }
               else
               {
                  _core.remote.marriageRequest(_item.cid,_item.name,ta_introduce.text);
               }
            }
            hide();
         };
         if(_type == GamePredef.TYPE_MARRIAGE_SEEKING)
         {
            msg = Language.MARRIAGE_PANEL_U[38];
         }
         else
         {
            msg = Language.MARRIAGE_PANEL_U[39].toString().replace("{name}",_item.name);
         }
         Alert.show(msg,"",Alert.YES | Alert.NO,null,func);
      }
      
      public function __btnOK_click(param1:MouseEvent) : void
      {
         ok();
      }
      
      [Bindable(event="propertyChange")]
      public function get rlb() : RoundedLabel
      {
         return this._113000rlb;
      }
      
      [Bindable(event="propertyChange")]
      public function get ta_notice() : TextArea
      {
         return this._288628502ta_notice;
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
      
      public function set btnOK(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._94069048btnOK;
         if(_loc2_ !== param1)
         {
            this._94069048btnOK = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnOK",_loc2_,param1));
         }
      }
      
      private function _MarriageSeekingPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MARRIAGE_PANEL_U[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MarriageSeekingPanel_BasicTitleCanvas1.text = param1;
         },"_MarriageSeekingPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _marriageWords;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rlb.text = param1;
         },"rlb.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnOK.label = param1;
         },"btnOK.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnCancel.label = param1;
         },"btnCancel.label");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         },function(param1:Array):void
         {
            ta_notice.filters = param1;
         },"ta_notice.filters");
         result[4] = binding;
         return result;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
         if(_type == GamePredef.TYPE_MARRIAGE_SEEKING)
         {
            _marriageWords = Language.MARRIAGE_PANEL_U[17];
            ta_notice.text = Language.MARRIAGE_PANEL_U[40];
         }
         else
         {
            _marriageWords = Language.MARRIAGE_PANEL_U[18];
            ta_notice.text = Language.MARRIAGE_PANEL_U[41];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnCancel() : BasicGlowButton
      {
         return this._117924854btnCancel;
      }
   }
}

