package com.qeedoo.ui.view
{
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.UIPropVO;
   import com.qeedoo.ui.view.comp.*;
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
   
   public class TooltipLayer extends UIBase implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TooltipLayer_UIPropVO1:UIPropVO;
      
      public var _TooltipLayer_UIPropVO2:UIPropVO;
      
      public var _TooltipLayer_UIPropVO3:UIPropVO;
      
      public var _TooltipLayer_UIPropVO4:UIPropVO;
      
      public var _TooltipLayer_UIPropVO6:UIPropVO;
      
      public var _TooltipLayer_UIPropVO7:UIPropVO;
      
      public var _TooltipLayer_UIPropVO8:UIPropVO;
      
      public var _TooltipLayer_UIPropVO9:UIPropVO;
      
      public var _TooltipLayer_UIPropVO5:UIPropVO;
      
      mx_internal var _watchers:Array = [];
      
      public var _TooltipLayer_UIPropVO10:UIPropVO;
      
      public var _TooltipLayer_UIPropVO11:UIPropVO;
      
      public var _TooltipLayer_UIPropVO12:UIPropVO;
      
      public var _TooltipLayer_UIPropVO13:UIPropVO;
      
      public var _TooltipLayer_UIPropVO14:UIPropVO;
      
      public var _TooltipLayer_UIPropVO15:UIPropVO;
      
      public var _TooltipLayer_UIPropVO16:UIPropVO;
      
      public var _TooltipLayer_UIPropVO17:UIPropVO;
      
      public var _TooltipLayer_UIPropVO18:UIPropVO;
      
      public var _TooltipLayer_UIPropVO19:UIPropVO;
      
      public var _TooltipLayer_UIPropVO20:UIPropVO;
      
      public var _TooltipLayer_UIPropVO21:UIPropVO;
      
      public var _TooltipLayer_UIPropVO22:UIPropVO;
      
      public var _TooltipLayer_UIPropVO23:UIPropVO;
      
      public var _TooltipLayer_UIPropVO24:UIPropVO;
      
      public var _TooltipLayer_UIPropVO25:UIPropVO;
      
      public var _TooltipLayer_UIPropVO26:UIPropVO;
      
      public var _TooltipLayer_UIPropVO27:UIPropVO;
      
      public var _TooltipLayer_UIPropVO28:UIPropVO;
      
      public var _TooltipLayer_UIPropVO29:UIPropVO;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({"type":UIBase});
      
      mx_internal var _bindings:Array = [];
      
      public function TooltipLayer()
      {
         super();
         mx_internal::_document = this;
         _TooltipLayer_Array1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TooltipLayer._watcherSetupUtil = param1;
      }
      
      private function _TooltipLayer_UIPropVO11_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO11 = _loc1_;
         _loc1_.name = "技能升级提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO11",_TooltipLayer_UIPropVO11);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO15_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO15 = _loc1_;
         _loc1_.name = "成就提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO15",_TooltipLayer_UIPropVO15);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO19_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO19 = _loc1_;
         _loc1_.name = "坐骑样式提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO19",_TooltipLayer_UIPropVO19);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO3_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO3 = _loc1_;
         _loc1_.name = "宠物提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO3",_TooltipLayer_UIPropVO3);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO7_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO7 = _loc1_;
         _loc1_.name = "命魂总览";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO7",_TooltipLayer_UIPropVO7);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO22_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO22 = _loc1_;
         _loc1_.name = "装扮图鉴提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO22",_TooltipLayer_UIPropVO22);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO26_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO26 = _loc1_;
         _loc1_.name = "符文碎片提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO26",_TooltipLayer_UIPropVO26);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO10_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO10 = _loc1_;
         _loc1_.name = "物品提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO10",_TooltipLayer_UIPropVO10);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO14_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO14 = _loc1_;
         _loc1_.name = "NPC提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO14",_TooltipLayer_UIPropVO14);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO18_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO18 = _loc1_;
         _loc1_.name = "称号提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO18",_TooltipLayer_UIPropVO18);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO2_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO2 = _loc1_;
         _loc1_.name = "任务提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO2",_TooltipLayer_UIPropVO2);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO6_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO6 = _loc1_;
         _loc1_.name = "炼命提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO6",_TooltipLayer_UIPropVO6);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO21_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO21 = _loc1_;
         _loc1_.name = "天赋样式";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO21",_TooltipLayer_UIPropVO21);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO29_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO29 = _loc1_;
         _loc1_.name = "宠装宝石提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO29",_TooltipLayer_UIPropVO29);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO25_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO25 = _loc1_;
         _loc1_.name = "符文碎片提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO25",_TooltipLayer_UIPropVO25);
         return _loc1_;
      }
      
      private function _TooltipLayer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = TipSkill;
         _loc1_ = ViewManager.TOOLTIP_SKILL;
         _loc1_ = false;
         _loc1_ = TipQuest;
         _loc1_ = ViewManager.TOOLTIP_QUEST;
         _loc1_ = false;
         _loc1_ = TipCre;
         _loc1_ = ViewManager.TOOLTIP_PET;
         _loc1_ = false;
         _loc1_ = TipEquip;
         _loc1_ = ViewManager.TOOLTIP_EQUIP;
         _loc1_ = false;
         _loc1_ = TipWing;
         _loc1_ = ViewManager.TOOLTIP_WING;
         _loc1_ = false;
         _loc1_ = TipSoul;
         _loc1_ = ViewManager.TOOLTIP_PET_SOUL;
         _loc1_ = false;
         _loc1_ = TipSoulAll;
         _loc1_ = ViewManager.TOOLTIP_ALL_SOUL;
         _loc1_ = false;
         _loc1_ = TipBattle;
         _loc1_ = ViewManager.TOOLTIP_BATTLE;
         _loc1_ = false;
         _loc1_ = TipMap;
         _loc1_ = ViewManager.TOOLTIP_MAP;
         _loc1_ = false;
         _loc1_ = TipItem;
         _loc1_ = ViewManager.TOOLTIP_ITEM;
         _loc1_ = false;
         _loc1_ = true;
         _loc1_ = TipReqSkill;
         _loc1_ = ViewManager.TOOLTIP_REQSKILL;
         _loc1_ = false;
         _loc1_ = TipDevSkill;
         _loc1_ = ViewManager.TOOLTIP_DEVSKILL;
         _loc1_ = false;
         _loc1_ = TipBuilding;
         _loc1_ = ViewManager.TOOLTIP_BUILDING;
         _loc1_ = false;
         _loc1_ = TipNpc;
         _loc1_ = ViewManager.TOOLTIP_NPC;
         _loc1_ = false;
         _loc1_ = TipAchieve;
         _loc1_ = ViewManager.TOOLTIP_ACHIEVEMENT;
         _loc1_ = false;
         _loc1_ = TipStarReq;
         _loc1_ = ViewManager.TOOLTIP_REQSTAR;
         _loc1_ = false;
         _loc1_ = TipEvent;
         _loc1_ = ViewManager.TOOLTIP_EVENT;
         _loc1_ = false;
         _loc1_ = TipTitle;
         _loc1_ = ViewManager.TOOLTIP_TITLE;
         _loc1_ = false;
         _loc1_ = TipMount;
         _loc1_ = ViewManager.TOOLTIP_MOUNT;
         _loc1_ = false;
         _loc1_ = TipMedal;
         _loc1_ = ViewManager.TOOLTIP_MEDAL;
         _loc1_ = false;
         _loc1_ = TipTalent;
         _loc1_ = ViewManager.TOOLTIP_TALENT;
         _loc1_ = false;
         _loc1_ = TipRecipe;
         _loc1_ = ViewManager.TOOLTIP_RECIPE;
         _loc1_ = false;
         _loc1_ = TipDecoShow;
         _loc1_ = ViewManager.TOOLTIP_DECO_SHOW;
         _loc1_ = false;
         _loc1_ = TipDecoRune;
         _loc1_ = ViewManager.TOOLTIP_DECO_RUNE;
         _loc1_ = false;
         _loc1_ = TipRuneChip;
         _loc1_ = ViewManager.TOOLTIP_RUNE_CHIP;
         _loc1_ = false;
         _loc1_ = TipMysTreasure;
         _loc1_ = ViewManager.TOOLTIP_MYS_TREASURE;
         _loc1_ = false;
         _loc1_ = TipPRSChip;
         _loc1_ = ViewManager.TOOLTIP_PRS_CHIP;
         _loc1_ = false;
         _loc1_ = TipMonsterHeart;
         _loc1_ = ViewManager.TOOLTIP_MONSTERHEART;
         _loc1_ = false;
         _loc1_ = TipPetStone;
         _loc1_ = ViewManager.TOOLTIP_PET_STONE;
         _loc1_ = false;
      }
      
      private function _TooltipLayer_UIPropVO13_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO13 = _loc1_;
         _loc1_.name = "建筑提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO13",_TooltipLayer_UIPropVO13);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TooltipLayer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TooltipLayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_TooltipLayerWatcherSetupUtil");
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
      
      private function _TooltipLayer_UIPropVO1_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO1 = _loc1_;
         _loc1_.name = "技能提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO1",_TooltipLayer_UIPropVO1);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO5_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO5 = _loc1_;
         _loc1_.name = "翅膀提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO5",_TooltipLayer_UIPropVO5);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO24_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO24 = _loc1_;
         _loc1_.name = "魂器形象提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO24",_TooltipLayer_UIPropVO24);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO9_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO9 = _loc1_;
         _loc1_.name = "地图提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO9",_TooltipLayer_UIPropVO9);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO20_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO20 = _loc1_;
         _loc1_.name = "勋章提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO20",_TooltipLayer_UIPropVO20);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO28_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO28 = _loc1_;
         _loc1_.name = "魔物之心提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO28",_TooltipLayer_UIPropVO28);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO17_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO17 = _loc1_;
         _loc1_.name = "活动提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO17",_TooltipLayer_UIPropVO17);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO12_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO12 = _loc1_;
         _loc1_.name = "技能开发提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO12",_TooltipLayer_UIPropVO12);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO16_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO16 = _loc1_;
         _loc1_.name = "星宫提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO16",_TooltipLayer_UIPropVO16);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO4_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO4 = _loc1_;
         _loc1_.name = "装备提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO4",_TooltipLayer_UIPropVO4);
         return _loc1_;
      }
      
      private function _TooltipLayer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Class
         {
            return TipSkill;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO1.cls = param1;
         },"_TooltipLayer_UIPropVO1.cls");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_SKILL;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO1.vid = param1;
         },"_TooltipLayer_UIPropVO1.vid");
         result[1] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO1.initVisible = param1;
         },"_TooltipLayer_UIPropVO1.initVisible");
         result[2] = binding;
         binding = new Binding(this,function():Class
         {
            return TipQuest;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO2.cls = param1;
         },"_TooltipLayer_UIPropVO2.cls");
         result[3] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_QUEST;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO2.vid = param1;
         },"_TooltipLayer_UIPropVO2.vid");
         result[4] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO2.initVisible = param1;
         },"_TooltipLayer_UIPropVO2.initVisible");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return TipCre;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO3.cls = param1;
         },"_TooltipLayer_UIPropVO3.cls");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_PET;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO3.vid = param1;
         },"_TooltipLayer_UIPropVO3.vid");
         result[7] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO3.initVisible = param1;
         },"_TooltipLayer_UIPropVO3.initVisible");
         result[8] = binding;
         binding = new Binding(this,function():Class
         {
            return TipEquip;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO4.cls = param1;
         },"_TooltipLayer_UIPropVO4.cls");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_EQUIP;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO4.vid = param1;
         },"_TooltipLayer_UIPropVO4.vid");
         result[10] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO4.initVisible = param1;
         },"_TooltipLayer_UIPropVO4.initVisible");
         result[11] = binding;
         binding = new Binding(this,function():Class
         {
            return TipWing;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO5.cls = param1;
         },"_TooltipLayer_UIPropVO5.cls");
         result[12] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_WING;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO5.vid = param1;
         },"_TooltipLayer_UIPropVO5.vid");
         result[13] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO5.initVisible = param1;
         },"_TooltipLayer_UIPropVO5.initVisible");
         result[14] = binding;
         binding = new Binding(this,function():Class
         {
            return TipSoul;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO6.cls = param1;
         },"_TooltipLayer_UIPropVO6.cls");
         result[15] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_PET_SOUL;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO6.vid = param1;
         },"_TooltipLayer_UIPropVO6.vid");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO6.initVisible = param1;
         },"_TooltipLayer_UIPropVO6.initVisible");
         result[17] = binding;
         binding = new Binding(this,function():Class
         {
            return TipSoulAll;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO7.cls = param1;
         },"_TooltipLayer_UIPropVO7.cls");
         result[18] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_ALL_SOUL;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO7.vid = param1;
         },"_TooltipLayer_UIPropVO7.vid");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO7.initVisible = param1;
         },"_TooltipLayer_UIPropVO7.initVisible");
         result[20] = binding;
         binding = new Binding(this,function():Class
         {
            return TipBattle;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO8.cls = param1;
         },"_TooltipLayer_UIPropVO8.cls");
         result[21] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_BATTLE;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO8.vid = param1;
         },"_TooltipLayer_UIPropVO8.vid");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO8.initVisible = param1;
         },"_TooltipLayer_UIPropVO8.initVisible");
         result[23] = binding;
         binding = new Binding(this,function():Class
         {
            return TipMap;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO9.cls = param1;
         },"_TooltipLayer_UIPropVO9.cls");
         result[24] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_MAP;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO9.vid = param1;
         },"_TooltipLayer_UIPropVO9.vid");
         result[25] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO9.initVisible = param1;
         },"_TooltipLayer_UIPropVO9.initVisible");
         result[26] = binding;
         binding = new Binding(this,function():Class
         {
            return TipItem;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO10.cls = param1;
         },"_TooltipLayer_UIPropVO10.cls");
         result[27] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_ITEM;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO10.vid = param1;
         },"_TooltipLayer_UIPropVO10.vid");
         result[28] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO10.initVisible = param1;
         },"_TooltipLayer_UIPropVO10.initVisible");
         result[29] = binding;
         binding = new Binding(this,function():Boolean
         {
            return true;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO10.isLast = param1;
         },"_TooltipLayer_UIPropVO10.isLast");
         result[30] = binding;
         binding = new Binding(this,function():Class
         {
            return TipReqSkill;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO11.cls = param1;
         },"_TooltipLayer_UIPropVO11.cls");
         result[31] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_REQSKILL;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO11.vid = param1;
         },"_TooltipLayer_UIPropVO11.vid");
         result[32] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO11.initVisible = param1;
         },"_TooltipLayer_UIPropVO11.initVisible");
         result[33] = binding;
         binding = new Binding(this,function():Class
         {
            return TipDevSkill;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO12.cls = param1;
         },"_TooltipLayer_UIPropVO12.cls");
         result[34] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_DEVSKILL;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO12.vid = param1;
         },"_TooltipLayer_UIPropVO12.vid");
         result[35] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO12.initVisible = param1;
         },"_TooltipLayer_UIPropVO12.initVisible");
         result[36] = binding;
         binding = new Binding(this,function():Class
         {
            return TipBuilding;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO13.cls = param1;
         },"_TooltipLayer_UIPropVO13.cls");
         result[37] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_BUILDING;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO13.vid = param1;
         },"_TooltipLayer_UIPropVO13.vid");
         result[38] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO13.initVisible = param1;
         },"_TooltipLayer_UIPropVO13.initVisible");
         result[39] = binding;
         binding = new Binding(this,function():Class
         {
            return TipNpc;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO14.cls = param1;
         },"_TooltipLayer_UIPropVO14.cls");
         result[40] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_NPC;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO14.vid = param1;
         },"_TooltipLayer_UIPropVO14.vid");
         result[41] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO14.initVisible = param1;
         },"_TooltipLayer_UIPropVO14.initVisible");
         result[42] = binding;
         binding = new Binding(this,function():Class
         {
            return TipAchieve;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO15.cls = param1;
         },"_TooltipLayer_UIPropVO15.cls");
         result[43] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_ACHIEVEMENT;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO15.vid = param1;
         },"_TooltipLayer_UIPropVO15.vid");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO15.initVisible = param1;
         },"_TooltipLayer_UIPropVO15.initVisible");
         result[45] = binding;
         binding = new Binding(this,function():Class
         {
            return TipStarReq;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO16.cls = param1;
         },"_TooltipLayer_UIPropVO16.cls");
         result[46] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_REQSTAR;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO16.vid = param1;
         },"_TooltipLayer_UIPropVO16.vid");
         result[47] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO16.initVisible = param1;
         },"_TooltipLayer_UIPropVO16.initVisible");
         result[48] = binding;
         binding = new Binding(this,function():Class
         {
            return TipEvent;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO17.cls = param1;
         },"_TooltipLayer_UIPropVO17.cls");
         result[49] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_EVENT;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO17.vid = param1;
         },"_TooltipLayer_UIPropVO17.vid");
         result[50] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO17.initVisible = param1;
         },"_TooltipLayer_UIPropVO17.initVisible");
         result[51] = binding;
         binding = new Binding(this,function():Class
         {
            return TipTitle;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO18.cls = param1;
         },"_TooltipLayer_UIPropVO18.cls");
         result[52] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_TITLE;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO18.vid = param1;
         },"_TooltipLayer_UIPropVO18.vid");
         result[53] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO18.initVisible = param1;
         },"_TooltipLayer_UIPropVO18.initVisible");
         result[54] = binding;
         binding = new Binding(this,function():Class
         {
            return TipMount;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO19.cls = param1;
         },"_TooltipLayer_UIPropVO19.cls");
         result[55] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_MOUNT;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO19.vid = param1;
         },"_TooltipLayer_UIPropVO19.vid");
         result[56] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO19.initVisible = param1;
         },"_TooltipLayer_UIPropVO19.initVisible");
         result[57] = binding;
         binding = new Binding(this,function():Class
         {
            return TipMedal;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO20.cls = param1;
         },"_TooltipLayer_UIPropVO20.cls");
         result[58] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_MEDAL;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO20.vid = param1;
         },"_TooltipLayer_UIPropVO20.vid");
         result[59] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO20.initVisible = param1;
         },"_TooltipLayer_UIPropVO20.initVisible");
         result[60] = binding;
         binding = new Binding(this,function():Class
         {
            return TipTalent;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO21.cls = param1;
         },"_TooltipLayer_UIPropVO21.cls");
         result[61] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_TALENT;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO21.vid = param1;
         },"_TooltipLayer_UIPropVO21.vid");
         result[62] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO21.initVisible = param1;
         },"_TooltipLayer_UIPropVO21.initVisible");
         result[63] = binding;
         binding = new Binding(this,function():Class
         {
            return TipRecipe;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO22.cls = param1;
         },"_TooltipLayer_UIPropVO22.cls");
         result[64] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_RECIPE;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO22.vid = param1;
         },"_TooltipLayer_UIPropVO22.vid");
         result[65] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO22.initVisible = param1;
         },"_TooltipLayer_UIPropVO22.initVisible");
         result[66] = binding;
         binding = new Binding(this,function():Class
         {
            return TipDecoShow;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO23.cls = param1;
         },"_TooltipLayer_UIPropVO23.cls");
         result[67] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_DECO_SHOW;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO23.vid = param1;
         },"_TooltipLayer_UIPropVO23.vid");
         result[68] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO23.initVisible = param1;
         },"_TooltipLayer_UIPropVO23.initVisible");
         result[69] = binding;
         binding = new Binding(this,function():Class
         {
            return TipDecoRune;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO24.cls = param1;
         },"_TooltipLayer_UIPropVO24.cls");
         result[70] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_DECO_RUNE;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO24.vid = param1;
         },"_TooltipLayer_UIPropVO24.vid");
         result[71] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO24.initVisible = param1;
         },"_TooltipLayer_UIPropVO24.initVisible");
         result[72] = binding;
         binding = new Binding(this,function():Class
         {
            return TipRuneChip;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO25.cls = param1;
         },"_TooltipLayer_UIPropVO25.cls");
         result[73] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_RUNE_CHIP;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO25.vid = param1;
         },"_TooltipLayer_UIPropVO25.vid");
         result[74] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO25.initVisible = param1;
         },"_TooltipLayer_UIPropVO25.initVisible");
         result[75] = binding;
         binding = new Binding(this,function():Class
         {
            return TipMysTreasure;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO26.cls = param1;
         },"_TooltipLayer_UIPropVO26.cls");
         result[76] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_MYS_TREASURE;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO26.vid = param1;
         },"_TooltipLayer_UIPropVO26.vid");
         result[77] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO26.initVisible = param1;
         },"_TooltipLayer_UIPropVO26.initVisible");
         result[78] = binding;
         binding = new Binding(this,function():Class
         {
            return TipPRSChip;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO27.cls = param1;
         },"_TooltipLayer_UIPropVO27.cls");
         result[79] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_PRS_CHIP;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO27.vid = param1;
         },"_TooltipLayer_UIPropVO27.vid");
         result[80] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO27.initVisible = param1;
         },"_TooltipLayer_UIPropVO27.initVisible");
         result[81] = binding;
         binding = new Binding(this,function():Class
         {
            return TipMonsterHeart;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO28.cls = param1;
         },"_TooltipLayer_UIPropVO28.cls");
         result[82] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_MONSTERHEART;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO28.vid = param1;
         },"_TooltipLayer_UIPropVO28.vid");
         result[83] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO28.initVisible = param1;
         },"_TooltipLayer_UIPropVO28.initVisible");
         result[84] = binding;
         binding = new Binding(this,function():Class
         {
            return TipPetStone;
         },function(param1:Class):void
         {
            _TooltipLayer_UIPropVO29.cls = param1;
         },"_TooltipLayer_UIPropVO29.cls");
         result[85] = binding;
         binding = new Binding(this,function():int
         {
            return ViewManager.TOOLTIP_PET_STONE;
         },function(param1:int):void
         {
            _TooltipLayer_UIPropVO29.vid = param1;
         },"_TooltipLayer_UIPropVO29.vid");
         result[86] = binding;
         binding = new Binding(this,function():Boolean
         {
            return false;
         },function(param1:Boolean):void
         {
            _TooltipLayer_UIPropVO29.initVisible = param1;
         },"_TooltipLayer_UIPropVO29.initVisible");
         result[87] = binding;
         return result;
      }
      
      private function _TooltipLayer_UIPropVO8_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO8 = _loc1_;
         _loc1_.name = "战斗提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO8",_TooltipLayer_UIPropVO8);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO23_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO23 = _loc1_;
         _loc1_.name = "魂器形象提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO23",_TooltipLayer_UIPropVO23);
         return _loc1_;
      }
      
      private function _TooltipLayer_UIPropVO27_i() : UIPropVO
      {
         var _loc1_:UIPropVO = new UIPropVO();
         _TooltipLayer_UIPropVO27 = _loc1_;
         _loc1_.name = "神谕碎片提示";
         BindingManager.executeBindings(this,"_TooltipLayer_UIPropVO27",_TooltipLayer_UIPropVO27);
         return _loc1_;
      }
      
      private function _TooltipLayer_Array1_i() : Array
      {
         var _loc1_:Array = [_TooltipLayer_UIPropVO1_i(),_TooltipLayer_UIPropVO2_i(),_TooltipLayer_UIPropVO3_i(),_TooltipLayer_UIPropVO4_i(),_TooltipLayer_UIPropVO5_i(),_TooltipLayer_UIPropVO6_i(),_TooltipLayer_UIPropVO7_i(),_TooltipLayer_UIPropVO8_i(),_TooltipLayer_UIPropVO9_i(),_TooltipLayer_UIPropVO10_i(),_TooltipLayer_UIPropVO11_i(),_TooltipLayer_UIPropVO12_i(),_TooltipLayer_UIPropVO13_i(),_TooltipLayer_UIPropVO14_i(),_TooltipLayer_UIPropVO15_i(),_TooltipLayer_UIPropVO16_i(),_TooltipLayer_UIPropVO17_i(),_TooltipLayer_UIPropVO18_i(),_TooltipLayer_UIPropVO19_i(),_TooltipLayer_UIPropVO20_i(),_TooltipLayer_UIPropVO21_i(),_TooltipLayer_UIPropVO22_i(),_TooltipLayer_UIPropVO23_i(),_TooltipLayer_UIPropVO24_i(),_TooltipLayer_UIPropVO25_i(),_TooltipLayer_UIPropVO26_i(),_TooltipLayer_UIPropVO27_i(),_TooltipLayer_UIPropVO28_i(),_TooltipLayer_UIPropVO29_i()];
         uiList = _loc1_;
         return _loc1_;
      }
   }
}

