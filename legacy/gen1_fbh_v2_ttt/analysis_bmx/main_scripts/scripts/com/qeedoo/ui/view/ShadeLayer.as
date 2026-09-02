package com.qeedoo.ui.view
{
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import com.qeedoo.ui.view.comp.UIBase;
   import com.qeedoo.ui.view.compDragable.*;
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
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ShadeLayer extends UIBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _ShadeLayer_UIPropVO1:UIPropVO;
      
      public var _ShadeLayer_UIPropVO2:UIPropVO;
      
      public var _ShadeLayer_UIPropVO3:UIPropVO;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":UIBase});
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public function ShadeLayer()
      {
         super();
         mx_internal::_document = this;
         _ShadeLayer_Array1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ShadeLayer._watcherSetupUtil = param1;
      }
      
      private function _ShadeLayer_UIPropVO1_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _ShadeLayer_UIPropVO1 = _loc1_;
         _loc1_.name = "PVP竞技场遮罩";
         BindingManager.executeBindings(this,"_ShadeLayer_UIPropVO1",_ShadeLayer_UIPropVO1);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ShadeLayer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ShadeLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_ShadeLayerWatcherSetupUtil");
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
      
      private function _ShadeLayer_UIPropVO3_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _ShadeLayer_UIPropVO3 = _loc1_;
         _loc1_.name = "PVP组队等待面板";
         BindingManager.executeBindings(this,"_ShadeLayer_UIPropVO3",_ShadeLayer_UIPropVO3);
         return _loc1_;
      }
      
      private function _ShadeLayer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = PVPShadePanel;
         _loc1_ = ViewManager.SHADE_PVP;
         _loc1_ = false;
         _loc1_ = PVPRoomListPanel;
         _loc1_ = ViewManager.PANEL_PVP_ROOM_LIST;
         _loc1_ = false;
         _loc1_ = false;
         _loc1_ = PVPGroupPanel;
         _loc1_ = ViewManager.POPU_PVP_WAIT;
         _loc1_ = false;
         _loc1_ = false;
      }
      
      private function _ShadeLayer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return PVPShadePanel;
         },function(param1:Class):void
         {
            _ShadeLayer_UIPropVO1.cls = param1;
         },"_ShadeLayer_UIPropVO1.cls");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.SHADE_PVP;
         },function(param1:int):void
         {
            _ShadeLayer_UIPropVO1.vid = param1;
         },"_ShadeLayer_UIPropVO1.vid");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _ShadeLayer_UIPropVO1.initVisible = param1;
         },"_ShadeLayer_UIPropVO1.initVisible");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return PVPRoomListPanel;
         },function(param1:Class):void
         {
            _ShadeLayer_UIPropVO2.cls = param1;
         },"_ShadeLayer_UIPropVO2.cls");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_PVP_ROOM_LIST;
         },function(param1:int):void
         {
            _ShadeLayer_UIPropVO2.vid = param1;
         },"_ShadeLayer_UIPropVO2.vid");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _ShadeLayer_UIPropVO2.initVisible = param1;
         },"_ShadeLayer_UIPropVO2.initVisible");
         result[5] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _ShadeLayer_UIPropVO2.createLater = param1;
         },"_ShadeLayer_UIPropVO2.createLater");
         result[6] = binding;
         binding = new Binding(this,function():Class
         {
            return PVPGroupPanel;
         },function(param1:Class):void
         {
            _ShadeLayer_UIPropVO3.cls = param1;
         },"_ShadeLayer_UIPropVO3.cls");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_PVP_WAIT;
         },function(param1:int):void
         {
            _ShadeLayer_UIPropVO3.vid = param1;
         },"_ShadeLayer_UIPropVO3.vid");
         result[8] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _ShadeLayer_UIPropVO3.initVisible = param1;
         },"_ShadeLayer_UIPropVO3.initVisible");
         result[9] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _ShadeLayer_UIPropVO3.createLater = param1;
         },"_ShadeLayer_UIPropVO3.createLater");
         result[10] = binding;
         return result;
      }
      
      private function _ShadeLayer_Array1_i() : Array
      {
         var _loc1_:Array = [_ShadeLayer_UIPropVO1_i(),_ShadeLayer_UIPropVO2_i(),_ShadeLayer_UIPropVO3_i()];
         uiList = _loc1_;
         return _loc1_;
      }
      
      private function _ShadeLayer_UIPropVO2_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _ShadeLayer_UIPropVO2 = _loc1_;
         _loc1_.name = "pvp竞技场房间列表";
         _loc1_.prop = {
            "dx":100,
            "dy":80
         };
         BindingManager.executeBindings(this,"_ShadeLayer_UIPropVO2",_ShadeLayer_UIPropVO2);
         return _loc1_;
      }
   }
}

