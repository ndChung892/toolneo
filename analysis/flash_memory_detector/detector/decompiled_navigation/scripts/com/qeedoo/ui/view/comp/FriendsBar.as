package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FriendsBar extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _charLevel:int = -1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _FriendsBar_Image1:Image;
      
      private var _94976_st:Boolean = false;
      
      private var _iconCode:Number;
      
      private var _98264cav:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _fData:Object;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":140,
               "height":18,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"cav",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl",
                           "events":{"click":"__rl_click"},
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":0,
                                 "height":18,
                                 "width":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"_FriendsBar_Image1",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":0,
                                 "width":18,
                                 "height":18
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _mData:Object;
      
      private var _3642rl:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      public function FriendsBar()
      {
         super();
         mx_internal::_document = this;
         this.width = 140;
         this.height = 18;
         this.verticalScrollPolicy = "off";
         this.horizontalScrollPolicy = "off";
         this.addEventListener("creationComplete",___FriendsBar_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FriendsBar._watcherSetupUtil = param1;
      }
      
      private function updateFriendFazendaByLocalData() : void
      {
         var _loc1_:Object = {};
         _loc1_.farm = _fData;
         _loc1_.mine = _mData;
         if(_charLevel < 0)
         {
            _loc1_.lv = "--";
         }
         else
         {
            _loc1_.lv = _charLevel;
         }
         if(_iconCode)
         {
            _loc1_.icon = _iconCode;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_FAZENDA);
         _loc2_.updateFazendaData(_loc1_,false);
      }
      
      private function mouseOut(param1:MouseEvent) : void
      {
         cav.setStyle("backgroundColor",null);
      }
      
      public function set rl(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3642rl;
         if(_loc2_ !== param1)
         {
            this._3642rl = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cav() : Canvas
      {
         return this._98264cav;
      }
      
      [Bindable(event="propertyChange")]
      private function get _st() : Boolean
      {
         return this._94976_st;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl() : RoundedLabel
      {
         return this._3642rl;
      }
      
      private function _FriendsBar_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Boolean
         {
            return _st;
         },function(param1:Boolean):void
         {
            _FriendsBar_Image1.visible = param1;
         },"_FriendsBar_Image1.visible");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.MOUSE_ACTION_CAN_STEAL;
         },function(param1:Object):void
         {
            _FriendsBar_Image1.source = param1;
         },"_FriendsBar_Image1.source");
         result[1] = binding;
         return result;
      }
      
      private function updateView() : void
      {
         rl.text = _fData.name;
      }
      
      public function init() : void
      {
         addEventListener(MouseEvent.MOUSE_OVER,mouseOver);
         addEventListener(MouseEvent.MOUSE_OUT,mouseOut);
      }
      
      override public function set data(param1:Object) : void
      {
         if(param1)
         {
            _fData = param1.farm;
            _mData = param1.mine;
            _st = param1.st;
            if(param1.lv)
            {
               _charLevel = param1.lv;
            }
            else
            {
               _charLevel = -1;
            }
            if(param1.icon)
            {
               _iconCode = param1.icon;
            }
            else
            {
               _iconCode = NaN;
            }
            updateView();
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FriendsBar = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FriendsBar_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FriendsBarWatcherSetupUtil");
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
      
      private function mouseOver(param1:MouseEvent) : void
      {
         cav.setStyle("backgroundColor","#009dff");
      }
      
      public function ___FriendsBar_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __rl_click(param1:MouseEvent) : void
      {
         enterOthersFazenda();
      }
      
      private function enterOthersFazenda() : void
      {
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_FAZENDA);
         if(!_core.getFazendaDataByCid(_fData.cid))
         {
            trace("请求间隔不到1分钟, 使用本地数据更新好友庄园");
            updateFriendFazendaByLocalData();
         }
      }
      
      private function set _st(param1:Boolean) : void
      {
         var _loc2_:Object = this._94976_st;
         if(_loc2_ !== param1)
         {
            this._94976_st = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_st",_loc2_,param1));
         }
      }
      
      private function _FriendsBar_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = _st;
         _loc1_ = ResManager.MOUSE_ACTION_CAN_STEAL;
      }
      
      public function set cav(param1:Canvas) : void
      {
         var _loc2_:Object = this._98264cav;
         if(_loc2_ !== param1)
         {
            this._98264cav = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav",_loc2_,param1));
         }
      }
   }
}

