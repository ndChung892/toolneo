package com.qeedoo.ui.view.compMain
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.ui.IMainUI;
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
   import mx.controls.ProgressBar;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class LoaderCanvas extends Canvas implements IMainUI, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _parent:Object;
      
      mx_internal var _watchers:Array = [];
      
      private var _91291148_text:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _1131509414progressBar:ProgressBar;
      
      private var _1464826535_title:String;
      
      public var _LoaderCanvas_RoundedLabel1:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
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
                     "height":570,
                     "width":900,
                     "styleName":"CanvasWorldMap",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":ProgressBar,
                        "id":"progressBar",
                        "stylesFactory":function():void
                        {
                           this.horizontalCenter = "0";
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "mode":"manual",
                              "y":531,
                              "styleName":"ProgressGlobal",
                              "labelPlacement":"center",
                              "width":240,
                              "height":13
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"_LoaderCanvas_RoundedLabel1",
                        "stylesFactory":function():void
                        {
                           this.textAlign = "center";
                           this.fontSize = 15;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":149.5,
                              "y":498,
                              "width":601,
                              "height":25
                           };
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public function LoaderCanvas()
      {
         super();
         mx_internal::_document = this;
         this.percentWidth = 100;
         this.percentHeight = 100;
         this.styleName = "CanvasWorldMapBack";
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LoaderCanvas._watcherSetupUtil = param1;
      }
      
      public function hide() : void
      {
         try
         {
            _parent.removeChild(this);
         }
         catch(e:Object)
         {
         }
      }
      
      public function show() : void
      {
         if(parent == null)
         {
            _parent.addChild(this);
         }
         _parent.setChildIndex(this,_parent.numChildren - 1);
         var _loc1_:Object = _parent.stage;
         move(0,0);
         progressBar.setProgress(0,100);
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
      
      public function set progressBar(param1:ProgressBar) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
         }
      }
      
      public function update() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      private function get _title() : String
      {
         return this._1464826535_title;
      }
      
      public function set text(param1:String) : void
      {
         _text = param1;
      }
      
      public function initView() : void
      {
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LoaderCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LoaderCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compMain_LoaderCanvasWatcherSetupUtil");
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
      
      private function _LoaderCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _text + "%3%%";
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            progressBar.label = param1;
         },"progressBar.label");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _title;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _LoaderCanvas_RoundedLabel1.text = param1;
         },"_LoaderCanvas_RoundedLabel1.text");
         result[1] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get _text() : String
      {
         return this._91291148_text;
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : ProgressBar
      {
         return this._1131509414progressBar;
      }
      
      private function _LoaderCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _text + "%3%%";
         _loc1_ = _title;
      }
      
      public function setProgress(param1:Number, param2:Number) : void
      {
         if(progressBar)
         {
            progressBar.setProgress(param1,param2);
         }
      }
      
      private function set _title(param1:String) : void
      {
         var _loc2_:Object = this._1464826535_title;
         if(_loc2_ !== param1)
         {
            this._1464826535_title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_title",_loc2_,param1));
         }
      }
      
      public function showModel(param1:Object, param2:String, param3:String, param4:Boolean = true) : void
      {
         if(!param2)
         {
            param2 = Language.LOADERCANVAS_S[0];
         }
         if(!param3)
         {
            param3 = Language.LOADERCANVAS_S[1];
         }
         if(param2 == Language.LOADERCANVAS_S[0])
         {
            param2 = Language.LOADERCANVAS_S[0];
         }
         if(param3 == Language.LOADERCANVAS_S[1])
         {
            param3 = Language.LOADERCANVAS_S[1];
         }
         _text = param2;
         _title = param3;
         _parent = param1;
         show();
      }
   }
}

