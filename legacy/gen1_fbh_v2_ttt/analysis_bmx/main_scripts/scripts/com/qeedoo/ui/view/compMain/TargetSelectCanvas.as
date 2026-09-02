package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.IMainUI;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.compBattle.BattleTargetCanvas;
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
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TargetSelectCanvas extends Canvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _815602929targetCvs:BattleTargetCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TargetSelectCanvas_RoundedLabel1:RoundedLabel;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Canvas,
               "stylesFactory":function():void
               {
                  this.backgroundColor = 0;
                  this.backgroundAlpha = 0.2;
                  this.horizontalCenter = "0";
                  this.verticalCenter = "100";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "styleName":"CanvasBorder",
                     "width":180,
                     "mouseChildren":false,
                     "mouseEnabled":false,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"_TargetSelectCanvas_RoundedLabel1",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 18;
                           this.color = 16711680;
                           this.textAlign = "center";
                           this.fontWeight = "bold";
                           this.fontFamily = "黑体";
                           this.horizontalCenter = "0";
                           this.verticalCenter = "0";
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":BattleTargetCanvas,
               "id":"targetCvs",
               "stylesFactory":function():void
               {
                  this.horizontalCenter = "0";
                  this.bottom = "100";
               },
               "propertiesFactory":function():Object
               {
                  return {"visible":false};
               }
            })]};
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function TargetSelectCanvas()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TargetSelectCanvas._watcherSetupUtil = param1;
      }
      
      public function hide() : void
      {
         visible = false;
      }
      
      public function get targetCanvas() : BattleTargetCanvas
      {
         return targetCvs;
      }
      
      private function _TargetSelectCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TARGETSELECTCANVAS_S[0];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TargetSelectCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TargetSelectCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_TargetSelectCanvasWatcherSetupUtil");
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
      
      public function update() : void
      {
      }
      
      public function initView() : void
      {
      }
      
      public function set targetCvs(param1:BattleTargetCanvas) : void
      {
         var _loc2_:Object = this._815602929targetCvs;
         if(_loc2_ !== param1)
         {
            this._815602929targetCvs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"targetCvs",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(initialized)
         {
            if(_core.state == GamePredef.ST_CORE_BATTLE)
            {
               targetCvs.velidateImgVisible();
               targetCvs.visible = true;
            }
            else
            {
               targetCvs.visible = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get targetCvs() : BattleTargetCanvas
      {
         return this._815602929targetCvs;
      }
      
      private function _TargetSelectCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TARGETSELECTCANVAS_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TargetSelectCanvas_RoundedLabel1.text = param1;
         },"_TargetSelectCanvas_RoundedLabel1.text");
         result[0] = binding;
         return result;
      }
      
      public function show() : void
      {
         visible = true;
      }
   }
}

