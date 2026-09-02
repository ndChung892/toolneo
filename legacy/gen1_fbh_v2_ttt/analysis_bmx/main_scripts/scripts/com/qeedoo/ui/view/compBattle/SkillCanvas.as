package com.qeedoo.ui.view.compBattle
{
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SkillCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1282133823fadeIn:Fade;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _timer:Timer = new Timer(1000,1);
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _SkillCanvas_RoundedLabel1:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      private var _1091436750fadeOut:Fade;
      
      private var _91291148_text:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":227,
               "height":76.2,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_SkillCanvas_RoundedLabel1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 28;
                     this.textAlign = "center";
                     this.fontWeight = "bold";
                     this.fontFamily = "黑体";
                     this.color = 16739179;
                     this.verticalCenter = "0";
                     this.horizontalCenter = "0";
                  }
               })]
            };
         }
      });
      
      public function SkillCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 227;
         this.height = 76.2;
         this.styleName = "CanvasSkill";
         this.alpha = 0.6;
         _SkillCanvas_Fade1_i();
         _SkillCanvas_Fade2_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeIn() : Fade
      {
         return this._1282133823fadeIn;
      }
      
      public function hide(param1:TimerEvent = null) : void
      {
         if(param1)
         {
            param1.currentTarget.removeEventListener(TimerEvent.TIMER,hide);
         }
         _timer.reset();
         _timer.stop();
         fadeIn.stop();
         fadeOut.stop();
         visible = false;
      }
      
      private function _SkillCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = fadeIn;
         _loc1_ = fadeOut;
         _loc1_ = _text;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_SkillCanvasWatcherSetupUtil");
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
      
      public function set fadeIn(param1:Fade) : void
      {
         var _loc2_:Object = this._1282133823fadeIn;
         if(_loc2_ !== param1)
         {
            this._1282133823fadeIn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeIn",_loc2_,param1));
         }
      }
      
      private function set _text(param1:String) : void
      {
         var _loc2_:Object = this._91291148_text;
         if(_loc2_ !== param1)
         {
            this._91291148_text = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_text",_loc2_,param1));
         }
      }
      
      public function set fadeOut(param1:Fade) : void
      {
         var _loc2_:Object = this._1091436750fadeOut;
         if(_loc2_ !== param1)
         {
            this._1091436750fadeOut = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeOut",_loc2_,param1));
         }
      }
      
      public function set text(param1:String) : void
      {
         _text = param1;
         visible = true;
         _timer.reset();
         _timer.start();
      }
      
      private function _SkillCanvas_Fade2_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         fadeOut = _loc1_;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 0;
         _loc1_.duration = 1000;
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get _text() : String
      {
         return this._91291148_text;
      }
      
      public function flash(param1:String) : void
      {
         _text = param1;
         visible = true;
         _timer.addEventListener(TimerEvent.TIMER,hide);
         _timer.reset();
         _timer.start();
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeOut() : Fade
      {
         return this._1091436750fadeOut;
      }
      
      private function _SkillCanvas_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         fadeIn = _loc1_;
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 1;
         _loc1_.duration = 500;
         return _loc1_;
      }
      
      private function _SkillCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():*
         {
            return fadeIn;
         },function(param1:*):void
         {
            this.setStyle("showEffect",param1);
         },"this.showEffect");
         result[0] = binding;
         binding = new Binding(this,function():*
         {
            return fadeOut;
         },function(param1:*):void
         {
            this.setStyle("hideEffect",param1);
         },"this.hideEffect");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _text;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SkillCanvas_RoundedLabel1.text = param1;
         },"_SkillCanvas_RoundedLabel1.text");
         result[2] = binding;
         return result;
      }
   }
}

