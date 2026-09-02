package com.qeedoo.ui.view
{
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import com.qeedoo.ui.view.comp.*;
   import com.qeedoo.ui.view.compDragable.*;
   import com.qeedoo.ui.view.compFore.LineSelectCanvas;
   import com.qeedoo.ui.view.compMain.NetEnvSelectCanvas;
   import com.qeedoo.ui.view.compMain.NoticeMsgCanvas;
   import com.qeedoo.ui.view.compMain.PetSoulProductPanel;
   import com.qeedoo.ui.view.compMain.SystemMsgCanvas;
   import com.qeedoo.ui.view.compMain.UIHelp;
   import com.qeedoo.ui.view.compMain.WaitingPanel;
   import com.qeedoo.ui.view.compMain.WorldMap;
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
   
   public class PopupLayer extends UIBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _PopupLayer_UIPropVO1:UIPropVO;
      
      public var _PopupLayer_UIPropVO2:UIPropVO;
      
      public var _PopupLayer_UIPropVO3:UIPropVO;
      
      public var _PopupLayer_UIPropVO4:UIPropVO;
      
      public var _PopupLayer_UIPropVO5:UIPropVO;
      
      public var _PopupLayer_UIPropVO6:UIPropVO;
      
      public var _PopupLayer_UIPropVO7:UIPropVO;
      
      public var _PopupLayer_UIPropVO8:UIPropVO;
      
      public var _PopupLayer_UIPropVO9:UIPropVO;
      
      public var _PopupLayer_UIPropVO10:UIPropVO;
      
      public var _PopupLayer_UIPropVO11:UIPropVO;
      
      public var _PopupLayer_UIPropVO12:UIPropVO;
      
      public var _PopupLayer_UIPropVO13:UIPropVO;
      
      public var _PopupLayer_UIPropVO14:UIPropVO;
      
      public var _PopupLayer_UIPropVO15:UIPropVO;
      
      public var _PopupLayer_UIPropVO16:UIPropVO;
      
      public var _PopupLayer_UIPropVO17:UIPropVO;
      
      public var _PopupLayer_UIPropVO18:UIPropVO;
      
      public var _PopupLayer_UIPropVO19:UIPropVO;
      
      mx_internal var _watchers:Array = [];
      
      public var _PopupLayer_UIPropVO20:UIPropVO;
      
      public var _PopupLayer_UIPropVO21:UIPropVO;
      
      public var _PopupLayer_UIPropVO22:UIPropVO;
      
      public var _PopupLayer_UIPropVO23:UIPropVO;
      
      public var _PopupLayer_UIPropVO24:UIPropVO;
      
      public var _PopupLayer_UIPropVO25:UIPropVO;
      
      public var _PopupLayer_UIPropVO26:UIPropVO;
      
      public var _PopupLayer_UIPropVO27:UIPropVO;
      
      public var _PopupLayer_UIPropVO28:UIPropVO;
      
      public var _PopupLayer_UIPropVO29:UIPropVO;
      
      public var _PopupLayer_UIPropVO30:UIPropVO;
      
      public var _PopupLayer_UIPropVO31:UIPropVO;
      
      public var _PopupLayer_UIPropVO32:UIPropVO;
      
      public var _PopupLayer_UIPropVO33:UIPropVO;
      
      public var _PopupLayer_UIPropVO35:UIPropVO;
      
      public var _PopupLayer_UIPropVO34:UIPropVO;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":UIBase});
      
      public function PopupLayer()
      {
         super();
         mx_internal::_document = this;
         _PopupLayer_Array1_i();
         this.addEventListener("initialize",___PopupLayer_UIBase1_initialize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PopupLayer._watcherSetupUtil = param1;
      }
      
      private function _PopupLayer_UIPropVO4_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO4 = _loc1_;
         _loc1_.name = "星宫推图副本";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO4",_PopupLayer_UIPropVO4);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO8_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO8 = _loc1_;
         _loc1_.name = "线选择栏";
         _loc1_.style = {
            "horizontalCenter":0,
            "verticalCenter":0
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO8",_PopupLayer_UIPropVO8);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO21_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO21 = _loc1_;
         _loc1_.name = "新手指引气泡";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO21",_PopupLayer_UIPropVO21);
         return _loc1_;
      }
      
      private function _PopupLayer_Array1_i() : Array
      {
         var _loc1_:Array = null;
         _loc1_ = [_PopupLayer_UIPropVO1_i(),_PopupLayer_UIPropVO2_i(),_PopupLayer_UIPropVO3_i(),_PopupLayer_UIPropVO4_i(),_PopupLayer_UIPropVO5_i(),_PopupLayer_UIPropVO6_i(),_PopupLayer_UIPropVO7_i(),_PopupLayer_UIPropVO8_i(),_PopupLayer_UIPropVO9_i(),_PopupLayer_UIPropVO10_i(),_PopupLayer_UIPropVO11_i(),_PopupLayer_UIPropVO12_i(),_PopupLayer_UIPropVO13_i(),_PopupLayer_UIPropVO14_i(),_PopupLayer_UIPropVO15_i(),_PopupLayer_UIPropVO16_i(),_PopupLayer_UIPropVO17_i(),_PopupLayer_UIPropVO18_i(),_PopupLayer_UIPropVO19_i(),_PopupLayer_UIPropVO20_i(),_PopupLayer_UIPropVO21_i(),_PopupLayer_UIPropVO22_i(),_PopupLayer_UIPropVO23_i(),_PopupLayer_UIPropVO24_i(),_PopupLayer_UIPropVO25_i(),_PopupLayer_UIPropVO26_i(),_PopupLayer_UIPropVO27_i(),_PopupLayer_UIPropVO28_i(),_PopupLayer_UIPropVO29_i(),_PopupLayer_UIPropVO30_i(),_PopupLayer_UIPropVO31_i(),_PopupLayer_UIPropVO32_i(),_PopupLayer_UIPropVO33_i(),_PopupLayer_UIPropVO34_i(),_PopupLayer_UIPropVO35_i()];
         uiList = _loc1_;
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO25_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO25 = _loc1_;
         _loc1_.name = "宠物大PK配置详情";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO25",_PopupLayer_UIPropVO25);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO29_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO29 = _loc1_;
         _loc1_.name = "更改招募";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO29",_PopupLayer_UIPropVO29);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO32_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO32 = _loc1_;
         _loc1_.name = "猜数字面板";
         _loc1_.style = {
            "horizontalCenter":0,
            "verticalCenter":0
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO32",_PopupLayer_UIPropVO32);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO13_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO13 = _loc1_;
         _loc1_.name = "消费引导框";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO13",_PopupLayer_UIPropVO13);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO17_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO17 = _loc1_;
         _loc1_.name = "聊天设置";
         _loc1_.prop = {
            "dx":250,
            "dy":120
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO17",_PopupLayer_UIPropVO17);
         return _loc1_;
      }
      
      private function _PopupLayer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = NumPanel;
         _loc1_ = ViewManager.PANEL_NUM;
         _loc1_ = false;
         _loc1_ = InputPanel;
         _loc1_ = ViewManager.PANEL_INPUT;
         _loc1_ = false;
         _loc1_ = SystemMsgCanvas;
         _loc1_ = ViewManager.POPU_SYS_MSG;
         _loc1_ = false;
         _loc1_ = StarInstanceMap;
         _loc1_ = ViewManager.POPU_STAR_INSTACE_MAP;
         _loc1_ = false;
         _loc1_ = PetSoulProductPanel;
         _loc1_ = ViewManager.POPU_SOUL_PRODUCT;
         _loc1_ = false;
         _loc1_ = SoulExchangePanel;
         _loc1_ = ViewManager.PANEL_SOUL_EXCHANGE;
         _loc1_ = false;
         _loc1_ = NoticeMsgCanvas;
         _loc1_ = ViewManager.POPU_SYS_NOTE;
         _loc1_ = false;
         _loc1_ = LineSelectCanvas;
         _loc1_ = ViewManager.MAIN_LINE;
         _loc1_ = false;
         _loc1_ = WorldMap;
         _loc1_ = ViewManager.POPU_WORLDMAP;
         _loc1_ = false;
         _loc1_ = UIHelp;
         _loc1_ = ViewManager.POPU_UIHELP;
         _loc1_ = false;
         _loc1_ = WaitingPanel;
         _loc1_ = ViewManager.POPU_WAIT;
         _loc1_ = false;
         _loc1_ = GuidePopPanel;
         _loc1_ = ViewManager.POP_GUIDE;
         _loc1_ = false;
         _loc1_ = ConsumPanel;
         _loc1_ = ViewManager.MAIN_CONSUMP;
         _loc1_ = false;
         _loc1_ = MoneyItemPanel;
         _loc1_ = ViewManager.POPU_MONEYITEM;
         _loc1_ = false;
         _loc1_ = DPassPanel;
         _loc1_ = ViewManager.D_PASS_PANEL;
         _loc1_ = false;
         _loc1_ = NetEnvSelectCanvas;
         _loc1_ = ViewManager.POPU_NET_SELECT;
         _loc1_ = false;
         _loc1_ = ChatConfigPanel;
         _loc1_ = ViewManager.PANEL_CHATCONFIG;
         _loc1_ = false;
         _loc1_ = MarriageSeekingPanel;
         _loc1_ = ViewManager.POP_MARRIAGE_SEEKING;
         _loc1_ = false;
         _loc1_ = GuideAlertPanel;
         _loc1_ = ViewManager.POP_NEW_PLAER_ALERT;
         _loc1_ = false;
         _loc1_ = LocalAlertPanel;
         _loc1_ = ViewManager.POP_LOCAL_ALERT;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GuidePanel;
         _loc1_ = ViewManager.POP_NEW_PLAER_GUIDE;
         _loc1_ = false;
         _loc1_ = SendQxWishPanel;
         _loc1_ = ViewManager.POP_SEND_LOVE;
         _loc1_ = false;
         _loc1_ = SendVDAYWishPanel;
         _loc1_ = ViewManager.POP_SEND_VDAY;
         _loc1_ = false;
         _loc1_ = AIConfPanel;
         _loc1_ = ViewManager.POP_AI_CONFIGURE;
         _loc1_ = false;
         _loc1_ = AIConfPetArenaActPanel;
         _loc1_ = ViewManager.POP_AI_CONFIGURE_ACTIVITY;
         _loc1_ = false;
         _loc1_ = FazendaShop;
         _loc1_ = ViewManager.PANEL_FAZENDA_SHOP;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = FazendaBag;
         _loc1_ = ViewManager.PANEL_FAZENDA_BAG;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = FazendaLogPanel;
         _loc1_ = ViewManager.POP_FAZENDA_LOG;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = GroupRecruitUpdatePanel;
         _loc1_ = ViewManager.PANEL_GROUP_RECRUIT_UPDATE;
         _loc1_ = false;
         _loc1_ = StarBattleReport;
         _loc1_ = ViewManager.POP_STAR_BATTLE_REPORT;
         _loc1_ = TitleCustomPanel;
         _loc1_ = ViewManager.PANEL_TITLE_CUSTOM;
         _loc1_ = false;
         _loc1_ = GuessNumberPanel;
         _loc1_ = ViewManager.PANEL_GUESS_NUMBER;
         _loc1_ = false;
         _loc1_ = PetPVEAIConfPanel;
         _loc1_ = ViewManager.POP_PET_PVE_AI_CONFIGURE;
         _loc1_ = false;
         _loc1_ = MCZDPetAIConfPanel;
         _loc1_ = ViewManager.POP_MCZD_PET_PVE_AI_CONFIGURE;
         _loc1_ = false;
         _loc1_ = MCZDBattleReport;
         _loc1_ = ViewManager.POP_MCZD_BATTLE_REPORT;
      }
      
      private function _PopupLayer_UIPropVO20_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO20 = _loc1_;
         _loc1_.name = "本地存储引导";
         _loc1_.prop = {
            "dx":250,
            "dy":90
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO20",_PopupLayer_UIPropVO20);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO24_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO24 = _loc1_;
         _loc1_.name = "宠物战斗配置详情";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO24",_PopupLayer_UIPropVO24);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO3_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO3 = _loc1_;
         _loc1_.name = "系统信息";
         _loc1_.style = {
            "horizontalCenter":0,
            "top":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO3",_PopupLayer_UIPropVO3);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO28_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO28 = _loc1_;
         _loc1_.name = "庄园事件面板";
         _loc1_.prop = {
            "dx":300,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO28",_PopupLayer_UIPropVO28);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO7_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO7 = _loc1_;
         _loc1_.name = "系统提示";
         _loc1_.style = {
            "horizontalCenter":0,
            "top":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO7",_PopupLayer_UIPropVO7);
         return _loc1_;
      }
      
      private function _PopupLayer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return NumPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO1.cls = param1;
         },"_PopupLayer_UIPropVO1.cls");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_NUM;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO1.vid = param1;
         },"_PopupLayer_UIPropVO1.vid");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO1.initVisible = param1;
         },"_PopupLayer_UIPropVO1.initVisible");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return InputPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO2.cls = param1;
         },"_PopupLayer_UIPropVO2.cls");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_INPUT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO2.vid = param1;
         },"_PopupLayer_UIPropVO2.vid");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO2.initVisible = param1;
         },"_PopupLayer_UIPropVO2.initVisible");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return SystemMsgCanvas;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO3.cls = param1;
         },"_PopupLayer_UIPropVO3.cls");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_SYS_MSG;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO3.vid = param1;
         },"_PopupLayer_UIPropVO3.vid");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO3.initVisible = param1;
         },"_PopupLayer_UIPropVO3.initVisible");
         result[8] = binding;
         binding = new Binding(this,function():Class
         {
            return StarInstanceMap;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO4.cls = param1;
         },"_PopupLayer_UIPropVO4.cls");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_STAR_INSTACE_MAP;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO4.vid = param1;
         },"_PopupLayer_UIPropVO4.vid");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO4.initVisible = param1;
         },"_PopupLayer_UIPropVO4.initVisible");
         result[11] = binding;
         binding = new Binding(this,function():Class
         {
            return PetSoulProductPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO5.cls = param1;
         },"_PopupLayer_UIPropVO5.cls");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_SOUL_PRODUCT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO5.vid = param1;
         },"_PopupLayer_UIPropVO5.vid");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO5.initVisible = param1;
         },"_PopupLayer_UIPropVO5.initVisible");
         result[14] = binding;
         binding = new Binding(this,function():Class
         {
            return SoulExchangePanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO6.cls = param1;
         },"_PopupLayer_UIPropVO6.cls");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_SOUL_EXCHANGE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO6.vid = param1;
         },"_PopupLayer_UIPropVO6.vid");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO6.initVisible = param1;
         },"_PopupLayer_UIPropVO6.initVisible");
         result[17] = binding;
         binding = new Binding(this,function():Class
         {
            return NoticeMsgCanvas;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO7.cls = param1;
         },"_PopupLayer_UIPropVO7.cls");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_SYS_NOTE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO7.vid = param1;
         },"_PopupLayer_UIPropVO7.vid");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO7.initVisible = param1;
         },"_PopupLayer_UIPropVO7.initVisible");
         result[20] = binding;
         binding = new Binding(this,function():Class
         {
            return LineSelectCanvas;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO8.cls = param1;
         },"_PopupLayer_UIPropVO8.cls");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_LINE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO8.vid = param1;
         },"_PopupLayer_UIPropVO8.vid");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO8.initVisible = param1;
         },"_PopupLayer_UIPropVO8.initVisible");
         result[23] = binding;
         binding = new Binding(this,function():Class
         {
            return WorldMap;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO9.cls = param1;
         },"_PopupLayer_UIPropVO9.cls");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_WORLDMAP;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO9.vid = param1;
         },"_PopupLayer_UIPropVO9.vid");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO9.initVisible = param1;
         },"_PopupLayer_UIPropVO9.initVisible");
         result[26] = binding;
         binding = new Binding(this,function():Class
         {
            return UIHelp;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO10.cls = param1;
         },"_PopupLayer_UIPropVO10.cls");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_UIHELP;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO10.vid = param1;
         },"_PopupLayer_UIPropVO10.vid");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO10.initVisible = param1;
         },"_PopupLayer_UIPropVO10.initVisible");
         result[29] = binding;
         binding = new Binding(this,function():Class
         {
            return WaitingPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO11.cls = param1;
         },"_PopupLayer_UIPropVO11.cls");
         result[30] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_WAIT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO11.vid = param1;
         },"_PopupLayer_UIPropVO11.vid");
         result[31] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO11.initVisible = param1;
         },"_PopupLayer_UIPropVO11.initVisible");
         result[32] = binding;
         binding = new Binding(this,function():Class
         {
            return GuidePopPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO12.cls = param1;
         },"_PopupLayer_UIPropVO12.cls");
         result[33] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_GUIDE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO12.vid = param1;
         },"_PopupLayer_UIPropVO12.vid");
         result[34] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO12.initVisible = param1;
         },"_PopupLayer_UIPropVO12.initVisible");
         result[35] = binding;
         binding = new Binding(this,function():Class
         {
            return ConsumPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO13.cls = param1;
         },"_PopupLayer_UIPropVO13.cls");
         result[36] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.MAIN_CONSUMP;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO13.vid = param1;
         },"_PopupLayer_UIPropVO13.vid");
         result[37] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO13.initVisible = param1;
         },"_PopupLayer_UIPropVO13.initVisible");
         result[38] = binding;
         binding = new Binding(this,function():Class
         {
            return MoneyItemPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO14.cls = param1;
         },"_PopupLayer_UIPropVO14.cls");
         result[39] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_MONEYITEM;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO14.vid = param1;
         },"_PopupLayer_UIPropVO14.vid");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO14.initVisible = param1;
         },"_PopupLayer_UIPropVO14.initVisible");
         result[41] = binding;
         binding = new Binding(this,function():Class
         {
            return DPassPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO15.cls = param1;
         },"_PopupLayer_UIPropVO15.cls");
         result[42] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.D_PASS_PANEL;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO15.vid = param1;
         },"_PopupLayer_UIPropVO15.vid");
         result[43] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO15.initVisible = param1;
         },"_PopupLayer_UIPropVO15.initVisible");
         result[44] = binding;
         binding = new Binding(this,function():Class
         {
            return NetEnvSelectCanvas;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO16.cls = param1;
         },"_PopupLayer_UIPropVO16.cls");
         result[45] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POPU_NET_SELECT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO16.vid = param1;
         },"_PopupLayer_UIPropVO16.vid");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO16.initVisible = param1;
         },"_PopupLayer_UIPropVO16.initVisible");
         result[47] = binding;
         binding = new Binding(this,function():Class
         {
            return ChatConfigPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO17.cls = param1;
         },"_PopupLayer_UIPropVO17.cls");
         result[48] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_CHATCONFIG;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO17.vid = param1;
         },"_PopupLayer_UIPropVO17.vid");
         result[49] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO17.initVisible = param1;
         },"_PopupLayer_UIPropVO17.initVisible");
         result[50] = binding;
         binding = new Binding(this,function():Class
         {
            return MarriageSeekingPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO18.cls = param1;
         },"_PopupLayer_UIPropVO18.cls");
         result[51] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_MARRIAGE_SEEKING;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO18.vid = param1;
         },"_PopupLayer_UIPropVO18.vid");
         result[52] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO18.initVisible = param1;
         },"_PopupLayer_UIPropVO18.initVisible");
         result[53] = binding;
         binding = new Binding(this,function():Class
         {
            return GuideAlertPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO19.cls = param1;
         },"_PopupLayer_UIPropVO19.cls");
         result[54] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_NEW_PLAER_ALERT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO19.vid = param1;
         },"_PopupLayer_UIPropVO19.vid");
         result[55] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO19.initVisible = param1;
         },"_PopupLayer_UIPropVO19.initVisible");
         result[56] = binding;
         binding = new Binding(this,function():Class
         {
            return LocalAlertPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO20.cls = param1;
         },"_PopupLayer_UIPropVO20.cls");
         result[57] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_LOCAL_ALERT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO20.vid = param1;
         },"_PopupLayer_UIPropVO20.vid");
         result[58] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO20.initVisible = param1;
         },"_PopupLayer_UIPropVO20.initVisible");
         result[59] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO20.createLater = param1;
         },"_PopupLayer_UIPropVO20.createLater");
         result[60] = binding;
         binding = new Binding(this,function():Class
         {
            return GuidePanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO21.cls = param1;
         },"_PopupLayer_UIPropVO21.cls");
         result[61] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_NEW_PLAER_GUIDE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO21.vid = param1;
         },"_PopupLayer_UIPropVO21.vid");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO21.initVisible = param1;
         },"_PopupLayer_UIPropVO21.initVisible");
         result[63] = binding;
         binding = new Binding(this,function():Class
         {
            return SendQxWishPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO22.cls = param1;
         },"_PopupLayer_UIPropVO22.cls");
         result[64] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_SEND_LOVE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO22.vid = param1;
         },"_PopupLayer_UIPropVO22.vid");
         result[65] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO22.initVisible = param1;
         },"_PopupLayer_UIPropVO22.initVisible");
         result[66] = binding;
         binding = new Binding(this,function():Class
         {
            return SendVDAYWishPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO23.cls = param1;
         },"_PopupLayer_UIPropVO23.cls");
         result[67] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_SEND_VDAY;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO23.vid = param1;
         },"_PopupLayer_UIPropVO23.vid");
         result[68] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO23.initVisible = param1;
         },"_PopupLayer_UIPropVO23.initVisible");
         result[69] = binding;
         binding = new Binding(this,function():Class
         {
            return AIConfPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO24.cls = param1;
         },"_PopupLayer_UIPropVO24.cls");
         result[70] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_AI_CONFIGURE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO24.vid = param1;
         },"_PopupLayer_UIPropVO24.vid");
         result[71] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO24.initVisible = param1;
         },"_PopupLayer_UIPropVO24.initVisible");
         result[72] = binding;
         binding = new Binding(this,function():Class
         {
            return AIConfPetArenaActPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO25.cls = param1;
         },"_PopupLayer_UIPropVO25.cls");
         result[73] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_AI_CONFIGURE_ACTIVITY;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO25.vid = param1;
         },"_PopupLayer_UIPropVO25.vid");
         result[74] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO25.initVisible = param1;
         },"_PopupLayer_UIPropVO25.initVisible");
         result[75] = binding;
         binding = new Binding(this,function():Class
         {
            return FazendaShop;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO26.cls = param1;
         },"_PopupLayer_UIPropVO26.cls");
         result[76] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FAZENDA_SHOP;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO26.vid = param1;
         },"_PopupLayer_UIPropVO26.vid");
         result[77] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO26.initVisible = param1;
         },"_PopupLayer_UIPropVO26.initVisible");
         result[78] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO26.createLater = param1;
         },"_PopupLayer_UIPropVO26.createLater");
         result[79] = binding;
         binding = new Binding(this,function():Class
         {
            return FazendaBag;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO27.cls = param1;
         },"_PopupLayer_UIPropVO27.cls");
         result[80] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_FAZENDA_BAG;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO27.vid = param1;
         },"_PopupLayer_UIPropVO27.vid");
         result[81] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO27.initVisible = param1;
         },"_PopupLayer_UIPropVO27.initVisible");
         result[82] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO27.createLater = param1;
         },"_PopupLayer_UIPropVO27.createLater");
         result[83] = binding;
         binding = new Binding(this,function():Class
         {
            return FazendaLogPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO28.cls = param1;
         },"_PopupLayer_UIPropVO28.cls");
         result[84] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_FAZENDA_LOG;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO28.vid = param1;
         },"_PopupLayer_UIPropVO28.vid");
         result[85] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO28.initVisible = param1;
         },"_PopupLayer_UIPropVO28.initVisible");
         result[86] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO28.createLater = param1;
         },"_PopupLayer_UIPropVO28.createLater");
         result[87] = binding;
         binding = new Binding(this,function():Class
         {
            return GroupRecruitUpdatePanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO29.cls = param1;
         },"_PopupLayer_UIPropVO29.cls");
         result[88] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GROUP_RECRUIT_UPDATE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO29.vid = param1;
         },"_PopupLayer_UIPropVO29.vid");
         result[89] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO29.initVisible = param1;
         },"_PopupLayer_UIPropVO29.initVisible");
         result[90] = binding;
         binding = new Binding(this,function():Class
         {
            return StarBattleReport;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO30.cls = param1;
         },"_PopupLayer_UIPropVO30.cls");
         result[91] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_STAR_BATTLE_REPORT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO30.vid = param1;
         },"_PopupLayer_UIPropVO30.vid");
         result[92] = binding;
         binding = new Binding(this,function():Class
         {
            return TitleCustomPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO31.cls = param1;
         },"_PopupLayer_UIPropVO31.cls");
         result[93] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_TITLE_CUSTOM;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO31.vid = param1;
         },"_PopupLayer_UIPropVO31.vid");
         result[94] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO31.initVisible = param1;
         },"_PopupLayer_UIPropVO31.initVisible");
         result[95] = binding;
         binding = new Binding(this,function():Class
         {
            return GuessNumberPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO32.cls = param1;
         },"_PopupLayer_UIPropVO32.cls");
         result[96] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.PANEL_GUESS_NUMBER;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO32.vid = param1;
         },"_PopupLayer_UIPropVO32.vid");
         result[97] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO32.initVisible = param1;
         },"_PopupLayer_UIPropVO32.initVisible");
         result[98] = binding;
         binding = new Binding(this,function():Class
         {
            return PetPVEAIConfPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO33.cls = param1;
         },"_PopupLayer_UIPropVO33.cls");
         result[99] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_PET_PVE_AI_CONFIGURE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO33.vid = param1;
         },"_PopupLayer_UIPropVO33.vid");
         result[100] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO33.initVisible = param1;
         },"_PopupLayer_UIPropVO33.initVisible");
         result[101] = binding;
         binding = new Binding(this,function():Class
         {
            return MCZDPetAIConfPanel;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO34.cls = param1;
         },"_PopupLayer_UIPropVO34.cls");
         result[102] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_MCZD_PET_PVE_AI_CONFIGURE;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO34.vid = param1;
         },"_PopupLayer_UIPropVO34.vid");
         result[103] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _PopupLayer_UIPropVO34.initVisible = param1;
         },"_PopupLayer_UIPropVO34.initVisible");
         result[104] = binding;
         binding = new Binding(this,function():Class
         {
            return MCZDBattleReport;
         },function(param1:Class):void
         {
            _PopupLayer_UIPropVO35.cls = param1;
         },"_PopupLayer_UIPropVO35.cls");
         result[105] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.POP_MCZD_BATTLE_REPORT;
         },function(param1:int):void
         {
            _PopupLayer_UIPropVO35.vid = param1;
         },"_PopupLayer_UIPropVO35.vid");
         result[106] = binding;
         return result;
      }
      
      private function _PopupLayer_UIPropVO31_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO31 = _loc1_;
         _loc1_.name = "称号自定义面板";
         _loc1_.prop = {
            "dx":330,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO31",_PopupLayer_UIPropVO31);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO12_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO12 = _loc1_;
         _loc1_.name = "新手引导弹出";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO12",_PopupLayer_UIPropVO12);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO35_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO35 = _loc1_;
         _loc1_.name = "萌宠智斗战报面板";
         _loc1_.initVisible = false;
         _loc1_.prop = {
            "dx":330,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO35",_PopupLayer_UIPropVO35);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO16_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO16 = _loc1_;
         _loc1_.name = "网络环境设置";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO16",_PopupLayer_UIPropVO16);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO6_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO6 = _loc1_;
         _loc1_.name = "宠物炼命兑换面板";
         _loc1_.prop = {
            "dx":200,
            "dy":80
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO6",_PopupLayer_UIPropVO6);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO23_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO23 = _loc1_;
         _loc1_.name = "情人节告白";
         _loc1_.prop = {
            "dx":320,
            "dy":240
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO23",_PopupLayer_UIPropVO23);
         return _loc1_;
      }
      
      public function ___PopupLayer_UIBase1_initialize(param1:FlexEvent) : void
      {
         addView();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PopupLayer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PopupLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_PopupLayerWatcherSetupUtil");
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
      
      private function _PopupLayer_UIPropVO2_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO2 = _loc1_;
         _loc1_.name = "输入面板";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO2",_PopupLayer_UIPropVO2);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO27_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO27 = _loc1_;
         _loc1_.name = "庄园背包面板";
         _loc1_.prop = {
            "dx":300,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO27",_PopupLayer_UIPropVO27);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO11_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO11 = _loc1_;
         _loc1_.name = "提示界面";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO11",_PopupLayer_UIPropVO11);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO34_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO34 = _loc1_;
         _loc1_.name = "萌宠智斗ai配置面板";
         _loc1_.style = {
            "horizontalCenter":0,
            "verticalCenter":0
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO34",_PopupLayer_UIPropVO34);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO15_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO15 = _loc1_;
         _loc1_.name = "二级密码面板";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO15",_PopupLayer_UIPropVO15);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO19_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO19 = _loc1_;
         _loc1_.name = "新手指引弹窗";
         _loc1_.prop = {
            "dx":250,
            "dy":90
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO19",_PopupLayer_UIPropVO19);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO30_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO30 = _loc1_;
         _loc1_.name = "战报面板";
         _loc1_.initVisible = false;
         _loc1_.prop = {
            "dx":330,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO30",_PopupLayer_UIPropVO30);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO5_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO5 = _loc1_;
         _loc1_.name = "炼命面板";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO5",_PopupLayer_UIPropVO5);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO22_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO22 = _loc1_;
         _loc1_.name = "告白/许愿";
         _loc1_.prop = {
            "dx":320,
            "dy":240
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO22",_PopupLayer_UIPropVO22);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO1_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO1 = _loc1_;
         _loc1_.name = "购买面板";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO1",_PopupLayer_UIPropVO1);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO26_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO26 = _loc1_;
         _loc1_.name = "庄园商店面板";
         _loc1_.prop = {
            "dx":300,
            "dy":100
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO26",_PopupLayer_UIPropVO26);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO9_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO9 = _loc1_;
         _loc1_.name = "世界地图";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO9",_PopupLayer_UIPropVO9);
         return _loc1_;
      }
      
      private function addView() : void
      {
         var _loc1_:Core = Core.getInstance();
         _loc1_.view.addUI(ViewManager.MENU_POPUP,CustomMenu.createMenu(this,null));
      }
      
      private function _PopupLayer_UIPropVO10_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO10 = _loc1_;
         _loc1_.name = "界面帮助";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO10",_PopupLayer_UIPropVO10);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO33_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO33 = _loc1_;
         _loc1_.name = "雕刻空间ai配置面板";
         _loc1_.style = {
            "horizontalCenter":0,
            "verticalCenter":0
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO33",_PopupLayer_UIPropVO33);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO14_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO14 = _loc1_;
         _loc1_.name = "消费引导框2";
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO14",_PopupLayer_UIPropVO14);
         return _loc1_;
      }
      
      private function _PopupLayer_UIPropVO18_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _PopupLayer_UIPropVO18 = _loc1_;
         _loc1_.name = "发布征婚/求婚信息";
         _loc1_.prop = {
            "dx":250,
            "dy":120
         };
         BindingManager.executeBindings(this,"_PopupLayer_UIPropVO18",_PopupLayer_UIPropVO18);
         return _loc1_;
      }
   }
}

