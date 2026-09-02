package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RendererSoulItem extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var soulObj:Object;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _106875lb1:Label;
      
      private var _97884btn:Button;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":30,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"lb1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lb2",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"x":60};
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"btn",
                  "events":{"click":"__btn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":50,
                        "styleName":"BtnStdRed"
                     };
                  }
               })]
            };
         }
      });
      
      private var _106876lb2:Label;
      
      private var _core:Core = Core.getInstance();
      
      public function RendererSoulItem()
      {
         super();
         mx_internal::_document = this;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.height = 30;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RendererSoulItem._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb1() : Label
      {
         return this._106875lb1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lb2() : Label
      {
         return this._106876lb2;
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         onSubExchange();
      }
      
      public function set lb1(param1:Label) : void
      {
         var _loc2_:Object = this._106875lb1;
         if(_loc2_ !== param1)
         {
            this._106875lb1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RendererSoulItem = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RendererSoulItem_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RendererSoulItemWatcherSetupUtil");
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         soulObj = param1;
         if(param1)
         {
            if(Boolean(_core.player) && _core.player.soulChip >= soulObj.reqChip)
            {
               btn.enabled = true;
            }
            else
            {
               btn.enabled = false;
            }
            lb1.text = "【" + soulObj.name + "】";
            lb1.setStyle("color",soulObj.color);
            lb2.text = "【" + soulObj.desc + "】";
            btn.toolTip = Language.PET_SOUL_S[28].replace("{num}",soulObj.reqChip);
         }
      }
      
      private function _RendererSoulItem_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn.label = param1;
         },"btn.label");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      private function onSubExchange() : void
      {
         if(_core.player.soulChip < int(soulObj.reqChip))
         {
            Alert.show(Language.PET_SOUL_S[8],"",Alert.YES,null,null);
            return;
         }
         if(Boolean(soulObj) && Boolean(soulObj.soulId))
         {
            _core.remote.call("exchangeSoul",new Responder(onExchangeSoul),soulObj.soulId);
         }
      }
      
      private function _RendererSoulItem_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_SOUL_S[35];
      }
      
      public function onExchangeSoul(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         if(!param1)
         {
            return;
         }
         switch(param1.type)
         {
            case 1:
               if(Boolean(param1.soulData) && Boolean(_core.player.soulBagData["data"]))
               {
                  _core.player.soulBagData["data"][param1.soulData.s] = param1.soulData;
                  _core.player.soulChip = param1.chip;
                  _loc2_ = _core.view.getUI(ViewManager.PANEL_SOUL_EXCHANGE);
                  if(_loc2_)
                  {
                     _loc2_.updateView();
                  }
                  _loc3_ = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
                  if(_loc3_)
                  {
                     _loc3_.updateSoulSlotView(param1.soulData["s"]);
                     _loc3_.changeSoulPanelInfo(_core.player.soulExp,_core.player.soulChip);
                  }
                  _loc4_ = int(param1.soulData.sid);
                  if(_loc4_)
                  {
                     _loc5_ = GameData.d[GamePredef.TBL_PET_SOUL][_loc4_];
                     _loc6_ = Language.PET_SOUL_S[53];
                     _loc6_ = _loc6_.replace("{soul}",TextUtil.decode("[@" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_PET_SOUL] + "|" + _loc4_ + "|" + _loc5_.name + "|" + _loc5_.color + "|0|0]"));
                     _core.sysBlueMsg(_loc6_);
                  }
               }
               break;
            case 2:
               Alert.show(Language.PET_SOUL_S[27],"",Alert.YES,null,null);
               break;
            case 3:
               Alert.show(Language.PET_SOUL_S[8],"",Alert.YES,null,null);
         }
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function set lb2(param1:Label) : void
      {
         var _loc2_:Object = this._106876lb2;
         if(_loc2_ !== param1)
         {
            this._106876lb2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb2",_loc2_,param1));
         }
      }
   }
}

