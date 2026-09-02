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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MoyintuceItemsRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var hp:String = ResManager.getIconUrl(4130220003801);
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var lockImgicon:Class = MoyintuceItemsRenderer_lockImgicon;
      
      private var _110502143tname:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _3562793tlev:Label;
      
      private var _338675352lockImg:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":48,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"tname",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":11,
                        "y":14,
                        "text":"Text",
                        "width":140,
                        "height":23
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"tlev",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":157,
                        "y":15,
                        "text":"Label"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"lockImg",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":166,
                        "y":18,
                        "width":10,
                        "height":10
                     };
                  }
               })]
            };
         }
      });
      
      public function MoyintuceItemsRenderer()
      {
         super();
         mx_internal::_document = this;
         this.height = 48;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MoyintuceItemsRenderer._watcherSetupUtil = param1;
      }
      
      private function reset() : void
      {
         tname.text = "";
         tlev.visible = false;
         lockImg.visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MoyintuceItemsRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MoyintuceItemsRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MoyintuceItemsRendererWatcherSetupUtil");
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
      
      public function set tlev(param1:Label) : void
      {
         var _loc2_:Object = this._3562793tlev;
         if(_loc2_ !== param1)
         {
            this._3562793tlev = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tlev",_loc2_,param1));
         }
      }
      
      private function _MoyintuceItemsRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return lockImgicon;
         },function(param1:Object):void
         {
            lockImg.source = param1;
         },"lockImg.source");
         result[0] = binding;
         return result;
      }
      
      override public function set data(param1:Object) : void
      {
         var _loc2_:String = null;
         super.data = param1;
         if(param1)
         {
            reset();
            if(param1.m1 == null || param1.m1 == "")
            {
               _loc2_ = "<font color=\'#929292\'>" + param1.name + "</font>";
               tname.htmlText = _loc2_;
               lockImg.visible = true;
               return;
            }
            if(param1.hasOwnProperty("op") && param1.op == true)
            {
               _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[1] + "\'>" + param1.name + "</font>";
               tname.htmlText = _loc2_;
               tlev.text = "Lv: " + param1.lev;
               tlev.visible = true;
               lockImg.visible = false;
            }
            else if(param1.hasOwnProperty("op") && param1.op == false)
            {
               _loc2_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[2] + "\'>" + param1.name + "</font>";
               tname.htmlText = _loc2_;
            }
         }
      }
      
      private function _MoyintuceItemsRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = lockImgicon;
      }
      
      [Bindable(event="propertyChange")]
      public function get lockImg() : Image
      {
         return this._338675352lockImg;
      }
      
      [Bindable(event="propertyChange")]
      public function get tlev() : Label
      {
         return this._3562793tlev;
      }
      
      public function set lockImg(param1:Image) : void
      {
         var _loc2_:Object = this._338675352lockImg;
         if(_loc2_ !== param1)
         {
            this._338675352lockImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockImg",_loc2_,param1));
         }
      }
      
      public function set tname(param1:Label) : void
      {
         var _loc2_:Object = this._110502143tname;
         if(_loc2_ !== param1)
         {
            this._110502143tname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tname",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tname() : Label
      {
         return this._110502143tname;
      }
   }
}

