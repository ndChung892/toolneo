package com.qeedoo.ui.utils
{
   import com.qeedoo.game.config.Debug;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.local.LocalStorage;
   import com.qeedoo.ui.view.compGameStage.BattleCreatureView;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.TimerEvent;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.ui.Keyboard;
   import flash.utils.Timer;
   import mx.controls.Alert;
   import mx.controls.TextArea;
   import mx.controls.TextInput;
   import mx.core.Application;
   import mx.events.CloseEvent;
   
   public class Key
   {
      
      private static var _timer:Timer;
      
      private static var _core:Core;
      
      private static var initialized:Boolean = false;
      
      private static var keysDown:Object = new Object();
      
      private static var _keyEventsRemoved:Boolean = false;
      
      public function Key()
      {
         super();
      }
      
      private static function clearKeys(param1:Event) : void
      {
         keysDown = new Object();
      }
      
      private static function keyPressed(param1:KeyboardEvent) : void
      {
         keysDown[param1.keyCode] = true;
         globalKey(param1);
      }
      
      private static function hotKeyCtrlShift(param1:uint) : void
      {
         switch(param1)
         {
            case Keyboard.LEFT:
               hideGame();
         }
      }
      
      private static function globalKey(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.UP)
         {
            hideGame();
            return;
         }
         if(!_core || !_core.ready || _core.player.isDead && !_core.player.inBattle)
         {
            return;
         }
         var _loc2_:Object = Application.application.getFocus();
         if((Boolean(_loc2_ is TextArea || _loc2_ is TextInput)) && Boolean(_loc2_.editable) || _loc2_ is TextField && _loc2_.type == TextFieldType.INPUT && param1.keyCode != 27)
         {
            return;
         }
         if((Boolean(_loc2_ is TextArea || _loc2_ is TextInput)) && Boolean(_loc2_.editable) || _loc2_ is TextField && _loc2_.type == TextFieldType.INPUT && param1.keyCode == 27)
         {
            Application.application.setFocus();
            return;
         }
         if(param1.ctrlKey && param1.altKey)
         {
            hotKeyCtrlAlt(param1.keyCode);
         }
         else if(param1.ctrlKey)
         {
            hotKeyCtrl(param1.keyCode);
         }
         else if(_core.state != GamePredef.ST_CORE_BATTLE)
         {
            hotKey(param1.keyCode);
         }
         else if(_core.state == GamePredef.ST_CORE_BATTLE)
         {
            hotKeyBattle(param1.keyCode);
         }
      }
      
      private static function hotKeyBattle(param1:uint) : void
      {
         var _loc2_:Object = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         switch(param1)
         {
            case Keyboard.ENTER:
               _core.view.getUI(ViewManager.MAIN_SYS).setInputFocus();
               break;
            case 84:
               _core.cmdState = GamePredef.ST_BATTLE_PET;
               _core.view.getUI(ViewManager.PANEL_BAG).showPet();
               break;
            case 65:
               if(BattleCreatureView.cmdMode == true && (Boolean(_core.view.getUI(ViewManager.STAGE_BATTLE).cPlayerCmd.visible) || Boolean(_core.view.getUI(ViewManager.STAGE_BATTLE).cPetCmd.visible)))
               {
                  _core.battle.battleAuto();
               }
               break;
            case 87:
               _core.cmdState = GamePredef.ST_BATTLE_SKILL;
               _core.view.getUI(ViewManager.PANEL_SKILLMANAGER).battleShow();
               break;
            case 69:
               _core.cmdState = GamePredef.ST_BATTLE_ITEM;
               _core.view.getUI(ViewManager.PANEL_BAG).showItem();
               break;
            case 68:
               if(BattleCreatureView.cmdMode == true && (Boolean(_core.view.getUI(ViewManager.STAGE_BATTLE).cPlayerCmd.visible) || Boolean(_core.view.getUI(ViewManager.STAGE_BATTLE).cPetCmd.visible)))
               {
                  _core.battle.battleCmd(-1,GamePredef.BATTLE_ACTION_DEFENCE,-1);
               }
               break;
            case 71:
               if(_core.view.getUI(ViewManager.STAGE_BATTLE).cPlayerCmd.visible == true)
               {
                  _core.cmdState = GamePredef.ST_BATTLE_CATCH;
                  _core.view.showSelect();
               }
               break;
            case 48:
               _loc2_.useSlotByNum(10);
               break;
            case 49:
               _loc2_.useSlotByNum(1);
               break;
            case 50:
               _loc2_.useSlotByNum(2);
               break;
            case 51:
               _loc2_.useSlotByNum(3);
               break;
            case 52:
               _loc2_.useSlotByNum(4);
               break;
            case 53:
               _loc2_.useSlotByNum(5);
               break;
            case 54:
               _loc2_.useSlotByNum(6);
               break;
            case 55:
               _loc2_.useSlotByNum(7);
               break;
            case 56:
               _loc2_.useSlotByNum(8);
               break;
            case 57:
               _loc2_.useSlotByNum(9);
         }
      }
      
      private static function keyReleased(param1:KeyboardEvent) : void
      {
         if(param1.keyCode in keysDown)
         {
            delete keysDown[param1.keyCode];
         }
      }
      
      public static function isDown(param1:uint) : Boolean
      {
         if(!initialized)
         {
            throw new Error("Key class has yet been initialized.");
         }
         if(_keyEventsRemoved)
         {
            return false;
         }
         return Boolean(param1 in keysDown);
      }
      
      public static function initialize(param1:Stage) : void
      {
         if(!initialized)
         {
            param1.addEventListener(KeyboardEvent.KEY_DOWN,keyPressed);
            param1.addEventListener(KeyboardEvent.KEY_UP,keyReleased);
            param1.addEventListener(Event.DEACTIVATE,clearKeys);
            _core = Core.getInstance();
            initialized = true;
         }
      }
      
      private static function hotKey(param1:uint) : void
      {
         var func:Function = null;
         var keyCode:uint = param1;
         var useBar:Object = _core.view.getUI(ViewManager.MAIN_USER_BAR);
         switch(keyCode)
         {
            case Keyboard.ENTER:
               _core.view.getUI(ViewManager.MAIN_SYS).setInputFocus();
               break;
            case Keyboard.ESCAPE:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && Number(_core.player.posMapId) == 73)
               {
                  return;
               }
               _core.view.hideAll(ViewManager.TYPE_PANEL);
               _core.view.hide(ViewManager.POPU_WORLDMAP);
               _core.view.hide(ViewManager.TOOLTIP_MAP);
               _core.view.getUI(ViewManager.TOOLTIP_PET).hide();
               _core.view.getUI(ViewManager.TOOLTIP_EQUIP).hide();
               _core.view.getUI(ViewManager.TOOLTIP_QUEST).hide();
               _core.view.getUI(ViewManager.TOOLTIP_SKILL).hide();
               _core.view.getUI(ViewManager.TOOLTIP_REQSKILL).hide();
               _core.view.getUI(ViewManager.TOOLTIP_NPC).hide();
               break;
            case 67:
               _core.view.changeVisible(ViewManager.PANEL_CHARACTOR);
               break;
            case 87:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
               {
                  return;
               }
               _core.view.changeVisible(ViewManager.PANEL_PETMANAGER);
               break;
            case 66:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
               {
                  return;
               }
               _core.view.changeVisible(ViewManager.PANEL_BAG);
               break;
            case 83:
               _core.view.changeVisible(ViewManager.PANEL_SKILLMANAGER);
               break;
            case 81:
               if(!_core.battleServer.inBattleServer)
               {
                  _core.view.changeVisible(ViewManager.PANEL_QUESTMANAGER);
               }
               break;
            case 70:
               if(!_core.battleServer.inBattleServer)
               {
                  _core.view.getUI(ViewManager.MAIN_MINIMAP).changeFlyingState();
               }
               break;
            case 75:
               if(!_core.battleServer.inBattleServer)
               {
                  _core.view.changeVisible(ViewManager.PANEL_IM);
               }
               break;
            case 69:
               if(!_core.battleServer.inBattleServer)
               {
                  _core.view.changeVisible(ViewManager.PANEL_GUILD);
               }
               break;
            case 65:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && Number(_core.player.posMapId) == 73)
               {
                  return;
               }
               _core.selectTarget(GamePredef.ACTION_PK);
               break;
            case 84:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && Number(_core.player.posMapId) == 73)
               {
                  return;
               }
               _core.selectTarget(GamePredef.ACTION_INVITE);
               break;
            case 88:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && Number(_core.player.posMapId) == 73)
               {
                  return;
               }
               if(!_core.battleServer.inBattleServer)
               {
                  _core.selectTarget(GamePredef.ACTION_TRADE);
               }
               break;
            case 68:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && Number(_core.player.posMapId) == 73)
               {
                  return;
               }
               _core.selectTarget(GamePredef.ACTION_OBSERVE);
               break;
            case 73:
               _core.view.changeVisible(ViewManager.PANEL_ACTIVE);
               break;
            case 77:
               if(_core.by_session != "renren")
               {
                  if(Boolean(_core.player) && Boolean(_core.player.posMapId) && (Number(_core.player.posMapId) == 73 || Number(_core.player.posMapId) == 110))
                  {
                     return;
                  }
                  _core.view.changeVisible(ViewManager.POPU_WORLDMAP);
               }
               break;
            case 192:
               if(_core.by_session != "renren")
               {
                  _core.view.changeVisible(ViewManager.PANEL_MAP);
               }
               break;
            case 20:
               if(_core.by_session == "renren")
               {
                  _core.view.changeVisible(ViewManager.PANEL_MAP);
               }
               break;
            case 71:
               if(!_core.battleServer.inBattleServer)
               {
                  _core.view.changeVisible(ViewManager.PANEL_EQUIPTFUNC);
               }
               break;
            case 86:
               if(!_core.battleServer.inBattleServer)
               {
                  _core.view.changeVisible(ViewManager.PANEL_PETFUNC);
               }
               break;
            case 80:
               _core.view.changeVisible(ViewManager.PANEL_SYSTEM);
               break;
            case 72:
               _core.view.changeVisible(ViewManager.PANEL_HELP);
               break;
            case 78:
               if(!_core.battleServer.inBattleServer)
               {
                  _core.view.changeVisible(ViewManager.PANEL_SYSTEM_SHOP);
               }
               break;
            case 82:
               _core.view.changeVisible(ViewManager.PANEL_ACHIEVE);
               break;
            case 79:
               if(Boolean(_core.player) && Boolean(_core.player.posMapId) && (int(_core.player.mapData.templateId) == 2007 || int(_core.player.mapData.templateId) == 2008 || int(_core.player.mapData.templateId) == 2009))
               {
                  return;
               }
               _core.view.getUI(ViewManager.PANEL_BAG).quickShowTempSlot();
               break;
            case 90:
               _core.view.changeVisible(ViewManager.PANEL_GAMEINTRO);
               break;
            case 48:
               useBar.useSlotByNum(10);
               break;
            case 49:
               useBar.useSlotByNum(1);
               break;
            case 50:
               useBar.useSlotByNum(2);
               break;
            case 51:
               useBar.useSlotByNum(3);
               break;
            case 52:
               useBar.useSlotByNum(4);
               break;
            case 53:
               useBar.useSlotByNum(5);
               break;
            case 54:
               useBar.useSlotByNum(6);
               break;
            case 55:
               useBar.useSlotByNum(7);
               break;
            case 56:
               useBar.useSlotByNum(8);
               break;
            case 57:
               useBar.useSlotByNum(9);
               break;
            case 46:
               func = function(param1:CloseEvent):void
               {
                  if(param1.detail == Alert.YES)
                  {
                     LocalStorage.getInstance().deleteSharedObject("scene");
                  }
               };
               Alert.show(Language.KEY_S[2],"",Alert.YES | Alert.NO,null,func);
               break;
            case 189:
         }
      }
      
      private static function hotKeyCtrlAlt(param1:uint) : void
      {
         switch(param1)
         {
            case 90:
               _core.view.changeVisible(ViewManager.UI_CONTAINER);
               break;
            case 72:
               if(!Debug.DEBUG_MODE)
               {
                  return;
               }
               if(!_timer)
               {
                  _timer = new Timer(1000);
                  _timer.addEventListener(TimerEvent.TIMER,cb);
               }
               if(_timer.running)
               {
                  _core.sysMsg(Language.KEY_S[0]);
                  _timer.stop();
               }
               else
               {
                  _core.sysMsg(Language.KEY_S[1]);
                  _timer.start();
               }
               break;
            case 74:
               if(!Debug.DEBUG_MODE)
               {
                  return;
               }
               _core.gc();
               Debug.output();
               _core.view.getUI(ViewManager.STAGE_BATTLE).traceState();
               break;
            case 49:
               _core.setFrameRate(20);
               break;
            case 50:
               _core.setFrameRate(24);
               break;
            case 51:
               break;
            case 52:
            case 53:
         }
      }
      
      public static function setListenerEnabled(param1:Stage, param2:Boolean) : void
      {
         if(!param2 && !_keyEventsRemoved)
         {
            param1.removeEventListener(KeyboardEvent.KEY_DOWN,keyPressed);
            param1.removeEventListener(KeyboardEvent.KEY_UP,keyReleased);
            _keyEventsRemoved = true;
         }
         else if(param2 && _keyEventsRemoved)
         {
            keysDown = new Object();
            param1.addEventListener(KeyboardEvent.KEY_DOWN,keyPressed);
            param1.addEventListener(KeyboardEvent.KEY_UP,keyReleased);
            _keyEventsRemoved = false;
         }
      }
      
      private static function hideGame() : void
      {
      }
      
      private static function hotKeyCtrl(param1:uint) : void
      {
         switch(param1)
         {
            case Keyboard.F1:
         }
      }
      
      private static function cb(param1:Event) : void
      {
         _core.remote.cbom(_core.player.posX,_core.player.posY);
      }
   }
}

