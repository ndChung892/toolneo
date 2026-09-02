package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.QuestCanvas;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.containers.HBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.core.IUITextField;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class QuestPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2141324026npcIcon:Image;
      
      private var _3602qc:QuestCanvas;
      
      private var _1603303783takeButton:BasicGlowButton;
      
      private var _selectId:Number;
      
      private var _821490697slotIdList:Array;
      
      private var _3237038info:LinkTextArea;
      
      private var _11548545buttonBar:HBox;
      
      private var _1783350356questData:Object;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _2141470988npcName:RoundedLabel;
      
      private var _1990131276cancelButton:BasicGlowButton;
      
      public var _QuestPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _vm:ViewManager = ViewManager.getInstance();
      
      private var _1993628251finishButton:BasicGlowButton;
      
      private var _confirmPetEquipt:Boolean = false;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _confirmPet:Boolean = false;
      
      private var npc:Npc;
      
      public var quest:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":480,
               "height":356,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_QuestPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "height":327,
                        "y":29,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":HBox,
                           "id":"buttonBar",
                           "stylesFactory":function():void
                           {
                              this.horizontalAlign = "center";
                              this.horizontalGap = 3;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":149,
                                 "height":31,
                                 "x":10,
                                 "y":292,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"finishButton",
                                    "events":{"click":"__finishButton_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":1,
                                          "styleName":"BtnStdGreen",
                                          "width":52.2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"takeButton",
                                    "events":{"click":"__takeButton_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":1,
                                          "styleName":"BtnStdRed",
                                          "width":52.2
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"cancelButton",
                                    "events":{"click":"__cancelButton_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":80,
                                          "y":1,
                                          "styleName":"BtnStdBlue",
                                          "width":52.2
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"npcName",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":75,
                                 "y":12,
                                 "text":"NPC名字几个字",
                                 "width":87
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"info",
                           "stylesFactory":function():void
                           {
                              this.paddingTop = 3;
                              this.paddingLeft = 3;
                              this.paddingRight = 1;
                              this.backgroundAlpha = 1;
                              this.backgroundColor = 3172697;
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "editable":false,
                                 "width":149,
                                 "x":10,
                                 "y":73,
                                 "styleName":"CanvasBorder",
                                 "height":212
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":QuestCanvas,
                           "id":"qc",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":305,
                                 "y":12,
                                 "width":303,
                                 "x":167
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"npcIcon",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":48,
                                 "height":48,
                                 "x":17,
                                 "y":15
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function QuestPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 480;
         this.height = 356;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         QuestPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonBar() : HBox
      {
         return this._11548545buttonBar;
      }
      
      public function set buttonBar(param1:HBox) : void
      {
         var _loc2_:Object = this._11548545buttonBar;
         if(_loc2_ !== param1)
         {
            this._11548545buttonBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonBar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get slotIdList() : Array
      {
         return this._821490697slotIdList;
      }
      
      public function onAddChaQuest(param1:Object) : void
      {
         var _loc3_:uint = 0;
         var _loc4_:uint = 0;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         var _loc10_:* = undefined;
         param1 = _core.data.getChaQuestFullData(param1);
         if(param1.pos)
         {
            _loc3_ = Math.round(param1.pos.x / 10);
            _loc4_ = Math.round(param1.pos.y / 10);
            _loc5_ = "<a href=\'event:L_POS|" + param1.pos.map + "|" + _loc3_ + "," + _loc4_ + "\'>[" + _loc3_ + "," + _loc4_ + "]</a>";
            _loc6_ = Language.QUESTCANVAS_S[20].toString().replace("{map}",TextUtil.getMapHtml(param1.pos.map)).replace("{pos}",_loc5_).replace("{name}",param1.pos.name);
            param1.data.posInfo = _loc6_;
         }
         if(param1.clsData)
         {
            _loc7_ = (param1.clsData.num + 1) % 10;
            if(_loc7_ == 0)
            {
               _loc7_ = 10;
            }
            _loc8_ = Language.QUESTCANVAS_S[21].toString().replace("{num}",_loc7_);
            param1.data.clsInfo = _loc8_;
         }
         var _loc2_:int = int(param1.data.color);
         if(ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_CALLBOARD))
         {
            _loc2_ = int(param1.c);
         }
         _core.sysBlueMsg(Language.QUESTPANEL_S[5] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_QUEST] + "|" + param1.qid + "|" + param1.data.name + "|" + _loc2_ + "|0|0]");
         _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).onAddChaQuest(param1);
         if(ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_NEWHAND) || ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_MAIN) || ToolKit.isEqual(param1.data.type,GamePredef.QUEST_TYPE_WORLD))
         {
            _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).initCanTakeQuest();
         }
         if(visible)
         {
            if(Boolean(quest) && Boolean(!npc) && ToolKit.isEqual(quest.id,param1.data.id))
            {
               initQuest(param1,null);
               return;
            }
            if(Boolean(quest) && Boolean(npc) && ToolKit.isEqual(quest.id,param1.data.id))
            {
               _loc9_ = false;
               _loc10_ = false;
               if(param1.data.finishNpc == -1)
               {
                  if(npc.classId == _core.player.classId)
                  {
                     _loc9_ = true;
                  }
               }
               else if(ToolKit.isEqual(param1.data.finishNpc,npc.id))
               {
                  _loc9_ = true;
               }
               if(param1.data.startNpc == -1)
               {
                  if(npc.classId == _core.player.classId)
                  {
                     _loc10_ = true;
                  }
               }
               else if(ToolKit.isEqual(param1.data.startNpc,npc.id))
               {
                  _loc10_ = true;
               }
               if(Boolean(_loc9_) && param1.state == GamePredef.ST_QUEST_CANFINISH)
               {
                  takeButton.visible = true;
                  initQuest(param1,npc);
               }
               else if(_loc10_)
               {
                  visible = false;
                  takeButton.visible = true;
               }
            }
         }
         if(ToolKit.isEqual(param1.data.startNpc,param1.data.finishNpc))
         {
            if(ToolKit.isBigThan(param1.data.startNpc,0) && Boolean(_core.getNpc(param1.data.startNpc)))
            {
               if(param1.data.startNpc == -1 && npc.classId == _core.player.classId)
               {
                  _core.setNpcState(npc.id);
               }
               else
               {
                  _core.setNpcState(param1.data.startNpc);
               }
            }
         }
         else
         {
            if(ToolKit.isBigThan(param1.data.startNpc,0) && Boolean(_core.getNpc(param1.data.startNpc)))
            {
               _core.setNpcState(param1.data.startNpc);
            }
            if(ToolKit.isBigThan(param1.data.finishNpc,0) && Boolean(_core.getNpc(param1.data.finishNpc)))
            {
               _core.setNpcState(param1.data.finishNpc);
            }
         }
      }
      
      public function onClassQuest(param1:Object, param2:Number) : void
      {
         if(param1.flag == 1)
         {
            param1.data = _core.data.getChaQuestFullData(param1.data);
            initQuest(param1.data,_core.getNpc(param2));
            show();
         }
         else if(param1.flag == 2)
         {
            _core.sysMidNote(Language.QUESTPANEL_S[11]);
         }
         else if(param1.flag == 3)
         {
            _core.sysMidNote(Language.QUESTPANEL_S[12]);
         }
      }
      
      private function showButtonBar(param1:Button, param2:Button) : void
      {
         buttonBar.visible = true;
         param1.visible = true;
         param1.includeInLayout = true;
         if(param2)
         {
            param2.visible = true;
            param2.includeInLayout = true;
         }
      }
      
      public function set npcIcon(param1:Image) : void
      {
         var _loc2_:Object = this._2141324026npcIcon;
         if(_loc2_ !== param1)
         {
            this._2141324026npcIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"npcIcon",_loc2_,param1));
         }
      }
      
      private function finishQuest(param1:Number) : Boolean
      {
         _selectId = param1;
         if(quest)
         {
            if(ToolKit.isEqual(quest.at,2))
            {
               if(param1 > 0)
               {
                  if(checkBag() && checkPet() && checkEquipt())
                  {
                     _confirmPet = false;
                     _confirmPetEquipt = false;
                     if(finishButton)
                     {
                        finishButton.visible = false;
                     }
                     _core.remote.call("finishQuest",new Responder(onFinishQuest),{
                        "i":quest.id,
                        "s":param1
                     });
                     return true;
                  }
               }
               else
               {
                  _core.sysMsg(Language.QUESTPANEL_S[6]);
               }
            }
            else if(checkBag() && checkPet() && checkEquipt())
            {
               _confirmPet = false;
               _confirmPetEquipt = false;
               if(finishButton)
               {
                  finishButton.visible = false;
               }
               if(npc)
               {
                  _core.remote.call("finishQuest",new Responder(onFinishQuest),{
                     "i":quest.id,
                     "s":param1,
                     "n":npc.id
                  });
               }
               else
               {
                  _core.remote.call("finishQuest",new Responder(onFinishQuest),{
                     "i":quest.id,
                     "s":param1,
                     "n":-1
                  });
               }
               return true;
            }
         }
         _confirmPet = false;
         _confirmPetEquipt = false;
         return false;
      }
      
      private function clearView() : void
      {
         npcName.text = "";
         info.text = "";
         info.htmlText = "";
         buttonBar.visible = false;
         takeButton.visible = false;
         takeButton.includeInLayout = false;
         finishButton.visible = false;
         finishButton.includeInLayout = false;
         cancelButton.visible = false;
         cancelButton.includeInLayout = false;
      }
      
      [Bindable(event="propertyChange")]
      public function get npcName() : RoundedLabel
      {
         return this._2141470988npcName;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:QuestPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _QuestPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_QuestPanelWatcherSetupUtil");
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
      
      [Bindable(event="propertyChange")]
      public function get qc() : QuestCanvas
      {
         return this._3602qc;
      }
      
      private function takeQuest() : void
      {
         if(quest)
         {
            if(_core.player.qn >= GamePredef.MAX_QUEST_NUM)
            {
               _core.sysMsg(Language.QUESTPANEL_S[1]);
            }
            else
            {
               takeButton.visible = false;
               if(ToolKit.isEqual(quest.type,11))
               {
                  _core.remote.call("takeBuildQuest",new Responder(onTakeQuest),{
                     "id":quest.id,
                     "nid":questData.nid
                  });
               }
               else if(npc)
               {
                  _core.remote.call("takeQuest",new Responder(onTakeQuest),quest.id,npc.id);
               }
               else
               {
                  _core.remote.call("takeQuest",new Responder(onTakeQuest),quest.id,-1);
               }
               _core.nextGuide(ViewManager.MAIN_QUEST_GUIDE,quest.name,-1);
            }
         }
      }
      
      private function _QuestPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.QUESTPANEL_U[0];
         _loc1_ = Language.QUESTMANAGER_U[0];
         _loc1_ = Language.QUESTMANAGER_U[2];
         _loc1_ = Language.QUESTMANAGER_U[1];
         _loc1_ = questData;
      }
      
      private function cancelQuest() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.cancelQuest(quest.id);
            }
         };
         var msgString:String = Language.QUESTMANAGER_S[1].toString().replace("{name}",getQuestNamePrefix(quest) + quest.name);
         Alert.show(msgString,"",Alert.YES | Alert.NO,this,func);
      }
      
      public function set qc(param1:QuestCanvas) : void
      {
         var _loc2_:Object = this._3602qc;
         if(_loc2_ !== param1)
         {
            this._3602qc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"qc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get takeButton() : BasicGlowButton
      {
         return this._1603303783takeButton;
      }
      
      public function onCancelQuest(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1.flag)
         {
            visible = false;
            if(_core.player)
            {
               _core.player.qn = param1.qn;
            }
            _loc2_ = _core.data.getData(GamePredef.TBL_QUEST,param1.qid);
            if(ToolKit.isEqual(_loc2_.startNpc,_loc2_.finishNpc))
            {
               if(ToolKit.isBigThan(_loc2_.startNpc,0) && Boolean(_core.getNpc(_loc2_.startNpc)))
               {
                  _core.setNpcState(_loc2_.startNpc);
               }
            }
            else
            {
               if(ToolKit.isBigThan(_loc2_.startNpc,0) && Boolean(_core.getNpc(_loc2_.startNpc)))
               {
                  _core.setNpcState(_loc2_.startNpc);
               }
               if(ToolKit.isBigThan(_loc2_.finishNpc,0) && Boolean(_core.getNpc(_loc2_.finishNpc)))
               {
                  _core.setNpcState(_loc2_.finishNpc);
               }
            }
            _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).onCancelQuest(param1);
         }
         else if(param1.info)
         {
            _core.sysMidNote(param1.info);
         }
      }
      
      public function initQuest(param1:Object, param2:Npc) : void
      {
         if(!param1)
         {
            return;
         }
         this.questData = param1;
         quest = param1.data;
         this.npc = param2;
         initView();
      }
      
      private function _QuestPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestPanel_BasicTitleCanvas1.text = param1;
         },"_QuestPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            finishButton.label = param1;
         },"finishButton.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            takeButton.label = param1;
         },"takeButton.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cancelButton.label = param1;
         },"cancelButton.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return questData;
         },function(param1:Object):void
         {
            qc.questData = param1;
         },"qc.questData");
         result[4] = binding;
         return result;
      }
      
      public function __cancelButton_click(param1:MouseEvent) : void
      {
         cancelQuest();
      }
      
      public function reelQuestInfo(param1:Object) : void
      {
         if(param1)
         {
            initQuest(_core.data.getChaQuestFullData(param1),null);
            show();
         }
      }
      
      public function set takeButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1603303783takeButton;
         if(_loc2_ !== param1)
         {
            this._1603303783takeButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"takeButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get finishButton() : BasicGlowButton
      {
         return this._1993628251finishButton;
      }
      
      private function callGuide() : void
      {
         if(quest.id == 2 || quest.id == 3 || quest.id == 6)
         {
            setTimeout(CallEquActive,500);
         }
         if(quest.id == 4)
         {
            setTimeout(setFirstPetActive,500);
         }
      }
      
      public function onFinishQuest(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         if(!param1)
         {
            return;
         }
         if(param1.flag)
         {
            if(npc)
            {
               _loc4_ = _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE);
               (_loc4_ as UIComponent).dispatchEvent(new Event(DragableCanvas.EVENT_CLOSE));
               _core.nextGuide(ViewManager.PANEL_QUEST,questData.data.name,npc.id,GamePredef.GUIDE_TYPE_FINISH_QUEST);
            }
            if(_core.player.questLog == "")
            {
               _core.player.questLog = "|";
            }
            _core.player.questLog = _core.player.questLog + param1.qid + "|";
            _loc2_ = _core.data.getGameData(GamePredef.TBL_QUEST,param1.qid);
            if(ToolKit.isEqual(_loc2_.data.next,1))
            {
               _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).initCanTakeQuest(npc.id);
            }
            _core.player.qn = param1.qn;
            _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).onFinishQuest(param1);
            _loc3_ = int(_loc2_.data.color);
            if(ToolKit.isEqual(_loc2_.data.type,GamePredef.QUEST_TYPE_CALLBOARD))
            {
               _loc3_ = int(param1.c);
            }
            if(_loc2_)
            {
               _core.sysBlueMsg(Language.QUESTPANEL_S[10] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_QUEST] + "|" + param1.qid + "|" + _loc2_.data.name + "|" + _loc3_ + "|0|0]");
            }
            if(ToolKit.isBigThan(_loc2_.data.finishNpc,0) && Boolean(_core.getNpc(_loc2_.data.finishNpc)))
            {
               _core.setNpcState(_loc2_.data.finishNpc);
            }
            if(Boolean(questData && questData.data.finishNpc == -1) && Boolean(npc) && npc.classId == _core.player.classId)
            {
               _core.setNpcState(npc.id);
            }
            if(Boolean(quest) && ToolKit.isEqual(quest.id,param1.qid))
            {
               visible = false;
               if(Boolean(npc) && Boolean(npc.view))
               {
                  npc.view.onSay(questData.data.completeText);
               }
            }
         }
         else
         {
            _core.sysMidNote(param1.info);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get npcIcon() : Image
      {
         return this._2141324026npcIcon;
      }
      
      public function set npcName(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2141470988npcName;
         if(_loc2_ !== param1)
         {
            this._2141470988npcName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"npcName",_loc2_,param1));
         }
      }
      
      private function setFirstPetActive() : void
      {
         _vm.changeVisible(ViewManager.PANEL_PETMANAGER);
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_PETMANAGER);
         (_loc1_ as PetManagerPanel).changePetState(1);
         _vm.changeVisible(ViewManager.PANEL_PETMANAGER);
      }
      
      public function __finishButton_click(param1:MouseEvent) : void
      {
         finishQuest(qc.selectId);
         callGuide();
      }
      
      private function getQuestNamePrefix(param1:Object) : String
      {
         var _loc3_:uint = 0;
         var _loc4_:Array = null;
         var _loc5_:uint = 0;
         var _loc2_:String = GamePredef.QUEST_TYPE_APPR[param1.type] || "";
         if(ToolKit.isEqual(param1.type,GamePredef.QUEST_TYPE_ACTIVITY))
         {
            if(ToolKit.isBigThan(param1.lm,0) && !ToolKit.isEqual(param1.id,2766))
            {
               _loc2_ = Language.QUESTGUIDE_S[19];
            }
            _loc3_ = parseInt(param1.id);
            if(GamePredef.DUPLICATE_TASK_IDS[_loc3_])
            {
               _loc2_ = Language.QUESTGUIDE_S[20];
            }
         }
         else if(ToolKit.isEqual(param1.type,GamePredef.QUEST_TYPE_LOOP))
         {
            _loc4_ = param1.subType.split("-");
            _loc5_ = parseInt(_loc4_[1]);
            if(GamePredef.QUEST_SUB_TYPE_APPR[_loc5_])
            {
               _loc2_ = GamePredef.QUEST_SUB_TYPE_APPR[_loc5_];
            }
         }
         return _loc2_;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         clearView();
         if(ToolKit.isEqual(questData.state,GamePredef.ST_QUEST_ENOUGHLEVEL))
         {
            return;
         }
         if(ToolKit.isEqual(questData.state,GamePredef.ST_QUEST_CANTAKE))
         {
            showButtonBar(takeButton,null);
         }
         else
         {
            showButtonBar(finishButton,cancelButton);
            if(ToolKit.isEqual(questData.state,GamePredef.ST_QUEST_ISTAKE))
            {
               finishButton.enabled = false;
            }
            else if(ToolKit.isEqual(questData.state,GamePredef.ST_QUEST_CANFINISH))
            {
               finishButton.enabled = true;
            }
            if(ToolKit.isEqual(questData.data.type,1))
            {
               cancelButton.enabled = false;
            }
            else
            {
               cancelButton.enabled = true;
            }
         }
         if(npc)
         {
            npcName.text = npc.name;
            npcIcon.source = ResManager.getIconUrl(npc.iconCode);
            _core.nextGuide(ViewManager.PANEL_QUEST,questData.data.name,npc.id);
         }
         else
         {
            npcName.text = Language.QUESTPANEL_S[0];
            npcIcon.source = ResManager.getIconUrl(3060090000015);
         }
         info.text = questData.data.startText;
      }
      
      public function set info(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      public function set questData(param1:Object) : void
      {
         var _loc2_:Object = this._1783350356questData;
         if(_loc2_ !== param1)
         {
            this._1783350356questData = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questData",_loc2_,param1));
         }
      }
      
      private function checkBag() : Boolean
      {
         var _loc1_:int = 0;
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:String = null;
         var _loc5_:Boolean = false;
         if(Boolean(questData) && Boolean(questData.award))
         {
            _loc1_ = 0;
            switch(Number(questData.data.at))
            {
               case 1:
                  for each(_loc3_ in questData.award)
                  {
                     if(Boolean(_loc3_) && ToolKit.isEqual(_loc3_.kind,GamePredef.QUEST_AWARD_ITEM))
                     {
                        _loc1_++;
                     }
                  }
                  break;
               case 2:
                  _loc1_ = 1;
                  break;
               case 3:
                  for each(_loc3_ in questData.award)
                  {
                     _loc4_ = _core.getTemplateData(_loc3_.type,_loc3_.itemId).reqClass;
                     _loc5_ = _loc4_.indexOf("|" + _core.player.classId + "|") >= 0;
                     if(Boolean(_loc3_) && Boolean(ToolKit.isEqual(_loc3_.kind,GamePredef.QUEST_AWARD_ITEM)) && _loc5_)
                     {
                        _loc1_++;
                     }
                  }
            }
            if(!_core.player.enoughBag(_loc1_))
            {
               _core.sysMsg(Language.QUESTPANEL_S[13]);
               return false;
            }
            _loc2_ = 0;
            for each(_loc3_ in questData.award)
            {
               if(Boolean(_loc3_) && ToolKit.isEqual(_loc3_.kind,GamePredef.QUEST_AWARD_PET))
               {
                  _loc2_++;
               }
            }
            if(!_core.player.enoughPetSlot(_loc2_))
            {
               _core.sysMsg(Language.MAILPANEL_S[101]);
               return false;
            }
            return true;
         }
         return true;
      }
      
      public function __takeButton_click(param1:MouseEvent) : void
      {
         takeQuest();
      }
      
      [Bindable(event="propertyChange")]
      public function get questData() : Object
      {
         return this._1783350356questData;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : LinkTextArea
      {
         return this._3237038info;
      }
      
      private function CallEquActive() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Timer = null;
         slotIdList = new Array();
         for each(_loc1_ in _core.data.sList)
         {
            if(_loc1_ != null && _loc1_.type == 18)
            {
               slotIdList.push(_loc1_.id);
            }
         }
         _loc2_ = new Timer(800,10);
         if(_loc2_.running)
         {
            _loc2_.reset();
         }
         else
         {
            _loc2_.start();
         }
         _loc2_.addEventListener(TimerEvent.TIMER,setEquActive);
      }
      
      private function checkEquipt() : Boolean
      {
         var i:String = null;
         var tmp:Object = null;
         var count:int = 0;
         var pSlotArr:Array = null;
         var subSlotInfo:Object = null;
         var j:Object = null;
         var slotData:Object = null;
         var iData:Object = null;
         var slotTemp:Object = null;
         var func:Function = null;
         var msg:String = null;
         var requireList:Object = _core.data.gameDataIndex[GamePredef.TBL_QUEST_REQUIRE][quest.id];
         if(requireList)
         {
            for(i in requireList)
            {
               if(Boolean(requireList[i]) && Boolean(requireList[i].kind == GamePredef.QUEST_REQUIRE_ITEM) && requireList[i].type == GamePredef.TBL_EQUIPT_TEMPLATE)
               {
                  tmp = _core.getTemplateData(GamePredef.TBL_EQUIPT_TEMPLATE,requireList[i].itemId);
                  if(Boolean(tmp) && tmp.kind == GamePredef.ITEM_KIND_PETEQU)
                  {
                     count = 0;
                     pSlotArr = new Array();
                     for(j in _core.data.sList)
                     {
                        slotData = _core.data.sList[j];
                        iData = _core.data.getGameData(slotData.type,slotData.itemId);
                        if(Boolean(slotData && iData && Number(slotData.type) == GamePredef.TBL_EQUIPT_INSTANCE) && Boolean(slotData.stackNum > 0) && ToolKit.isEqual(_core.basic.getColorByQuality(requireList[i].q),iData.color))
                        {
                           slotTemp = _core.getTemplateData(slotData.type,slotData.itemId,false);
                           if(slotTemp)
                           {
                              if(slotTemp.id == tmp.id)
                              {
                                 count += Number(slotData.stackNum);
                                 if(Number(iData.upgradeNum) == 0)
                                 {
                                    return true;
                                 }
                                 if(subSlotInfo)
                                 {
                                    if(ToolKit.isSmallThan(iData.upgradeNum,subSlotInfo.upgradeNum))
                                    {
                                       subSlotInfo = iData;
                                    }
                                 }
                                 else
                                 {
                                    subSlotInfo = iData;
                                 }
                              }
                           }
                        }
                     }
                     if(subSlotInfo)
                     {
                        if(ToolKit.isBigThan(subSlotInfo.upgradeNum,0))
                        {
                           if(!_confirmPetEquipt)
                           {
                              func = function(param1:CloseEvent):void
                              {
                                 if(param1.detail == Alert.YES)
                                 {
                                    _confirmPetEquipt = true;
                                    finishQuest(_selectId);
                                 }
                              };
                              msg = Language.QUESTPANEL_S[23].replace("{euipt}",tmp.name).replace("{starNum}",subSlotInfo.upgradeNum);
                              Alert.show(msg,"",3,this,func);
                              return false;
                           }
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      private function setEquActive(param1:TimerEvent) : void
      {
         var _loc2_:* = slotIdList.pop();
         _core.remote.useItem(1,-1,_loc2_);
      }
      
      public function finishQuestPub(param1:Object, param2:Number) : Boolean
      {
         if(param1)
         {
            questData = param1;
            quest = param1.data;
            return finishQuest(param2);
         }
         return false;
      }
      
      private function set slotIdList(param1:Array) : void
      {
         var _loc2_:Object = this._821490697slotIdList;
         if(_loc2_ !== param1)
         {
            this._821490697slotIdList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"slotIdList",_loc2_,param1));
         }
      }
      
      private function checkPet() : Boolean
      {
         var i:String = null;
         var tmp:Object = null;
         var count:int = 0;
         var subPet:Object = null;
         var petObj:Object = null;
         var func:Function = null;
         var msg:String = null;
         var htmlmsg:String = null;
         var _alert:Alert = null;
         var tf:IUITextField = null;
         var requireList:Object = _core.data.gameDataIndex[GamePredef.TBL_QUEST_REQUIRE][quest.id];
         if(requireList)
         {
            for(i in requireList)
            {
               if(Boolean(requireList[i]) && requireList[i].kind == GamePredef.QUEST_REQUIRE_PET)
               {
                  tmp = _core.getTemplateData(GamePredef.TBL_CREATURE,requireList[i].itemId);
                  if(Boolean(tmp && _core) && Boolean(_core.player) && Boolean(_core.player.petList))
                  {
                     count = 0;
                     for each(petObj in _core.player.petList)
                     {
                        if(ToolKit.isEqual(petObj.tid,requireList[i].itemId) && ToolKit.isBigThan(petObj.state,0) && petObj.petName == tmp.name && ToolKit.isBigOrEqual(_core.basic.colorByGrowRate(petObj.growRate),_core.basic.colorByGrowRate(requireList[i].q / 10)))
                        {
                           subPet = petObj;
                           count++;
                           if(ToolKit.isSmallThan(_core.basic.colorByGrowRate(petObj.growRate),2))
                           {
                              return true;
                           }
                        }
                     }
                     if(subPet)
                     {
                        if(ToolKit.isBigOrEqual(_core.basic.colorByGrowRate(subPet.growRate),2))
                        {
                           if(!_confirmPet)
                           {
                              func = function(param1:CloseEvent):void
                              {
                                 if(param1.detail == Alert.YES)
                                 {
                                    _confirmPet = true;
                                    finishQuest(_selectId);
                                 }
                              };
                              msg = Language.QUESTPANEL_S[22].replace("{petName}","(" + subPet.petName + ")");
                              htmlmsg = Language.QUESTPANEL_S[22].replace("{petName}","(<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.colorByGrowRate(subPet.growRate)] + "\'>" + subPet.petName + "</font>)");
                              _alert = Alert.show(msg,"",3,this,func);
                              tf = _alert.mx_internal::alertForm.mx_internal::textField;
                              tf.htmlText = htmlmsg;
                              return false;
                           }
                        }
                     }
                  }
               }
            }
         }
         return true;
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelButton() : BasicGlowButton
      {
         return this._1990131276cancelButton;
      }
      
      public function set finishButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1993628251finishButton;
         if(_loc2_ !== param1)
         {
            this._1993628251finishButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"finishButton",_loc2_,param1));
         }
      }
      
      public function set cancelButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1990131276cancelButton;
         if(_loc2_ !== param1)
         {
            this._1990131276cancelButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelButton",_loc2_,param1));
         }
      }
      
      public function onTakeQuest(param1:Object) : void
      {
         if(param1)
         {
            if(!param1.flag)
            {
               _core.sysMidNote(param1.info);
            }
         }
         else
         {
            visible = false;
         }
      }
   }
}

