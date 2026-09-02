package com.qeedoo.ui.view
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import com.qeedoo.ui.view.comp.UIBase;
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
   import mx.events.FlexEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class UIContainer extends UIBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _UIContainer_UIPropVO1:UIPropVO;
      
      public var _UIContainer_UIPropVO2:UIPropVO;
      
      public var _UIContainer_UIPropVO3:UIPropVO;
      
      public var _UIContainer_UIPropVO4:UIPropVO;
      
      public var _UIContainer_UIPropVO5:UIPropVO;
      
      public var _UIContainer_UIPropVO6:UIPropVO;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":UIBase});
      
      public function UIContainer()
      {
         super();
         mx_internal::_document = this;
         _UIContainer_Array1_i();
         this.addEventListener("creationComplete",___UIContainer_UIBase1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         UIContainer._watcherSetupUtil = param1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:UIContainer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _UIContainer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_UIContainerWatcherSetupUtil");
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
      
      private function _UIContainer_Array1_i() : Array
      {
         var _loc1_:Array = [_UIContainer_UIPropVO1_i(),_UIContainer_UIPropVO2_i(),_UIContainer_UIPropVO3_i(),_UIContainer_UIPropVO4_i(),_UIContainer_UIPropVO5_i(),_UIContainer_UIPropVO6_i()];
         uiList = _loc1_;
         return _loc1_;
      }
      
      private function _UIContainer_UIPropVO1_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _UIContainer_UIPropVO1 = _loc1_;
         _loc1_.type = "遮罩面";
         _loc1_.prop = {
            "x":0,
            "y":0,
            "percentWidth":100,
            "percentHeight":100
         };
         BindingManager.executeBindings(this,"_UIContainer_UIPropVO1",_UIContainer_UIPropVO1);
         return _loc1_;
      }
      
      private function _UIContainer_UIPropVO2_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _UIContainer_UIPropVO2 = _loc1_;
         _loc1_.type = "主界面";
         _loc1_.prop = {
            "x":0,
            "y":0,
            "percentWidth":100,
            "percentHeight":100
         };
         BindingManager.executeBindings(this,"_UIContainer_UIPropVO2",_UIContainer_UIPropVO2);
         return _loc1_;
      }
      
      private function _UIContainer_UIPropVO3_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _UIContainer_UIPropVO3 = _loc1_;
         _loc1_.type = "功能面板";
         _loc1_.prop = {
            "x":0,
            "y":0,
            "percentWidth":100,
            "percentHeight":100
         };
         BindingManager.executeBindings(this,"_UIContainer_UIPropVO3",_UIContainer_UIPropVO3);
         return _loc1_;
      }
      
      private function _UIContainer_UIPropVO4_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _UIContainer_UIPropVO4 = _loc1_;
         _loc1_.type = "登陆界面";
         _loc1_.prop = {
            "x":0,
            "y":0,
            "percentWidth":100,
            "percentHeight":100
         };
         BindingManager.executeBindings(this,"_UIContainer_UIPropVO4",_UIContainer_UIPropVO4);
         return _loc1_;
      }
      
      private function _UIContainer_UIPropVO5_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _UIContainer_UIPropVO5 = _loc1_;
         _loc1_.type = "提示窗口";
         _loc1_.prop = {
            "x":0,
            "y":0,
            "percentWidth":100,
            "percentHeight":100
         };
         BindingManager.executeBindings(this,"_UIContainer_UIPropVO5",_UIContainer_UIPropVO5);
         return _loc1_;
      }
      
      private function _UIContainer_UIPropVO6_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _UIContainer_UIPropVO6 = _loc1_;
         _loc1_.type = "工具提示";
         _loc1_.prop = {
            "x":0,
            "y":0,
            "percentWidth":100,
            "percentHeight":100
         };
         BindingManager.executeBindings(this,"_UIContainer_UIPropVO6",_UIContainer_UIPropVO6);
         return _loc1_;
      }
      
      private function _UIContainer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return ShadeLayer;
         },function(param1:Class):void
         {
            _UIContainer_UIPropVO1.cls = param1;
         },"_UIContainer_UIPropVO1.cls");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.UI_SHADE;
         },function(param1:int):void
         {
            _UIContainer_UIPropVO1.vid = param1;
         },"_UIContainer_UIPropVO1.vid");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _UIContainer_UIPropVO1.initVisible = param1;
         },"_UIContainer_UIPropVO1.initVisible");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return MainLayer;
         },function(param1:Class):void
         {
            _UIContainer_UIPropVO2.cls = param1;
         },"_UIContainer_UIPropVO2.cls");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.UI_MAIN;
         },function(param1:int):void
         {
            _UIContainer_UIPropVO2.vid = param1;
         },"_UIContainer_UIPropVO2.vid");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _UIContainer_UIPropVO2.initVisible = param1;
         },"_UIContainer_UIPropVO2.initVisible");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return PanelLayer;
         },function(param1:Class):void
         {
            _UIContainer_UIPropVO3.cls = param1;
         },"_UIContainer_UIPropVO3.cls");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.UI_PANEL;
         },function(param1:int):void
         {
            _UIContainer_UIPropVO3.vid = param1;
         },"_UIContainer_UIPropVO3.vid");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _UIContainer_UIPropVO3.initVisible = param1;
         },"_UIContainer_UIPropVO3.initVisible");
         result[8] = binding;
         binding = new Binding(this,function():Class
         {
            return LoginLayer;
         },function(param1:Class):void
         {
            _UIContainer_UIPropVO4.cls = param1;
         },"_UIContainer_UIPropVO4.cls");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.UI_LOGIN;
         },function(param1:int):void
         {
            _UIContainer_UIPropVO4.vid = param1;
         },"_UIContainer_UIPropVO4.vid");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _UIContainer_UIPropVO4.initVisible = param1;
         },"_UIContainer_UIPropVO4.initVisible");
         result[11] = binding;
         binding = new Binding(this,function():Class
         {
            return PopupLayer;
         },function(param1:Class):void
         {
            _UIContainer_UIPropVO5.cls = param1;
         },"_UIContainer_UIPropVO5.cls");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.UI_POPUP;
         },function(param1:int):void
         {
            _UIContainer_UIPropVO5.vid = param1;
         },"_UIContainer_UIPropVO5.vid");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _UIContainer_UIPropVO5.initVisible = param1;
         },"_UIContainer_UIPropVO5.initVisible");
         result[14] = binding;
         binding = new Binding(this,function():Class
         {
            return TooltipLayer;
         },function(param1:Class):void
         {
            _UIContainer_UIPropVO6.cls = param1;
         },"_UIContainer_UIPropVO6.cls");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.UI_TOOLTIP;
         },function(param1:int):void
         {
            _UIContainer_UIPropVO6.vid = param1;
         },"_UIContainer_UIPropVO6.vid");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _UIContainer_UIPropVO6.initVisible = param1;
         },"_UIContainer_UIPropVO6.initVisible");
         result[17] = binding;
         return result;
      }
      
      private function addView() : void
      {
         var _loc1_:Core = Core.getInstance();
         _loc1_.view.addUI(ViewManager.UI_CONTAINER,this,true);
      }
      
      private function _UIContainer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = ShadeLayer;
         _loc1_ = ViewManager.UI_SHADE;
         _loc1_ = false;
         _loc1_ = MainLayer;
         _loc1_ = ViewManager.UI_MAIN;
         _loc1_ = false;
         _loc1_ = PanelLayer;
         _loc1_ = ViewManager.UI_PANEL;
         _loc1_ = false;
         _loc1_ = LoginLayer;
         _loc1_ = ViewManager.UI_LOGIN;
         _loc1_ = true;
         _loc1_ = PopupLayer;
         _loc1_ = ViewManager.UI_POPUP;
         _loc1_ = true;
         _loc1_ = TooltipLayer;
         _loc1_ = ViewManager.UI_TOOLTIP;
         _loc1_ = false;
      }
      
      public function ___UIContainer_UIBase1_creationComplete(param1:FlexEvent) : void
      {
         addView();
      }
   }
}

