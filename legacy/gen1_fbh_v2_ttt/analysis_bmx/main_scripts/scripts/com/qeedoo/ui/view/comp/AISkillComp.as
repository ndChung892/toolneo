package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.predef.GamePredef;
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
   
   public class AISkillComp extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3675sn:BasicTxtButton;
      
      private var _114597tar:BasicTxtButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _115s:ItemSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":150,
               "height":45,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"s",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":5,
                        "y":6,
                        "movable":false,
                        "acceptable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"sn",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"tar",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":45,
                        "y":23
                     };
                  }
               })]
            };
         }
      });
      
      public function AISkillComp()
      {
         super();
         mx_internal::_document = this;
         this.width = 150;
         this.height = 45;
         this.styleName = "CanvasShopSlot";
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AISkillComp._watcherSetupUtil = param1;
      }
      
      private function _AISkillComp_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_PET_AI;
         },function(param1:int):void
         {
            s.slotType = param1;
         },"s.slotType");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get s() : ItemSlot
      {
         return this._115s;
      }
      
      public function set nm(param1:String) : void
      {
         sn.text = param1;
      }
      
      public function clean() : void
      {
         s.clean();
         sn.text = "";
         tar.text = "";
      }
      
      public function set tar(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._114597tar;
         if(_loc2_ !== param1)
         {
            this._114597tar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tar",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AISkillComp = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AISkillComp_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_AISkillCompWatcherSetupUtil");
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
      
      public function get sk() : Number
      {
         return 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get sn() : BasicTxtButton
      {
         return this._3675sn;
      }
      
      private function _AISkillComp_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Slot.SLOT_PET_AI;
      }
      
      public function set sn(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._3675sn;
         if(_loc2_ !== param1)
         {
            this._3675sn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tar() : BasicTxtButton
      {
         return this._114597tar;
      }
      
      public function set s(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._115s;
         if(_loc2_ !== param1)
         {
            this._115s = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s",_loc2_,param1));
         }
      }
      
      public function set sk(param1:Number) : void
      {
         s.type = GamePredef.TBL_SKILL;
         s.giid = param1;
      }
      
      public function get giid() : Number
      {
         return s.giid;
      }
      
      public function set tarType(param1:String) : void
      {
         tar.text = param1;
      }
   }
}

