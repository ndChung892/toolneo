package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.MapCanvas;
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
   import mx.controls.CheckBox;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MapPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1970145313ipCheck:CheckBox;
      
      private var _currentMapId:int;
      
      private var _894646408routeLayer:UIComponent;
      
      private var _1951133351npcCheck:CheckBox;
      
      private var _667444878mcCanvas:Canvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3478mc:MapCanvas;
      
      public var _MapPanel_BasicGlowButton1:BasicGlowButton;
      
      private var mapScaleX:Number;
      
      private var mapScaleY:Number;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1710794012_btnEnabled:Boolean = true;
      
      private var _836535815mapName:BasicTitleCanvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":430,
               "height":325,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"mapName"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"mcCanvas",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":253,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "y":60,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":MapCanvas,
                           "id":"mc",
                           "events":{"resize":"__mc_resize"},
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "0";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"routeLayer"
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"npcCheck",
                  "events":{"click":"__npcCheck_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "label":"NPC",
                        "selected":true,
                        "y":40,
                        "x":15
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"ipCheck",
                  "events":{"click":"__ipCheck_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":60,
                        "y":40,
                        "selected":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MapPanel_BasicGlowButton1",
                  "events":{"click":"___MapPanel_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "styleName":"BtnNormalRed",
                        "width":70.6,
                        "height":19
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      private var _1722718208_player:Player;
      
      public function MapPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 430;
         this.height = 325;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MapPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      private function get _player() : Player
      {
         return this._1722718208_player;
      }
      
      private function showIp() : void
      {
         mc.changeIpVisible(ipCheck.selected);
      }
      
      public function refreshNpc(param1:Number) : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         mc.refreshNpc(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get mapName() : BasicTitleCanvas
      {
         return this._836535815mapName;
      }
      
      [Bindable(event="propertyChange")]
      public function get routeLayer() : UIComponent
      {
         return this._894646408routeLayer;
      }
      
      public function __ipCheck_click(param1:MouseEvent) : void
      {
         showIp();
      }
      
      public function clearRoute() : void
      {
         if(routeLayer)
         {
            routeLayer.graphics.clear();
         }
      }
      
      public function firstOut() : void
      {
         mc.addEventListener(MouseEvent.CLICK,onFirstOut);
      }
      
      public function set mapName(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._836535815mapName;
         if(_loc2_ !== param1)
         {
            this._836535815mapName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mapName",_loc2_,param1));
         }
      }
      
      private function set _player(param1:Player) : void
      {
         var _loc2_:Object = this._1722718208_player;
         if(_loc2_ !== param1)
         {
            this._1722718208_player = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_player",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mcCanvas() : Canvas
      {
         return this._667444878mcCanvas;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MapPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MapPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MapPanelWatcherSetupUtil");
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
      
      public function set mcCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._667444878mcCanvas;
         if(_loc2_ !== param1)
         {
            this._667444878mcCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mcCanvas",_loc2_,param1));
         }
      }
      
      public function __mc_resize(param1:ResizeEvent) : void
      {
         resizeHeight();
      }
      
      public function disableUI() : void
      {
         this._btnEnabled = false;
      }
      
      public function set routeLayer(param1:UIComponent) : void
      {
         var _loc2_:Object = this._894646408routeLayer;
         if(_loc2_ !== param1)
         {
            this._894646408routeLayer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"routeLayer",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ipCheck() : CheckBox
      {
         return this._1970145313ipCheck;
      }
      
      private function showNpc() : void
      {
         mc.changeNpcVisible(npcCheck.selected);
      }
      
      public function ___MapPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         _core.view.show(ViewManager.POPU_WORLDMAP);
         nextGuide();
      }
      
      [Bindable(event="propertyChange")]
      public function get npcCheck() : CheckBox
      {
         return this._1951133351npcCheck;
      }
      
      [Bindable(event="propertyChange")]
      public function get mc() : MapCanvas
      {
         return this._3478mc;
      }
      
      public function set mc(param1:MapCanvas) : void
      {
         var _loc2_:Object = this._3478mc;
         if(_loc2_ !== param1)
         {
            this._3478mc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc",_loc2_,param1));
         }
      }
      
      private function set _btnEnabled(param1:Boolean) : void
      {
         var _loc2_:Object = this._1710794012_btnEnabled;
         if(_loc2_ !== param1)
         {
            this._1710794012_btnEnabled = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_btnEnabled",_loc2_,param1));
         }
      }
      
      override public function update() : void
      {
         if(_player == null)
         {
            _player = Core.getInstance().player;
         }
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         mc.update();
      }
      
      public function clear() : void
      {
         if(mc != null)
         {
            mc.clear();
         }
         _player = null;
         _currentMapId = -1;
      }
      
      public function set npcCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1951133351npcCheck;
         if(_loc2_ !== param1)
         {
            this._1951133351npcCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"npcCheck",_loc2_,param1));
         }
      }
      
      public function reset() : void
      {
         if(mc != null)
         {
            mc.clear();
         }
         _player = null;
         _currentMapId = -1;
      }
      
      private function _MapPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = mc.x;
         _loc1_ = mc.y;
         _loc1_ = Language.MAPPANEL_S[1];
         _loc1_ = this._btnEnabled;
         _loc1_ = Language.MAPPANEL_U[0];
      }
      
      public function clearNpc() : void
      {
         if(mc != null)
         {
            mc.clearNpc();
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         if(_player == null)
         {
            _player = _core.player;
         }
         mc.mid = _currentMapId;
         mc.initView();
         var _loc1_:Object = _core.data.gameData[GamePredef.TBL_MAP][_currentMapId];
         mapName.text = _loc1_.name;
      }
      
      public function enableUI() : void
      {
         this._btnEnabled = true;
      }
      
      public function nextGuide() : void
      {
      }
      
      public function clearIp() : void
      {
         if(mc != null)
         {
            mc.clearIp();
         }
      }
      
      private function _MapPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Number
         {
            return mc.x;
         },function(param1:Number):void
         {
            routeLayer.x = param1;
         },"routeLayer.x");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return mc.y;
         },function(param1:Number):void
         {
            routeLayer.y = param1;
         },"routeLayer.y");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAPPANEL_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ipCheck.label = param1;
         },"ipCheck.label");
         result[2] = binding;
         binding = new Binding(this,function():Boolean
         {
            return this._btnEnabled;
         },function(param1:Boolean):void
         {
            _MapPanel_BasicGlowButton1.enabled = param1;
         },"_MapPanel_BasicGlowButton1.enabled");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MapPanel_BasicGlowButton1.label = param1;
         },"_MapPanel_BasicGlowButton1.label");
         result[4] = binding;
         return result;
      }
      
      public function __npcCheck_click(param1:MouseEvent) : void
      {
         showNpc();
      }
      
      public function drawRoute(param1:Number, param2:Number, param3:Number, param4:Number, param5:Array) : void
      {
         var _loc8_:Array = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         if(!routeLayer)
         {
            return;
         }
         routeLayer.graphics.clear();
         routeLayer.graphics.lineStyle(2,11206553,0.8);
         var _loc6_:int = param1 * mapScaleX;
         var _loc7_:int = param2 * mapScaleY;
         for each(_loc8_ in param5)
         {
            if(!_loc8_[0] || !_loc8_[1])
            {
               break;
            }
            _loc9_ = _loc8_[0] * mapScaleX;
            _loc10_ = _loc8_[1] * mapScaleY;
            routeLayer.graphics.beginFill(16711680,0.8);
            routeLayer.graphics.moveTo(_loc6_,_loc7_);
            routeLayer.graphics.lineTo(_loc9_,_loc10_);
            routeLayer.graphics.endFill();
            _loc6_ = _loc9_;
            _loc7_ = _loc10_;
         }
         routeLayer.graphics.beginFill(16776960,0.8);
         routeLayer.graphics.drawCircle(_loc9_,_loc10_,3);
         routeLayer.graphics.endFill();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(!_core.player)
         {
            return;
         }
         _currentMapId = _core.player.posMapId;
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_MAP][_currentMapId];
         if(_loc2_ != null && _loc2_.mMap < 0 && param1)
         {
            _core.sysMidNote(Language.MAPPANEL_S[0]);
            return;
         }
         super.visible = param1;
         if(param1)
         {
            initView();
         }
      }
      
      public function set ipCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1970145313ipCheck;
         if(_loc2_ !== param1)
         {
            this._1970145313ipCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ipCheck",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _btnEnabled() : Boolean
      {
         return this._1710794012_btnEnabled;
      }
      
      private function resizeHeight() : void
      {
         height = mc.height + 85;
         mcCanvas.height = mc.height + 10;
         mapScaleX = mc.mapScaleX;
         mapScaleY = mc.mapScaleY;
      }
      
      private function onFirstOut(param1:MouseEvent) : void
      {
         mc.removeEventListener(MouseEvent.CLICK,onFirstOut);
      }
   }
}

