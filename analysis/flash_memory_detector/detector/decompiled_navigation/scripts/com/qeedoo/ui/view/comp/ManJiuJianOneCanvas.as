package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ManJiuJianOneCanvas extends SimpleCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _iid:Number;
      
      private var _core:Core;
      
      mx_internal var _watchers:Array;
      
      private var _106966249ptLab:Label;
      
      private var _pt:Number;
      
      private var _hasBuy:Number;
      
      private var _1164640210limitLab:Label;
      
      private var _1945394687infoLab:Label;
      
      private var _1832349893addCartBtn:Button;
      
      private var _limit:Number;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _lab:String;
      
      private var _3242771item:ItemSlot;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function ManJiuJianOneCanvas()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":SimpleCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":130,
                  "height":85,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":ItemSlot,
                     "id":"item",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":8.5,
                           "y":10.55,
                           "movable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"addCartBtn",
                     "events":{"click":"__addCartBtn_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "styleName":"HorizontalTab",
                           "x":54.4,
                           "y":55.5,
                           "width":70,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"infoLab",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":45.9,
                           "y":7.55,
                           "width":80,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"limitLab",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":5.95,
                           "y":55,
                           "width":46.45,
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"ptLab",
                     "stylesFactory":function():void
                     {
                        this.color = 16777215;
                        this.fontSize = 12;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":45.9,
                           "y":29,
                           "width":80,
                           "height":20,
                           "text":"20点"
                        };
                     }
                  })]
               };
            }
         });
         _core = Core.getInstance();
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundAlpha = 0.3;
         };
         this.width = 130;
         this.height = 85;
         this.styleName = "RoundedGradientBorder";
         this.addEventListener("creationComplete",___ManJiuJianOneCanvas_SimpleCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ManJiuJianOneCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ptLab() : Label
      {
         return this._106966249ptLab;
      }
      
      private function _ManJiuJianOneCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MANJIUJIAN_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addCartBtn.label = param1;
         },"addCartBtn.label");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get item() : ItemSlot
      {
         return this._3242771item;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ManJiuJianOneCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ManJiuJianOneCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ManJiuJianOneCanvasWatcherSetupUtil");
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
      
      private function _ManJiuJianOneCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MANJIUJIAN_PANEL[16];
      }
      
      public function set limitLab(param1:Label) : void
      {
         var _loc2_:Object = this._1164640210limitLab;
         if(_loc2_ !== param1)
         {
            this._1164640210limitLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"limitLab",_loc2_,param1));
         }
      }
      
      public function ___ManJiuJianOneCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initData();
      }
      
      public function set item(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._3242771item;
         if(_loc2_ !== param1)
         {
            this._3242771item = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get addCartBtn() : Button
      {
         return this._1832349893addCartBtn;
      }
      
      public function slotData() : void
      {
         var _loc1_:Object = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_iid];
         if(Boolean(_loc1_) && Boolean(_loc1_.name))
         {
            this.Lab = _loc1_.name;
         }
         if(initialized)
         {
            item.type = GamePredef.TBL_ITEM_TEMPLATE;
            item.giid = _iid;
            item.slotData = _loc1_;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get limitLab() : Label
      {
         return this._1164640210limitLab;
      }
      
      public function set ptLab(param1:Label) : void
      {
         var _loc2_:Object = this._106966249ptLab;
         if(_loc2_ !== param1)
         {
            this._106966249ptLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ptLab",_loc2_,param1));
         }
      }
      
      public function set Lab(param1:String) : void
      {
         _lab = param1;
         if(initialized)
         {
            infoLab.htmlText = _lab;
         }
      }
      
      public function set ItemId(param1:Number) : void
      {
         _iid = param1;
      }
      
      private function initData() : void
      {
         this.Point = _pt;
         this.ItemId = _iid;
         this.slotData();
         this.setLimit(_limit,_hasBuy);
      }
      
      public function __addCartBtn_click(param1:MouseEvent) : void
      {
         addCart();
      }
      
      public function set Point(param1:Number) : void
      {
         _pt = param1;
         if(initialized)
         {
            ptLab.htmlText = _pt + "点数";
         }
      }
      
      private function addCart() : void
      {
         if(!_iid)
         {
            return;
         }
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_MANJIUJIAN);
         if(_loc1_)
         {
            _loc1_.addCart(_iid);
         }
      }
      
      public function setLimit(param1:Number, param2:Number) : void
      {
         _limit = param1;
         _hasBuy = param2 ? param2 : 0;
         if(initialized)
         {
            limitLab.htmlText = "剩:" + ToolKit.minus(_limit,_hasBuy);
         }
      }
      
      public function set addCartBtn(param1:Button) : void
      {
         var _loc2_:Object = this._1832349893addCartBtn;
         if(_loc2_ !== param1)
         {
            this._1832349893addCartBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addCartBtn",_loc2_,param1));
         }
      }
      
      public function set infoLab(param1:Label) : void
      {
         var _loc2_:Object = this._1945394687infoLab;
         if(_loc2_ !== param1)
         {
            this._1945394687infoLab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoLab",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoLab() : Label
      {
         return this._1945394687infoLab;
      }
   }
}

