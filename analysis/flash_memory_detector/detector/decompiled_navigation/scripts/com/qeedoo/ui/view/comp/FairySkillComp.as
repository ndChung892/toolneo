package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.DragSource;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.managers.DragManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairySkillComp extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _109578622sname:Label;
      
      private var skillVO:SkillSlotVO;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      mx_internal var _watchers:Array;
      
      private var _1991153647skillSlot:ItemSlot;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function FairySkillComp()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":Canvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":102,
                  "height":42,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":ItemSlot,
                     "id":"skillSlot",
                     "events":{"click":"__skillSlot_click"},
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "none";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "movable":false,
                           "y":3,
                           "x":6.5
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"sname",
                     "stylesFactory":function():void
                     {
                        this.verticalCenter = "0";
                        this.color = 16777215;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":41,
                           "width":61
                        };
                     }
                  })]
               };
            }
         });
         skillVO = new SkillSlotVO();
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
            this.backgroundAlpha = 0.4;
            this.color = 0;
         };
         this.width = 102;
         this.height = 42;
         this.styleName = "CanvasBorder";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairySkillComp._watcherSetupUtil = param1;
      }
      
      private function _FairySkillComp_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = skillVO.slotData;
         _loc1_ = skillVO.type;
         _loc1_ = skillVO.giid;
         _loc1_ = Slot.SLOT_FAIRY_CONFIG_LEFT;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairySkillComp = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairySkillComp_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FairySkillCompWatcherSetupUtil");
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
      
      public function refresh(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.name) && Boolean(param1.iconCode))
         {
            sname.text = param1.name;
            skillVO.slotData = param1;
            skillVO.giid = param1.id;
         }
         else
         {
            init();
         }
         skillSlot.slotData = skillVO.slotData;
         skillSlot.type = skillVO.type;
         skillSlot.giid = skillVO.giid;
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
      
      public function __skillSlot_click(param1:MouseEvent) : void
      {
         drag(param1);
      }
      
      public function init() : void
      {
         sname.text = "";
         skillVO.type = GamePredef.TBL_SKILL;
         skillVO.giid = -1;
         skillVO.slotData = null;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillSlot() : ItemSlot
      {
         return this._1991153647skillSlot;
      }
      
      private function drag(param1:MouseEvent) : void
      {
         var _loc3_:Image = null;
         var _loc4_:DragSource = null;
         var _loc5_:Image = null;
         if(!skillVO || !skillVO.slotData)
         {
            return;
         }
         var _loc2_:int = int(skillVO.slotData.level);
         _loc3_ = Image(skillSlot.itemIcon);
         _loc4_ = new DragSource();
         _loc4_.addData(_loc3_,"image");
         _loc4_.addData(skillSlot,"slot");
         _loc4_.addData(_loc2_,"level");
         _loc5_ = new Image();
         _loc5_.source = _loc3_.source;
         _loc5_.height = _loc3_.height;
         _loc5_.width = _loc3_.width;
         _loc5_.x = _loc3_.x;
         _loc5_.y = _loc3_.y;
         DragManager.doDrag(_loc3_,_loc4_,param1,_loc5_,0,0,0.5);
      }
      
      private function _FairySkillComp_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return skillVO.slotData;
         },function(param1:Object):void
         {
            skillSlot.slotData = param1;
         },"skillSlot.slotData");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return skillVO.type;
         },function(param1:int):void
         {
            skillSlot.type = param1;
         },"skillSlot.type");
         result[1] = binding;
         binding = new Binding(this,function():Number
         {
            return skillVO.giid;
         },function(param1:Number):void
         {
            skillSlot.giid = param1;
         },"skillSlot.giid");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_FAIRY_CONFIG_LEFT;
         },function(param1:int):void
         {
            skillSlot.slotType = param1;
         },"skillSlot.slotType");
         result[3] = binding;
         return result;
      }
      
      public function set sname(param1:Label) : void
      {
         var _loc2_:Object = this._109578622sname;
         if(_loc2_ !== param1)
         {
            this._109578622sname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sname",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sname() : Label
      {
         return this._109578622sname;
      }
   }
}

