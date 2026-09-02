package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TextUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkTextArea;
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
   import mx.controls.Button;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class QuestGuide extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var num:int = 5;
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var questArr:Array;
      
      private var _241352511button1:Button;
      
      private var guideList:Array;
      
      public var _QuestGuide_SetStyle3:SetStyle;
      
      public var _QuestGuide_SetStyle4:SetStyle;
      
      public var _QuestGuide_SetStyle5:SetStyle;
      
      public var _QuestGuide_SetStyle6:SetStyle;
      
      public var _QuestGuide_SetStyle7:SetStyle;
      
      private var _2076756534guideInfo:LinkTextArea;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _QuestGuide_SetProperty2:SetProperty;
      
      public var _QuestGuide_SetProperty3:SetProperty;
      
      public var _QuestGuide_SetProperty4:SetProperty;
      
      public var _QuestGuide_SetProperty6:SetProperty;
      
      public var _QuestGuide_SetProperty7:SetProperty;
      
      public var _QuestGuide_SetProperty8:SetProperty;
      
      public var _QuestGuide_SetProperty5:SetProperty;
      
      mx_internal var _bindings:Array = [];
      
      private var _577985790changeButton:Button;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":144,
               "height":200,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Label,
                  "id":"infoTitle",
                  "stylesFactory":function():void
                  {
                     this.textAlign = "center";
                     this.color = 16774324;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "width":144,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkTextArea,
                  "id":"guideInfo",
                  "stylesFactory":function():void
                  {
                     this.leading = 5;
                     this.backgroundAlpha = 0;
                     this.borderStyle = "none";
                     this.color = 16774324;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":134,
                        "x":5,
                        "mouseEnabled":false,
                        "mouseChildren":false,
                        "editable":false,
                        "height":175,
                        "y":20,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"changeButton",
                  "events":{
                     "mouseDown":"__changeButton_mouseDown",
                     "click":"__changeButton_click"
                  },
                  "stylesFactory":function():void
                  {
                     this.paddingBottom = 0;
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                     this.paddingTop = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":true,
                        "y":3,
                        "width":10,
                        "height":10,
                        "styleName":"QuestGuideChange",
                        "x":25,
                        "selected":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Button,
                  "id":"button1",
                  "events":{
                     "mouseDown":"__button1_mouseDown",
                     "click":"__button1_click"
                  },
                  "stylesFactory":function():void
                  {
                     this.paddingBottom = 0;
                     this.paddingLeft = 0;
                     this.paddingRight = 0;
                     this.paddingTop = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":3,
                        "width":10,
                        "height":10,
                        "styleName":"QuestGuideClose",
                        "x":109
                     };
                  }
               })]
            };
         }
      });
      
      private var _1221167690infoTitle:Label;
      
      private var _core:Core = Core.getInstance();
      
      public function QuestGuide()
      {
         super();
         mx_internal::_document = this;
         this.width = 144;
         this.height = 200;
         this.mouseEnabled = false;
         this.styleName = "CanvasChatOutput";
         this.currentState = "enabled";
         this.states = [_QuestGuide_State1_c(),_QuestGuide_State2_c()];
         this.addEventListener("creationComplete",___QuestGuide_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         QuestGuide._watcherSetupUtil = param1;
      }
      
      public function __button1_mouseDown(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      [Bindable(event="propertyChange")]
      public function get changeButton() : Button
      {
         return this._577985790changeButton;
      }
      
      private function _QuestGuide_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _QuestGuide_SetProperty2 = _loc1_;
         _loc1_.name = "width";
         BindingManager.executeBindings(this,"_QuestGuide_SetProperty2",_QuestGuide_SetProperty2);
         return _loc1_;
      }
      
      private function _QuestGuide_SetProperty4_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _QuestGuide_SetProperty4 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_QuestGuide_SetProperty4",_QuestGuide_SetProperty4);
         return _loc1_;
      }
      
      public function updateView(param1:Boolean = false) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc6_:* = undefined;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:String = null;
         var _loc10_:String = null;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:* = undefined;
         var _loc16_:String = null;
         var _loc17_:int = 0;
         var _loc18_:Object = null;
         var _loc19_:Number = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:String = null;
         var _loc22_:String = null;
         var _loc23_:Object = null;
         var _loc24_:String = null;
         var _loc25_:int = 0;
         var _loc26_:Number = NaN;
         var _loc27_:String = null;
         var _loc28_:* = undefined;
         var _loc29_:Object = null;
         var _loc30_:* = undefined;
         var _loc31_:int = 0;
         var _loc32_:String = null;
         var _loc33_:uint = 0;
         var _loc34_:* = undefined;
         if(questArr)
         {
            guideInfo.htmlText = "";
            _loc2_ = 0;
            guideList = new Array();
            for each(_loc3_ in _core.questGuideList)
            {
               if(_loc3_)
               {
                  guideList.push(_loc3_);
               }
            }
            if(guideList.length <= 0)
            {
               return;
            }
            _loc4_ = guideList.sortOn("taketime",Array.NUMERIC | Array.DESCENDING);
            _core.lastQuestTime = _loc4_[0].taketime;
            _loc5_ = new Array();
            for(_loc6_ in _loc4_)
            {
               if(Boolean(_core.player) && Boolean(_core.player.questList))
               {
                  _loc5_.push(_core.player.questList[_loc4_[_loc6_].qid]);
               }
            }
            _loc7_ = 0;
            while(_loc7_ < _loc5_.length)
            {
               if(_loc5_[_loc7_])
               {
                  if(_core.questGuideList[_loc5_[_loc7_].qid] != null)
                  {
                     if(_core.questGuideList[_loc5_[_loc7_].qid].guideAble != false)
                     {
                        if(_loc2_ >= num)
                        {
                           return;
                        }
                        _loc2_++;
                        _loc8_ = "";
                        _loc9_ = "";
                        _loc10_ = "";
                        _loc11_ = true;
                        if(_loc5_[_loc7_].require)
                        {
                           for each(_loc15_ in _loc5_[_loc7_].require)
                           {
                              if(ToolKit.isEqual(_loc15_.kind,GamePredef.QUEST_REQUIRE_ITEM))
                              {
                                 _loc16_ = " (0/" + _loc15_.num + ")";
                                 _loc17_ = 0;
                                 if(ToolKit.isBigThan(_loc5_[_loc7_].state,0))
                                 {
                                    _loc18_ = _core.getTemplateData(_loc15_.type,_loc15_.itemId);
                                    _loc19_ = 0;
                                    if(_loc15_.q < 0)
                                    {
                                       _loc19_ = Number(_core.getItemNum(_loc15_.type,_loc15_.itemId).num);
                                    }
                                    else
                                    {
                                       _loc17_ = _core.basic.getColorByQuality(_loc15_.q);
                                       if(_loc17_ < 0)
                                       {
                                          _loc17_ = 0;
                                       }
                                       else if(_loc17_ > 5)
                                       {
                                          _loc17_ = 5;
                                       }
                                       _loc19_ = Number(_core.getItemNumByColor(_loc15_.type,_loc15_.itemId,_loc17_).num);
                                    }
                                    if(ToolKit.isBigOrEqual(_loc19_,_loc15_.num))
                                    {
                                       _loc16_ = Language.QUESTCANVAS_S[4];
                                    }
                                    else
                                    {
                                       _loc16_ = " (" + _loc19_ + "/" + _loc15_.num + ")";
                                       _loc11_ = false;
                                    }
                                 }
                                 _loc9_ += "<br> • " + "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc17_] + "\'><a href=\'event:L_" + GamePredef.LINK_TYPE_ARRAY[_loc15_.type] + "|" + _loc15_.itemId + "|" + _loc15_.name + "\' >" + _loc15_.name + "</a></font>" + _loc16_;
                              }
                              else if(ToolKit.isEqual(_loc15_.kind,GamePredef.QUEST_REQUIRE_CREATUR))
                              {
                                 _loc20_ = 0;
                                 _loc21_ = " (0/" + _loc15_.num + ")";
                                 if(_loc5_[_loc7_].questKill)
                                 {
                                    for each(_loc23_ in _loc5_[_loc7_].questKill)
                                    {
                                       if(Boolean(_loc23_) && ToolKit.isEqual(_loc23_.creatureId,_loc15_.itemId))
                                       {
                                          if(ToolKit.isSmallOrEqual(_loc23_.num,0))
                                          {
                                             _loc21_ = Language.QUESTCANVAS_S[4];
                                          }
                                          else
                                          {
                                             _loc20_ = ToolKit.minus(_loc15_.num,_loc23_.num);
                                             _loc21_ = " (" + _loc20_ + "/" + _loc15_.num + ")";
                                             _loc11_ = false;
                                          }
                                       }
                                    }
                                 }
                                 if(Boolean(_loc5_[_loc7_].pos) && Boolean(_loc5_[_loc7_].pos.name))
                                 {
                                    _loc22_ = _loc5_[_loc7_].pos.name;
                                 }
                                 else
                                 {
                                    _loc22_ = _loc15_.creature.name;
                                 }
                                 _loc10_ += "<br> • " + "<font color=\'" + GamePredef.MSG_EVENTTEXT_COLOR[3] + "\'><a href=\'event:L_" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CREATURE] + "|" + _loc15_.creature.id + "|" + _loc22_.split("【")[0] + "\' >" + _loc22_.split("【")[0] + "</a></font>" + _loc21_;
                              }
                              else if(ToolKit.isEqual(_loc15_.kind,GamePredef.QUEST_REQUIRE_PET))
                              {
                                 _loc24_ = " (" + _loc15_.num + ")";
                                 _loc25_ = _core.basic.colorByGrowRate(_loc15_.q / 10);
                                 _loc26_ = _core.getPetNumByColor(_loc15_.itemId,_loc15_.name,_loc25_);
                                 _loc27_ = GamePredef.MSG_ITEM_COLOR[_loc25_];
                                 if(_loc26_ < _loc15_.num)
                                 {
                                    _loc11_ = false;
                                 }
                                 _loc21_ = " (" + _loc26_ + "/" + _loc15_.num + ")";
                                 _loc10_ += "<br> • " + "<font color=\'" + _loc27_ + "\'>" + "<a href=\'event:L_" + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_CREATURE] + "|" + _loc15_.itemId + "|" + String(_loc15_.name).split("【")[0] + "\' >" + String(_loc15_.name).split("【")[0] + "</a></font>" + _loc21_;
                              }
                           }
                           _loc8_ += _loc9_ + _loc10_;
                        }
                        if(!_loc5_[_loc7_].require || _loc11_)
                        {
                           _loc28_ = "";
                           if(ToolKit.isBigThan(_loc5_[_loc7_].data.finishNpc,0))
                           {
                              _loc28_ += TextUtil.decode(" • " + Language.QUESTCANVAS_S[19] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_NPC] + "|" + _loc5_[_loc7_].data.finishNpc + "|" + _loc5_[_loc7_].fName + "|0|0|0]");
                           }
                           else if(_loc5_[_loc7_].data.type == GamePredef.QUEST_TYPE_CLASS)
                           {
                              _loc29_ = _core.data.gameDataIndex3[GamePredef.TBL_NPC][_core.player.classId];
                              var _loc35_:int = 0;
                              var _loc36_:* = _loc29_;
                              for(_loc30_ in _loc36_)
                              {
                                 _loc31_ = _loc30_;
                                 _loc32_ = _loc29_[_loc30_].name;
                                 _loc28_ += TextUtil.decode(" • " + Language.QUESTCANVAS_S[19] + GamePredef.LINK_TYPE_ARRAY[GamePredef.TBL_NPC] + "|" + _loc31_ + "|" + _loc32_ + "|0|0|0]");
                              }
                           }
                           _loc8_ = "<br>" + _loc28_;
                        }
                        _loc12_ = int(_loc5_[_loc7_].data.color);
                        if(ToolKit.isEqual(_loc5_[_loc7_].data.type,GamePredef.QUEST_TYPE_CALLBOARD))
                        {
                           _loc12_ = int(_loc5_[_loc7_].c);
                        }
                        if((_loc5_[_loc7_].data.name as String).length > 9)
                        {
                           _loc13_ = (_loc5_[_loc7_].data.name as String).substr(0,7);
                           _loc13_ = _loc13_ + "...";
                        }
                        else
                        {
                           _loc13_ = _loc5_[_loc7_].data.name as String;
                        }
                        if(_loc5_[_loc7_].lastTime > 0)
                        {
                           _loc13_ += Language.QUESTGUIDE_S[1];
                        }
                        _loc14_ = "<font size=\'12\' color=\'" + GamePredef.MSG_ITEM_COLOR[_loc12_] + "\'><B><a href=\'event:L_Q|" + _loc5_[_loc7_].data.id + "|" + _loc5_[_loc7_].data.name + "\'>" + _loc13_ + "</a></B></font>";
                        guideInfo.htmlText += _loc14_ + _loc8_ + "<br>";
                        if(_loc11_ && param1)
                        {
                           _loc33_ = uint(_loc5_[_loc7_].data.finishNpc);
                           _loc34_ = GameData.d[GamePredef.TBL_NPC][_loc33_];
                           if(_loc34_)
                           {
                              if(_loc34_.posMapId == _core.player.posMapId)
                              {
                                 _core.remote.call("setNpcState",null,_loc33_);
                              }
                           }
                        }
                     }
                  }
               }
               _loc7_++;
            }
         }
      }
      
      private function _QuestGuide_SetProperty6_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _QuestGuide_SetProperty6 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 2;
         BindingManager.executeBindings(this,"_QuestGuide_SetProperty6",_QuestGuide_SetProperty6);
         return _loc1_;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:QuestGuide = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _QuestGuide_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_QuestGuideWatcherSetupUtil");
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
      
      private function _QuestGuide_SetProperty8_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _QuestGuide_SetProperty8 = _loc1_;
         _loc1_.name = "y";
         _loc1_.value = 2;
         BindingManager.executeBindings(this,"_QuestGuide_SetProperty8",_QuestGuide_SetProperty8);
         return _loc1_;
      }
      
      private function _QuestGuide_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "disabled";
         return _loc1_;
      }
      
      public function set changeButton(param1:Button) : void
      {
         var _loc2_:Object = this._577985790changeButton;
         if(_loc2_ !== param1)
         {
            this._577985790changeButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"changeButton",_loc2_,param1));
         }
      }
      
      public function ___QuestGuide_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set guideInfo(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._2076756534guideInfo;
         if(_loc2_ !== param1)
         {
            this._2076756534guideInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"guideInfo",_loc2_,param1));
         }
      }
      
      private function _QuestGuide_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "enabled";
         _loc1_.overrides = [_QuestGuide_SetStyle1_c(),_QuestGuide_SetStyle2_c(),_QuestGuide_SetProperty1_c(),_QuestGuide_SetProperty2_i(),_QuestGuide_SetProperty3_i(),_QuestGuide_SetStyle3_i(),_QuestGuide_SetStyle4_i(),_QuestGuide_SetProperty4_i(),_QuestGuide_SetStyle5_i(),_QuestGuide_SetProperty5_i(),_QuestGuide_SetProperty6_i(),_QuestGuide_SetProperty7_i(),_QuestGuide_SetProperty8_i(),_QuestGuide_SetStyle6_i(),_QuestGuide_SetStyle7_i()];
         return _loc1_;
      }
      
      public function set infoTitle(param1:Label) : void
      {
         var _loc2_:Object = this._1221167690infoTitle;
         if(_loc2_ !== param1)
         {
            this._1221167690infoTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get infoTitle() : Label
      {
         return this._1221167690infoTitle;
      }
      
      private function _QuestGuide_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = guideInfo;
         _loc1_ = guideInfo;
         _loc1_ = guideInfo;
         _loc1_ = guideInfo;
         _loc1_ = infoTitle;
         _loc1_ = infoTitle;
         _loc1_ = button1;
         _loc1_ = button1;
         _loc1_ = changeButton;
         _loc1_ = changeButton;
         _loc1_ = button1;
         _loc1_ = changeButton;
         _loc1_ = Language.QUESTGUIDE_S[0];
      }
      
      private function _QuestGuide_SetStyle1_c() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _loc1_.name = "backgroundColor";
         _loc1_.value = 0;
         return _loc1_;
      }
      
      private function init() : void
      {
         viewType = ViewManager.TYPE_MAIN;
         guideInfo.field.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         infoTitle.filters = [GamePredef.FILTER_SHADOW_TEXT,GamePredef.FILTER_SHADOW_TEXT2];
         changeButton.toolTip = Language.QUESTMANAGER_S[5];
      }
      
      public function set button1(param1:Button) : void
      {
         var _loc2_:Object = this._241352511button1;
         if(_loc2_ !== param1)
         {
            this._241352511button1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"button1",_loc2_,param1));
         }
      }
      
      private function _QuestGuide_SetStyle7_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _QuestGuide_SetStyle7 = _loc1_;
         _loc1_.name = "horizontalCenter";
         _loc1_.value = -45;
         BindingManager.executeBindings(this,"_QuestGuide_SetStyle7",_QuestGuide_SetStyle7);
         return _loc1_;
      }
      
      public function __changeButton_mouseDown(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function viewClear() : void
      {
         guideInfo.htmlText = "";
      }
      
      private function _QuestGuide_SetStyle5_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _QuestGuide_SetStyle5 = _loc1_;
         _loc1_.name = "horizontalCenter";
         _loc1_.value = 0;
         BindingManager.executeBindings(this,"_QuestGuide_SetStyle5",_QuestGuide_SetStyle5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get guideInfo() : LinkTextArea
      {
         return this._2076756534guideInfo;
      }
      
      private function _QuestGuide_SetStyle3_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _QuestGuide_SetStyle3 = _loc1_;
         _loc1_.name = "left";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_QuestGuide_SetStyle3",_QuestGuide_SetStyle3);
         return _loc1_;
      }
      
      public function creatureKill(param1:Number, param2:int) : void
      {
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         var _loc8_:* = undefined;
         var _loc3_:Boolean = false;
         if(_core.player.questList)
         {
            for each(_loc4_ in _core.player.questList)
            {
               if(Boolean(_loc4_) && Boolean(_loc4_.questKill))
               {
                  for each(_loc5_ in _loc4_.questKill)
                  {
                     if(Boolean(_loc5_) && ToolKit.isEqual(_loc5_.creatureId,param1))
                     {
                        _loc5_.num -= param2;
                        _loc6_ = guideList.sortOn("taketime",Array.NUMERIC | Array.DESCENDING);
                        for(_loc8_ in _loc6_)
                        {
                           if(_loc6_[_loc8_].qid == _loc4_.qid)
                           {
                              _loc7_ = _loc8_;
                              break;
                           }
                        }
                        if(_loc8_ <= num - 1)
                        {
                           _loc3_ = true;
                        }
                     }
                  }
               }
            }
         }
         if(_loc3_)
         {
            updateView(true);
         }
      }
      
      private function _QuestGuide_SetProperty1_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "width";
         _loc1_.value = 160;
         return _loc1_;
      }
      
      public function reset() : void
      {
         viewClear();
      }
      
      override public function hide() : void
      {
         super.hide();
         _core.player.questGuideAble = false;
         _core.view.getUI(ViewManager.PANEL_QUESTMANAGER).questGuideClose();
      }
      
      private function _QuestGuide_SetProperty3_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _QuestGuide_SetProperty3 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_QuestGuide_SetProperty3",_QuestGuide_SetProperty3);
         return _loc1_;
      }
      
      private function _QuestGuide_SetProperty5_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _QuestGuide_SetProperty5 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_QuestGuide_SetProperty5",_QuestGuide_SetProperty5);
         return _loc1_;
      }
      
      private function _QuestGuide_SetProperty7_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _QuestGuide_SetProperty7 = _loc1_;
         _loc1_.name = "x";
         BindingManager.executeBindings(this,"_QuestGuide_SetProperty7",_QuestGuide_SetProperty7);
         return _loc1_;
      }
      
      private function _QuestGuide_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return guideInfo;
         },function(param1:Object):void
         {
            _QuestGuide_SetProperty2.target = param1;
         },"_QuestGuide_SetProperty2.target");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return guideInfo;
         },function(param1:Object):void
         {
            _QuestGuide_SetProperty3.target = param1;
         },"_QuestGuide_SetProperty3.target");
         result[1] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return guideInfo;
         },function(param1:IStyleClient):void
         {
            _QuestGuide_SetStyle3.target = param1;
         },"_QuestGuide_SetStyle3.target");
         result[2] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return guideInfo;
         },function(param1:IStyleClient):void
         {
            _QuestGuide_SetStyle4.target = param1;
         },"_QuestGuide_SetStyle4.target");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return infoTitle;
         },function(param1:Object):void
         {
            _QuestGuide_SetProperty4.target = param1;
         },"_QuestGuide_SetProperty4.target");
         result[4] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return infoTitle;
         },function(param1:IStyleClient):void
         {
            _QuestGuide_SetStyle5.target = param1;
         },"_QuestGuide_SetStyle5.target");
         result[5] = binding;
         binding = new Binding(this,function():Object
         {
            return button1;
         },function(param1:Object):void
         {
            _QuestGuide_SetProperty5.target = param1;
         },"_QuestGuide_SetProperty5.target");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return button1;
         },function(param1:Object):void
         {
            _QuestGuide_SetProperty6.target = param1;
         },"_QuestGuide_SetProperty6.target");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return changeButton;
         },function(param1:Object):void
         {
            _QuestGuide_SetProperty7.target = param1;
         },"_QuestGuide_SetProperty7.target");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return changeButton;
         },function(param1:Object):void
         {
            _QuestGuide_SetProperty8.target = param1;
         },"_QuestGuide_SetProperty8.target");
         result[9] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return button1;
         },function(param1:IStyleClient):void
         {
            _QuestGuide_SetStyle6.target = param1;
         },"_QuestGuide_SetStyle6.target");
         result[10] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return changeButton;
         },function(param1:IStyleClient):void
         {
            _QuestGuide_SetStyle7.target = param1;
         },"_QuestGuide_SetStyle7.target");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.QUESTGUIDE_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            infoTitle.text = param1;
         },"infoTitle.text");
         result[12] = binding;
         return result;
      }
      
      private function changeState() : void
      {
         if(currentState == "enabled")
         {
            currentState = "disabled";
            changeButton.selected = false;
            guideInfo.height = 0;
            changeButton.toolTip = Language.QUESTMANAGER_S[6];
         }
         else
         {
            currentState = "enabled";
            changeButton.selected = true;
            guideInfo.height = 175;
            changeButton.toolTip = Language.QUESTMANAGER_S[5];
         }
      }
      
      public function checkPoint(param1:int, param2:int) : Boolean
      {
         if(this.visible == false)
         {
            return false;
         }
         return guideInfo.checkPoint(param1,param2);
      }
      
      private function _QuestGuide_SetStyle4_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _QuestGuide_SetStyle4 = _loc1_;
         _loc1_.name = "right";
         _loc1_.value = 5;
         BindingManager.executeBindings(this,"_QuestGuide_SetStyle4",_QuestGuide_SetStyle4);
         return _loc1_;
      }
      
      public function updateQuestGuide() : void
      {
         var _loc1_:Object = null;
         var _loc2_:Array = null;
         if(_core.player.questList)
         {
            questArr = new Array();
            for each(_loc1_ in _core.player.questList)
            {
               if(_loc1_)
               {
                  _loc1_.takeDate = Number(_loc1_.takeDate);
                  questArr.push(_loc1_);
               }
            }
            _loc2_ = questArr.sortOn("takeDate",Array.NUMERIC | Array.DESCENDING);
            updateView();
         }
         else
         {
            viewClear();
         }
      }
      
      public function __button1_click(param1:MouseEvent) : void
      {
         hide();
      }
      
      private function _QuestGuide_SetStyle6_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _QuestGuide_SetStyle6 = _loc1_;
         _loc1_.name = "horizontalCenter";
         _loc1_.value = 45;
         BindingManager.executeBindings(this,"_QuestGuide_SetStyle6",_QuestGuide_SetStyle6);
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(param1)
         {
            if(Boolean(_core.player) && _core.player.questGuideAble)
            {
               super.visible = param1;
            }
         }
         else
         {
            super.visible = param1;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get button1() : Button
      {
         return this._241352511button1;
      }
      
      private function _QuestGuide_SetStyle2_c() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _loc1_.name = "backgroundAlpha";
         _loc1_.value = 0.1;
         return _loc1_;
      }
      
      public function __changeButton_click(param1:MouseEvent) : void
      {
         changeState();
      }
      
      override public function show() : void
      {
         visible = true;
      }
   }
}

