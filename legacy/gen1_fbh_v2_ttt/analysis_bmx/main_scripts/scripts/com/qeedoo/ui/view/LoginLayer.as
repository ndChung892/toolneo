package com.qeedoo.ui.view
{
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import com.qeedoo.ui.view.comp.UIBase;
   import com.qeedoo.ui.view.compFore.*;
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
   
   public class LoginLayer extends UIBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      public var _LoginLayer_UIPropVO1:UIPropVO;
      
      public var _LoginLayer_UIPropVO2:UIPropVO;
      
      public var _LoginLayer_UIPropVO3:UIPropVO;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":UIBase});
      
      public function LoginLayer()
      {
         super();
         mx_internal::_document = this;
         _LoginLayer_Array1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         LoginLayer._watcherSetupUtil = param1;
      }
      
      private function _LoginLayer_UIPropVO1_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _LoginLayer_UIPropVO1 = _loc1_;
         _loc1_.name = "角色选择界面";
         _loc1_.style = {
            "horizontalCenter":0,
            "verticalCenter":0
         };
         BindingManager.executeBindings(this,"_LoginLayer_UIPropVO1",_LoginLayer_UIPropVO1);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:LoginLayer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _LoginLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_LoginLayerWatcherSetupUtil");
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
      
      private function _LoginLayer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = CharSelectCanvas;
         _loc1_ = ViewManager.FORE_C_C;
         _loc1_ = false;
         _loc1_ = LoginCanvas;
         _loc1_ = ViewManager.FORE_L_R;
         _loc1_ = true;
         _loc1_ = LineSelectCanvas;
         _loc1_ = ViewManager.MAIN_LINE;
         _loc1_ = false;
      }
      
      private function _LoginLayer_UIPropVO3_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _LoginLayer_UIPropVO3 = _loc1_;
         _loc1_.name = "线选择栏";
         _loc1_.style = {
            "horizontalCenter":0,
            "verticalCenter":0
         };
         BindingManager.executeBindings(this,"_LoginLayer_UIPropVO3",_LoginLayer_UIPropVO3);
         return _loc1_;
      }
      
      private function _LoginLayer_Array1_i() : Array
      {
         var _loc1_:Array = [_LoginLayer_UIPropVO1_i(),_LoginLayer_UIPropVO2_i(),_LoginLayer_UIPropVO3_i()];
         uiList = _loc1_;
         return _loc1_;
      }
      
      private function _LoginLayer_UIPropVO2_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _LoginLayer_UIPropVO2 = _loc1_;
         _loc1_.name = "登陆界面";
         _loc1_.style = {
            "horizontalCenter":0,
            "verticalCenter":0
         };
         BindingManager.executeBindings(this,"_LoginLayer_UIPropVO2",_LoginLayer_UIPropVO2);
         return _loc1_;
      }
      
      private function _LoginLayer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return CharSelectCanvas;
         },function(param1:Class):void
         {
            _LoginLayer_UIPropVO1.cls = param1;
         },"_LoginLayer_UIPropVO1.cls");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.FORE_C_C;
         },function(param1:int):void
         {
            _LoginLayer_UIPropVO1.vid = param1;
         },"_LoginLayer_UIPropVO1.vid");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _LoginLayer_UIPropVO1.initVisible = param1;
         },"_LoginLayer_UIPropVO1.initVisible");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return LoginCanvas;
         },function(param1:Class):void
         {
            _LoginLayer_UIPropVO2.cls = param1;
         },"_LoginLayer_UIPropVO2.cls");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.FORE_L_R;
         },function(param1:int):void
         {
            _LoginLayer_UIPropVO2.vid = param1;
         },"_LoginLayer_UIPropVO2.vid");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _LoginLayer_UIPropVO2.initVisible = param1;
         },"_LoginLayer_UIPropVO2.initVisible");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return LineSelectCanvas;
         },function(param1:Class):void
         {
            _LoginLayer_UIPropVO3.cls = param1;
         },"_LoginLayer_UIPropVO3.cls");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_LINE;
         },function(param1:int):void
         {
            _LoginLayer_UIPropVO3.vid = param1;
         },"_LoginLayer_UIPropVO3.vid");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _LoginLayer_UIPropVO3.initVisible = param1;
         },"_LoginLayer_UIPropVO3.initVisible");
         result[8] = binding;
         return result;
      }
   }
}

