package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.MMOGame;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
   import com.qeedoo.ui.view.comp.SkillSlot;
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
   import mx.containers.VBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class SkillLearningPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _502028560_skillList:Array;
      
      private var _922634941sSlot4:SkillSlot;
      
      public var _SkillLearningPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3582325vBox:VBox;
      
      private var _922634945sSlot0:SkillSlot;
      
      private var _803560629pageSel:PageSelector;
      
      private var _97884btn:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var sList:Object;
      
      private var _922634942sSlot3:SkillSlot;
      
      private var _922634944sSlot1:SkillSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _nid:int;
      
      mx_internal var _bindings:Array = [];
      
      public var _SkillLearningPanel_BasicGlowButton2:BasicGlowButton;
      
      private const SKILL_SLOT_NUM:int = 5;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":280,
               "height":338,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_SkillLearningPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":VBox,
                  "id":"vBox",
                  "events":{"mouseDown":"__vBox_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.paddingLeft = 5;
                     this.paddingTop = 5;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":255,
                        "x":11,
                        "height":261,
                        "y":29,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":SkillSlot,
                           "id":"sSlot0",
                           "events":{
                              "doubleClick":"__sSlot0_doubleClick",
                              "click":"__sSlot0_click"
                           }
                        }),new UIComponentDescriptor({
                           "type":SkillSlot,
                           "id":"sSlot1",
                           "events":{
                              "doubleClick":"__sSlot1_doubleClick",
                              "click":"__sSlot1_click"
                           }
                        }),new UIComponentDescriptor({
                           "type":SkillSlot,
                           "id":"sSlot2",
                           "events":{
                              "doubleClick":"__sSlot2_doubleClick",
                              "click":"__sSlot2_click"
                           }
                        }),new UIComponentDescriptor({
                           "type":SkillSlot,
                           "id":"sSlot3",
                           "events":{
                              "doubleClick":"__sSlot3_doubleClick",
                              "click":"__sSlot3_click"
                           }
                        }),new UIComponentDescriptor({
                           "type":SkillSlot,
                           "id":"sSlot4",
                           "events":{
                              "doubleClick":"__sSlot4_doubleClick",
                              "click":"__sSlot4_click"
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PageSelector,
                  "id":"pageSel",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":50,
                        "y":265
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btn",
                  "events":{"click":"__btn_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "16";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":154.2,
                        "styleName":"BtnStdGreen",
                        "width":52.2,
                        "height":27
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_SkillLearningPanel_BasicGlowButton2",
                  "events":{"click":"___SkillLearningPanel_BasicGlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "16";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":212.4,
                        "styleName":"BtnStdRed",
                        "width":52.2,
                        "height":27
                     };
                  }
               })]
            };
         }
      });
      
      private var _selectedSkill:SkillSlot;
      
      private var _922634943sSlot2:SkillSlot;
      
      private var _core:Core = Core.getInstance();
      
      public function SkillLearningPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 280;
         this.height = 338;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         SkillLearningPanel._watcherSetupUtil = param1;
      }
      
      public function set sSlot1(param1:SkillSlot) : void
      {
         var _loc2_:Object = this._922634944sSlot1;
         if(_loc2_ !== param1)
         {
            this._922634944sSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sSlot1",_loc2_,param1));
         }
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         learn();
      }
      
      public function set sSlot4(param1:SkillSlot) : void
      {
         var _loc2_:Object = this._922634941sSlot4;
         if(_loc2_ !== param1)
         {
            this._922634941sSlot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sSlot4",_loc2_,param1));
         }
      }
      
      public function set sSlot2(param1:SkillSlot) : void
      {
         var _loc2_:Object = this._922634943sSlot2;
         if(_loc2_ !== param1)
         {
            this._922634943sSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sSlot2",_loc2_,param1));
         }
      }
      
      public function set sSlot0(param1:SkillSlot) : void
      {
         var _loc2_:Object = this._922634945sSlot0;
         if(_loc2_ !== param1)
         {
            this._922634945sSlot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sSlot0",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:SkillLearningPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _SkillLearningPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_SkillLearningPanelWatcherSetupUtil");
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
      
      private function _SkillLearningPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLLEARNINGPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SkillLearningPanel_BasicTitleCanvas1.text = param1;
         },"_SkillLearningPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLLEARNINGPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn.label = param1;
         },"btn.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.SKILLLEARNINGPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _SkillLearningPanel_BasicGlowButton2.label = param1;
         },"_SkillLearningPanel_BasicGlowButton2.label");
         result[2] = binding;
         return result;
      }
      
      public function __sSlot1_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __sSlot2_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __sSlot4_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      private function _SkillLearningPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.SKILLLEARNINGPANEL_U[2];
         _loc1_ = Language.SKILLLEARNINGPANEL_U[0];
         _loc1_ = Language.SKILLLEARNINGPANEL_U[1];
      }
      
      public function set pageSel(param1:PageSelector) : void
      {
         var _loc2_:Object = this._803560629pageSel;
         if(_loc2_ !== param1)
         {
            this._803560629pageSel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSel",_loc2_,param1));
         }
      }
      
      private function clickHandler(param1:Event) : void
      {
         var _loc2_:SkillSlot = null;
         clearSelection();
         _loc2_ = SkillSlot(param1.currentTarget);
         _loc2_.selected = true;
         var _loc3_:Object = DataManager.getInstance().getGameData(GamePredef.TBL_SKILL,_loc2_.giid);
         btn.enabled = true;
         _selectedSkill = _loc2_;
      }
      
      private function onSkillListChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            this["sSlot" + _loc4_].visible = true;
            this["sSlot" + _loc4_].slotData = _skillList[_loc3_];
            _loc4_++;
         }
      }
      
      private function dClickHandler(param1:Event) : void
      {
         var _loc2_:SkillSlot = SkillSlot(param1.currentTarget);
         _loc2_.selected = true;
      }
      
      private function setView() : void
      {
         var _loc1_:Core = Core.getInstance();
         _skillList = sortList(sList);
         initSkillList();
         btn.enabled = false;
         _selectedSkill = null;
      }
      
      [Bindable(event="propertyChange")]
      private function get _skillList() : Array
      {
         return this._502028560_skillList;
      }
      
      public function __sSlot1_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __sSlot3_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __sSlot0_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      public function __sSlot3_doubleClick(param1:MouseEvent) : void
      {
         dClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get sSlot3() : SkillSlot
      {
         return this._922634942sSlot3;
      }
      
      public function set btn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function set sSlot3(param1:SkillSlot) : void
      {
         var _loc2_:Object = this._922634942sSlot3;
         if(_loc2_ !== param1)
         {
            this._922634942sSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sSlot3",_loc2_,param1));
         }
      }
      
      private function clearSelection() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < vBox.numChildren)
         {
            SkillSlot(vBox.getChildAt(_loc1_)).selected = false;
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sSlot1() : SkillSlot
      {
         return this._922634944sSlot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get sSlot2() : SkillSlot
      {
         return this._922634943sSlot2;
      }
      
      private function learn() : void
      {
         if(_selectedSkill)
         {
            if(_core.player.expSkill < _selectedSkill.slotData.expSkill)
            {
               _core.sysMsg(Language.SKILLLEARNINGPANEL_S[0]);
               return;
            }
            MMOGame.remote.skillLearn(_nid,_selectedSkill.slotData.id);
         }
      }
      
      public function updateSkillList() : void
      {
         if(visible && _nid > 0)
         {
            _core.remote.npcFuncClick(_nid);
         }
      }
      
      public function showData(param1:Object) : void
      {
         _skillList = param1.skillList;
         _nid = param1.nid;
         initView();
         show();
      }
      
      private function clearSkillList() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < SKILL_SLOT_NUM)
         {
            this["sSlot" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSel() : PageSelector
      {
         return this._803560629pageSel;
      }
      
      private function set _skillList(param1:Array) : void
      {
         var _loc2_:Object = this._502028560_skillList;
         if(_loc2_ !== param1)
         {
            this._502028560_skillList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_skillList",_loc2_,param1));
         }
      }
      
      private function setSlotsEnabled() : void
      {
         var _loc2_:SkillSlot = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ < vBox.numChildren)
         {
            _loc2_ = SkillSlot(vBox.getChildAt(_loc1_));
            _loc3_ = _loc2_.slotData;
            if(GamePredef.GLOBAL_SETTING["defaultMoney"] == 1)
            {
               _loc4_ = _core.player.moneyBind;
            }
            else
            {
               _loc4_ = _core.player.money;
            }
            if(GamePredef.GLOBAL_SETTING["defaultGold"] == 1)
            {
               _loc5_ = _core.player.goldBind;
            }
            else
            {
               _loc5_ = _core.player.gold;
            }
            if(_loc3_.price > _loc4_ || _loc3_.gold > _loc5_ || _loc3_.expSkill > _core.player.expSkill)
            {
               _loc2_.enabled = false;
            }
            _loc1_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sSlot4() : SkillSlot
      {
         return this._922634941sSlot4;
      }
      
      public function showSkill(param1:Object) : void
      {
         _nid = param1.nid;
         sList = param1.sList;
         initView();
         show();
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         setView();
      }
      
      [Bindable(event="propertyChange")]
      public function get sSlot0() : SkillSlot
      {
         return this._922634945sSlot0;
      }
      
      public function ___SkillLearningPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private function sortList(param1:Object) : Array
      {
         var _loc3_:Object = null;
         var _loc2_:Array = [];
         for each(_loc3_ in param1)
         {
            _loc2_.push(_loc3_);
         }
         return _loc2_.sortOn("position",Array.NUMERIC);
      }
      
      private function initSkillList() : void
      {
         pageSel.onPageChanged = onSkillListChanged;
         pageSel.onPageCleared = clearSkillList;
         pageSel.initPageSeletor(_skillList.length,SKILL_SLOT_NUM);
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : BasicGlowButton
      {
         return this._97884btn;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1)
         {
            clearSelection();
         }
      }
      
      private function clearSlots() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < vBox.numChildren)
         {
            SkillSlot(vBox.getChildAt(_loc1_)).clean();
            SkillSlot(vBox.getChildAt(_loc1_)).selected = false;
            _loc1_++;
         }
      }
      
      public function __sSlot2_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __sSlot0_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function set vBox(param1:VBox) : void
      {
         var _loc2_:Object = this._3582325vBox;
         if(_loc2_ !== param1)
         {
            this._3582325vBox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vBox",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vBox() : VBox
      {
         return this._3582325vBox;
      }
      
      public function __sSlot4_click(param1:MouseEvent) : void
      {
         clickHandler(param1);
      }
      
      public function __vBox_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
   }
}

