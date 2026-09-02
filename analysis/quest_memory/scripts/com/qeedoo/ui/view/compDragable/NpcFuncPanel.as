package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RoundedButton;
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
   import mx.collections.ArrayCollection;
   import mx.collections.Sort;
   import mx.collections.SortField;
   import mx.containers.Canvas;
   import mx.controls.Image;
   import mx.controls.List;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NpcFuncPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2141324026npcIcon:Image;
      
      private var _550778329canvas1:Canvas;
      
      private var _1050738715questViewList:List;
      
      private var _1908420852typeButton:RoundedButton;
      
      private var _1782850756questType:int = 0;
      
      mx_internal var _watchers:Array = [];
      
      private var questList:Object;
      
      private var _3237038info:IntroText;
      
      private var _241352511button1:BasicGlowButton;
      
      private var npcQuestList:Object;
      
      private var _2141470988npcName:RoundedLabel;
      
      private var questListAC:ArrayCollection;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _NpcFuncPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _NpcFuncPanel_BasicTxtButton1:BasicTxtButton;
      
      public var npc:Npc;
      
      private var npcId:Number;
      
      private var npcLoopList:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var listRow:int = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":278,
               "height":398,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_NpcFuncPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas1",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.right = "10";
                     this.top = "25";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"childDescriptors":[new UIComponentDescriptor({
                        "type":IntroText,
                        "id":"info",
                        "events":{"mouseDown":"__info_mouseDown"},
                        "stylesFactory":function():void
                        {
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":108,
                              "width":248,
                              "x":4,
                              "y":73
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicGlowButton,
                        "id":"button1",
                        "events":{"click":"__button1_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "y":332.55,
                              "styleName":"BtnStdRed",
                              "x":103.75,
                              "width":50
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Image,
                        "id":"npcIcon",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":16,
                              "y":12,
                              "width":50,
                              "height":50
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedLabel,
                        "id":"npcName",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":77,
                              "y":10,
                              "text":"Label",
                              "width":171
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":RoundedButton,
                        "id":"typeButton",
                        "events":{"click":"__typeButton_click"},
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":77,
                              "y":36,
                              "width":62,
                              "styleName":"BtnRed"
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":List,
                        "id":"questViewList",
                        "events":{
                           "itemClick":"__questViewList_itemClick",
                           "mouseDown":"__questViewList_mouseDown"
                        },
                        "stylesFactory":function():void
                        {
                           this.verticalAlign = "middle";
                           this.backgroundAlpha = 0;
                           this.color = 16777215;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "styleName":"CSSBorder",
                              "width":213,
                              "labelField":"name",
                              "horizontalScrollPolicy":"off",
                              "height":120,
                              "x":22,
                              "y":208
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":BasicTxtButton,
                        "id":"_NpcFuncPanel_BasicTxtButton1",
                        "stylesFactory":function():void
                        {
                           this.fontSize = 12;
                           this.paddingTop = 2;
                           this.paddingBottom = 2;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {
                              "x":5,
                              "y":185,
                              "width":100,
                              "height":18
                           };
                        }
                     })]};
                  }
               })]
            };
         }
      });
      
      private var timerDic:Dictionary = new Dictionary();
      
      private var _core:Core = Core.getInstance();
      
      public function NpcFuncPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 278;
         this.height = 398;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NpcFuncPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get npcIcon() : Image
      {
         return this._2141324026npcIcon;
      }
      
      public function set info(param1:IntroText) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      private function updateView() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:Object = null;
         createTimer();
         questListAC = new ArrayCollection();
         var _loc1_:int = -1;
         if(questList)
         {
            for each(_loc3_ in questList)
            {
               if(_loc3_)
               {
                  if(ToolKit.isEqual(_loc3_.data.startNpc,npc.id))
                  {
                     if(ToolKit.isEqual(_loc3_.state,GamePredef.ST_QUEST_ENOUGHLEVEL) || ToolKit.isEqual(_loc3_.state,GamePredef.ST_QUEST_CANTAKE))
                     {
                        if(ToolKit.isBigThan(_loc3_.state,_loc1_))
                        {
                           _loc1_ = int(_loc3_.state);
                        }
                        questListAC.addItem({
                           "id":_loc3_.data.id,
                           "type":1,
                           "sort1":_loc3_.state,
                           "sort2":_loc3_.id,
                           "name":_loc3_.data.name,
                           "icon":ResManager["ICON_QUEST_STATE_" + _loc3_.state],
                           "data":_loc3_
                        });
                        ++listRow;
                        questType = 1;
                     }
                  }
                  _loc4_ = false;
                  if(_loc3_.data.finishNpc == -1)
                  {
                     if(npc.classId == _core.player.classId)
                     {
                        _loc4_ = true;
                     }
                  }
                  if(ToolKit.isEqual(_loc3_.data.finishNpc,npc.id) || Boolean(_loc4_))
                  {
                     if(ToolKit.isEqual(_loc3_.state,GamePredef.ST_QUEST_ISTAKE) || ToolKit.isEqual(_loc3_.state,GamePredef.ST_QUEST_CANFINISH))
                     {
                        if(ToolKit.isBigThan(_loc3_.state,_loc1_))
                        {
                           _loc1_ = int(_loc3_.state);
                        }
                        questListAC.addItem({
                           "id":_loc3_.data.id,
                           "type":1,
                           "sort1":_loc3_.state,
                           "sort2":_loc3_.id,
                           "name":_loc3_.data.name,
                           "icon":ResManager["ICON_QUEST_STATE_" + _loc3_.state],
                           "data":_loc3_
                        });
                        ++listRow;
                        questType = 2;
                     }
                  }
               }
            }
         }
         if(npcLoopList)
         {
            for(_loc5_ in npcLoopList)
            {
               if(npcLoopList[_loc5_])
               {
                  if(npcLoopList[_loc5_].canTake)
                  {
                     if(_loc1_ < 0)
                     {
                        _loc1_ = GamePredef.ST_QUEST_CANTAKE;
                     }
                     _loc6_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,_loc5_);
                     if(_loc6_)
                     {
                        questListAC.addItem({
                           "id":_loc5_,
                           "type":2,
                           "sort1":GamePredef.ST_QUEST_CANTAKE,
                           "sort2":_loc5_,
                           "name":_loc6_.name + Language.NPCFUNCPANEL_S[2],
                           "icon":ResManager["ICON_QUEST_STATE_" + GamePredef.ST_QUEST_CANTAKE],
                           "data":_loc6_
                        });
                        ++listRow;
                     }
                  }
               }
            }
         }
         var _loc2_:Sort = new Sort();
         _loc2_.fields = [new SortField("type",true,true),new SortField("sort1",true,true),new SortField("sort2",true,false)];
         questListAC.sort = _loc2_;
         questListAC.refresh();
         npc.state = _loc1_;
         questViewList.dataProvider = questListAC;
         questViewList.rowCount = listRow;
         info.text = npc.onServiceText;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NpcFuncPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NpcFuncPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NpcFuncPanelWatcherSetupUtil");
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
      
      private function clearView() : void
      {
         npcId = -1;
         npcQuestList = null;
         info.text = "";
         info.htmlText = "";
         listRow = 0;
      }
      
      [Bindable(event="propertyChange")]
      public function get npcName() : RoundedLabel
      {
         return this._2141470988npcName;
      }
      
      [Bindable(event="propertyChange")]
      public function get typeButton() : RoundedButton
      {
         return this._1908420852typeButton;
      }
      
      private function timerComplete(param1:TimerEvent) : void
      {
         param1.currentTarget.removeEventListener(TimerEvent.TIMER,timerRepeat);
         param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,timerComplete);
      }
      
      public function __typeButton_click(param1:MouseEvent) : void
      {
         funcClick();
      }
      
      public function __info_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function funcClick() : void
      {
         var nid:uint = 0;
         var getBank:Function = null;
         npc = _core.getNpc(npcId);
         if(Boolean(npc) && (npc.npcType == GamePredef.NPC_TYPE_HEAL || npc.npcType == GamePredef.NPC_TYPE_TRANSPORT || npc.npcType == GamePredef.NPC_TYPE_TUTOR))
         {
            _core.view.getUI(ViewManager.PANEL_NPCFUNCOTHER).setNpc(npc);
            visible = false;
            return;
         }
         if(ToolKit.isBigThan(npcId,0))
         {
            nid = npcId;
            if(npc.npcType == GamePredef.NPC_TYPE_BANK || npc.npcType == GamePredef.NPC_TYPE_AUCTION)
            {
               if(_core.delPass)
               {
                  _core.remote.npcFuncClick(npcId,_core.delPass);
               }
               else
               {
                  getBank = function(param1:String):void
                  {
                     var _loc2_:String = null;
                     if(param1)
                     {
                        _loc2_ = MD5.hash(param1);
                        _core.remote.npcFuncClick(nid,_loc2_);
                     }
                  };
                  _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.NPCFUNCPANEL_S[3],getBank);
               }
            }
            else
            {
               _core.remote.npcFuncClick(npcId);
            }
         }
         visible = false;
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
      
      public function __button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private function createTimer() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Timer = null;
         removeTimerAll();
         if(questList)
         {
            for each(_loc1_ in questList)
            {
               if(Boolean(_loc1_) && Boolean(_loc1_.lastTime))
               {
                  _loc2_ = new Timer(1000,int(_loc1_.lastTime));
                  timerDic[_loc2_] = _loc1_.data.id;
                  _loc2_.addEventListener(TimerEvent.TIMER,timerRepeat);
                  _loc2_.addEventListener(TimerEvent.TIMER_COMPLETE,timerComplete);
                  _loc2_.start();
               }
            }
         }
      }
      
      public function set button1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._241352511button1;
         if(_loc2_ !== param1)
         {
            this._241352511button1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button1",_loc2_,param1));
         }
      }
      
      public function __questViewList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : IntroText
      {
         return this._3237038info;
      }
      
      public function set canvas1(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778329canvas1;
         if(_loc2_ !== param1)
         {
            this._550778329canvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas1",_loc2_,param1));
         }
      }
      
      private function mouseWheelHandler(param1:MouseEvent) : void
      {
         var _loc2_:MouseEvent = new MouseEvent(MouseEvent.MOUSE_WHEEL);
         _loc2_.delta = param1.delta;
      }
      
      [Bindable(event="propertyChange")]
      public function get questViewList() : List
      {
         return this._1050738715questViewList;
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
      
      [Bindable(event="propertyChange")]
      public function get questType() : int
      {
         return this._1782850756questType;
      }
      
      private function takeLoop(param1:Number) : void
      {
         if(npc)
         {
            _core.remote.takeLoop(param1,npc.id);
         }
         else
         {
            _core.remote.takeLoop(param1,-1);
         }
      }
      
      private function questClick() : void
      {
         var _loc1_:Object = null;
         var _loc2_:* = undefined;
         if(questViewList.selectedItem)
         {
            hide();
            if(questViewList.selectedItem.type == 1)
            {
               _loc1_ = questViewList.selectedItem.data;
               _loc2_ = _core.view.getUI(ViewManager.PANEL_QUEST);
               _loc2_.initQuest(_loc1_,npc);
               _loc2_.show();
            }
            else if(questViewList.selectedItem.type == 2)
            {
               takeLoop(questViewList.selectedItem.id);
            }
         }
      }
      
      private function removeTimerAll() : void
      {
         var _loc1_:Object = null;
         for(_loc1_ in timerDic)
         {
            if(_loc1_)
            {
               _loc1_ = Timer(_loc1_);
               _loc1_.removeEventListener(TimerEvent.TIMER,timerRepeat);
               _loc1_.removeEventListener(TimerEvent.TIMER_COMPLETE,timerComplete);
               _loc1_.stop();
               delete timerDic[_loc1_];
            }
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         clearView();
         removeTimerAll();
      }
      
      [Bindable(event="propertyChange")]
      public function get button1() : BasicGlowButton
      {
         return this._241352511button1;
      }
      
      private function timerRepeat(param1:TimerEvent) : void
      {
         var _loc2_:Object = null;
         if(questList)
         {
            _loc2_ = questList[timerDic[param1.currentTarget]];
            if(Boolean(_loc2_) && Boolean(_loc2_.lastTime))
            {
               _loc2_.lastTime = int(_loc2_.lastTime);
               --_loc2_.lastTime;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas1() : Canvas
      {
         return this._550778329canvas1;
      }
      
      private function _NpcFuncPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NPCFUNCPANEL_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NpcFuncPanel_BasicTitleCanvas1.text = param1;
         },"_NpcFuncPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NPCFUNCOTHER_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button1.label = param1;
         },"button1.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NPCFUNCPANEL_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _NpcFuncPanel_BasicTxtButton1.label = param1;
         },"_NpcFuncPanel_BasicTxtButton1.label");
         result[2] = binding;
         return result;
      }
      
      public function set typeButton(param1:RoundedButton) : void
      {
         var _loc2_:Object = this._1908420852typeButton;
         if(_loc2_ !== param1)
         {
            this._1908420852typeButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"typeButton",_loc2_,param1));
         }
      }
      
      public function set questViewList(param1:List) : void
      {
         var _loc2_:Object = this._1050738715questViewList;
         if(_loc2_ !== param1)
         {
            this._1050738715questViewList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questViewList",_loc2_,param1));
         }
      }
      
      private function showQuest(param1:Number) : void
      {
         npc = _core.getNpc(param1);
         if(npcQuestList)
         {
            npc.state = npcQuestList.state;
            questList = npcQuestList.list;
         }
         else
         {
            questList = null;
         }
         visible = true;
         updateView();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(visible == false)
         {
            initView();
         }
      }
      
      public function npcFuncInit(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc4_:* = undefined;
         if(!param1)
         {
            return;
         }
         if(_core.state != GamePredef.ST_NORMAL)
         {
            return;
         }
         if(_core.view.getUI(ViewManager.STAGE_BATTLE).visible)
         {
            return;
         }
         if(ToolKit.isEqual(param1.npcType,GamePredef.NPC_TYPE_CALLBOARD))
         {
            _core.view.getUI(ViewManager.PANEL_CALLBOARD).visible = true;
            return;
         }
         npcId = param1.npcId;
         visible = true;
         var _loc2_:Npc = _core.getNpc(npcId);
         if(_loc2_)
         {
            npcIcon.source = ResManager.getIconUrl(_loc2_.iconCode);
         }
         npcName.text = param1.npcName;
         if(Boolean(param1.loopInfo) && Boolean(param1.loopInfo.flag))
         {
            npcLoopList = param1.loopInfo.d;
         }
         else
         {
            npcLoopList = null;
         }
         if(ToolKit.isSmallOrEqual(param1.npcQuest.state,0))
         {
            if(npcLoopList)
            {
               if(param1.npcType == GamePredef.NPC_TYPE_SHOP)
               {
                  typeButton.visible = true;
                  typeButton.label = GamePredef.NPC_TYPE_NAME[param1.npcType];
               }
               else
               {
                  typeButton.visible = false;
               }
               showQuest(npcId);
               return;
            }
            if(ToolKit.isBigThan(param1.npcType,0))
            {
               funcClick();
               visible = false;
               return;
            }
            if(Boolean(_loc2_) && Boolean(_loc2_.onServiceText) && _loc2_.onServiceText.length > 0)
            {
               _loc2_.view.onSay(_loc2_.onServiceText);
            }
            visible = false;
            return;
         }
         if(param1.npcType < 0)
         {
            typeButton.visible = false;
         }
         else
         {
            typeButton.visible = true;
            typeButton.label = GamePredef.NPC_TYPE_NAME[param1.npcType];
         }
         npcQuestList = {};
         npcQuestList.state = param1.npcQuest.state;
         npcQuestList.npcId = param1.npcQuest.npcId;
         npcQuestList.list = {};
         for each(_loc3_ in param1.npcQuest.list)
         {
            npcQuestList.list[_loc3_.qid] = _core.data.getChaQuestFullData(_loc3_);
            if(_core.player.questList[_loc3_.qid])
            {
               if(_core.player.questList[_loc3_.qid].clsData)
               {
                  npcQuestList.list[_loc3_.qid].clsData = _core.player.questList[_loc3_.qid].clsData;
               }
            }
         }
         showQuest(npcId);
         for each(_loc4_ in questList)
         {
            _core.nextGuide(ViewManager.PANEL_NPCFUNC,_loc4_.data.name,npcId);
         }
      }
      
      public function set questType(param1:int) : void
      {
         var _loc2_:Object = this._1782850756questType;
         if(_loc2_ !== param1)
         {
            this._1782850756questType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questType",_loc2_,param1));
         }
      }
      
      private function _NpcFuncPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.NPCFUNCPANEL_S[1];
         _loc1_ = Language.NPCFUNCOTHER_U[0];
         _loc1_ = Language.NPCFUNCPANEL_S[0];
      }
      
      public function __questViewList_itemClick(param1:ListEvent) : void
      {
         questClick();
      }
      
      public function setInfoText(param1:String) : void
      {
         if(visible)
         {
            info.htmlText = param1;
         }
      }
   }
}

