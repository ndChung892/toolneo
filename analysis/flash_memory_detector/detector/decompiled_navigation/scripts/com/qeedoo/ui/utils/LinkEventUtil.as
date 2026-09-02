package com.qeedoo.ui.utils
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.CustomMenu;
   import com.qeedoo.ui.view.comp.TipRecipe;
   import com.qeedoo.ui.view.compDragable.InputPanel;
   import flash.display.Stage;
   import flash.events.TextEvent;
   import flash.net.Responder;
   import flash.system.System;
   import flash.ui.Keyboard;
   import mx.controls.Alert;
   import mx.controls.Menu;
   import mx.core.IUITextField;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.MenuEvent;
   
   use namespace mx_internal;
   
   public class LinkEventUtil
   {
      
      private static var myMenu:Menu;
      
      public function LinkEventUtil()
      {
         super();
      }
      
      public static function linkHandler(param1:TextEvent, param2:Stage) : void
      {
         linkTextHandler(param1.text,param2);
      }
      
      private static function menuHide(param1:MenuEvent) : void
      {
         var _loc2_:Menu = Menu(param1.currentTarget);
         _loc2_.removeEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
         _loc2_.removeEventListener(MenuEvent.MENU_HIDE,menuHide);
      }
      
      public static function linkTextHandler(param1:String, param2:Stage) : void
      {
         var _loc3_:Core = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:* = undefined;
         var _loc10_:Array = null;
         var _loc11_:TipRecipe = null;
         var _loc12_:Number = NaN;
         var _loc13_:Object = null;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:Array = null;
         var _loc17_:Boolean = false;
         var _loc18_:int = 0;
         var _loc19_:Object = null;
         var _loc20_:Object = null;
         var _loc21_:Array = null;
         var _loc22_:* = undefined;
         var _loc23_:* = undefined;
         var _loc24_:String = null;
         var _loc25_:Object = null;
         var _loc26_:* = undefined;
         var _loc27_:* = undefined;
         var _loc28_:* = undefined;
         var _loc29_:* = undefined;
         var _loc30_:* = undefined;
         var _loc31_:* = undefined;
         var _loc32_:int = 0;
         var _loc33_:Object = null;
         var _loc34_:int = 0;
         _loc3_ = Core.getInstance();
         _loc3_.clearTargets();
         _loc4_ = param1.split("|");
         _loc5_ = _loc4_[2];
         for(_loc6_ in _loc4_)
         {
            if(int(_loc6_) > 2)
            {
               _loc5_ += "|" + _loc4_[_loc6_];
            }
         }
         _loc7_ = GamePredef.LINK_TYPE_ARRAY;
         switch(_loc4_[0])
         {
            case "L_" + _loc7_[GamePredef.TBL_ITEM_TEMPLATE]:
               _loc8_ = int(GamePredef.TBL_ITEM_TEMPLATE);
               break;
            case "L_" + _loc7_[GamePredef.TBL_ITEM_INSTANCE]:
               _loc8_ = int(GamePredef.TBL_ITEM_INSTANCE);
               break;
            case "L_" + _loc7_[GamePredef.TBL_EQUIPT_INSTANCE]:
               _loc8_ = int(GamePredef.TBL_EQUIPT_INSTANCE);
               break;
            case "L_" + _loc7_[GamePredef.TBL_EQUIPT_TEMPLATE]:
               _loc8_ = int(GamePredef.TBL_EQUIPT_TEMPLATE);
               break;
            case "L_" + _loc7_[GamePredef.TBL_NPC]:
               _loc8_ = int(GamePredef.TBL_NPC);
               break;
            case "L_" + _loc7_[GamePredef.TBL_CREATURE]:
               _loc8_ = int(GamePredef.TBL_CREATURE);
               break;
            case "L_" + _loc7_[GamePredef.TBL_PET]:
               _loc8_ = int(GamePredef.TBL_PET);
               break;
            case "L_" + _loc7_[GamePredef.TBL_CHARACTOR]:
               _loc8_ = int(GamePredef.TBL_CHARACTOR);
               break;
            case "L_" + _loc7_[GamePredef.TBL_SKILL]:
               _loc8_ = int(GamePredef.TBL_SKILL);
               break;
            case "L_" + _loc7_[GamePredef.TBL_QUEST]:
               _loc8_ = int(GamePredef.TBL_QUEST);
               break;
            case "L_QO":
               _loc8_ = 1004;
               break;
            case "L_" + _loc7_[GamePredef.TBL_POS]:
               _loc8_ = int(GamePredef.TBL_POS);
               break;
            case "L_" + _loc7_[1005]:
               _loc8_ = 1005;
               break;
            case "L_" + _loc7_[1006]:
               _loc8_ = 1006;
               break;
            case "L_" + _loc7_[1007]:
               _loc8_ = int(GamePredef.TBL_MARRIAGE);
               break;
            case "L_" + _loc7_[GamePredef.TBL_ACHIEVEMENT]:
               _loc8_ = int(GamePredef.TBL_ACHIEVEMENT);
               break;
            case "L_" + _loc7_[1008]:
               _loc8_ = 1008;
               break;
            case "L_" + _loc7_[1009]:
               _loc8_ = 1009;
               break;
            case "L_" + _loc7_[GamePredef.TOOLTIP_EVENT]:
               _loc8_ = int(GamePredef.TOOLTIP_EVENT);
               break;
            case "L_" + _loc7_[GamePredef.TOOLTIP_TITLE]:
               _loc8_ = int(GamePredef.TOOLTIP_TITLE);
               break;
            case "L_" + _loc7_[GamePredef.TBL_PET_SOUL]:
               _loc8_ = int(GamePredef.TBL_PET_SOUL);
               break;
            case "L_" + _loc7_[GamePredef.TBL_MEDAL]:
               _loc8_ = int(GamePredef.TBL_MEDAL);
               break;
            case "L_" + _loc7_[GamePredef.TBL_PET_TALENT]:
               _loc8_ = int(GamePredef.TBL_PET_TALENT);
         }
         if(Key.isDown(Keyboard.SHIFT) && Boolean(_loc5_))
         {
            if(_loc5_.indexOf("GM-") == 0)
            {
               _loc5_ = _loc5_.slice(3);
            }
            _loc3_.addLink(_loc8_,_loc4_[1],_loc5_);
            return;
         }
         switch(_loc4_[0])
         {
            case "L_" + _loc7_[GamePredef.TBL_NPC]:
               if(_loc4_.length > 3)
               {
                  _loc16_ = _loc4_[3].split(",");
                  _loc17_ = false;
                  _loc18_ = 0;
                  while(_loc18_ < _loc16_.length)
                  {
                     if(Number(_loc3_.lineInfo.id) + 1 == _loc16_[_loc18_])
                     {
                        _loc17_ = true;
                        break;
                     }
                     _loc18_++;
                  }
                  if(!_loc17_)
                  {
                     Alert.show(Language.DAILYACT_U[15].replace("{line}",_loc4_[3]),"",Alert.YES,null,null);
                     return;
                  }
               }
               _loc9_ = _loc3_.getNpc(Number(_loc4_[1]));
               if(_loc9_)
               {
                  if(_loc9_.nid == 2553)
                  {
                     return;
                  }
                  _loc3_.targetNPC = _loc9_;
                  _loc3_.player.closeTo(_loc9_.posX,_loc9_.posY);
               }
               else
               {
                  _loc19_ = _loc3_.data.getGameData(GamePredef.TBL_NPC,_loc4_[1]);
                  if(_loc19_.nid == 2553)
                  {
                     return;
                  }
                  if(_loc19_)
                  {
                     _loc20_ = _loc3_.data.getGameData(GamePredef.TBL_MAP,_loc19_.posMapId);
                  }
                  if(_loc20_)
                  {
                     transToMap(_loc20_.id);
                  }
                  else
                  {
                     _loc3_.sysMidNote(Language.LINKEVENTUTIL_S[1]);
                  }
               }
               return;
            case "L_" + _loc7_[GamePredef.TBL_POS]:
               if(_loc3_.player.posMapId == _loc4_[1])
               {
                  _loc20_ = _loc3_.data.getGameData(GamePredef.TBL_MAP,_loc4_[1]);
                  _loc21_ = _loc4_[2].split(",");
                  _loc22_ = _loc21_[0] * 10;
                  _loc23_ = _loc21_[1] * 10;
                  if(_loc22_ < 0 || _loc22_ > _loc20_.width)
                  {
                     return;
                  }
                  if(_loc23_ < 0 || _loc23_ > _loc20_.height)
                  {
                     return;
                  }
                  _loc3_.player.closeTo(_loc21_[0] * 10,_loc21_[1] * 10);
               }
               else
               {
                  _loc20_ = _loc3_.data.getGameData(GamePredef.TBL_MAP,_loc4_[1]);
                  _loc24_ = Language.LINKEVENTUTIL_S[0].toString().replace("{color}",GamePredef.MSG_ITEM_COLOR[0]).replace("{map.name}",_loc20_.name);
                  _loc3_.sysMidNote(_loc24_);
               }
               return;
            case "L_" + _loc7_[GamePredef.TBL_CHARACTOR]:
               if(_loc4_[1] < 0)
               {
                  return;
               }
               _loc10_ = [{
                  "label":GamePredef.MENU_WISPER,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.MENU_P2PWISPER,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.MENU_INFO,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.MENU_BAN_CHAT,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.MENU_BAN_CHAT2,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.CHAR_MENU_TRADE,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.CHAR_MENU_INVITE_T,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.CHAR_MENU_APPLY_T,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.MENU_ADDF,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.MENU_ADDB,
                  "id":_loc4_[1],
                  "name":_loc5_
               },{
                  "label":GamePredef.MENU_COPY,
                  "id":_loc4_[1],
                  "name":_loc5_
               }];
               if(myMenu)
               {
                  myMenu.hide();
               }
               myMenu = CustomMenu.createMenu(null,_loc10_);
               myMenu.show(param2.mouseX + 25,param2.mouseY > 370 ? 370 : param2.mouseY);
               myMenu.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
               myMenu.addEventListener(MenuEvent.MENU_HIDE,menuHide);
               return;
               break;
            case "L_" + _loc7_[GamePredef.TBL_MAP]:
               if(_loc4_.length > 3)
               {
                  _loc16_ = _loc4_[3].split(",");
                  _loc17_ = false;
                  _loc18_ = 0;
                  while(_loc18_ < _loc16_.length)
                  {
                     if(Number(_loc3_.lineInfo.id) + 1 == _loc16_[_loc18_])
                     {
                        _loc17_ = true;
                        break;
                     }
                     _loc18_++;
                  }
                  if(!_loc17_)
                  {
                     Alert.show(Language.DAILYACT_U[15].replace("{line}",_loc4_[3]),"",Alert.YES,null,null);
                     return;
                  }
               }
               transToMap(Number(_loc4_[1]));
               return;
            case "L_" + _loc7_[GamePredef.TBL_RECIPE]:
               _loc11_ = _loc3_.view.getUI(ViewManager.TOOLTIP_RECIPE) as TipRecipe;
               _loc11_.recipeId = _loc4_[1];
               _loc11_.show(true);
               return;
            case "L_C":
               _loc3_.view.getUI(ViewManager.MAIN_SYS).selectChannel(_loc4_[1]);
               return;
            case "help":
               _loc3_.view.changeVisible(ViewManager.PANEL_HELP);
               return;
            case "L_P":
               if(_loc3_.view.isVisible(ViewManager.STAGE_BATTLE))
               {
                  return;
               }
               _loc12_ = Number(_loc4_[1]);
               for(_loc6_ in GamePredef.FORBID_OPEN_BY_LINK_EVENT_PANEL)
               {
                  if(_loc12_ == GamePredef.FORBID_OPEN_BY_LINK_EVENT_PANEL[_loc6_])
                  {
                     return;
                  }
               }
               _loc3_.view.changeVisible(_loc12_);
               return;
               break;
            case "GM":
               if(!_loc3_.view.isVisible(ViewManager.PANEL_HELP))
               {
                  _loc3_.view.changeVisible(ViewManager.PANEL_HELP);
               }
               _loc3_.view.getUI(ViewManager.PANEL_HELP).tabBtnClick(3);
               return;
            case "L_QO":
               _loc3_.view.getUI(ViewManager.PANEL_QUESTMANAGER).showQuestById(_loc4_[1]);
               return;
            case "L_ACTIVITY":
               ViewManager.getInstance().changeVisible(ViewManager.PANEL_GAMEINTRO);
               _loc3_.view.getUI(ViewManager.PANEL_GAMEINTRO).autoClickForWordMsg(_loc4_[1]);
               return;
            case "L_HELP":
               _loc3_.view.getUI(ViewManager.PANEL_HELP).changeVisble(_loc4_[1]);
               return;
            case "L_PETFUNC":
               ViewManager.getInstance().changeVisible(ViewManager.PANEL_PETFUNC);
               _loc3_.view.getUI(ViewManager.PANEL_PETFUNC).autoClick(_loc4_[1]);
               return;
            case "L_MARRIAGE":
               ViewManager.getInstance().changeVisible(ViewManager.PANEL_MARRIAGE);
               _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_MARRIAGE);
               return;
            case "L_PETFIGHT":
               _loc3_.remote.call("replayPetFight",null,_loc4_[1]);
               return;
            case "L_PETPVEFIGHT":
               _loc3_.remote.call("replayPetPVEFight",null,_loc4_[1]);
               return;
            case "L_MCZDFIGHT":
               _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_MCZD);
               _loc13_.onMCZDLogPanel(_loc4_[1]);
               return;
            case "L_PFMORE":
               _loc14_ = String(_loc4_[1]).substr(0,_loc4_[1].length - 1);
               _loc10_ = [{
                  "label":GamePredef.MENU_REPLAY,
                  "id":_loc14_
               },{
                  "label":GamePredef.MENU_SAVE_REPLAY,
                  "id":_loc14_
               }];
               if(myMenu)
               {
                  myMenu.hide();
               }
               myMenu = CustomMenu.createMenu(null,_loc10_);
               myMenu.show(param2.mouseX + 25,param2.mouseY > 390 ? 390 : param2.mouseY);
               myMenu.addEventListener(MenuEvent.ITEM_CLICK,menuClickHandler);
               myMenu.addEventListener(MenuEvent.MENU_HIDE,menuHide);
               return;
            case "L_RECRUIT":
               _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
               _loc13_.refreshGroupList();
               _loc13_.show();
               return;
            case "L_OPEN_PANEL":
               if(_loc4_.length > 3)
               {
                  _loc16_ = _loc4_[3].split(",");
                  _loc17_ = false;
                  _loc18_ = 0;
                  while(_loc18_ < _loc16_.length)
                  {
                     if(Number(_loc3_.lineInfo.id) + 1 == _loc16_[_loc18_])
                     {
                        _loc17_ = true;
                        break;
                     }
                     _loc18_++;
                  }
                  if(!_loc17_)
                  {
                     Alert.show(Language.DAILYACT_U[6].replace("{line}",_loc4_[3]),"",Alert.YES,null,null);
                     return;
                  }
               }
               if(_loc4_[1] == 931)
               {
                  _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_BOSS_DAILY);
                  if(_loc13_)
                  {
                     _loc13_.showPanel();
                  }
               }
               else if(_loc4_[1] == 883)
               {
                  if(int(_loc3_.player.level) < 70)
                  {
                     Alert.show(Language.PLAYER_S[4]);
                     return;
                  }
                  _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_ASTROLOGIC);
                  if(_loc13_)
                  {
                     _loc13_.visible = true;
                  }
               }
               else if(_loc4_[1] == 926)
               {
                  _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_DRESS);
                  (_loc13_) && _loc13_.show();
               }
               else if(_loc4_[1] == 941)
               {
                  if(int(_loc3_.player.level) < 50)
                  {
                     Alert.show(Language.PLAYER_S[4]);
                     return;
                  }
                  if(_loc3_.player.decoInfo)
                  {
                     _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_DECORATE);
                     (_loc13_) && _loc13_.show();
                  }
                  else
                  {
                     _loc3_.remote.call("initDecoratePanel",null,_loc3_.cid);
                  }
               }
               else if(_loc4_[1] == 849)
               {
                  if(int(_loc3_.player.level) < 80)
                  {
                     Alert.show(Language.PLAYER_S[4]);
                     return;
                  }
                  _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_CARDGAME);
                  if(_loc13_)
                  {
                     _loc13_.initPanel();
                  }
               }
               else if(_loc4_[1] == 230)
               {
                  if(int(_loc3_.player.level) < 80)
                  {
                     Alert.show(Language.PLAYER_S[4]);
                     return;
                  }
                  _loc3_.view.changeVisible(ViewManager.PANEL_CHARACTOR);
               }
               else if(_loc4_[1] == 979)
               {
                  if(int(_loc3_.player.level) < 80)
                  {
                     Alert.show(Language.PLAYER_S[4]);
                     return;
                  }
                  _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_PET_PVE);
                  if(_loc13_)
                  {
                     _loc13_.showPanel();
                  }
               }
               else if(_loc4_[1] == 993)
               {
                  if(int(_loc3_.player.level) < 60)
                  {
                     Alert.show(Language.PLAYER_S[4]);
                     return;
                  }
                  _loc13_ = _loc3_.view.getUI(ViewManager.PANEL_XIULIAN_PANEL);
                  if(_loc13_)
                  {
                     _loc13_.showPanel();
                  }
               }
               else if(_loc4_[1] == 834)
               {
                  if(int(_loc3_.player.level) < 35)
                  {
                     Alert.show(Language.PLAYER_S[4]);
                     return;
                  }
                  if(Boolean(_loc3_.player.posMapId) && (int(_loc3_.player.mapData.templateId) == 2007 || int(_loc3_.player.mapData.templateId) == 2008 || int(_loc3_.player.mapData.templateId) == 2009))
                  {
                     return;
                  }
                  if(Boolean(_loc3_.wbMapId) && _loc3_.player.posMapId == _loc3_.wbMapId)
                  {
                     return;
                  }
                  _loc25_ = _loc3_.view.getUI(ViewManager.PANEL_PET_ARENA);
                  if(Boolean(_loc25_.initialized) && !_loc25_.first)
                  {
                     if(!_loc25_.visible)
                     {
                        _loc25_.show();
                     }
                     else
                     {
                        _loc25_.hide();
                     }
                  }
                  else
                  {
                     _loc3_.remote.call("getPetArenaData",null,true);
                  }
               }
               else
               {
                  _loc3_.view.show(_loc4_[1]);
               }
               return;
            case "L_ENTER_ACT":
               _loc15_ = TimeUtil.decodeTimeObj(TimeUtil.getTimeStr3(_loc4_[2]));
               if(_loc15_ != Language.DAILYACT_U[3])
               {
                  Alert.show(Language.LINKEVENTUTIL_S[4],"",Alert.YES,null,null);
                  return;
               }
               enterActivityByName(_loc4_[1],_loc4_[3]);
               return;
               break;
            case "L_HB":
               _loc13_ = _loc3_.view.getUI(ViewManager.MAIN_WARN);
               if(_loc13_)
               {
                  _loc26_ = _loc4_[2];
                  if(!_loc26_ || _loc26_ == "")
                  {
                     return;
                  }
                  _loc27_ = _loc4_[2].split("$$");
                  if(_loc27_.length < 3)
                  {
                     return;
                  }
                  _loc28_ = _loc27_[0];
                  _loc29_ = _loc27_[1];
                  _loc30_ = _loc27_[2];
                  _loc31_ = {};
                  _loc31_.v = _loc28_;
                  _loc31_.type = _loc29_;
                  _loc31_.d = _loc30_;
                  _loc13_.openRedEnvelope({
                     "warnType":GamePredef.WARN_TYPE_REDENVELOPE,
                     "data":_loc31_
                  });
               }
               return;
            default:
               ToolTipUtil.showTip = true;
               ToolTipUtil.showBtn = true;
               if(_loc4_[0] == "L_EQT")
               {
                  _loc5_ = _loc4_[2];
                  _loc8_ = int(GamePredef.TBL_EQUIPT_TEMPLATE);
                  _loc32_ = int(_loc4_[1]);
                  _loc33_ = _loc3_.data.gameData[_loc8_][_loc32_];
                  _loc34_ = int(_loc5_.charAt(_loc5_.length - 3));
                  if(_loc33_.kind == GamePredef.ITEM_KIND_MAGICWEAPON && 1 <= _loc34_ && 8 >= _loc34_)
                  {
                     ToolTipUtil.showTooltip(_loc8_,_loc4_[1],_loc34_);
                  }
                  else
                  {
                     ToolTipUtil.showTooltip(_loc8_,_loc4_[1]);
                  }
               }
               else
               {
                  ToolTipUtil.showTooltip(_loc8_,_loc4_[1]);
               }
               return;
         }
      }
      
      public static function enterGuildRobber(param1:int) : void
      {
         var _loc2_:Core = Core.getInstance();
         var _loc3_:int = 1;
         if(Number(_loc2_.lineInfo.id) != _loc3_)
         {
            Alert.show(Language.DAILYACT_U[6].replace("{line}",_loc3_ + 1),"",Alert.YES,null,null);
            return;
         }
         LinkEventUtil.linkTextHandler("L_N|" + param1,null);
      }
      
      private static function _transToMap(param1:int) : void
      {
         var _loc3_:Object = null;
         var _loc2_:Core = Core.getInstance();
         if(param1 == GamePredef.MAP_GUILD_ID)
         {
            _loc3_ = _loc2_.getItemNum(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.ITEM_GUILD_TRANSPORT);
            if(_loc3_.num > 0)
            {
               _loc2_.player.transToGuildMap();
            }
            else
            {
               Alert.show(Language.WORLDMAPICON_S[6]);
            }
         }
         else
         {
            _loc2_.player.mapTrans(param1);
         }
      }
      
      private static function transToMap(param1:int) : void
      {
         var transFunc:Function = null;
         var mapId:int = param1;
         var _core:Core = Core.getInstance();
         if(_core.player.mapData.copyFlag == 3 || _core.player.posMapId > GamePredef.INST_MAP_ID && _core.player.mapData.templateId !== 49)
         {
            transFunc = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _transToMap(mapId);
               }
            };
            Alert.show(Language.LINKEVENTUTIL_S[2],"",Alert.YES | Alert.NO,null,transFunc);
         }
         else
         {
            _transToMap(mapId);
         }
      }
      
      public static function enterWB() : void
      {
         var _loc1_:Core = Core.getInstance();
         var _loc2_:int = 1;
         if(Number(_loc1_.lineInfo.id) != _loc2_)
         {
            Alert.show(Language.DAILYACT_U[6].replace("{line}",_loc2_ + 1),"",Alert.YES,null,null);
            return;
         }
         _loc1_.remote.canEnterWbMap();
      }
      
      private static function menuClickHandler(param1:MenuEvent) : void
      {
         var _core:Core = null;
         var name:String = null;
         var cb:Function = null;
         var inputPanel:InputPanel = null;
         var banPlayerChat:Function = null;
         var event:MenuEvent = param1;
         _core = Core.getInstance();
         if(event.label == GamePredef.MENU_WISPER)
         {
            name = event.item.name;
            if(name.indexOf("GM-") == 0)
            {
               name = name.slice(3);
            }
            _core.view.getUI(ViewManager.MAIN_SYS).wisperChat(name);
         }
         else if(event.label == GamePredef.MENU_P2PWISPER)
         {
            ChatPanelUtil.createChatPanel(event.item.id);
         }
         else if(event.label == GamePredef.MENU_INFO)
         {
            _core.view.getUI(ViewManager.PANEL_CHARACTORINFO).showChaInfo(event.item.id);
         }
         else if(event.label == GamePredef.CHAR_MENU_INVITE_T)
         {
            _core.remote.groupInvite(event.item.id);
         }
         else if(event.label == GamePredef.CHAR_MENU_APPLY_T)
         {
            if(event.item.id == _core.cid)
            {
               return;
            }
            _core.remote.groupRequest(_core.cid,event.item.id);
         }
         else if(event.label == GamePredef.CHAR_MENU_TRADE)
         {
            _core.view.getUI(ViewManager.PANEL_TRADE).newTrade(event.item.id,event.item.name);
         }
         else if(event.label == GamePredef.MENU_ADDF)
         {
            _core.addFriend(event.item.name);
         }
         else if(event.label == GamePredef.MENU_ADDB)
         {
            _core.addBlack(event.item.name);
         }
         else if(event.label == GamePredef.MENU_COPY)
         {
            System.setClipboard(event.item.name);
         }
         else if(event.label == GamePredef.MENU_REPLAY)
         {
            _core.remote.call("replayPetFight",null,event.item.id);
         }
         else if(event.label == GamePredef.MENU_SAVE_REPLAY)
         {
            cb = function(param1:String):void
            {
               var _loc2_:String = "";
               if(param1.length > 0)
               {
                  _loc2_ = param1;
               }
               _core.remote.call("saveReplay",null,_loc2_,event.item.id);
            };
            inputPanel = InputPanel(_core.view.getUI(ViewManager.PANEL_INPUT));
            inputPanel.showInput(Language.PETFIGHT_PANEL_U[15],Language.INPUTPANEL_U[2],cb);
         }
         else if(event.label == GamePredef.MENU_BAN_CHAT)
         {
            if(_core.player.name == event.item.name)
            {
               return;
            }
            banPlayerChat = function(param1:Boolean):void
            {
               var doBanPlayerChat:Function;
               var getDelPass:Function = null;
               var inputPanel:* = undefined;
               var isBanded:Boolean = param1;
               if(isBanded)
               {
                  return;
               }
               doBanPlayerChat = function(param1:uint, param2:String, param3:String):void
               {
                  var id:uint = param1;
                  var name:String = param2;
                  var delPass:String = param3;
                  var str:* = Language.LINKEVENTUTIL_S[3].replace("{name}",name);
                  var func:Function = function(param1:CloseEvent):void
                  {
                     if(Boolean(param1) && param1.detail == Alert.YES)
                     {
                        _core.remote.call("banChatByPlayer",null,id,name,delPass);
                     }
                  };
                  var _alert:Alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
                  var tf:IUITextField = _alert.alertForm.textField;
                  tf.htmlText = Language.LINKEVENTUTIL_S[3].replace("{name}","<font color=\'#ff0000\'>" + name + "</font>");
               };
               if(!_core.delPass)
               {
                  getDelPass = function(param1:String):void
                  {
                     if(param1)
                     {
                        doBanPlayerChat(event.item.id,event.item.name,MD5.hash(param1));
                     }
                  };
                  inputPanel = _core.view.getUI(ViewManager.PANEL_INPUT);
                  if(inputPanel)
                  {
                     inputPanel.showInput(Language.DELETE_BY_PASS[0],Language.PORTRAITCANVAS_U[0],getDelPass);
                  }
               }
               else
               {
                  doBanPlayerChat(event.item.id,event.item.name,_core.delPass);
               }
            };
            _core.remote.call("checkPlayerIsBaned",new Responder(banPlayerChat),event.item.id,event.item.name);
         }
         else if(event.label == GamePredef.MENU_BAN_CHAT2)
         {
            if(_core.player.name == event.item.name)
            {
               return;
            }
            banPlayerChat = function(param1:Boolean):void
            {
               var doBanPlayerChat:Function;
               var getDelPass:Function = null;
               var inputPanel:* = undefined;
               var isBanded:Boolean = param1;
               if(isBanded)
               {
                  return;
               }
               doBanPlayerChat = function(param1:uint, param2:String, param3:String):void
               {
                  var id:uint = param1;
                  var name:String = param2;
                  var delPass:String = param3;
                  var str:* = Language.LINKEVENTUTIL_S[5].replace("{name}",name);
                  var func:Function = function(param1:CloseEvent):void
                  {
                     if(Boolean(param1) && param1.detail == Alert.YES)
                     {
                        _core.remote.call("banChatByPlayer",null,id,name,delPass,12);
                     }
                  };
                  var _alert:Alert = Alert.show(str,"",Alert.YES | Alert.NO,null,func);
                  var tf:IUITextField = _alert.alertForm.textField;
                  tf.htmlText = Language.LINKEVENTUTIL_S[5].replace("{name}","<font color=\'#ff0000\'>" + name + "</font>");
               };
               if(!_core.delPass)
               {
                  getDelPass = function(param1:String):void
                  {
                     if(param1)
                     {
                        doBanPlayerChat(event.item.id,event.item.name,MD5.hash(param1));
                     }
                  };
                  inputPanel = _core.view.getUI(ViewManager.PANEL_INPUT);
                  if(inputPanel)
                  {
                     inputPanel.showInput(Language.DELETE_BY_PASS[0],Language.PORTRAITCANVAS_U[0],getDelPass);
                  }
               }
               else
               {
                  doBanPlayerChat(event.item.id,event.item.name,_core.delPass);
               }
            };
            _core.remote.call("checkPlayerIsBaned",new Responder(banPlayerChat),event.item.id,event.item.name);
         }
      }
      
      public static function enterActivityByName(param1:String, param2:String) : void
      {
         switch(param1)
         {
            case Language.DAILYACT_U[7]:
               enterWB();
               break;
            case Language.DAILYACT_U[8]:
               enterGuildRobber(Number(param2));
         }
      }
   }
}

