package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DelayButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.QuestCanvas;
   import com.qeedoo.ui.view.comp.SimpleCanvas;
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
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CallBoardPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1783104352questList:List;
      
      private var _1603303783takeButton:BasicGlowButton;
      
      private var _3602qc:QuestCanvas;
      
      public var _CallBoardPanel_DelayButton1:DelayButton;
      
      public var _CallBoardPanel_DelayButton2:DelayButton;
      
      public var _CallBoardPanel_DelayButton3:DelayButton;
      
      public var _CallBoardPanel_DelayButton4:DelayButton;
      
      public var _CallBoardPanel_DelayButton5:DelayButton;
      
      public var _CallBoardPanel_DelayButton6:DelayButton;
      
      private var firstTimeFlag:Boolean = true;
      
      private var refreshNum:int = 0;
      
      private var qList:Object;
      
      mx_internal var _watchers:Array = [];
      
      public var _CallBoardPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":480,
               "height":362,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_CallBoardPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":280,
                        "y":40,
                        "width":147,
                        "x":12,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":List,
                           "id":"questList",
                           "events":{
                              "itemClick":"__questList_itemClick",
                              "mouseDown":"__questList_mouseDown"
                           },
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CSSBorder",
                                 "horizontalScrollPolicy":"off",
                                 "y":0,
                                 "height":210,
                                 "width":145,
                                 "x":1,
                                 "itemRenderer":_CallBoardPanel_ClassFactory1_c()
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"_CallBoardPanel_DelayButton1",
                           "events":{"click":"___CallBoardPanel_DelayButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":91,
                                 "y":248,
                                 "styleName":"BtnCallBoardFlag0",
                                 "width":29,
                                 "height":29
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"_CallBoardPanel_DelayButton2",
                           "events":{"click":"___CallBoardPanel_DelayButton2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":217,
                                 "styleName":"BtnCallBoardFlag1",
                                 "width":29,
                                 "height":29
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"_CallBoardPanel_DelayButton3",
                           "events":{"click":"___CallBoardPanel_DelayButton3_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":59,
                                 "y":217,
                                 "styleName":"BtnCallBoardFlag2",
                                 "width":29,
                                 "height":29
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"_CallBoardPanel_DelayButton4",
                           "events":{"click":"___CallBoardPanel_DelayButton4_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":91,
                                 "y":217,
                                 "styleName":"BtnCallBoardFlag3",
                                 "width":29,
                                 "height":29
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"_CallBoardPanel_DelayButton5",
                           "events":{"click":"___CallBoardPanel_DelayButton5_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":27,
                                 "y":248,
                                 "styleName":"BtnCallBoardFlag4",
                                 "width":29,
                                 "height":29
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":DelayButton,
                           "id":"_CallBoardPanel_DelayButton6",
                           "events":{"click":"___CallBoardPanel_DelayButton6_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":59,
                                 "y":248,
                                 "styleName":"BtnCallBoardFlag5",
                                 "width":29,
                                 "height":29
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":QuestCanvas,
                  "id":"qc",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "x":164
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"takeButton",
                  "events":{"click":"__takeButton_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":59,
                        "y":322,
                        "styleName":"BtnStdRed",
                        "width":52.2
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function CallBoardPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 480;
         this.height = 362;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CallBoardPanel._watcherSetupUtil = param1;
      }
      
      private function onTakeCBQuest(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.f))
         {
            if(qList)
            {
               delete qList[param1.i];
               updateView();
            }
         }
      }
      
      public function ___CallBoardPanel_DelayButton1_click(param1:MouseEvent) : void
      {
         refresh(0);
      }
      
      public function ___CallBoardPanel_DelayButton3_click(param1:MouseEvent) : void
      {
         refresh(2);
      }
      
      public function ___CallBoardPanel_DelayButton5_click(param1:MouseEvent) : void
      {
         refresh(4);
      }
      
      private function updateView() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:String = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         viewClear();
         if(qList)
         {
            _loc1_ = new ArrayCollection();
            for(_loc2_ in qList)
            {
               if(qList[_loc2_])
               {
                  qList[_loc2_].sIndex = _loc2_;
                  _loc1_.addItem({
                     "text":qList[_loc2_].data.name,
                     "color":GamePredef.MSG_ITEM_COLOR[qList[_loc2_].c],
                     "questData":qList[_loc2_]
                  });
               }
            }
            questList.dataProvider = _loc1_;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CallBoardPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CallBoardPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CallBoardPanelWatcherSetupUtil");
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
      
      private function listClick() : void
      {
         if(questList.selectedItem)
         {
            qc.questData = questList.selectedItem.questData;
            if(ToolKit.isEqual(questList.selectedItem.questData.state,GamePredef.ST_QUEST_CANTAKE))
            {
               takeButton.visible = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get qc() : QuestCanvas
      {
         return this._3602qc;
      }
      
      [Bindable(event="propertyChange")]
      public function get takeButton() : BasicGlowButton
      {
         return this._1603303783takeButton;
      }
      
      private function takeQuest() : void
      {
         if(questList.selectedItem)
         {
            if(_core.player.qn >= GamePredef.MAX_QUEST_NUM)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[3]);
            }
            else
            {
               _core.remote.call("takeCBQuest",new Responder(onTakeCBQuest),questList.selectedItem.questData.sIndex);
               takeButton.visible = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get questList() : List
      {
         return this._1783104352questList;
      }
      
      private function viewClear() : void
      {
         takeButton.visible = false;
         qc.questData = null;
      }
      
      private function onInitCB(param1:Object) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         _loc2_ = "";
         if(param1)
         {
            if(Boolean(param1.f) && Boolean(param1.data))
            {
               refreshNum = param1.n;
               qList = {};
               for(_loc3_ in param1.data)
               {
                  if(param1.data[_loc3_])
                  {
                     qList[_loc3_] = _core.data.getChaQuestFullData(param1.data[_loc3_]);
                  }
               }
               updateView();
            }
            else if(param1.t == 1)
            {
               _loc2_ = Language.CALLBOARDPANEL_S[0];
               _loc2_ = _loc2_.replace("{num}",GamePredef.MAX_CALLBOARD_QUEST_NUM);
               _core.sysMsg(_loc2_);
            }
            else if(param1.t == 2)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[2]);
            }
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
      
      public function __questList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
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
      
      private function _CallBoardPanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CallBoardPanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      public function set questList(param1:List) : void
      {
         var _loc2_:Object = this._1783104352questList;
         if(_loc2_ !== param1)
         {
            this._1783104352questList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"questList",_loc2_,param1));
         }
      }
      
      public function __takeButton_click(param1:MouseEvent) : void
      {
         takeQuest();
      }
      
      public function ___CallBoardPanel_DelayButton2_click(param1:MouseEvent) : void
      {
         refresh(1);
      }
      
      public function ___CallBoardPanel_DelayButton4_click(param1:MouseEvent) : void
      {
         refresh(3);
      }
      
      public function ___CallBoardPanel_DelayButton6_click(param1:MouseEvent) : void
      {
         refresh(5);
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initCB",new Responder(onInitCB));
      }
      
      private function _CallBoardPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CALLBOARDPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CallBoardPanel_BasicTitleCanvas1.text = param1;
         },"_CallBoardPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CALLBOARDPANEL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CallBoardPanel_DelayButton1.toolTip = param1;
         },"_CallBoardPanel_DelayButton1.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CALLBOARDPANEL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CallBoardPanel_DelayButton2.toolTip = param1;
         },"_CallBoardPanel_DelayButton2.toolTip");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CALLBOARDPANEL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CallBoardPanel_DelayButton3.toolTip = param1;
         },"_CallBoardPanel_DelayButton3.toolTip");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CALLBOARDPANEL_S[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CallBoardPanel_DelayButton4.toolTip = param1;
         },"_CallBoardPanel_DelayButton4.toolTip");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CALLBOARDPANEL_S[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CallBoardPanel_DelayButton5.toolTip = param1;
         },"_CallBoardPanel_DelayButton5.toolTip");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CALLBOARDPANEL_S[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CallBoardPanel_DelayButton6.toolTip = param1;
         },"_CallBoardPanel_DelayButton6.toolTip");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTMANAGER_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            takeButton.label = param1;
         },"takeButton.label");
         result[7] = binding;
         return result;
      }
      
      private function refresh(param1:int) : void
      {
         if(param1 >= 0 && param1 <= 5)
         {
            if(_core.haveItem(GamePredef.TBL_ITEM_TEMPLATE,ItemConfig.ITEM_CALLBOARD[param1],1))
            {
               _core.remote.call("initCBByItem",new Responder(onInitCB),param1);
            }
            else if(param1 == 1)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[4]);
            }
            else if(param1 == 0)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[20]);
            }
            else if(param1 == 2)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[18]);
            }
            else if(param1 == 3)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[19]);
            }
            else if(param1 == 4)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[22]);
            }
            else if(param1 == 5)
            {
               _core.sysMsg(Language.CALLBOARDPANEL_S[21]);
            }
         }
      }
      
      private function _CallBoardPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CALLBOARDPANEL_U[0];
         _loc1_ = Language.CALLBOARDPANEL_S[11];
         _loc1_ = Language.CALLBOARDPANEL_S[12];
         _loc1_ = Language.CALLBOARDPANEL_S[13];
         _loc1_ = Language.CALLBOARDPANEL_S[14];
         _loc1_ = Language.CALLBOARDPANEL_S[15];
         _loc1_ = Language.CALLBOARDPANEL_S[16];
         _loc1_ = Language.QUESTMANAGER_U[2];
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 && firstTimeFlag)
         {
            initView();
            firstTimeFlag = false;
         }
         if(!param1)
         {
            viewClear();
         }
      }
      
      public function __questList_itemClick(param1:ListEvent) : void
      {
         listClick();
      }
   }
}

