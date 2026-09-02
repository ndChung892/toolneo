package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ExtractCharactor extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _109446num:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1564195935charactor:RoundedLabel;
      
      private var c:String = "";
      
      private var key:int = -1;
      
      private var n:int = 0;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":48,
               "height":48,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"charactor",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 40;
                     this.color = 16776960;
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "mouseEnabled":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"num",
                  "stylesFactory":function():void
                  {
                     this.bottom = "0";
                     this.right = "0";
                     this.fontSize = 10;
                     this.textAlign = "right";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":60,
                        "height":20,
                        "mouseEnabled":false
                     };
                  }
               })]
            };
         }
      });
      
      public function ExtractCharactor()
      {
         super();
         mx_internal::_document = this;
         this.width = 48;
         this.height = 48;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ExtractCharactor._watcherSetupUtil = param1;
      }
      
      public function set charactor(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1564195935charactor;
         if(_loc2_ !== param1)
         {
            this._1564195935charactor = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"charactor",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get num() : Label
      {
         return this._109446num;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ExtractCharactor = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ExtractCharactor_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ExtractCharactorWatcherSetupUtil");
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
      
      private function completeHandler(param1:FlexEvent) : void
      {
         removeEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
         refresh(key,c,n);
      }
      
      public function set num(param1:Label) : void
      {
         var _loc2_:Object = this._109446num;
         if(_loc2_ !== param1)
         {
            this._109446num = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"num",_loc2_,param1));
         }
      }
      
      public function refresh(param1:int, param2:String, param3:int) : void
      {
         this.key = param1;
         this.c = param2;
         this.n = param3;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         charactor.text = param2;
         num.text = param3.toString();
         num.visible = param3 > 0;
      }
      
      public function refreshNum(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.data))
         {
            this.n = param1.data[key];
            num.text = n.toString();
            num.visible = n > 0;
         }
      }
      
      private function _ExtractCharactor_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            num.filters = param1;
         },"num.filters");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get charactor() : RoundedLabel
      {
         return this._1564195935charactor;
      }
      
      private function _ExtractCharactor_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
      }
   }
}

