package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.controls.Image;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class JXHDItemsRenderer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var jingzishangreng:Class = JXHDItemsRenderer_jingzishangreng;
      
      private var dmbk:Class = JXHDItemsRenderer_dmbk;
      
      mx_internal var _watchers:Array = [];
      
      private var xsss:Class = JXHDItemsRenderer_xsss;
      
      private var licaifanhuan:Class = JXHDItemsRenderer_licaifanhuan;
      
      private var xianshiqianggou:Class = JXHDItemsRenderer_xianshiqianggou;
      
      private var srdg:Class = JXHDItemsRenderer_srdg;
      
      private var czth:Class = JXHDItemsRenderer_czth;
      
      private var rqzh:Class = JXHDItemsRenderer_rqzh;
      
      private var yxq:Class = JXHDItemsRenderer_yxq;
      
      private var jbp:Class = JXHDItemsRenderer_jbp;
      
      private var xcds:Class = JXHDItemsRenderer_xcds;
      
      private var _851178887anotice:RoundedLabel;
      
      private var mczd:Class = JXHDItemsRenderer_mczd;
      
      private var zssc:Class = JXHDItemsRenderer_zssc;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _92808282aicon:Image;
      
      private var wawaji:Class = JXHDItemsRenderer_wawaji;
      
      private var duihuanhuodong:Class = JXHDItemsRenderer_duihuanhuodong;
      
      private var _92955244aname:RoundedLabel;
      
      private var shangdiandazhe:Class = JXHDItemsRenderer_shangdiandazhe;
      
      private var xiaofeileiji:Class = JXHDItemsRenderer_xiaofeileiji;
      
      private var gailvtisheng:Class = JXHDItemsRenderer_gailvtisheng;
      
      mx_internal var _bindings:Array = [];
      
      private var tkyyh:Class = JXHDItemsRenderer_tkyyh;
      
      private var baoshizhaichu:Class = JXHDItemsRenderer_baoshizhaichu;
      
      private var asi:Class = JXHDItemsRenderer_asi;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":70,
               "width":161,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "styleName":"CanvasJXHDItem",
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"aname",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 14;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74,
                                 "y":10,
                                 "text":"Text",
                                 "width":77,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"anotice",
                           "stylesFactory":function():void
                           {
                              this.color = 16711680;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74,
                                 "y":41
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"aicon",
                           "stylesFactory":function():void
                           {
                              this.top = "11";
                              this.left = "12";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":48,
                                 "height":48
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function JXHDItemsRenderer()
      {
         super();
         mx_internal::_document = this;
         this.height = 70;
         this.width = 161;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         JXHDItemsRenderer._watcherSetupUtil = param1;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         if(param1)
         {
            aicon.source = this[param1.icon];
            aname.text = param1.n;
            if(param1.c)
            {
               anotice.visible = true;
            }
            else
            {
               anotice.visible = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aname() : RoundedLabel
      {
         return this._92955244aname;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:JXHDItemsRenderer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _JXHDItemsRenderer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_JXHDItemsRendererWatcherSetupUtil");
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
      
      private function _JXHDItemsRenderer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            aname.filters = param1;
         },"aname.filters");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.JXHD_PANEL[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            anotice.text = param1;
         },"anotice.text");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT4];
         },function(param1:Array):void
         {
            anotice.filters = param1;
         },"anotice.filters");
         result[2] = binding;
         binding = new Binding(this,function():Object
         {
            return zssc;
         },function(param1:Object):void
         {
            aicon.source = param1;
         },"aicon.source");
         result[3] = binding;
         return result;
      }
      
      public function set aicon(param1:Image) : void
      {
         var _loc2_:Object = this._92808282aicon;
         if(_loc2_ !== param1)
         {
            this._92808282aicon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aicon",_loc2_,param1));
         }
      }
      
      private function _JXHDItemsRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = Language.JXHD_PANEL[4];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT4];
         _loc1_ = zssc;
      }
      
      private function reset() : void
      {
         aname.text = "";
         anotice.visible = false;
      }
      
      public function set aname(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._92955244aname;
         if(_loc2_ !== param1)
         {
            this._92955244aname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"aname",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get aicon() : Image
      {
         return this._92808282aicon;
      }
      
      public function set anotice(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._851178887anotice;
         if(_loc2_ !== param1)
         {
            this._851178887anotice = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"anotice",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get anotice() : RoundedLabel
      {
         return this._851178887anotice;
      }
   }
}

