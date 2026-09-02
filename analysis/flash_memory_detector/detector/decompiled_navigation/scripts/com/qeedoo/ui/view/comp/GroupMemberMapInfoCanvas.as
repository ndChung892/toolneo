package com.qeedoo.ui.view.comp
{
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
   
   public class GroupMemberMapInfoCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      private var _91108202_name:String;
      
      private var _114843tip:Canvas;
      
      private var _2938013_map:String = "";
      
      private var _95136_xy:String = "";
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1480455047_class:String;
      
      public var _GroupMemberMapInfoCanvas_Label2:Label;
      
      public var _GroupMemberMapInfoCanvas_Label3:Label;
      
      public var _GroupMemberMapInfoCanvas_Label4:Label;
      
      public var _GroupMemberMapInfoCanvas_Label5:Label;
      
      public var inCreateComplete:Boolean = false;
      
      private var _1472332155_level:String;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Canvas,
               "id":"tip",
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0.39999998,
                     "styleName":"CanvasToolTip",
                     "includeInLayout":false,
                     "visible":false,
                     "verticalScrollPolicy":"off",
                     "horizontalScrollPolicy":"off",
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Label,
                        "id":"cname",
                        "stylesFactory":function():void
                        {
                           this.color = 16776656;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":0,
                              "y":0,
                              "text":""
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_GroupMemberMapInfoCanvas_Label2",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":0,
                              "y":19,
                              "text":""
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_GroupMemberMapInfoCanvas_Label3",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":66.3,
                              "y":19,
                              "text":""
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_GroupMemberMapInfoCanvas_Label4",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":0,
                              "y":40,
                              "text":""
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_GroupMemberMapInfoCanvas_Label5",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":66.3,
                              "y":40,
                              "text":""
                           };
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      private var _94802286cname:Label;
      
      public function GroupMemberMapInfoCanvas()
      {
         super();
         mx_internal::_document = this;
         this.x = 40.3;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___GroupMemberMapInfoCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupMemberMapInfoCanvas._watcherSetupUtil = param1;
      }
      
      public function set xy(param1:String) : void
      {
         _xy = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _level() : String
      {
         return this._1472332155_level;
      }
      
      public function set charName(param1:String) : void
      {
         _name = param1;
      }
      
      private function set _level(param1:String) : void
      {
         var _loc2_:Object = this._1472332155_level;
         if(_loc2_ !== param1)
         {
            this._1472332155_level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_level",_loc2_,param1));
         }
      }
      
      public function set level(param1:String) : void
      {
         _level = param1;
      }
      
      public function ___GroupMemberMapInfoCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function init() : void
      {
         this.x = 40.3;
         if(this.parent)
         {
            this.y = this.parent.y;
         }
         this.height = 60;
         this.width = 125;
         if(this.visible)
         {
            this.visible = false;
         }
         inCreateComplete = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get tip() : Canvas
      {
         return this._114843tip;
      }
      
      [Bindable(event="propertyChange")]
      private function get _map() : String
      {
         return this._2938013_map;
      }
      
      [Bindable(event="propertyChange")]
      private function get _xy() : String
      {
         return this._95136_xy;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupMemberMapInfoCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupMemberMapInfoCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_GroupMemberMapInfoCanvasWatcherSetupUtil");
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
      
      public function set tip(param1:Canvas) : void
      {
         var _loc2_:Object = this._114843tip;
         if(_loc2_ !== param1)
         {
            this._114843tip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tip",_loc2_,param1));
         }
      }
      
      public function set map(param1:String) : void
      {
         _map = param1;
      }
      
      private function set _map(param1:String) : void
      {
         var _loc2_:Object = this._2938013_map;
         if(_loc2_ !== param1)
         {
            this._2938013_map = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_map",_loc2_,param1));
         }
      }
      
      private function _GroupMemberMapInfoCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cname.htmlText = param1;
         },"cname.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _class;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupMemberMapInfoCanvas_Label2.htmlText = param1;
         },"_GroupMemberMapInfoCanvas_Label2.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupMemberMapInfoCanvas_Label3.htmlText = param1;
         },"_GroupMemberMapInfoCanvas_Label3.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _map;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupMemberMapInfoCanvas_Label4.htmlText = param1;
         },"_GroupMemberMapInfoCanvas_Label4.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _xy;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupMemberMapInfoCanvas_Label5.htmlText = param1;
         },"_GroupMemberMapInfoCanvas_Label5.htmlText");
         result[4] = binding;
         return result;
      }
      
      private function set _xy(param1:String) : void
      {
         var _loc2_:Object = this._95136_xy;
         if(_loc2_ !== param1)
         {
            this._95136_xy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_xy",_loc2_,param1));
         }
      }
      
      public function set charclass(param1:String) : void
      {
         _class = param1;
      }
      
      private function _GroupMemberMapInfoCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _name;
         _loc1_ = _class;
         _loc1_ = _level;
         _loc1_ = _map;
         _loc1_ = _xy;
      }
      
      private function set _name(param1:String) : void
      {
         var _loc2_:Object = this._91108202_name;
         if(_loc2_ !== param1)
         {
            this._91108202_name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_name",_loc2_,param1));
         }
      }
      
      public function set cname(param1:Label) : void
      {
         var _loc2_:Object = this._94802286cname;
         if(_loc2_ !== param1)
         {
            this._94802286cname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cname",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _name() : String
      {
         return this._91108202_name;
      }
      
      [Bindable(event="propertyChange")]
      public function get cname() : Label
      {
         return this._94802286cname;
      }
      
      private function set _class(param1:String) : void
      {
         var _loc2_:Object = this._1480455047_class;
         if(_loc2_ !== param1)
         {
            this._1480455047_class = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_class",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _class() : String
      {
         return this._1480455047_class;
      }
   }
}

