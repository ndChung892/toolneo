package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.DragEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GuardSlot extends ItemSlot implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1659966524labelTitle:String = "";
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var sid:Number = 9999;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _20967714labelVisible:Boolean = false;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":ItemSlot,
         "propertiesFactory":function():Object
         {
            return {
               "width":35,
               "height":35,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"labelTal",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":50,
                        "height":21,
                        "x":0,
                        "y":2
                     };
                  }
               })]
            };
         }
      });
      
      private var _1959267317labelTal:Label;
      
      public function GuardSlot()
      {
         super();
         mx_internal::_document = this;
         this.width = 35;
         this.height = 35;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuardSlot._watcherSetupUtil = param1;
      }
      
      public function set labelVisible(param1:Boolean) : void
      {
         var _loc2_:Object = this._20967714labelVisible;
         if(_loc2_ !== param1)
         {
            this._20967714labelVisible = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelVisible",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelTitle() : String
      {
         return this._1659966524labelTitle;
      }
      
      override public function dragDropHandler(param1:DragEvent) : void
      {
         var _loc2_:GuardSlot = null;
         var _loc3_:Object = null;
         if(!acceptObj)
         {
            trace("普通拖放");
            super.dragDropHandler(param1);
         }
         if(param1.dragSource.hasFormat("slot"))
         {
            _loc2_ = param1.dragSource.dataForFormat("slot") as GuardSlot;
            if(_loc2_ == this)
            {
               return;
            }
            switch(slotType)
            {
               case SLOT_GUARD:
                  if(ToolKit.isEqual(_loc2_.type,GamePredef.TBL_PET) && Boolean(_loc2_.slotData))
                  {
                     if(Boolean(_loc2_.slotData.id) && sid != 9999)
                     {
                        _loc3_ = _core.data.getGameData(_loc2_.type,_loc2_.giid);
                        if(!_loc3_)
                        {
                           return;
                        }
                        if(Number(_loc2_.sid) != 9999)
                        {
                           return;
                        }
                        _core.remote.call("movePetToPetGuardSid",null,_loc2_.slotData.id,sid);
                     }
                  }
            }
            return;
         }
      }
      
      public function set labelTitle(param1:String) : void
      {
         var _loc2_:Object = this._1659966524labelTitle;
         if(_loc2_ !== param1)
         {
            this._1659966524labelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelTal() : Label
      {
         return this._1959267317labelTal;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuardSlot = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuardSlot_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_GuardSlotWatcherSetupUtil");
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
      
      private function _GuardSlot_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SLOT_GUARD;
         _loc1_ = labelTitle;
         _loc1_ = labelVisible;
      }
      
      public function set labelTal(param1:Label) : void
      {
         var _loc2_:Object = this._1959267317labelTal;
         if(_loc2_ !== param1)
         {
            this._1959267317labelTal = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelTal",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelVisible() : Boolean
      {
         return this._20967714labelVisible;
      }
      
      private function _GuardSlot_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return SLOT_GUARD;
         },function(param1:int):void
         {
            this.slotType = param1;
         },"this.slotType");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = labelTitle;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            labelTal.text = param1;
         },"labelTal.text");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return labelVisible;
         },function(param1:Boolean):void
         {
            labelTal.visible = param1;
         },"labelTal.visible");
         result[2] = binding;
         return result;
      }
   }
}

