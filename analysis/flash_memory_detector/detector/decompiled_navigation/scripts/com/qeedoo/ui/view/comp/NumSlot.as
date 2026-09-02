package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.ShopSlotVO;
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
   import mx.containers.Canvas;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NumSlot extends Canvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      private var _dm:DataManager;
      
      public var _NumSlot_RoundedLabel1:RoundedLabel;
      
      public var _NumSlot_RoundedLabel2:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _345321964shopSlot:ItemSlot;
      
      public var _NumSlot_BasicTxtButton1:BasicTxtButton;
      
      private var _1141922867shopSlotVO:ShopSlotVO;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var _core:Core;
      
      public function NumSlot()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":100,
                  "height":41,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":ItemSlot,
                     "id":"shopSlot",
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":4,
                           "y":5,
                           "movable":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicTxtButton,
                     "id":"_NumSlot_BasicTxtButton1",
                     "stylesFactory":function():void
                     {
                        this.fontSize = 12;
                        this.paddingLeft = 0;
                        this.paddingRight = 0;
                        this.paddingTop = 1;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":40,
                           "y":20,
                           "width":32,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_NumSlot_RoundedLabel1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":37,
                           "y":3,
                           "width":62,
                           "height":18
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":RoundedLabel,
                     "id":"_NumSlot_RoundedLabel2",
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":63,
                           "y":20,
                           "width":32
                        };
                     }
                  })]
               };
            }
         });
         _1141922867shopSlotVO = new ShopSlotVO();
         _core = Core.getInstance();
         _dm = DataManager.getInstance();
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
            this.backgroundAlpha = 0;
         };
         this.width = 100;
         this.height = 41;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NumSlot._watcherSetupUtil = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         shopSlotVO.giid = param1;
         getItemInfo(shopSlotVO.type,shopSlotVO.giid);
      }
      
      public function restore() : void
      {
         shopSlot.restore();
      }
      
      public function set slotData(param1:Object) : void
      {
         shopSlotVO.slotData = param1;
         if(param1)
         {
            shopSlotVO.stackNum = param1.stackNum;
         }
      }
      
      private function set shopSlotVO(param1:ShopSlotVO) : void
      {
         var _loc2_:Object = this._1141922867shopSlotVO;
         if(_loc2_ !== param1)
         {
            this._1141922867shopSlotVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlotVO",_loc2_,param1));
         }
      }
      
      public function get selected() : Boolean
      {
         return alpha == 0.5;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NumSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NumSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_NumSlotWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get shopSlot() : ItemSlot
      {
         return this._345321964shopSlot;
      }
      
      private function dClickHandler(param1:Event) : void
      {
         var _loc2_:Event = new Event(Slot.EVENT_SLOT_DCLICK);
         dispatchEvent(_loc2_);
      }
      
      private function tmpReturn(param1:Object) : void
      {
         var _loc2_:Object = param1.data;
         if(Boolean(_loc2_) && Boolean(_loc2_.id))
         {
            _dm.addNewData(param1.type,param1.data);
            shopSlotVO.itemName = _loc2_.name;
            shopSlot.addEventListener(Slot.EVENT_SLOT_DCLICK,dClickHandler);
         }
      }
      
      public function set index(param1:int) : void
      {
         shopSlotVO.index = param1;
         _core.view.addSlot(param1,this);
      }
      
      private function _NumSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return shopSlotVO.slotData;
         },function(param1:Object):void
         {
            shopSlot.slotData = param1;
         },"shopSlot.slotData");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return shopSlotVO.type;
         },function(param1:int):void
         {
            shopSlot.type = param1;
         },"shopSlot.type");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return shopSlotVO.giid;
         },function(param1:Number):void
         {
            shopSlot.giid = param1;
         },"shopSlot.giid");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return shopSlotVO.stackMax;
         },function(param1:int):void
         {
            shopSlot.stackMax = param1;
         },"shopSlot.stackMax");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return shopSlotVO.stackNum;
         },function(param1:int):void
         {
            shopSlot.stackNum = param1;
         },"shopSlot.stackNum");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NUM_SLOT_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NumSlot_BasicTxtButton1.label = param1;
         },"_NumSlot_BasicTxtButton1.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = shopSlotVO.itemName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NumSlot_RoundedLabel1.text = param1;
         },"_NumSlot_RoundedLabel1.text");
         result[6] = binding;
         binding = new Binding(this,function():uint
         {
            return shopSlotVO.itemColor;
         },function(param1:uint):void
         {
            _NumSlot_RoundedLabel1.setStyle("color",param1);
         },"_NumSlot_RoundedLabel1.color");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = shopSlotVO.stackNum;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NumSlot_RoundedLabel2.text = param1;
         },"_NumSlot_RoundedLabel2.text");
         result[8] = binding;
         return result;
      }
      
      public function set shopSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._345321964shopSlot;
         if(_loc2_ !== param1)
         {
            this._345321964shopSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"shopSlot",_loc2_,param1));
         }
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            alpha = 0.5;
         }
         else
         {
            alpha = 1;
         }
      }
      
      public function set slotType(param1:int) : void
      {
         shopSlot.slotType = param1;
      }
      
      public function get type() : int
      {
         return shopSlotVO.type;
      }
      
      public function set stackNum(param1:int) : void
      {
         shopSlotVO.stackNum = param1;
      }
      
      private function insReturn(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc2_:Object = param1.data;
         if(Boolean(_loc2_) && Boolean(_loc2_.id))
         {
            if(ToolKit.isEqual(_loc2_.binded,1))
            {
               _core.sysMidNote(Language.NUMSLOT_S[0]);
               clean();
               _core.view.getUI(ViewManager.PANEL_BAG).updateView();
               return;
            }
            _loc3_ = ToolKit.add(param1.type,1);
            _loc4_ = _dm.getData(_loc3_,_loc2_.tid);
            shopSlotVO.itemColor = GamePredef.CODE_ITEM_COLOR[_loc2_.color];
            if(_loc4_)
            {
               shopSlotVO.itemName = _loc4_.name;
               shopSlot.addEventListener(Slot.EVENT_SLOT_DCLICK,dClickHandler);
            }
            else
            {
               _core.remote.call("gdc",new Responder(tmpReturn),_loc3_,_loc2_.tid);
            }
         }
      }
      
      public function clean() : void
      {
         reset();
      }
      
      public function get stackMax() : int
      {
         return shopSlotVO.stackMax;
      }
      
      [Bindable(event="propertyChange")]
      private function get shopSlotVO() : ShopSlotVO
      {
         return this._1141922867shopSlotVO;
      }
      
      private function _NumSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = shopSlotVO.slotData;
         _loc1_ = shopSlotVO.type;
         _loc1_ = shopSlotVO.giid;
         _loc1_ = shopSlotVO.stackMax;
         _loc1_ = shopSlotVO.stackNum;
         _loc1_ = Language.NUM_SLOT_U[0];
         _loc1_ = shopSlotVO.itemName;
         _loc1_ = shopSlotVO.itemColor;
         _loc1_ = shopSlotVO.stackNum;
      }
      
      public function initView() : void
      {
      }
      
      public function reset() : void
      {
         shopSlotVO = new ShopSlotVO();
         shopSlotVO.type = -1;
         shopSlotVO.giid = -1;
         shopSlotVO.stackNum = 0;
         shopSlotVO.stackMax = 1;
         shopSlot.clearIcon();
         shopSlot.clean();
      }
      
      public function get slotData() : Object
      {
         return shopSlot.slotData;
      }
      
      public function update() : void
      {
         shopSlot.update();
      }
      
      public function get index() : int
      {
         return shopSlotVO.index;
      }
      
      private function getItemInfo(param1:int, param2:Number) : void
      {
         if(param2 <= 0 || param1 <= 0)
         {
            return;
         }
         _core.remote.call("gdc",new Responder(insReturn),param1,param2);
      }
      
      public function get stackNum() : int
      {
         return shopSlotVO.stackNum;
      }
      
      public function get slotType() : int
      {
         return shopSlot.slotType;
      }
      
      public function set stackMax(param1:int) : void
      {
         shopSlotVO.stackMax = param1;
      }
      
      public function set type(param1:int) : void
      {
         shopSlotVO.type = param1;
         getItemInfo(shopSlotVO.type,shopSlotVO.giid);
      }
      
      public function get giid() : Number
      {
         return shopSlotVO.giid;
      }
   }
}

