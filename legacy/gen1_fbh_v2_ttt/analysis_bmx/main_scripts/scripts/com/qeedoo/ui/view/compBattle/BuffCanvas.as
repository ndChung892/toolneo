package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.BuffVO;
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
   import mx.collections.ArrayCollection;
   import mx.containers.HBox;
   import mx.controls.Image;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BuffCanvas extends HBox implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3646rp:Repeater;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _BuffCanvas_Image1:Array;
      
      mx_internal var _bindings:Array = [];
      
      private var _1378119755buffAC:ArrayCollection = new ArrayCollection();
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":HBox,
         "id":"_BuffCanvas_HBox1",
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":Repeater,
               "id":"rp",
               "propertiesFactory":function():Object
               {
                  return {"childDescriptors":[new UIComponentDescriptor({
                     "type":Image,
                     "id":"_BuffCanvas_Image1",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "width":32,
                           "height":32,
                           "scaleContent":true
                        };
                     }
                  })]};
               }
            })]};
         }
      });
      
      public var _BuffCanvas_HBox1:HBox;
      
      public function BuffCanvas()
      {
         super();
         mx_internal::_document = this;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BuffCanvas._watcherSetupUtil = param1;
      }
      
      public function clearBuff() : void
      {
         var _loc1_:Object = null;
         buffAC.removeAll();
         if(_core.view.getUI(ViewManager.STAGE_BATTLE).isAirBattle)
         {
            _loc1_ = new Object();
            _loc1_["id"] = 1590;
            addBuff(_loc1_);
         }
      }
      
      public function set rp(param1:Repeater) : void
      {
         var _loc2_:Object = this._3646rp;
         if(_loc2_ !== param1)
         {
            this._3646rp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rp",_loc2_,param1));
         }
      }
      
      public function updateRound() : void
      {
         var _loc1_:BuffVO = null;
         for each(_loc1_ in buffAC)
         {
            if(_loc1_.roundLeft > 0)
            {
               --_loc1_.roundLeft;
            }
         }
      }
      
      public function hasStateBuff(param1:int) : Boolean
      {
         var _loc2_:BuffVO = null;
         var _loc3_:Object = null;
         for each(_loc2_ in buffAC)
         {
            _loc3_ = _core.data.gameData[GamePredef.TBL_BUFF][_loc2_.id];
            if(Boolean(_loc3_) && Number(_loc3_.state) == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BuffCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BuffCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_BuffCanvasWatcherSetupUtil");
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
      
      public function addBuff(param1:Object) : void
      {
         if(buffAC)
         {
            delBuff(param1.id);
         }
         var _loc2_:BuffVO = new BuffVO();
         var _loc3_:Object = _core.data.gameData[GamePredef.TBL_BUFF][param1.id];
         if(!_loc3_)
         {
            return;
         }
         _loc2_.source = ResManager.getIconUrl(_loc3_.iconCode);
         _loc2_.toolTip = _loc3_.name + Language.BUFFCANVAS_S[0] + _loc3_.level + "\n" + _loc3_.description;
         if(param1.id == 1590)
         {
            _loc2_.hasRoundLimit = false;
         }
         else
         {
            _loc2_.toolTip += Language.BUFFCANVAS_S[1];
         }
         _loc2_.id = param1.id;
         _loc2_.roundLeft = Number(param1.round);
         buffAC.addItem(_loc2_);
      }
      
      public function getCharactorBuff() : ArrayCollection
      {
         return buffAC;
      }
      
      [Bindable(event="propertyChange")]
      public function get rp() : Repeater
      {
         return this._3646rp;
      }
      
      private function _BuffCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return buffAC;
         },function(param1:Object):void
         {
            rp.dataProvider = param1;
         },"rp.dataProvider");
         result[0] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return rp.mx_internal::getItemAt(param2[0]).source;
         },function(param1:Object, param2:Array):void
         {
            _BuffCanvas_Image1[param2[0]].source = param1;
         },"_BuffCanvas_Image1.source");
         result[1] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):String
         {
            var _loc3_:* = rp.mx_internal::getItemAt(param2[0]).toolTip + rp.mx_internal::getItemAt(param2[0]).roundLeft;
            return _loc3_ == undefined ? null : String(_loc3_);
         },function(param1:String, param2:Array):void
         {
            _BuffCanvas_Image1[param2[0]].toolTip = param1;
         },"_BuffCanvas_Image1.toolTip");
         result[2] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      private function get buffAC() : ArrayCollection
      {
         return this._1378119755buffAC;
      }
      
      private function _BuffCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = buffAC;
         _loc1_ = rp.currentItem.source;
         _loc1_ = rp.currentItem.toolTip + rp.currentItem.roundLeft;
      }
      
      private function set buffAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1378119755buffAC;
         if(_loc2_ !== param1)
         {
            this._1378119755buffAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffAC",_loc2_,param1));
         }
      }
      
      public function delBuff(param1:Number) : void
      {
         var _loc2_:BuffVO = null;
         var _loc3_:int = 0;
         for each(_loc2_ in buffAC)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = buffAC.getItemIndex(_loc2_);
               buffAC.removeItemAt(_loc3_);
               break;
            }
         }
         buffAC.refresh();
      }
   }
}

