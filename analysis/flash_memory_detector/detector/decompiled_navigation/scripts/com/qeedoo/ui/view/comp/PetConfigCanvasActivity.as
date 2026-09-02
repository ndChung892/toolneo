package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.PetLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.event.GameEvent;
   import com.qeedoo.ui.view.compDragable.PetFightConfActivity;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class PetConfigCanvasActivity extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _data:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _110879pet:ItemSlotPet;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":60,
               "height":60,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlotPet,
                  "id":"pet",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":0,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"confBtn",
                  "events":{"click":"__confBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "y":36
                     };
                  }
               })]
            };
         }
      });
      
      private var _951080088confBtn:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public function PetConfigCanvasActivity()
      {
         super();
         mx_internal::_document = this;
         this.width = 60;
         this.height = 60;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___PetConfigCanvasActivity_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetConfigCanvasActivity._watcherSetupUtil = param1;
      }
      
      public function __confBtn_click(param1:MouseEvent) : void
      {
         showConfDetailPanel();
      }
      
      public function set pet(param1:ItemSlotPet) : void
      {
         var _loc2_:Object = this._110879pet;
         if(_loc2_ !== param1)
         {
            this._110879pet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet",_loc2_,param1));
         }
      }
      
      public function set conf(param1:Object) : void
      {
         _data = param1;
      }
      
      public function get pid() : Number
      {
         if(pet.slotData)
         {
            return pet.slotData.id;
         }
         return -1;
      }
      
      public function cleanView() : void
      {
         this.pet.clean();
         _data = null;
      }
      
      public function get tid() : Number
      {
         if(pet.slotData)
         {
            return pet.slotData.tid;
         }
         return -1;
      }
      
      private function onPetChange(param1:GameEvent) : void
      {
         var _loc4_:Object = null;
         var _loc2_:PetFightConfActivity = PetFightConfActivity(_core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY));
         var _loc3_:Number = Number(this.id.slice(-1));
         if(pet.slotData)
         {
            if(_loc2_.duplicatedPet(pet.slotData,_loc3_))
            {
               pet.clean();
               _core.sysMidNote(Language.PETFIGHT_PANEL_U[21]);
            }
            else
            {
               _loc2_.clearCacheConfData(pet.slotData.id);
               _data = {
                  "pid":pet.slotData.id,
                  "pos":_loc3_,
                  "cmdList":[],
                  "creatureData":ObjectUtil.copy(pet.slotData.creatureData)
               };
               _data.creatureData.growRate = pet.slotData.growRate;
               _data.creatureData.level = PetLogic.expToLv(pet.slotData.exp);
               _loc2_.saveConfData(_data);
               _core.nextGuide(ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY,"",-1,-1,2);
               _loc4_ = _core.view.getUI(ViewManager.POP_NEW_PLAER_GUIDE);
               if(_loc4_.visible)
               {
                  _loc4_.x += this.x;
               }
            }
         }
      }
      
      public function ___PetConfigCanvasActivity_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function onPetDoubleClick(param1:GameEvent) : void
      {
         var _loc2_:PetFightConfActivity = null;
         if(pet.slotData)
         {
            _loc2_ = PetFightConfActivity(_core.view.getUI(ViewManager.PANEL_PETFIGHT_CONF_ACTIVITY));
            _loc2_.clearCacheConfData(pet.slotData.id);
            pet.clean();
         }
      }
      
      private function _PetConfigCanvasActivity_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PETFIGHT_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            confBtn.label = param1;
         },"confBtn.label");
         result[0] = binding;
         return result;
      }
      
      public function setPet(param1:Number) : void
      {
         var _loc2_:Object = null;
         _loc2_ = _core.data.gameData[GamePredef.TBL_PET][param1];
         if(pet)
         {
            pet.type = GamePredef.TBL_PET;
            pet.giid = param1;
            pet.slotData = _loc2_;
            if(Boolean(!_loc2_ && _core.player) && Boolean(_core.player.petList) && Boolean(_core.player.petList[param1]))
            {
               pet.slotData = _core.player.petList[param1];
            }
         }
      }
      
      private function _PetConfigCanvasActivity_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PETFIGHT_PANEL_U[1];
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetConfigCanvasActivity = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetConfigCanvasActivity_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PetConfigCanvasActivityWatcherSetupUtil");
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
      public function get pet() : ItemSlotPet
      {
         return this._110879pet;
      }
      
      [Bindable(event="propertyChange")]
      public function get confBtn() : BasicGlowButton
      {
         return this._951080088confBtn;
      }
      
      public function hasSetted() : Boolean
      {
         if(Boolean(pet.slotData) && pet.giid > 0)
         {
            return true;
         }
         return false;
      }
      
      public function set confBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._951080088confBtn;
         if(_loc2_ !== param1)
         {
            this._951080088confBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"confBtn",_loc2_,param1));
         }
      }
      
      private function showConfDetailPanel() : void
      {
         var _loc3_:Point = null;
         var _loc1_:AIConfPetArenaActPanel = AIConfPetArenaActPanel(_core.view.getUI(ViewManager.POP_AI_CONFIGURE_ACTIVITY));
         var _loc2_:Number = Number(this.id.slice(-1));
         if(Boolean(_loc1_.visible && _loc1_.confPos == _loc2_ && pet) && Boolean(pet.slotData) && _loc1_.petId == pet.slotData.id)
         {
            _loc1_.visible = false;
         }
         else
         {
            if(pet.slotData)
            {
               _loc3_ = localToGlobal(new Point(confBtn.x,confBtn.y));
               _loc1_.showPanel(_loc2_,pet.slotData.id,this,_data);
               _loc1_.x = Math.max(0,_loc3_.x - _loc1_.width / 2);
               _loc1_.y = Math.max(_loc3_.y - _loc1_.height - 60,0);
            }
            else
            {
               Alert.show(Language.PETFIGHT_PANEL_U[13]);
            }
            _core.nextGuide(ViewManager.POP_AI_CONFIGURE,"",-1);
         }
      }
      
      private function init() : void
      {
         pet.addEventListener(GameEvent.SLOT_GIID_CHANGE,onPetChange);
         pet.addEventListener(Slot.EVENT_SLOT_DCLICK,onPetDoubleClick);
      }
   }
}

