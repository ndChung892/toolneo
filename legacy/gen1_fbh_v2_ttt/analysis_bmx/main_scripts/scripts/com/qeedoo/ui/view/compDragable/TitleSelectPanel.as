package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.BuffParser;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.List;
   import mx.controls.TextArea;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TitleSelectPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _103710260setButton:BasicGlowButton;
      
      private var _3773vs:ViewStack;
      
      private var ac:ArrayCollection;
      
      private var _861039529actUnSetButton:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object;
      
      private var actTitlesAc:ArrayCollection;
      
      private var _2118849637unSetButton:BasicGlowButton;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _core:Core;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      mx_internal var _watchers:Array;
      
      private var _titleList:Object;
      
      private var _3237038info:TextArea;
      
      private var firstTimeFlag:Boolean = true;
      
      private var _673810084actTitleList:List;
      
      public var _TitleSelectPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      private var _2135991530titleList:List;
      
      private var _1381455422actSetButton:BasicGlowButton;
      
      private var _1162758048actInfo:TextArea;
      
      mx_internal var _bindings:Array;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      public function TitleSelectPanel()
      {
         _documentDescriptor_ = new UIComponentDescriptor({
            "type":DragableCanvas,
            "propertiesFactory":function():Object
            {
               return {
                  "width":260,
                  "height":385,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":BasicTitleCanvas,
                     "id":"_TitleSelectPanel_BasicTitleCanvas1"
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"tabBtn0",
                     "events":{"click":"__tabBtn0_click"},
                     "stylesFactory":function():void
                     {
                        this.top = "39";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":19.35,
                           "width":65,
                           "selected":true,
                           "styleName":"HorizontalTab",
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":BasicGlowButton,
                     "id":"tabBtn1",
                     "events":{"click":"__tabBtn1_click"},
                     "stylesFactory":function():void
                     {
                        this.top = "39";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":86.35,
                           "width":65,
                           "selected":false,
                           "styleName":"HorizontalTab",
                           "height":20
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ViewStack,
                     "id":"vs",
                     "stylesFactory":function():void
                     {
                        this.left = "10";
                        this.right = "10";
                        this.top = "60";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "height":305,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Canvas,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "styleName":"CanvasBorder",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":List,
                                       "id":"titleList",
                                       "events":{
                                          "click":"__titleList_click",
                                          "itemClick":"__titleList_itemClick"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.top = "10";
                                          this.left = "10";
                                          this.right = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {"height":140};
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":TextArea,
                                       "id":"info",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.color = 16777215;
                                          this.top = "160";
                                          this.left = "10";
                                          this.right = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "editable":false,
                                             "selectable":false,
                                             "height":96
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicGlowButton,
                                       "id":"setButton",
                                       "events":{"click":"__setButton_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.paddingLeft = 1;
                                          this.bottom = "10";
                                          this.right = "125";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"BtnStdRed",
                                             "width":95
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicGlowButton,
                                       "id":"unSetButton",
                                       "events":{"click":"__unSetButton_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.paddingLeft = 1;
                                          this.bottom = "10";
                                          this.left = "125";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"BtnStdRed",
                                             "width":95
                                          };
                                       }
                                    })]
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Canvas,
                              "events":{"creationComplete":"___TitleSelectPanel_Canvas2_creationComplete"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "percentWidth":100,
                                    "percentHeight":100,
                                    "styleName":"CanvasBorder",
                                    "childDescriptors":[new UIComponentDescriptor({
                                       "type":List,
                                       "id":"actTitleList",
                                       "events":{
                                          "click":"__actTitleList_click",
                                          "itemClick":"__actTitleList_itemClick"
                                       },
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.top = "10";
                                          this.left = "10";
                                          this.right = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "height":140,
                                             "labelField":"n"
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":TextArea,
                                       "id":"actInfo",
                                       "stylesFactory":function():void
                                       {
                                          this.backgroundAlpha = 0;
                                          this.color = 16777215;
                                          this.top = "160";
                                          this.left = "10";
                                          this.right = "10";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "editable":false,
                                             "selectable":false,
                                             "height":96
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicGlowButton,
                                       "id":"actSetButton",
                                       "events":{"click":"__actSetButton_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.paddingLeft = 1;
                                          this.bottom = "10";
                                          this.right = "125";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"BtnStdRed",
                                             "width":80
                                          };
                                       }
                                    }),new UIComponentDescriptor({
                                       "type":BasicGlowButton,
                                       "id":"actUnSetButton",
                                       "events":{"click":"__actUnSetButton_click"},
                                       "stylesFactory":function():void
                                       {
                                          this.paddingLeft = 1;
                                          this.bottom = "10";
                                          this.left = "125";
                                       },
                                       "propertiesFactory":function():Object
                                       {
                                          return {
                                             "styleName":"BtnStdRed",
                                             "width":80
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
         });
         _core = Core.getInstance();
         mx_internal::_bindings = [];
         mx_internal::_watchers = [];
         mx_internal::_bindingsByDestination = {};
         mx_internal::_bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration();
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundColor = 13224393;
         };
         this.width = 260;
         this.height = 385;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TitleSelectPanel._watcherSetupUtil = param1;
      }
      
      private function getStyleDescription(param1:String, param2:String) : String
      {
         var _loc3_:String = null;
         _loc3_ = "<font color=\"#EEEE00\">" + Language.TITLESELECTPANEL_S[10] + "</font><br/>" + param1 + "<br/><br/>";
         if(Boolean(param2) && param2.length > 0)
         {
            _loc3_ += "<font color=\"#EEEE00\">" + Language.TITLESELECTPANEL_S[11] + "</font><br/>" + param2;
         }
         else
         {
            _loc3_ += "<font color=\"#EEEE00\">" + Language.TITLESELECTPANEL_S[11] + "</font><br/>" + Language.TITLESELECTPANEL_S[12];
         }
         return _loc3_;
      }
      
      public function __unSetButton_click(param1:MouseEvent) : void
      {
         unSetTitle();
      }
      
      public function __actTitleList_click(param1:MouseEvent) : void
      {
         onActTitleClick(param1);
      }
      
      private function updateView() : void
      {
         var _loc1_:Array = null;
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:Class = null;
         var _loc5_:Object = null;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _titleList = {};
         if(Boolean(_core.player.ct) && _core.player.ct.length > 1)
         {
            _loc1_ = _core.player.ct.split("|");
            for each(_loc2_ in _loc1_)
            {
               if(Boolean(_loc2_) && _loc2_.length > 0)
               {
                  _loc3_ = _core.data.getData(GamePredef.TBL_TITLE,Number(_loc2_));
                  if(_loc3_)
                  {
                     _titleList[_loc2_] = _loc3_;
                  }
               }
            }
         }
         if(_titleList)
         {
            ac = new ArrayCollection();
            for each(_loc5_ in _titleList)
            {
               if(_loc5_)
               {
                  if(ToolKit.isEqual(_loc5_.id,_core.player.t))
                  {
                     _loc4_ = ResManager.ICON_TITLE_YES;
                  }
                  else
                  {
                     _loc4_ = ResManager.ICON_TITLE_NO;
                  }
                  ac.addItem({
                     "label":_loc5_.n,
                     "icon":_loc4_,
                     "titleData":_loc5_
                  });
               }
            }
            titleList.dataProvider = ac;
            _loc6_ = -1;
            for(_loc7_ in ac)
            {
               if(Boolean(ac[_loc7_]) && ToolKit.isEqual(ac[_loc7_].titleData.id,_core.player.t))
               {
                  _loc6_ = Number(_loc7_);
               }
            }
            if(_loc6_ >= 0)
            {
               titleList.selectedIndex = _loc6_;
            }
         }
         updateActTitleView();
      }
      
      private function unSetActTitle() : void
      {
         if(!actTitleList.selectedItem)
         {
            Alert.show(Language.TITLESELECTPANEL_S[8]);
            return;
         }
         if(actTitleList.selectedItem.id != _core.player.actT)
         {
            return;
         }
         _core.remote.call("setActTitle",new Responder(onSetActTitle),-1);
         actSetButton.selected = false;
         actUnSetButton.selected = false;
      }
      
      public function onSetActTitle(param1:Object) : void
      {
         setButton.enabled = true;
         unSetButton.enabled = true;
         if(Boolean(param1) && Boolean(param1.f))
         {
            if(param1.t)
            {
               _core.player.actT = param1.t;
            }
            updateView();
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
      
      private function onSetTitle(param1:Object) : void
      {
         setButton.enabled = true;
         unSetButton.enabled = true;
         if(Boolean(param1) && Boolean(param1.f))
         {
            _core.player.t = param1.t;
            if(ToolKit.isBigThan(param1.t,0))
            {
               if(param1.bd)
               {
                  _core.view.getUI(ViewManager.MAIN_LONGBUFF).upLongBuff(param1.bd);
               }
               else
               {
                  _core.view.getUI(ViewManager.MAIN_LONGBUFF).delBuff(0);
               }
            }
            else
            {
               _core.view.getUI(ViewManager.MAIN_LONGBUFF).delBuff(0);
            }
            _core.view.getUI(ViewManager.PANEL_CHARACTOR).updateInfo();
            updateView();
         }
      }
      
      private function setTitle() : void
      {
         if(Boolean(titleList) && Boolean(titleList.selectedItem) && Boolean(titleList.selectedItem.titleData))
         {
            _core.remote.call("setTitle",new Responder(onSetTitle),titleList.selectedItem.titleData.id);
            setButton.enabled = false;
            unSetButton.enabled = false;
         }
      }
      
      private function titleClick() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(Boolean(titleList.selectedItem) && Boolean(titleList.selectedItem.titleData))
         {
            _loc1_ = titleList.selectedItem.titleData.i;
            _loc2_ = BuffParser.parseBuff2(titleList.selectedItem.titleData.b);
            info.htmlText = getStyleDescription(_loc1_,_loc2_);
         }
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
      
      private function updateActTitleView() : void
      {
         var _loc1_:Array = null;
         var _loc2_:int = 0;
         var _loc3_:Object = null;
         actTitlesAc = new ArrayCollection();
         if(_core.player.cts != null)
         {
            _loc1_ = _core.player.cts.split("|");
            for each(_loc2_ in _loc1_)
            {
               _loc3_ = GameData.d[GamePredef.TBL_TITLE][_loc2_];
               if(_loc3_)
               {
                  if(_loc3_.id == _core.player.actT)
                  {
                     _loc3_.icon = ResManager.ICON_TITLE_YES;
                  }
                  else
                  {
                     _loc3_.icon = ResManager.ICON_TITLE_NO;
                  }
                  actTitlesAc.addItem(_loc3_);
               }
            }
         }
         actTitleList.dataProvider = actTitlesAc;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleList() : List
      {
         return this._2135991530titleList;
      }
      
      [Bindable(event="propertyChange")]
      public function get setButton() : BasicGlowButton
      {
         return this._103710260setButton;
      }
      
      public function onAddTitle(param1:Object) : void
      {
         var _loc3_:Object = null;
         var _loc2_:String = "";
         if(param1)
         {
            if(param1.t)
            {
               _loc3_ = _core.data.getData(GamePredef.TBL_TITLE,param1.t);
            }
            switch(Number(param1.f))
            {
               case 1:
                  _core.player.ct = param1.ct;
                  if(_loc3_)
                  {
                     _loc2_ = Language.TITLESELECTPANEL_S[0];
                     _loc2_ = _loc2_.replace("{tData.n}",_loc3_.n);
                     _core.sysMsg(_loc2_);
                  }
                  updateView();
                  break;
               case 2:
                  _core.player.ct = param1.ct;
                  if(_loc3_)
                  {
                     _loc2_ = Language.TITLESELECTPANEL_S[2];
                     _loc2_ = _loc2_.replace("{tData.n}",_loc3_.n);
                     _core.sysMsg(_loc2_);
                  }
                  updateView();
                  break;
               case 3:
                  _core.player.ct = param1.ct;
                  if(_loc3_)
                  {
                     _loc2_ = Language.TITLESELECTPANEL_S[4];
                     _loc2_ = _loc2_.replace("{tData.n}",_loc3_.n);
                     _core.sysMsg(_loc2_);
                  }
                  updateView();
                  break;
               case 4:
                  _core.sysMsg(Language.TITLESELECTPANEL_S[6]);
                  break;
               case 5:
                  _core.sysMsg(Language.TITLESELECTPANEL_S[7]);
            }
         }
      }
      
      public function __actTitleList_itemClick(param1:ListEvent) : void
      {
         actTitleClick();
      }
      
      public function set titleList(param1:List) : void
      {
         var _loc2_:Object = this._2135991530titleList;
         if(_loc2_ !== param1)
         {
            this._2135991530titleList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleList",_loc2_,param1));
         }
      }
      
      public function set unSetButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2118849637unSetButton;
         if(_loc2_ !== param1)
         {
            this._2118849637unSetButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unSetButton",_loc2_,param1));
         }
      }
      
      public function __titleList_click(param1:MouseEvent) : void
      {
         onTitleClick(param1);
      }
      
      private function tabBtnClick(param1:int) : void
      {
         vs.selectedIndex = param1;
         this["tabBtn0"].selected = false;
         this["tabBtn1"].selected = false;
         this["tabBtn" + param1].selected = true;
      }
      
      public function updateSelectTitle(param1:int) : void
      {
         _core.player.t = param1;
         updateView();
      }
      
      public function onAddActTitle(param1:String) : void
      {
         _core.player.cts = param1;
         if(actInfo)
         {
            actInfo.text = "";
            updateActTitleView();
         }
      }
      
      private function actTitleClick() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(Boolean(actTitleList.selectedItem) && Boolean(actTitleList.selectedItem.i))
         {
            _loc1_ = actTitleList.selectedItem.i;
            _loc2_ = BuffParser.parseBuff2(actTitleList.selectedItem.b);
            actInfo.htmlText = getStyleDescription(_loc1_,_loc2_);
         }
      }
      
      public function reset() : void
      {
         firstTimeFlag = true;
      }
      
      public function set actTitleList(param1:List) : void
      {
         var _loc2_:Object = this._673810084actTitleList;
         if(_loc2_ !== param1)
         {
            this._673810084actTitleList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actTitleList",_loc2_,param1));
         }
      }
      
      public function set info(param1:TextArea) : void
      {
         var _loc2_:Object = this._3237038info;
         if(_loc2_ !== param1)
         {
            this._3237038info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"info",_loc2_,param1));
         }
      }
      
      private function onTitleClick(param1:MouseEvent) : void
      {
         if(param1.shiftKey)
         {
            _core.addLink(GamePredef.TOOLTIP_TITLE,titleList.selectedItem.titleData.id,titleList.selectedItem.titleData.n);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actInfo() : TextArea
      {
         return this._1162758048actInfo;
      }
      
      public function __actUnSetButton_click(param1:MouseEvent) : void
      {
         unSetActTitle();
      }
      
      private function setActTitle() : void
      {
         if(!actTitleList.selectedItem)
         {
            Alert.show(Language.TITLESELECTPANEL_S[8]);
            return;
         }
         if(actTitleList.selectedItem.id == _core.player.actT)
         {
            Alert.show(Language.TITLESELECTPANEL_S[9]);
            return;
         }
         _core.remote.call("setActTitle",new Responder(onSetActTitle),actTitleList.selectedItem.id);
         actSetButton.selected = false;
         actUnSetButton.selected = false;
      }
      
      private function _TitleSelectPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.TITLESELECTPANEL_U[2];
         _loc1_ = Language.TITLESELECTPANEL_U[3];
         _loc1_ = Language.TITLESELECTPANEL_U[4];
         _loc1_ = Language.TITLESELECTPANEL_U[0];
         _loc1_ = Language.TITLESELECTPANEL_U[1];
         _loc1_ = Language.TITLESELECTPANEL_U[5];
         _loc1_ = Language.TITLESELECTPANEL_U[6];
      }
      
      public function set actUnSetButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._861039529actUnSetButton;
         if(_loc2_ !== param1)
         {
            this._861039529actUnSetButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actUnSetButton",_loc2_,param1));
         }
      }
      
      public function __titleList_itemClick(param1:ListEvent) : void
      {
         titleClick();
      }
      
      public function set setButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._103710260setButton;
         if(_loc2_ !== param1)
         {
            this._103710260setButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"setButton",_loc2_,param1));
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      public function set actSetButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1381455422actSetButton;
         if(_loc2_ !== param1)
         {
            this._1381455422actSetButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actSetButton",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TitleSelectPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TitleSelectPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_TitleSelectPanelWatcherSetupUtil");
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
      public function get unSetButton() : BasicGlowButton
      {
         return this._2118849637unSetButton;
      }
      
      private function onActTitleClick(param1:MouseEvent) : void
      {
         if(param1.shiftKey)
         {
            _core.addLink(GamePredef.TOOLTIP_TITLE,actTitleList.selectedItem.id,actTitleList.selectedItem.n);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actTitleList() : List
      {
         return this._673810084actTitleList;
      }
      
      public function __actSetButton_click(param1:MouseEvent) : void
      {
         setActTitle();
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : TextArea
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get actUnSetButton() : BasicGlowButton
      {
         return this._861039529actUnSetButton;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      public function set actInfo(param1:TextArea) : void
      {
         var _loc2_:Object = this._1162758048actInfo;
         if(_loc2_ !== param1)
         {
            this._1162758048actInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"actInfo",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get actSetButton() : BasicGlowButton
      {
         return this._1381455422actSetButton;
      }
      
      private function _TitleSelectPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLESELECTPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TitleSelectPanel_BasicTitleCanvas1.text = param1;
         },"_TitleSelectPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLESELECTPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLESELECTPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLESELECTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            setButton.label = param1;
         },"setButton.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLESELECTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            unSetButton.label = param1;
         },"unSetButton.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLESELECTPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actSetButton.label = param1;
         },"actSetButton.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TITLESELECTPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            actUnSetButton.label = param1;
         },"actUnSetButton.label");
         result[6] = binding;
         return result;
      }
      
      public function ___TitleSelectPanel_Canvas2_creationComplete(param1:FlexEvent) : void
      {
         updateActTitleView();
      }
      
      private function unSetTitle() : void
      {
         if(Boolean(titleList) && Boolean(titleList.selectedItem) && Boolean(titleList.selectedItem.titleData))
         {
            _core.remote.call("setTitle",new Responder(onSetTitle),-1);
            setButton.enabled = false;
            unSetButton.enabled = false;
         }
      }
      
      public function __setButton_click(param1:MouseEvent) : void
      {
         setTitle();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            if(firstTimeFlag)
            {
               initView();
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
         _core.remote.call("gtl",new Responder(onTitleList));
      }
      
      private function onTitleList(param1:Object) : void
      {
         firstTimeFlag = false;
         _core.player.ct = param1.ct;
         _core.player.cts = param1.cts;
         updateView();
      }
   }
}

