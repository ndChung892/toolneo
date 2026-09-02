package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.ui.ISlot;
   import com.qeedoo.game.vo.SkillSlotVO;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SkillSlot extends SimpleCanvas implements ISlot, IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _SkillSlot_RoundedLabel1:RoundedLabel;
      
      private var _data:Object;
      
      private var _2147321034skillVO:SkillSlotVO = new SkillSlotVO();
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1991153647skillSlot:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      public var _SkillSlot_Currency1:Currency;
      
      public var _SkillSlot_Currency2:Currency;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":230,
               "height":41,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"skillSlot",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":5,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_SkillSlot_RoundedLabel1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":5,
                        "width":104.5,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_SkillSlot_RoundedLabel2",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "right";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":150.65,
                        "y":5,
                        "width":77.350006,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"_SkillSlot_Currency1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":44,
                        "y":20,
                        "width":89.71666,
                        "height":16
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Currency,
                  "id":"_SkillSlot_Currency2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":134.55,
                        "y":20,
                        "width":95.4,
                        "height":16
                     };
                  }
               })]
            };
         }
      });
      
      public var _SkillSlot_RoundedLabel2:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      public function SkillSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 230;
         this.height = 41;
         this.styleName = "SkillUseBar";
         this.doubleClickEnabled = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillSlot._watcherSetupUtil = param1;
      }
      
      public function set skillSlot(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._1991153647skillSlot;
         if(_loc2_ !== param1)
         {
            this._1991153647skillSlot = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillSlot",_loc2_,param1));
         }
      }
      
      public function set stackMax(param1:int) : void
      {
      }
      
      public function restore() : void
      {
         skillSlot.restore();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_SkillSlotWatcherSetupUtil");
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
      
      public function get selected() : Boolean
      {
         return Boolean(filters) && filters.length > 0;
      }
      
      public function set slotData(param1:Object) : void
      {
         _data = param1;
         skillVO.name = param1.name;
         skillVO.cost = param1.price;
         skillVO.point = param1.expSkill;
         skillVO.level = param1.level;
         skillVO.giid = param1.id;
      }
      
      public function set index(param1:int) : void
      {
         skillVO.index = param1;
         _core.view.addSlot(param1,this);
      }
      
      private function dClickHandler(param1:Event) : void
      {
         var _loc2_:Event = new Event(Slot.EVENT_SLOT_DCLICK);
         dispatchEvent(_loc2_);
      }
      
      private function _SkillSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = GamePredef.TBL_SKILL;
         _loc1_ = skillVO.giid;
         _loc1_ = skillVO.name;
         _loc1_ = Language.SKILLSLOT_S[0] + skillVO.level;
         _loc1_ = skillVO.cost;
         _loc1_ = Currency.TYPE_MONEYALL;
         _loc1_ = skillVO.point;
         _loc1_ = Currency.TYPE_POINT;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(param1)
         {
            filters = [GamePredef.FILTER_SHOPSLOT_SELECTED];
         }
         else
         {
            filters = [];
         }
      }
      
      public function get type() : int
      {
         return GamePredef.TBL_SKILL;
      }
      
      public function set stackNum(param1:int) : void
      {
      }
      
      public function get slotData() : Object
      {
         return _data;
      }
      
      public function get stackMax() : int
      {
         return 0;
      }
      
      private function set skillVO(param1:SkillSlotVO) : void
      {
         var _loc2_:Object = this._2147321034skillVO;
         if(_loc2_ !== param1)
         {
            this._2147321034skillVO = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillVO",_loc2_,param1));
         }
      }
      
      public function clean() : void
      {
         skillSlot.clean();
      }
      
      [Bindable(event="propertyChange")]
      private function get skillVO() : SkillSlotVO
      {
         return this._2147321034skillVO;
      }
      
      public function get index() : int
      {
         return skillVO.index;
      }
      
      public function initView() : void
      {
      }
      
      public function reset() : void
      {
         skillSlot.reset();
      }
      
      public function get slotType() : int
      {
         return skillSlot.slotType;
      }
      
      private function _SkillSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_SKILL;
         },function(param1:int):void
         {
            skillSlot.type = param1;
         },"skillSlot.type");
         result[0] = binding;
         binding = new Binding(this,function():Number
         {
            return skillVO.giid;
         },function(param1:Number):void
         {
            skillSlot.giid = param1;
         },"skillSlot.giid");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = skillVO.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SkillSlot_RoundedLabel1.text = param1;
         },"_SkillSlot_RoundedLabel1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLSLOT_S[0] + skillVO.level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SkillSlot_RoundedLabel2.text = param1;
         },"_SkillSlot_RoundedLabel2.text");
         result[3] = binding;
         binding = new Binding(this,function():Number
         {
            return skillVO.cost;
         },function(param1:Number):void
         {
            _SkillSlot_Currency1.value = param1;
         },"_SkillSlot_Currency1.value");
         result[4] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_MONEYALL;
         },function(param1:uint):void
         {
            _SkillSlot_Currency1.type = param1;
         },"_SkillSlot_Currency1.type");
         result[5] = binding;
         binding = new Binding(this,function():Number
         {
            return skillVO.point;
         },function(param1:Number):void
         {
            _SkillSlot_Currency2.value = param1;
         },"_SkillSlot_Currency2.value");
         result[6] = binding;
         binding = new Binding(this,function():uint
         {
            return Currency.TYPE_POINT;
         },function(param1:uint):void
         {
            _SkillSlot_Currency2.type = param1;
         },"_SkillSlot_Currency2.type");
         result[7] = binding;
         return result;
      }
      
      public function update() : void
      {
         skillSlot.update();
      }
      
      public function get stackNum() : int
      {
         return 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot() : ItemSlot
      {
         return this._1991153647skillSlot;
      }
      
      public function set type(param1:int) : void
      {
         skillVO.type = param1;
      }
      
      public function set giid(param1:Number) : void
      {
         skillVO.giid = param1;
      }
      
      public function get giid() : Number
      {
         return skillVO.giid;
      }
   }
}

