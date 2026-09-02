package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.CrossContentionTotalPanel;
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
   
   public class CrossContentionRankLine extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _466105302pointNum:Label;
      
      private var _3773vs:Image;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1666152091areaTips:Label;
      
      private var _100346066index:Label;
      
      private var _741253061serversName:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var rdata:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":545,
               "height":60,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"vs",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.verticalCenter = "0";
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"index",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.left = "20";
                     this.fontSize = 16;
                     this.color = 16776960;
                     this.fontWeight = "bold";
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":45,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"unitName",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.left = "100";
                     this.fontSize = 16;
                     this.color = 16776960;
                     this.fontWeight = "bold";
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":85,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"serversName",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.left = "210";
                     this.fontSize = 16;
                     this.color = 16776960;
                     this.fontWeight = "bold";
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":90,
                        "height":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"pointNum",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.left = "340";
                     this.fontSize = 16;
                     this.color = 16776960;
                     this.fontWeight = "bold";
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":130,
                        "height":38
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"areaNum",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.left = "460";
                     this.fontSize = 16;
                     this.color = 16776960;
                     this.fontWeight = "bold";
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":130,
                        "height":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"areaTips",
                  "stylesFactory":function():void
                  {
                     this.verticalCenter = "0";
                     this.left = "480";
                     this.fontSize = 16;
                     this.color = 16711680;
                     this.textAlign = "left";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":130,
                        "height":25
                     };
                  }
               })]
            };
         }
      });
      
      private var _746488903areaNum:Label;
      
      private var _292854225unitName:Label;
      
      public function CrossContentionRankLine()
      {
         super();
         mx_internal::_document = this;
         this.width = 545;
         this.height = 60;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionRankLine._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get areaNum() : Label
      {
         return this._746488903areaNum;
      }
      
      public function set areaNum(param1:Label) : void
      {
         var _loc2_:Object = this._746488903areaNum;
         if(_loc2_ !== param1)
         {
            this._746488903areaNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get serversName() : Label
      {
         return this._741253061serversName;
      }
      
      public function set areaTips(param1:Label) : void
      {
         var _loc2_:Object = this._1666152091areaTips;
         if(_loc2_ !== param1)
         {
            this._1666152091areaTips = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaTips",_loc2_,param1));
         }
      }
      
      public function set pointNum(param1:Label) : void
      {
         var _loc2_:Object = this._466105302pointNum;
         if(_loc2_ !== param1)
         {
            this._466105302pointNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointNum",_loc2_,param1));
         }
      }
      
      public function set serversName(param1:Label) : void
      {
         var _loc2_:Object = this._741253061serversName;
         if(_loc2_ !== param1)
         {
            this._741253061serversName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"serversName",_loc2_,param1));
         }
      }
      
      private function showAreas() : String
      {
         if(!rdata || !rdata.areas || !areaTips.visible)
         {
            return Language.CROSS_CONTENTION_PANEL_U[176];
         }
         return rdata.areas;
      }
      
      public function set refreshData(param1:Object) : void
      {
         var _loc6_:int = 0;
         var _loc7_:String = null;
         if(!param1)
         {
            return;
         }
         rdata = param1;
         index.text = rdata.index;
         unitName.text = CrossContentionTotalPanel.getServerName(Number(rdata.uid));
         if(!rdata.areaNum)
         {
            rdata.areaNum = 0;
         }
         var _loc2_:Object = rdata.servers;
         pointNum.text = "";
         var _loc3_:int = 0;
         var _loc4_:Array = CrossContentionTotalPanel.getUnitServersId(Number(rdata.uid));
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            _loc6_ = int(_loc4_[_loc5_]);
            if(_loc3_ > 0)
            {
               serversName.text += "\n";
               pointNum.text += "\n";
            }
            _loc7_ = CrossContentionTotalPanel.getServerName(Number(_loc6_));
            serversName.text += Language.CROSS_CONTENTION_PANEL_U[18].toString().replace("{osid}",_loc7_);
            if(Boolean(_loc2_) && Boolean(_loc2_[_loc6_]))
            {
               pointNum.text += _loc2_[_loc6_].num;
            }
            else
            {
               pointNum.text += "0";
            }
            _loc3_++;
            _loc5_++;
         }
         areaNum.htmlText = rdata.areaNum;
         if(int(rdata.areaNum) > 0)
         {
            areaTips.visible = true;
         }
         else
         {
            areaTips.visible = false;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pointNum() : Label
      {
         return this._466105302pointNum;
      }
      
      public function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get index() : Label
      {
         return this._100346066index;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : Image
      {
         return this._3773vs;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionRankLine = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionRankLine_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_CrossContentionRankLineWatcherSetupUtil");
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
      
      public function set unitName(param1:Label) : void
      {
         var _loc2_:Object = this._292854225unitName;
         if(_loc2_ !== param1)
         {
            this._292854225unitName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unitName",_loc2_,param1));
         }
      }
      
      private function _CrossContentionRankLine_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000373);
         },function(param1:Object):void
         {
            vs.source = param1;
         },"vs.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[173];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areaTips.htmlText = param1;
         },"areaTips.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = showAreas();
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areaTips.toolTip = param1;
         },"areaTips.toolTip");
         result[2] = binding;
         return result;
      }
      
      public function set index(param1:Label) : void
      {
         var _loc2_:Object = this._100346066index;
         if(_loc2_ !== param1)
         {
            this._100346066index = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"index",_loc2_,param1));
         }
      }
      
      private function _CrossContentionRankLine_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ResManager.getIconUrl(4130220000373);
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[173];
         _loc1_ = showAreas();
      }
      
      [Bindable(event="propertyChange")]
      public function get unitName() : Label
      {
         return this._292854225unitName;
      }
      
      public function set vs(param1:Image) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get areaTips() : Label
      {
         return this._1666152091areaTips;
      }
   }
}

