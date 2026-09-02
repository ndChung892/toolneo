package com.qeedoo.ui.view
{
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import com.qeedoo.ui.view.comp.UIBase;
   import com.qeedoo.ui.view.compBattle.PetCmdCanvas;
   import com.qeedoo.ui.view.compBattle.PlayerCmdCanvas;
   import com.qeedoo.ui.view.compDragable.MazeInfoPanel;
   import com.qeedoo.ui.view.compDragable.QuestGuide;
   import com.qeedoo.ui.view.compDragable.SysInfoPanel;
   import com.qeedoo.ui.view.compDragable.TripleTownTurnPanel;
   import com.qeedoo.ui.view.compMain.*;
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
   
   public class MainLayer extends UIBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _MainLayer_UIPropVO10:UIPropVO;
      
      public var _MainLayer_UIPropVO11:UIPropVO;
      
      public var _MainLayer_UIPropVO12:UIPropVO;
      
      public var _MainLayer_UIPropVO14:UIPropVO;
      
      public var _MainLayer_UIPropVO15:UIPropVO;
      
      public var _MainLayer_UIPropVO16:UIPropVO;
      
      public var _MainLayer_UIPropVO17:UIPropVO;
      
      public var _MainLayer_UIPropVO19:UIPropVO;
      
      public var _MainLayer_UIPropVO18:UIPropVO;
      
      public var _MainLayer_UIPropVO13:UIPropVO;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _MainLayer_UIPropVO20:UIPropVO;
      
      public var _MainLayer_UIPropVO21:UIPropVO;
      
      public var _MainLayer_UIPropVO23:UIPropVO;
      
      public var _MainLayer_UIPropVO24:UIPropVO;
      
      public var _MainLayer_UIPropVO25:UIPropVO;
      
      public var _MainLayer_UIPropVO1:UIPropVO;
      
      public var _MainLayer_UIPropVO2:UIPropVO;
      
      public var _MainLayer_UIPropVO22:UIPropVO;
      
      public var _MainLayer_UIPropVO4:UIPropVO;
      
      public var _MainLayer_UIPropVO5:UIPropVO;
      
      public var _MainLayer_UIPropVO6:UIPropVO;
      
      public var _MainLayer_UIPropVO26:UIPropVO;
      
      public var _MainLayer_UIPropVO27:UIPropVO;
      
      public var _MainLayer_UIPropVO28:UIPropVO;
      
      public var _MainLayer_UIPropVO29:UIPropVO;
      
      public var _MainLayer_UIPropVO7:UIPropVO;
      
      public var _MainLayer_UIPropVO8:UIPropVO;
      
      public var _MainLayer_UIPropVO9:UIPropVO;
      
      mx_internal var _bindings:Array = [];
      
      public var _MainLayer_UIPropVO3:UIPropVO;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":UIBase});
      
      public var _MainLayer_UIPropVO30:UIPropVO;
      
      public function MainLayer()
      {
         super();
         mx_internal::_document = this;
         _MainLayer_Array1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MainLayer._watcherSetupUtil = param1;
      }
      
      private function _MainLayer_UIPropVO23_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO23 = _loc1_;
         _loc1_.name = "行动力显示";
         _loc1_.style = {
            "right":60,
            "bottom":140
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO23",_MainLayer_UIPropVO23);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO1_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO1 = _loc1_;
         _loc1_.name = "系统栏";
         _loc1_.style = {
            "right":0,
            "left":0,
            "bottom":0
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO1",_MainLayer_UIPropVO1);
         return _loc1_;
      }
      
      private function _MainLayer_Array1_i() : Array
      {
         var _loc1_:Array = [_MainLayer_UIPropVO1_i(),_MainLayer_UIPropVO2_i(),_MainLayer_UIPropVO3_i(),_MainLayer_UIPropVO4_i(),_MainLayer_UIPropVO5_i(),_MainLayer_UIPropVO6_i(),_MainLayer_UIPropVO7_i(),_MainLayer_UIPropVO8_i(),_MainLayer_UIPropVO9_i(),_MainLayer_UIPropVO10_i(),_MainLayer_UIPropVO11_i(),_MainLayer_UIPropVO12_i(),_MainLayer_UIPropVO13_i(),_MainLayer_UIPropVO14_i(),_MainLayer_UIPropVO15_i(),_MainLayer_UIPropVO16_i(),_MainLayer_UIPropVO17_i(),_MainLayer_UIPropVO18_i(),_MainLayer_UIPropVO19_i(),_MainLayer_UIPropVO20_i(),_MainLayer_UIPropVO21_i(),_MainLayer_UIPropVO22_i(),_MainLayer_UIPropVO23_i(),_MainLayer_UIPropVO24_i(),_MainLayer_UIPropVO25_i(),_MainLayer_UIPropVO26_i(),_MainLayer_UIPropVO27_i(),_MainLayer_UIPropVO28_i(),_MainLayer_UIPropVO29_i(),_MainLayer_UIPropVO30_i()];
         uiList = _loc1_;
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO5_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO5 = _loc1_;
         _loc1_.name = "系统信息";
         _loc1_.style = {
            "left":2,
            "top":280
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO5",_MainLayer_UIPropVO5);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO27_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO27 = _loc1_;
         _loc1_.name = "得到物品效果层";
         _loc1_.style = {
            "right":295,
            "bottom":10
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO27",_MainLayer_UIPropVO27);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO9_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO9 = _loc1_;
         _loc1_.name = "迷你地图";
         _loc1_.style = {
            "right":0,
            "top":0
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO9",_MainLayer_UIPropVO9);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO30_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO30 = _loc1_;
         _loc1_.name = "血战古堡";
         _loc1_.style = {
            "right":0,
            "top":0
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO30",_MainLayer_UIPropVO30);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO11_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO11 = _loc1_;
         _loc1_.name = "提示区";
         _loc1_.style = {
            "right":10,
            "bottom":95
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO11",_MainLayer_UIPropVO11);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO15_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO15 = _loc1_;
         _loc1_.name = "中间提示框";
         _loc1_.style = {};
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO15",_MainLayer_UIPropVO15);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO19_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO19 = _loc1_;
         _loc1_.name = "自动战斗";
         _loc1_.style = {
            "right":50,
            "bottom":100
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO19",_MainLayer_UIPropVO19);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO22_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO22 = _loc1_;
         _loc1_.name = "防沉迷";
         _loc1_.style = {
            "right":70,
            "bottom":90
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO22",_MainLayer_UIPropVO22);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO26_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO26 = _loc1_;
         _loc1_.name = "个人混战积分面板";
         _loc1_.style = {
            "right":50,
            "bottom":150
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO26",_MainLayer_UIPropVO26);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO4_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO4 = _loc1_;
         _loc1_.name = "宠物头像";
         _loc1_.style = {
            "left":2,
            "top":67
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO4",_MainLayer_UIPropVO4);
         return _loc1_;
      }
      
      private function _MainLayer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return SystemBarCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO1.cls = param1;
         },"_MainLayer_UIPropVO1.cls");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_SYS;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO1.vid = param1;
         },"_MainLayer_UIPropVO1.vid");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO1.initVisible = param1;
         },"_MainLayer_UIPropVO1.initVisible");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return UserBarCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO2.cls = param1;
         },"_MainLayer_UIPropVO2.cls");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_USER_BAR;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO2.vid = param1;
         },"_MainLayer_UIPropVO2.vid");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO2.initVisible = param1;
         },"_MainLayer_UIPropVO2.initVisible");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return PortraitCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO3.cls = param1;
         },"_MainLayer_UIPropVO3.cls");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_SELF;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO3.vid = param1;
         },"_MainLayer_UIPropVO3.vid");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO3.initVisible = param1;
         },"_MainLayer_UIPropVO3.initVisible");
         result[8] = binding;
         binding = new Binding(this,function():Class
         {
            return PetCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO4.cls = param1;
         },"_MainLayer_UIPropVO4.cls");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_PET;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO4.vid = param1;
         },"_MainLayer_UIPropVO4.vid");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO4.initVisible = param1;
         },"_MainLayer_UIPropVO4.initVisible");
         result[11] = binding;
         binding = new Binding(this,function():Class
         {
            return SysInfoPanel;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO5.cls = param1;
         },"_MainLayer_UIPropVO5.cls");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_SYSTEM_INFO;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO5.vid = param1;
         },"_MainLayer_UIPropVO5.vid");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO5.initVisible = param1;
         },"_MainLayer_UIPropVO5.initVisible");
         result[14] = binding;
         binding = new Binding(this,function():Class
         {
            return GroupInfoCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO6.cls = param1;
         },"_MainLayer_UIPropVO6.cls");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_GROUP;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO6.vid = param1;
         },"_MainLayer_UIPropVO6.vid");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO6.initVisible = param1;
         },"_MainLayer_UIPropVO6.initVisible");
         result[17] = binding;
         binding = new Binding(this,function():Class
         {
            return LongBuffCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO7.cls = param1;
         },"_MainLayer_UIPropVO7.cls");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_LONGBUFF;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO7.vid = param1;
         },"_MainLayer_UIPropVO7.vid");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO7.initVisible = param1;
         },"_MainLayer_UIPropVO7.initVisible");
         result[20] = binding;
         binding = new Binding(this,function():Class
         {
            return ActivityCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO8.cls = param1;
         },"_MainLayer_UIPropVO8.cls");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_ACTIVITY;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO8.vid = param1;
         },"_MainLayer_UIPropVO8.vid");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO8.initVisible = param1;
         },"_MainLayer_UIPropVO8.initVisible");
         result[23] = binding;
         binding = new Binding(this,function():Class
         {
            return MiniMapCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO9.cls = param1;
         },"_MainLayer_UIPropVO9.cls");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_MINIMAP;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO9.vid = param1;
         },"_MainLayer_UIPropVO9.vid");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO9.initVisible = param1;
         },"_MainLayer_UIPropVO9.initVisible");
         result[26] = binding;
         binding = new Binding(this,function():Class
         {
            return WbRankCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO10.cls = param1;
         },"_MainLayer_UIPropVO10.cls");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.WB_RANK_CANVAS;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO10.vid = param1;
         },"_MainLayer_UIPropVO10.vid");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO10.initVisible = param1;
         },"_MainLayer_UIPropVO10.initVisible");
         result[29] = binding;
         binding = new Binding(this,function():Class
         {
            return WarnCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO11.cls = param1;
         },"_MainLayer_UIPropVO11.cls");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_WARN;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO11.vid = param1;
         },"_MainLayer_UIPropVO11.vid");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO11.initVisible = param1;
         },"_MainLayer_UIPropVO11.initVisible");
         result[32] = binding;
         binding = new Binding(this,function():Class
         {
            return TemporaryBagWarnCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO12.cls = param1;
         },"_MainLayer_UIPropVO12.cls");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_TEMP_BAG_WARN;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO12.vid = param1;
         },"_MainLayer_UIPropVO12.vid");
         result[34] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO12.initVisible = param1;
         },"_MainLayer_UIPropVO12.initVisible");
         result[35] = binding;
         binding = new Binding(this,function():Class
         {
            return AwardWarnCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO13.cls = param1;
         },"_MainLayer_UIPropVO13.cls");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_AWARD_WARN;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO13.vid = param1;
         },"_MainLayer_UIPropVO13.vid");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO13.initVisible = param1;
         },"_MainLayer_UIPropVO13.initVisible");
         result[38] = binding;
         binding = new Binding(this,function():Class
         {
            return TargetCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO14.cls = param1;
         },"_MainLayer_UIPropVO14.cls");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_TARGET;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO14.vid = param1;
         },"_MainLayer_UIPropVO14.vid");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO14.initVisible = param1;
         },"_MainLayer_UIPropVO14.initVisible");
         result[41] = binding;
         binding = new Binding(this,function():Class
         {
            return CenterNoticeCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO15.cls = param1;
         },"_MainLayer_UIPropVO15.cls");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_CNOTICE;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO15.vid = param1;
         },"_MainLayer_UIPropVO15.vid");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO15.initVisible = param1;
         },"_MainLayer_UIPropVO15.initVisible");
         result[44] = binding;
         binding = new Binding(this,function():Class
         {
            return MidWarnCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO16.cls = param1;
         },"_MainLayer_UIPropVO16.cls");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MID_MAIN_WARN;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO16.vid = param1;
         },"_MainLayer_UIPropVO16.vid");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO16.initVisible = param1;
         },"_MainLayer_UIPropVO16.initVisible");
         result[47] = binding;
         binding = new Binding(this,function():Class
         {
            return PlayerCmdCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO17.cls = param1;
         },"_MainLayer_UIPropVO17.cls");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_BATTLE_PLAYER;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO17.vid = param1;
         },"_MainLayer_UIPropVO17.vid");
         result[49] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO17.initVisible = param1;
         },"_MainLayer_UIPropVO17.initVisible");
         result[50] = binding;
         binding = new Binding(this,function():Class
         {
            return PetCmdCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO18.cls = param1;
         },"_MainLayer_UIPropVO18.cls");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_BATTLE_PET;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO18.vid = param1;
         },"_MainLayer_UIPropVO18.vid");
         result[52] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO18.initVisible = param1;
         },"_MainLayer_UIPropVO18.initVisible");
         result[53] = binding;
         binding = new Binding(this,function():Class
         {
            return AutoBattleCanva;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO19.cls = param1;
         },"_MainLayer_UIPropVO19.cls");
         result[54] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_AUTOBATTLE_SET;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO19.vid = param1;
         },"_MainLayer_UIPropVO19.vid");
         result[55] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO19.initVisible = param1;
         },"_MainLayer_UIPropVO19.initVisible");
         result[56] = binding;
         binding = new Binding(this,function():Class
         {
            return WbAutoBattleCanva;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO20.cls = param1;
         },"_MainLayer_UIPropVO20.cls");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_WB_BATTLEAUTO;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO20.vid = param1;
         },"_MainLayer_UIPropVO20.vid");
         result[58] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO20.initVisible = param1;
         },"_MainLayer_UIPropVO20.initVisible");
         result[59] = binding;
         binding = new Binding(this,function():Class
         {
            return QuestGuide;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO21.cls = param1;
         },"_MainLayer_UIPropVO21.cls");
         result[60] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_QUEST_GUIDE;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO21.vid = param1;
         },"_MainLayer_UIPropVO21.vid");
         result[61] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO21.initVisible = param1;
         },"_MainLayer_UIPropVO21.initVisible");
         result[62] = binding;
         binding = new Binding(this,function():Class
         {
            return AntiAddictCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO22.cls = param1;
         },"_MainLayer_UIPropVO22.cls");
         result[63] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_ADDICT_WARN;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO22.vid = param1;
         },"_MainLayer_UIPropVO22.vid");
         result[64] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO22.initVisible = param1;
         },"_MainLayer_UIPropVO22.initVisible");
         result[65] = binding;
         binding = new Binding(this,function():Class
         {
            return GuildwarScoreCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO23.cls = param1;
         },"_MainLayer_UIPropVO23.cls");
         result[66] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_GW_SCORE;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO23.vid = param1;
         },"_MainLayer_UIPropVO23.vid");
         result[67] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO23.initVisible = param1;
         },"_MainLayer_UIPropVO23.initVisible");
         result[68] = binding;
         binding = new Binding(this,function():Class
         {
            return AdventureLayer;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO24.cls = param1;
         },"_MainLayer_UIPropVO24.cls");
         result[69] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_ADVENTURE;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO24.vid = param1;
         },"_MainLayer_UIPropVO24.vid");
         result[70] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO24.initVisible = param1;
         },"_MainLayer_UIPropVO24.initVisible");
         result[71] = binding;
         binding = new Binding(this,function():Class
         {
            return GatherProgressCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO25.cls = param1;
         },"_MainLayer_UIPropVO25.cls");
         result[72] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_GATHER_PROGRESS;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO25.vid = param1;
         },"_MainLayer_UIPropVO25.vid");
         result[73] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO25.initVisible = param1;
         },"_MainLayer_UIPropVO25.initVisible");
         result[74] = binding;
         binding = new Binding(this,function():Class
         {
            return DogFightCanvas;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO26.cls = param1;
         },"_MainLayer_UIPropVO26.cls");
         result[75] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_DOG_FIGHT;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO26.vid = param1;
         },"_MainLayer_UIPropVO26.vid");
         result[76] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO26.initVisible = param1;
         },"_MainLayer_UIPropVO26.initVisible");
         result[77] = binding;
         binding = new Binding(this,function():Class
         {
            return AddItemEffectLayer;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO27.cls = param1;
         },"_MainLayer_UIPropVO27.cls");
         result[78] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_ADD_ITEM_EFFECT;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO27.vid = param1;
         },"_MainLayer_UIPropVO27.vid");
         result[79] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO27.initVisible = param1;
         },"_MainLayer_UIPropVO27.initVisible");
         result[80] = binding;
         binding = new Binding(this,function():Class
         {
            return MazeInfoPanel;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO28.cls = param1;
         },"_MainLayer_UIPropVO28.cls");
         result[81] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_MAZE_INFO;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO28.vid = param1;
         },"_MainLayer_UIPropVO28.vid");
         result[82] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO28.initVisible = param1;
         },"_MainLayer_UIPropVO28.initVisible");
         result[83] = binding;
         binding = new Binding(this,function():Class
         {
            return TripleTownTurnPanel;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO29.cls = param1;
         },"_MainLayer_UIPropVO29.cls");
         result[84] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TRIPLE_TURN;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO29.vid = param1;
         },"_MainLayer_UIPropVO29.vid");
         result[85] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO29.initVisible = param1;
         },"_MainLayer_UIPropVO29.initVisible");
         result[86] = binding;
         binding = new Binding(this,function():Class
         {
            return BloodyBattleInfoPanel;
         },function(param1:Class):void
         {
            _MainLayer_UIPropVO30.cls = param1;
         },"_MainLayer_UIPropVO30.cls");
         result[87] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_BLOODY_BATTLE_INFO;
         },function(param1:int):void
         {
            _MainLayer_UIPropVO30.vid = param1;
         },"_MainLayer_UIPropVO30.vid");
         result[88] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _MainLayer_UIPropVO30.initVisible = param1;
         },"_MainLayer_UIPropVO30.initVisible");
         result[89] = binding;
         return result;
      }
      
      private function _MainLayer_UIPropVO8_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO8 = _loc1_;
         _loc1_.name = "日常活动";
         _loc1_.style = {
            "right":190,
            "top":0
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO8",_MainLayer_UIPropVO8);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO10_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO10 = _loc1_;
         _loc1_.name = "世界BOSS排行榜";
         _loc1_.style = {
            "right":0,
            "top":140
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO10",_MainLayer_UIPropVO10);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO14_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO14 = _loc1_;
         _loc1_.name = "目标头像";
         _loc1_.style = {};
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO14",_MainLayer_UIPropVO14);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO18_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO18 = _loc1_;
         _loc1_.name = "宠物行动";
         _loc1_.style = {
            "right":50,
            "top":218
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO18",_MainLayer_UIPropVO18);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO21_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO21 = _loc1_;
         _loc1_.name = "任务引导";
         _loc1_.prop = {
            "x":650,
            "y":140
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO21",_MainLayer_UIPropVO21);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO25_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO25 = _loc1_;
         _loc1_.name = "采集进度层";
         _loc1_.style = {
            "left":250,
            "top":100
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO25",_MainLayer_UIPropVO25);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO3_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO3 = _loc1_;
         _loc1_.name = "角色头像";
         _loc1_.style = {
            "left":2,
            "top":5
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO3",_MainLayer_UIPropVO3);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO7_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO7 = _loc1_;
         _loc1_.name = "增益栏";
         _loc1_.style = {
            "left":2,
            "top":115
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO7",_MainLayer_UIPropVO7);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO29_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO29 = _loc1_;
         _loc1_.name = "转向信息";
         _loc1_.style = {
            "right":0,
            "top":0
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO29",_MainLayer_UIPropVO29);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MainLayer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MainLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_MainLayerWatcherSetupUtil");
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
      
      private function _MainLayer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = SystemBarCanvas;
         _loc1_ = ViewManager.MAIN_SYS;
         _loc1_ = true;
         _loc1_ = UserBarCanvas;
         _loc1_ = ViewManager.MAIN_USER_BAR;
         _loc1_ = true;
         _loc1_ = PortraitCanvas;
         _loc1_ = ViewManager.MAIN_SELF;
         _loc1_ = true;
         _loc1_ = PetCanvas;
         _loc1_ = ViewManager.MAIN_PET;
         _loc1_ = false;
         _loc1_ = SysInfoPanel;
         _loc1_ = ViewManager.MAIN_SYSTEM_INFO;
         _loc1_ = false;
         _loc1_ = GroupInfoCanvas;
         _loc1_ = ViewManager.MAIN_GROUP;
         _loc1_ = true;
         _loc1_ = LongBuffCanvas;
         _loc1_ = ViewManager.MAIN_LONGBUFF;
         _loc1_ = true;
         _loc1_ = ActivityCanvas;
         _loc1_ = ViewManager.MAIN_ACTIVITY;
         _loc1_ = true;
         _loc1_ = MiniMapCanvas;
         _loc1_ = ViewManager.MAIN_MINIMAP;
         _loc1_ = true;
         _loc1_ = WbRankCanvas;
         _loc1_ = ViewManager.WB_RANK_CANVAS;
         _loc1_ = false;
         _loc1_ = WarnCanvas;
         _loc1_ = ViewManager.MAIN_WARN;
         _loc1_ = true;
         _loc1_ = TemporaryBagWarnCanvas;
         _loc1_ = ViewManager.MAIN_TEMP_BAG_WARN;
         _loc1_ = false;
         _loc1_ = AwardWarnCanvas;
         _loc1_ = ViewManager.MAIN_AWARD_WARN;
         _loc1_ = false;
         _loc1_ = TargetCanvas;
         _loc1_ = ViewManager.MAIN_TARGET;
         _loc1_ = false;
         _loc1_ = CenterNoticeCanvas;
         _loc1_ = ViewManager.MAIN_CNOTICE;
         _loc1_ = false;
         _loc1_ = MidWarnCanvas;
         _loc1_ = ViewManager.MID_MAIN_WARN;
         _loc1_ = true;
         _loc1_ = PlayerCmdCanvas;
         _loc1_ = ViewManager.MAIN_BATTLE_PLAYER;
         _loc1_ = false;
         _loc1_ = PetCmdCanvas;
         _loc1_ = ViewManager.MAIN_BATTLE_PET;
         _loc1_ = false;
         _loc1_ = AutoBattleCanva;
         _loc1_ = ViewManager.MAIN_AUTOBATTLE_SET;
         _loc1_ = false;
         _loc1_ = WbAutoBattleCanva;
         _loc1_ = ViewManager.PANEL_WB_BATTLEAUTO;
         _loc1_ = false;
         _loc1_ = QuestGuide;
         _loc1_ = ViewManager.MAIN_QUEST_GUIDE;
         _loc1_ = true;
         _loc1_ = AntiAddictCanvas;
         _loc1_ = ViewManager.MAIN_ADDICT_WARN;
         _loc1_ = false;
         _loc1_ = GuildwarScoreCanvas;
         _loc1_ = ViewManager.MAIN_GW_SCORE;
         _loc1_ = false;
         _loc1_ = AdventureLayer;
         _loc1_ = ViewManager.MAIN_ADVENTURE;
         _loc1_ = true;
         _loc1_ = GatherProgressCanvas;
         _loc1_ = ViewManager.MAIN_GATHER_PROGRESS;
         _loc1_ = false;
         _loc1_ = DogFightCanvas;
         _loc1_ = ViewManager.MAIN_DOG_FIGHT;
         _loc1_ = false;
         _loc1_ = AddItemEffectLayer;
         _loc1_ = ViewManager.MAIN_ADD_ITEM_EFFECT;
         _loc1_ = false;
         _loc1_ = MazeInfoPanel;
         _loc1_ = ViewManager.PANEL_MAZE_INFO;
         _loc1_ = false;
         _loc1_ = TripleTownTurnPanel;
         _loc1_ = ViewManager.PANEL_TRIPLE_TURN;
         _loc1_ = false;
         _loc1_ = BloodyBattleInfoPanel;
         _loc1_ = ViewManager.PANEL_BLOODY_BATTLE_INFO;
         _loc1_ = false;
      }
      
      private function _MainLayer_UIPropVO13_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO13 = _loc1_;
         _loc1_.name = "奖励提示区";
         _loc1_.style = {
            "right":80,
            "bottom":170
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO13",_MainLayer_UIPropVO13);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO17_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO17 = _loc1_;
         _loc1_.name = "角色行动";
         _loc1_.style = {
            "right":50,
            "top":100
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO17",_MainLayer_UIPropVO17);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO28_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO28 = _loc1_;
         _loc1_.name = "迷阵信息";
         _loc1_.style = {
            "right":0,
            "top":0
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO28",_MainLayer_UIPropVO28);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO6_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO6 = _loc1_;
         _loc1_.name = "队伍栏";
         _loc1_.style = {
            "left":2,
            "top":147
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO6",_MainLayer_UIPropVO6);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO24_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO24 = _loc1_;
         _loc1_.name = "奇遇动画层";
         _loc1_.style = {
            "left":0,
            "top":0
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO24",_MainLayer_UIPropVO24);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO16_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO16 = _loc1_;
         _loc1_.name = "中间提示区";
         _loc1_.style = {};
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO16",_MainLayer_UIPropVO16);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO20_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO20 = _loc1_;
         _loc1_.name = "自动参战";
         _loc1_.style = {
            "right":400,
            "top":100
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO20",_MainLayer_UIPropVO20);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO12_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO12 = _loc1_;
         _loc1_.name = "临时背包提示区";
         _loc1_.style = {
            "horizontalCenter":100,
            "verticalCenter":100
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO12",_MainLayer_UIPropVO12);
         return _loc1_;
      }
      
      private function _MainLayer_UIPropVO2_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _MainLayer_UIPropVO2 = _loc1_;
         _loc1_.name = "用户栏";
         _loc1_.style = {
            "right":0,
            "bottom":44
         };
         BindingManager.executeBindings(this,"_MainLayer_UIPropVO2",_MainLayer_UIPropVO2);
         return _loc1_;
      }
   }
}

