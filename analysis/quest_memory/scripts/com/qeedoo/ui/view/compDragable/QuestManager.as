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
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.ColorTree;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
   import com.qeedoo.ui.view.comp.QuestCanvas;
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
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Label;
   import mx.controls.List;
   import mx.controls.Tree;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class QuestManager extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var firstFlagLoop:Boolean = true;
      
      private var _11548545buttonBar:HBox;
      
      private var _1223060299canTakeTree:Tree;
      
      private var _365584322questTreeAC:ArrayCollection;
      
      private var _43419881canTakeQc:QuestCanvas;
      
      private var _1993628251finishButton:BasicGlowButton;
      
      private var treeSelectedIndex2:int = -1;
      
      private var _516749040cancelLoopButton:BasicDelayButton;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var currentTreeIndex:int = 0;
      
      private var treeSelectedIndex1:int = -1;
      
      private var _678985606loopRepaireButton:BasicDelayButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _114581tab:ViewStack;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public var _QuestManager_BasicTxtButton1:BasicTxtButton;
      
      private var _2037712542loopList:List;
      
      private var _3602qc:QuestCanvas;
      
      private var firstFlagCanTake:Boolean = true;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _3237038info:LinkTextArea;
      
      private var _1165895868questNum:int;
      
      mx_internal var _watchers:Array = [];
      
      private var lastInitTime:Number = 0;
      
      private var _1669396974questGuideCheck:CheckBox;
      
      private var _1990131276cancelButton:BasicGlowButton;
      
      public var _QuestManager_BasicDelayButton1:BasicDelayButton;
      
      private var _2037660849loopName:Label;
      
      private var _1782857824questTree:ColorTree;
      
      mx_internal var _bindings:Array = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":500,
               "height":396,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_QuestManager_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"tab",
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "60";
                     this.bottom = "15";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ColorTree,
                                    "id":"questTree",
                                    "events":{
                                       "itemClick":"__questTree_itemClick",
                                       "mouseDown":"__questTree_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.top = "8";
                                       this.bottom = "40";
                                       this.verticalAlign = "middle";
                                       this.backgroundAlpha = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CSSBorder",
                                          "x":8,
                                          "width":152
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "id":"buttonBar",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "8";
                                       this.horizontalAlign = "center";
                                       this.horizontalGap = 3;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":149,
                                          "height":29,
                                          "x":10,
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
                                    "type":QuestCanvas,
                                    "id":"qc",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "8";
                                       this.right = "8";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"guideVisible":true};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicTxtButton,
                                    "id":"_QuestManager_BasicTxtButton1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":160,
                                          "y":200,
                                          "height":18,
                                          "width":40
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Tree,
                                    "id":"canTakeTree",
                                    "events":{
                                       "itemClick":"__canTakeTree_itemClick",
                                       "mouseDown":"__canTakeTree_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.top = "8";
                                       this.bottom = "40";
                                       this.verticalAlign = "middle";
                                       this.backgroundAlpha = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CSSBorder",
                                          "x":8,
                                          "width":152
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":QuestCanvas,
                                    "id":"canTakeQc",
                                    "stylesFactory":function():void
                                    {
                                       this.top = "8";
                                       this.right = "8";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"guideVisible":false};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicDelayButton,
                                    "id":"_QuestManager_BasicDelayButton1",
                                    "events":{"click":"___QuestManager_BasicDelayButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "-154";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":289,
                                          "styleName":"BtnNormalRed"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":List,
                                    "id":"loopList",
                                    "events":{
                                       "itemClick":"__loopList_itemClick",
                                       "mouseDown":"__loopList_mouseDown"
                                    },
                                    "stylesFactory":function():void
                                    {
                                       this.top = "8";
                                       this.bottom = "40";
                                       this.verticalAlign = "middle";
                                       this.backgroundAlpha = 0;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CSSBorder",
                                          "x":8,
                                          "width":152
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"loopQc",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "163";
                                       this.right = "8";
                                       this.top = "8";
                                       this.bottom = "8";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"loopName",
                                             "stylesFactory":function():void
                                             {
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":10,
                                                   "y":8,
                                                   "height":18,
                                                   "percentWidth":100,
                                                   "alpha":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":LinkTextArea,
                                             "id":"info",
                                             "events":{"mouseMove":"__info_mouseMove"},
                                             "stylesFactory":function():void
                                             {
                                                this.left = "8";
                                                this.right = "8";
                                                this.top = "27";
                                                this.bottom = "8";
                                                this.backgroundAlpha = 0;
                                                this.borderStyle = "none";
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "verticalScrollPolicy":"off",
                                                   "horizontalScrollPolicy":"off",
                                                   "editable":false
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "8";
                                       this.horizontalAlign = "center";
                                       this.horizontalGap = 3;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":149,
                                          "height":29,
                                          "x":0,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "id":"cancelLoopButton",
                                             "events":{"click":"__cancelLoopButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":1,
                                                   "styleName":"BtnStdBlue",
                                                   "clickDelay":5000,
                                                   "visible":false,
                                                   "includeInLayout":false,
                                                   "width":52.2
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicDelayButton,
                                             "id":"loopRepaireButton",
                                             "events":{"click":"__loopRepaireButton_click"},
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "clickDelay":15000,
                                                   "x":80,
                                                   "y":1,
                                                   "styleName":"BtnStdBlue",
                                                   "visible":false,
                                                   "includeInLayout":false,
                                                   "width":52.2
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "styleName":"HTabWrapper",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selected":true,
                                 "styleName":"HorizontalTab",
                                 "width":65
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn2",
                           "events":{"click":"__tabBtn2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":65
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CheckBox,
                  "id":"questGuideCheck",
                  "events":{"click":"__questGuideCheck_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "20";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":40};
                  }
               })]
            };
         }
      });
      
      private var timerDic:Dictionary = new Dictionary();
      
      public var _QuestManager_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1097091114loopQc:Canvas;
      
      public function QuestManager()
      {
         super();
         mx_internal::_document = this;
         this.width = 500;
         this.height = 396;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = false;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         QuestManager._watcherSetupUtil = param1;
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
      
      public function onAddChaQuest(param1:Object) : void
      {
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         var _loc7_:Object = null;
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeObject(param1);
         _loc2_.position = 0;
         var _loc3_:Object = _loc2_.readObject();
         if(!_core.player.questList)
         {
            _core.player.questList = {};
         }
         _core.player.questList[_loc3_.data.id] = _loc3_;
         var _loc4_:Boolean = false;
         for each(_loc5_ in _loc3_.questKill)
         {
            if(_loc5_)
            {
               _loc4_ = true;
            }
         }
         if(!_loc3_.questKill || !_loc4_)
         {
            if(Boolean(_loc3_.require) || isNull(_loc3_.questKill))
            {
               _loc3_.questKill = new Array();
               for each(_loc6_ in _loc3_.require)
               {
                  if(Boolean(_loc6_) && ToolKit.isEqual(_loc6_.kind,GamePredef.QUEST_REQUIRE_CREATUR))
                  {
                     _loc7_ = {};
                     _loc7_.cid = _core.player.id;
                     _loc7_.creatureId = _loc6_.itemId;
                     _loc7_.num = _loc6_.num;
                     _loc3_.questKill.push(_loc7_);
                  }
               }
            }
         }
         updateView();
      }
      
      public function set loopRepaireButton(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._678985606loopRepaireButton;
         if(_loc2_ !== param1)
         {
            this._678985606loopRepaireButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loopRepaireButton",_loc2_,param1));
         }
      }
      
      private function updateView() : void
      {
         var _loc1_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:* = undefined;
         var _loc6_:String = null;
         var _loc7_:Npc = null;
         var _loc8_:int = 0;
         var _loc9_:String = null;
         var _loc10_:Sort = null;
         questNum = 0;
         for each(_loc1_ in _core.player.questList)
         {
            ++questNum;
            if(!_core.questGuideList[_loc1_.qid])
            {
               _loc3_ = new Object();
               _loc3_.guideAble = true;
               _loc3_.taketime = _loc1_.takeDate;
               _loc3_.qid = _loc1_.qid;
               _core.questGuideList[_loc1_.qid] = _loc3_;
            }
         }
         _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).updateQuestGuide();
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         createTimer();
         if(qc)
         {
            qc.initQuest(null);
            qc.cb_guide.visible = false;
         }
         var _loc2_:ArrayCollection = new ArrayCollection();
         if(_core.player.questList)
         {
            _loc4_ = {};
            for each(_loc5_ in _core.player.questList)
            {
               if(_loc5_)
               {
                  _loc7_ = _core.getNpc(_loc5_.data.finishNpc);
                  if(_loc7_)
                  {
                     _loc7_.state = ToolKit.isBigThan(_loc5_.state,_loc7_.state) ? int(_loc5_.state) : _loc7_.state;
                  }
                  if(!_loc4_[_loc5_.data.type])
                  {
                     _loc4_[_loc5_.data.type] = new ArrayCollection();
                  }
                  _loc8_ = int(_loc5_.data.color);
                  if(ToolKit.isEqual(_loc5_.data.type,GamePredef.QUEST_TYPE_CALLBOARD))
                  {
                     _loc8_ = int(_loc5_.c);
                  }
                  _loc9_ = _loc5_.data.name;
                  if(ToolKit.isEqual(_loc5_.data.type,GamePredef.QUEST_TYPE_LOOP))
                  {
                     _loc9_ = getQuestNamePrefix(_loc5_.data) + _loc9_;
                  }
                  _loc4_[_loc5_.data.type].addItem({
                     "label":_loc9_,
                     "sort1":_loc5_.data.color,
                     "sort2":_loc5_.state,
                     "icon":ResManager["ICON_QUEST_STATE_" + _loc5_.state],
                     "color":GamePredef.CODE_ITEM_COLOR[_loc8_],
                     "data":_loc5_
                  });
                  _loc10_ = new Sort();
                  _loc10_.fields = [new SortField("sort1",true,true),new SortField("sort2",true,true)];
                  _loc4_[_loc5_.data.type].sort = _loc10_;
                  _loc4_[_loc5_.data.type].refresh();
               }
            }
            for(_loc6_ in _loc4_)
            {
               if(_loc4_[_loc6_])
               {
                  _loc2_.addItem({
                     "label":GamePredef.QUEST_TYPE_NAME[_loc6_],
                     "children":_loc4_[_loc6_]
                  });
               }
            }
            if(_loc2_.length > 0)
            {
               questTree.dataProvider = _loc2_;
               callLater(initTreeSelect);
            }
            else
            {
               questTree.dataProvider = null;
            }
         }
         finishButton.visible = false;
         finishButton.includeInLayout = false;
      }
      
      private function finishQuest() : void
      {
         if(Boolean(questTree.selectedItem) && Boolean(questTree.selectedItem.data))
         {
            if(_core.view.getUI(ViewManager.PANEL_QUEST).finishQuestPub(questTree.selectedItem.data,qc.selectId))
            {
               finishButton.visible = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qc() : QuestCanvas
      {
         return this._3602qc;
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
      }
      
      public function __questGuideCheck_click(param1:MouseEvent) : void
      {
         questGuideOpen();
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loopQc() : Canvas
      {
         return this._1097091114loopQc;
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelLoopButton() : BasicDelayButton
      {
         return this._516749040cancelLoopButton;
      }
      
      public function set cancelLoopButton(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._516749040cancelLoopButton;
         if(_loc2_ !== param1)
         {
            this._516749040cancelLoopButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cancelLoopButton",_loc2_,param1));
         }
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
      
      public function __questTree_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function onCancelQuest(param1:Object) : void
      {
         if(Boolean(_core.player) && Boolean(_core.player.questList))
         {
            delete _core.player.questList[param1.qid];
            updateView();
         }
      }
      
      public function __loopList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
         }
      }
      
      private function loopRepaire() : void
      {
         if(loopList.selectedItem)
         {
            _core.remote.loopRepaire(loopList.selectedItem.lid);
            loopRepaireButton.visible = false;
            loopRepaireButton.includeInLayout = false;
         }
      }
      
      private function cancelLoop() : void
      {
         var func:Function = null;
         if(loopList.selectedItem)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  _core.remote.cancelLoop(loopList.selectedItem.lid);
                  cancelLoopButton.visible = false;
                  cancelLoopButton.includeInLayout = false;
               }
            };
            Alert.show(Language.QUESTPANEL_S[20],"",Alert.YES | Alert.NO,this,func);
         }
      }
      
      private function timerRepeat(param1:TimerEvent) : void
      {
         var _loc2_:Object = null;
         if(Boolean(_core) && Boolean(_core.player) && Boolean(_core.player.questList))
         {
            _loc2_ = _core.player.questList[timerDic[param1.currentTarget]];
            if(Boolean(_loc2_) && Boolean(_loc2_.lastTime))
            {
               _loc2_.lastTime = int(_loc2_.lastTime);
               --_loc2_.lastTime;
            }
         }
      }
      
      private function tabBtnClick(param1:int) : void
      {
         tab.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= tab.numChildren - 1)
         {
            if(_loc2_ == param1)
            {
               this["tabBtn" + _loc2_].selected = true;
            }
            else
            {
               this["tabBtn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
         if(param1 == 1 && firstFlagCanTake)
         {
            initCanTakeQuest();
            firstFlagCanTake = false;
         }
         if(param1 == 2 && firstFlagLoop)
         {
            initLoopeQuest();
            firstFlagLoop = false;
         }
      }
      
      private function loopListClick(param1:Event) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Number = NaN;
         var _loc6_:Boolean = false;
         var _loc7_:Object = null;
         var _loc8_:String = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:String = null;
         if(loopList.selectedItem)
         {
            clearLoopView();
            _loc2_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,loopList.selectedItem.lid);
            if(_loc2_)
            {
               info.htmlText = _loc2_.info;
               _loc3_ = Language.QUESTMANAGER_S[7].replace("{minute}",0);
               if(loopList.selectedItem.type == 1 && Boolean(_core.player.loopList))
               {
                  _loc4_ = _core.player.loopList[loopList.selectedItem.lIndex];
                  _loc5_ = (new Date().getTime() + _core.timeLag - _loc4_.takeDate) / 1000 - _loc2_.refresh;
                  if(_loc5_ < 0)
                  {
                     _loc3_ = Language.QUESTMANAGER_S[7].replace("{minute}",Math.ceil(Math.abs(_loc5_) / 60).toString());
                  }
                  if(_loc4_)
                  {
                     info.htmlText += "<br>" + Language.QUESTCANVAS_S[16] + "<font color=\'#ff0000\'>" + ToolKit.add(_loc4_.ft,1) + "/" + _loc2_.num + "</font>";
                     _loc6_ = true;
                     if(_core.player.questList)
                     {
                        for each(_loc7_ in _core.player.questList)
                        {
                           if(Boolean(_loc7_) && Boolean(_loc7_.data))
                           {
                              if(_loc7_.data.subType == GamePredef.QUEST_TYPE_LOOP + "-" + _loc2_.id)
                              {
                                 info.htmlText += "<br>" + Language.QUESTCANVAS_S[17] + TextUtil.decode(TextUtil.getCodeByTypeId(GamePredef.TBL_QUEST,_loc7_.data.id));
                                 _loc6_ = false;
                              }
                           }
                        }
                     }
                     if(_loc6_)
                     {
                        loopRepaireButton.visible = true;
                        loopRepaireButton.includeInLayout = true;
                     }
                     else
                     {
                        loopRepaireButton.visible = false;
                        loopRepaireButton.includeInLayout = false;
                     }
                     cancelLoopButton.visible = true;
                     cancelLoopButton.includeInLayout = true;
                  }
               }
               else if(loopList.selectedItem.type == 2)
               {
                  for(_loc8_ in _core.player.loopTakeTime)
                  {
                     if(_loc8_ == loopList.selectedItem.lid)
                     {
                        _loc5_ = (new Date().getTime() + _core.timeLag - _core.player.loopTakeTime[_loc8_]) / 1000 - _loc2_.refresh;
                        if(_loc5_ < 0)
                        {
                           _loc3_ = Language.QUESTMANAGER_S[7].replace("{minute}",Math.ceil(Math.abs(_loc5_) / 60).toString());
                        }
                        break;
                     }
                  }
                  if(Number(loopList.selectedItem.lid) == Number(6) && Boolean(_core.loopQuestStartTime[51]))
                  {
                     _loc10_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,6);
                     _loc5_ = (new Date().getTime() + _core.timeLag - _core.loopQuestStartTime[51]) / 1000 - _loc10_.refresh;
                     if(_loc5_ < 0)
                     {
                        _loc3_ = Language.QUESTMANAGER_S[7].replace("{minute}",Math.ceil(Math.abs(_loc5_) / 60).toString());
                     }
                  }
                  _loc9_ = _core.data.getData(GamePredef.TBL_NPC,_loc2_.nid);
                  if(_loc9_)
                  {
                     _loc11_ = TextUtil.decode(TextUtil.getCodeByTypeId(GamePredef.TBL_NPC,_loc9_.id)) + TextUtil.getMapHtml(_loc9_.posMapId) + "<br>";
                     info.htmlText += "<br>" + Language.QUESTMANAGER_S[3] + _loc11_;
                  }
                  cancelLoopButton.visible = false;
                  cancelLoopButton.includeInLayout = false;
               }
               loopName.text = _loc2_.name + _loc3_;
            }
         }
         info.htmlText = "<font color=\'#FFFFFF\'>" + info.htmlText + "</font>";
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
      
      public function __canTakeTree_itemClick(param1:ListEvent) : void
      {
         canTakeTreeClick(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cancelButton() : BasicGlowButton
      {
         return this._1990131276cancelButton;
      }
      
      public function __finishButton_click(param1:MouseEvent) : void
      {
         finishQuest();
      }
      
      public function reset() : void
      {
         firstFlagCanTake = true;
         firstFlagLoop = true;
         lastInitTime = 0;
      }
      
      private function initLoopeQuest() : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         clearLoopView();
         var _loc1_:ArrayCollection = new ArrayCollection();
         if(_core.player.loopList)
         {
            for each(_loc4_ in _core.player.loopList)
            {
               if(_loc4_)
               {
                  _loc5_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,_loc4_.qid);
                  if((Boolean(_loc5_)) && _core.player.isTakeLoop(_loc5_.id))
                  {
                     _loc1_.addItem({
                        "label":_loc5_.name,
                        "type":1,
                        "lIndex":_loc4_.id,
                        "icon":ResManager["ICON_QUEST_STATE_" + GamePredef.ST_QUEST_ISTAKE],
                        "lid":_loc5_.id
                     });
                  }
               }
            }
         }
         var _loc2_:Object = _core.data.gameData[GamePredef.TBL_QUEST_LOOP];
         if(_loc2_)
         {
            for each(_loc6_ in _loc2_)
            {
               if(_loc6_)
               {
                  if(Boolean(_loc6_.isRebirth) && ToolKit.isBigThan(_loc6_.isRebirth,0))
                  {
                     if(ToolKit.isBigThan(_core.player.levelRe,_loc6_.maxLevel) || ToolKit.isSmallThan(_core.player.levelRe,_loc6_.minLevel))
                     {
                        continue;
                     }
                  }
                  else if(!_loc6_.isRebirth || ToolKit.isSmallOrEqual(_loc6_.isRebirth,0))
                  {
                     if(ToolKit.isBigThan(_core.player.level,_loc6_.maxLevel) || ToolKit.isSmallThan(_core.player.level,_loc6_.minLevel))
                     {
                        continue;
                     }
                  }
                  if(!_core.player.isTakeLoop(_loc6_.id))
                  {
                     _loc1_.addItem({
                        "label":_loc6_.name,
                        "type":2,
                        "icon":ResManager["ICON_QUEST_STATE_" + GamePredef.ST_QUEST_CANTAKE],
                        "lid":_loc6_.id
                     });
                  }
               }
            }
         }
         var _loc3_:Sort = new Sort();
         _loc3_.fields = [new SortField("type",true,false),new SortField("lid",true,false)];
         _loc1_.sort = _loc3_;
         _loc1_.refresh();
         if(loopList)
         {
            loopList.dataProvider = _loc1_;
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get questNum() : int
      {
         return this._1165895868questNum;
      }
      
      private function _QuestManager_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.QUESTMANAGER_U[8];
         _loc1_ = Language.QUESTMANAGER_U[0];
         _loc1_ = Language.QUESTMANAGER_U[1];
         _loc1_ = questNum + "/" + GamePredef.MAX_QUEST_NUM;
         _loc1_ = Language.QUESTMANAGER_U[5];
         _loc1_ = Language.QUESTMANAGER_U[1];
         _loc1_ = Language.QUESTMANAGER_U[7];
         _loc1_ = Language.QUESTMANAGER_U[3];
         _loc1_ = Language.QUESTMANAGER_U[4];
         _loc1_ = Language.QUESTMANAGER_U[6];
         _loc1_ = Language.QUESTMANAGER_S[3];
      }
      
      public function enableUI() : void
      {
      }
      
      private function setTimeoutInit() : void
      {
         _core.remote.call("initQuestManager",new Responder(showQuest));
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
      
      public function onCancelLoopQuest(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         if(param1)
         {
            if(Boolean(param1.flag) && Boolean(_core.player))
            {
               if(_core.player.loopList[param1.id])
               {
                  _loc2_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,_core.player.loopList[param1.id].qid);
                  if(_loc2_)
                  {
                     _core.sysBlueMsg(Language.QUESTPANEL_S[17] + "[" + _loc2_.name + "]");
                  }
                  _loc3_ = Number(_core.player.loopList[param1.id].takeDate);
                  _core.player.loopTakeTime[param1.id] = _loc3_;
                  delete _core.player.loopList[param1.id];
                  initLoopeQuest();
                  if(_core.getNpc(_loc2_.nid))
                  {
                     _core.setNpcState(_loc2_.nid);
                  }
               }
            }
            else
            {
               _core.sysMsg(Language.QUESTPANEL_S[19]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loopList() : List
      {
         return this._2037712542loopList;
      }
      
      public function initQuestGuide() : void
      {
         setTimeout(setTimeoutInit,1000);
      }
      
      public function onFinishLoopQuest(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1)
         {
            if(_core.player.loopList[param1.id])
            {
               _core.player.loopList[param1.id].ft = param1.ft;
               _loc2_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,_core.player.loopList[param1.id].qid);
               if(_loc2_)
               {
                  if(Number(param1.ft) == Number(_loc2_.num))
                  {
                     _core.player.loopTakeTime[_core.player.loopList[param1.id].qid] = _core.player.loopList[param1.id].takeDate;
                     _core.sysBlueMsg(Language.QUESTPANEL_S[18] + " [" + _loc2_.name + "]");
                  }
                  else
                  {
                     _core.sysBlueMsg(Language.QUESTPANEL_S[15] + param1.ft + Language.QUESTPANEL_S[16] + " [" + _loc2_.name + "] " + param1.ft + "/" + _loc2_.num);
                  }
               }
               initLoopeQuest();
            }
         }
      }
      
      public function set questTree(param1:ColorTree) : void
      {
         var _loc2_:Object = this._1782857824questTree;
         if(_loc2_ !== param1)
         {
            this._1782857824questTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questTree",_loc2_,param1));
         }
      }
      
      public function getTimerByDic(param1:int) : *
      {
         var _loc2_:* = undefined;
         for(_loc2_ in timerDic)
         {
            if(timerDic[_loc2_] == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      private function initTreeSelect() : void
      {
         if(questTree.dataProvider == null)
         {
            return;
         }
         if(treeSelectedIndex1 >= 0)
         {
            questTree.selectedIndex = treeSelectedIndex1;
            if(questTree.selectedItem)
            {
               questTree.expandItem(questTree.selectedItem,true);
               currentTreeIndex = questTree.selectedIndex;
               questClick();
            }
            else
            {
               treeSelectedIndex1 = -1;
            }
         }
         if(treeSelectedIndex2 >= 0)
         {
            questTree.selectedIndex = treeSelectedIndex2;
            if(questTree.selectedItem)
            {
               currentTreeIndex = questTree.selectedIndex;
               questClick();
            }
            else
            {
               treeSelectedIndex2 = -1;
            }
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      public function __questTree_itemClick(param1:ListEvent) : void
      {
         treeClick(param1);
      }
      
      public function __loopList_itemClick(param1:ListEvent) : void
      {
         loopListClick(param1);
      }
      
      public function __cancelLoopButton_click(param1:MouseEvent) : void
      {
         cancelLoop();
      }
      
      private function _QuestManager_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestManager_BasicTitleCanvas1.text = param1;
         },"_QuestManager_BasicTitleCanvas1.text");
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
            var _loc1_:* = Language.QUESTMANAGER_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cancelButton.label = param1;
         },"cancelButton.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = questNum + "/" + GamePredef.MAX_QUEST_NUM;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestManager_BasicTxtButton1.text = param1;
         },"_QuestManager_BasicTxtButton1.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _QuestManager_BasicDelayButton1.label = param1;
         },"_QuestManager_BasicDelayButton1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cancelLoopButton.label = param1;
         },"cancelLoopButton.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            loopRepaireButton.label = param1;
         },"loopRepaireButton.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            questGuideCheck.label = param1;
         },"questGuideCheck.label");
         result[10] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonBar() : HBox
      {
         return this._11548545buttonBar;
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
      
      private function set questTreeAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._365584322questTreeAC;
         if(_loc2_ !== param1)
         {
            this._365584322questTreeAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questTreeAC",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get loopRepaireButton() : BasicDelayButton
      {
         return this._678985606loopRepaireButton;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      private function treeClick(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(questTree.selectedItem)
         {
            if(questTree.selectedItem.children)
            {
               treeSelectedIndex1 = questTree.selectedIndex;
               if(questTree.selectedIndex == currentTreeIndex)
               {
                  questTree.expandItem(questTree.selectedItem,!questTree.isItemOpen(questTree.selectedItem));
               }
               else
               {
                  for each(_loc2_ in questTree.openItems)
                  {
                     questTree.expandItem(_loc2_,false);
                  }
                  questTree.expandItem(questTree.selectedItem,!questTree.isItemOpen(questTree.selectedItem));
               }
               currentTreeIndex = questTree.selectedIndex;
               questClick();
            }
            else
            {
               treeSelectedIndex2 = questTree.selectedIndex;
               questClick();
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      public function set canTakeTree(param1:Tree) : void
      {
         var _loc2_:Object = this._1223060299canTakeTree;
         if(_loc2_ !== param1)
         {
            this._1223060299canTakeTree = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canTakeTree",_loc2_,param1));
         }
      }
      
      private function cancelQuest() : void
      {
         var func:Function = null;
         var msgString:String = null;
         if(Boolean(questTree.selectedItem) && !questTree.selectedItem.children)
         {
            func = function(param1:CloseEvent):void
            {
               if(param1.detail == Alert.YES)
               {
                  cancelButton.visible = false;
                  _core.remote.cancelQuest(questTree.selectedItem.data.data.id);
               }
            };
            msgString = Language.QUESTMANAGER_S[1].toString().replace("{name}",getQuestNamePrefix(questTree.selectedItem.data.data) + questTree.selectedItem.data.data.name);
            Alert.show(msgString,"",Alert.YES | Alert.NO,this,func);
         }
      }
      
      public function isTakeQuest(param1:Number) : Boolean
      {
         if(Boolean(_core.player.questList) && Boolean(_core.player.questList[param1]))
         {
            return true;
         }
         return false;
      }
      
      [Bindable(event="propertyChange")]
      public function get loopName() : Label
      {
         return this._2037660849loopName;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:QuestManager = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _QuestManager_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_QuestManagerWatcherSetupUtil");
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
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      private function canTakeQuestClick() : void
      {
         if(canTakeTree.selectedItem)
         {
            if(canTakeTree.selectedItem.data)
            {
               canTakeQc.initQuest(canTakeTree.selectedItem.data);
               return;
            }
         }
         canTakeQc.initQuest(null);
      }
      
      private function timerComplete(param1:TimerEvent) : void
      {
         var _loc2_:Object = _core.player.questList[timerDic[param1.currentTarget]];
         var _loc3_:String = Language.QUESTMANAGER_S[0].toString().replace("{qname}",_loc2_.data.name);
         Alert.show(_loc3_,"",Alert.OK);
         _core.remote.cancelQuest(timerDic[param1.currentTarget]);
         param1.currentTarget.removeEventListener(TimerEvent.TIMER,timerRepeat);
         param1.currentTarget.removeEventListener(TimerEvent.TIMER_COMPLETE,timerComplete);
      }
      
      private function questGuideOpen() : void
      {
         if(questGuideCheck.selected)
         {
            _core.player.questGuideAble = true;
            _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).show();
         }
         else
         {
            _core.player.questGuideAble = false;
            _core.view.getUI(ViewManager.MAIN_QUEST_GUIDE).hide();
         }
      }
      
      public function __info_mouseMove(param1:MouseEvent) : void
      {
         param1.stopPropagation();
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
      
      private function createTimer() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Timer = null;
         removeTimerAll();
         if(_core.player.questList)
         {
            for each(_loc1_ in _core.player.questList)
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
      
      public function set loopName(param1:Label) : void
      {
         var _loc2_:Object = this._2037660849loopName;
         if(_loc2_ !== param1)
         {
            this._2037660849loopName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loopName",_loc2_,param1));
         }
      }
      
      public function __loopRepaireButton_click(param1:MouseEvent) : void
      {
         loopRepaire();
      }
      
      [Bindable(event="propertyChange")]
      public function get finishButton() : BasicGlowButton
      {
         return this._1993628251finishButton;
      }
      
      public function __cancelButton_click(param1:MouseEvent) : void
      {
         cancelQuest();
      }
      
      public function set loopQc(param1:Canvas) : void
      {
         var _loc2_:Object = this._1097091114loopQc;
         if(_loc2_ !== param1)
         {
            this._1097091114loopQc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loopQc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canTakeTree() : Tree
      {
         return this._1223060299canTakeTree;
      }
      
      public function ___QuestManager_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         initCanTakeQuest();
      }
      
      public function onFinishQuest(param1:Object) : void
      {
         if(_core.player.questList)
         {
            delete _core.player.questList[param1.qid];
            updateView();
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
      
      public function set loopList(param1:List) : void
      {
         var _loc2_:Object = this._2037712542loopList;
         if(_loc2_ !== param1)
         {
            this._2037712542loopList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"loopList",_loc2_,param1));
         }
      }
      
      private function questClick() : void
      {
         if(questTree.selectedItem)
         {
            if(questTree.selectedItem.data)
            {
               if(ToolKit.isEqual(questTree.selectedItem.data.state,GamePredef.ST_QUEST_CANFINISH) && ToolKit.isSmallOrEqual(questTree.selectedItem.data.data.finishNpc,0))
               {
                  finishButton.visible = true;
                  finishButton.includeInLayout = true;
               }
               else
               {
                  finishButton.visible = false;
                  finishButton.includeInLayout = false;
               }
               cancelButton.visible = true;
               cancelButton.includeInLayout = true;
               if(ToolKit.isEqual(1,questTree.selectedItem.data.data.type))
               {
                  cancelButton.enabled = false;
               }
               else
               {
                  cancelButton.enabled = true;
               }
               qc.initQuest(questTree.selectedItem.data);
               qc.cb_guide.visible = true;
               return;
            }
         }
         qc.initQuest(null);
         qc.cb_guide.visible = false;
      }
      
      public function disablueUI() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      private function get questTreeAC() : ArrayCollection
      {
         return this._365584322questTreeAC;
      }
      
      public function onTakeLoop(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(Boolean(param1) && Boolean(param1.flag) && Boolean(param1.d))
         {
            _loc2_ = _core.data.getData(GamePredef.TBL_QUEST_LOOP,param1.d.qid);
            if(_loc2_)
            {
               _core.sysBlueMsg(Language.QUESTPANEL_S[14] + "[" + _loc2_.name + "]");
               _core.player.loopList[param1.d.id] = param1.d;
               initLoopeQuest();
               if(_core.getNpc(_loc2_.nid))
               {
                  _core.setNpcState(_loc2_.nid);
               }
            }
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get questTree() : ColorTree
      {
         return this._1782857824questTree;
      }
      
      private function set questNum(param1:int) : void
      {
         var _loc2_:Object = this._1165895868questNum;
         if(_loc2_ !== param1)
         {
            this._1165895868questNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questNum",_loc2_,param1));
         }
      }
      
      private function isNull(param1:Object) : Boolean
      {
         var _loc3_:* = undefined;
         var _loc2_:* = true;
         for(_loc3_ in param1)
         {
            if(param1[_loc3_])
            {
               _loc2_ = false;
            }
         }
         return _loc2_;
      }
      
      public function set canTakeQc(param1:QuestCanvas) : void
      {
         var _loc2_:Object = this._43419881canTakeQc;
         if(_loc2_ !== param1)
         {
            this._43419881canTakeQc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canTakeQc",_loc2_,param1));
         }
      }
      
      private function canTakeTreeClick(param1:Event) : void
      {
         var _loc2_:* = undefined;
         if(canTakeTree.selectedItem)
         {
            if(canTakeTree.selectedItem.children)
            {
               treeSelectedIndex1 = canTakeTree.selectedIndex;
               if(canTakeTree.selectedIndex == currentTreeIndex)
               {
                  canTakeTree.expandItem(canTakeTree.selectedItem,!canTakeTree.isItemOpen(canTakeTree.selectedItem));
               }
               else
               {
                  for each(_loc2_ in canTakeTree.openItems)
                  {
                     canTakeTree.expandItem(_loc2_,false);
                  }
                  canTakeTree.expandItem(canTakeTree.selectedItem,!canTakeTree.isItemOpen(canTakeTree.selectedItem));
               }
               currentTreeIndex = canTakeTree.selectedIndex;
               canTakeQuestClick();
            }
            else
            {
               treeSelectedIndex2 = canTakeTree.selectedIndex;
               canTakeQuestClick();
            }
         }
      }
      
      private function clearLoopView() : void
      {
         loopName.text = "";
         info.text = "";
      }
      
      public function initCanTakeQuest(param1:Boolean = false) : void
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:Object = null;
         var _loc9_:Sort = null;
         var _loc2_:Object = {};
         var _loc3_:ArrayCollection = new ArrayCollection();
         var _loc4_:Object = {};
         var _loc5_:Object = {};
         _loc5_[GamePredef.QUEST_TYPE_NEWHAND] = _core.data.gameDataIndex3[GamePredef.TBL_QUEST][GamePredef.QUEST_TYPE_NEWHAND];
         _loc5_[GamePredef.QUEST_TYPE_MAIN] = _core.data.gameDataIndex3[GamePredef.TBL_QUEST][GamePredef.QUEST_TYPE_MAIN];
         _loc5_[GamePredef.QUEST_TYPE_WORLD] = _core.data.gameDataIndex3[GamePredef.TBL_QUEST][GamePredef.QUEST_TYPE_WORLD];
         _loc5_[GamePredef.QUEST_TYPE_GROWUP] = _core.data.gameDataIndex3[GamePredef.TBL_QUEST][GamePredef.QUEST_TYPE_GROWUP];
         for(_loc6_ in _loc5_)
         {
            if(_loc5_[_loc6_])
            {
               if(!_loc4_[_loc6_])
               {
                  _loc4_[_loc6_] = new ArrayCollection();
               }
               for each(_loc8_ in _loc5_[_loc6_])
               {
                  if(Boolean(_loc8_) && _core.player.canTakeQuest(_loc8_.id))
                  {
                     _loc4_[_loc6_].addItem({
                        "label":_loc8_.name,
                        "sort1":_loc8_.color,
                        "sort2":_loc8_.minLevel,
                        "color":GamePredef.CODE_ITEM_COLOR[_loc8_.color],
                        "data":_core.data.getQuestFullData(_loc8_.id)
                     });
                  }
               }
               _loc9_ = new Sort();
               _loc9_.fields = [new SortField("sort1",true,true),new SortField("sort2",true,true)];
               _loc4_[_loc6_].sort = _loc9_;
               _loc4_[_loc6_].refresh();
            }
         }
         if(param1)
         {
            return;
         }
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         for(_loc7_ in _loc4_)
         {
            if(Boolean(_loc4_[_loc7_]) && _loc4_[_loc7_].length > 0)
            {
               _loc3_.addItem({
                  "label":GamePredef.QUEST_TYPE_NAME[_loc7_],
                  "children":_loc4_[_loc7_]
               });
            }
         }
         if(Boolean(_loc5_[GamePredef.QUEST_TYPE_GROWUP]) && !this.visible)
         {
            _core.view.getUI(ViewManager.MAIN_SYS).setTaskButtonBig();
         }
         else
         {
            _core.view.getUI(ViewManager.MAIN_SYS).setStyleNormal();
         }
         if(canTakeTree)
         {
            canTakeTree.dataProvider = _loc3_;
         }
         if(canTakeQc)
         {
            canTakeQc.initQuest(null);
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         questGuideCheck.selected = _core.player.questGuideAble;
         _core.remote.call("initQuestManager",new Responder(showQuest));
         if(tab.selectedIndex == 1)
         {
            initCanTakeQuest();
         }
         if(tab.selectedIndex == 2)
         {
            initLoopeQuest();
         }
      }
      
      public function questGuideClose() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         questGuideCheck.selected = false;
      }
      
      public function set questGuideCheck(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1669396974questGuideCheck;
         if(_loc2_ !== param1)
         {
            this._1669396974questGuideCheck = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questGuideCheck",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(Boolean(_core) && Boolean(_core.player) && initialized)
         {
            questGuideCheck.selected = _core.player.questGuideAble;
         }
         if(param1 == true && new Date().getTime() >= lastInitTime + GamePredef.REFRESH_TIME * 1000)
         {
            initView();
         }
      }
      
      public function showQuest(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:uint = 0;
         var _loc5_:uint = 0;
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:* = undefined;
         var _loc10_:Object = null;
         lastInitTime = new Date().getTime();
         if(param1)
         {
            if(param1.q)
            {
               _core.player.questList = {};
               for each(_loc2_ in param1.q)
               {
                  if(_loc2_)
                  {
                     _loc3_ = _core.data.getChaQuestFullData(_loc2_);
                     if(_loc2_.pos)
                     {
                        _loc4_ = Math.round(_loc2_.pos.x / 10);
                        _loc5_ = Math.round(_loc2_.pos.y / 10);
                        _loc6_ = "<a href=\'event:L_POS|" + _loc2_.pos.map + "|" + _loc4_ + "," + _loc5_ + "\'>[" + _loc4_ + "," + _loc5_ + "]</a>";
                        _loc7_ = Language.QUESTCANVAS_S[20].toString().replace("{map}",TextUtil.getMapHtml(_loc2_.pos.map)).replace("{pos}",_loc6_).replace("{name}",_loc2_.pos.name);
                        _loc3_.data.posInfo = _loc7_;
                     }
                     if(_loc2_.clsData)
                     {
                        _loc8_ = (_loc2_.clsData.num + 1) % 10;
                        if(_loc8_ == 0)
                        {
                           _loc8_ = 10;
                        }
                        _loc9_ = Language.QUESTCANVAS_S[21].toString().replace("{num}",_loc8_);
                        _loc3_.data.clsInfo = _loc9_;
                     }
                     _core.player.questList[_loc2_.qid] = _loc3_;
                  }
               }
            }
            if(param1.l)
            {
               _core.player.loopList = param1.l;
               _core.player.loopTakeTime = [];
               for each(_loc10_ in _core.player.loopList)
               {
                  _core.player.loopTakeTime[_loc10_.qid] = Number(_loc10_.takeDate);
               }
            }
         }
         updateView();
         _core.remote.call("getLoopQuestStartTime",null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : LinkTextArea
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get canTakeQc() : QuestCanvas
      {
         return this._43419881canTakeQc;
      }
      
      [Bindable(event="propertyChange")]
      public function get questGuideCheck() : CheckBox
      {
         return this._1669396974questGuideCheck;
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         tabBtnClick(2);
      }
      
      public function __canTakeTree_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
   }
}

