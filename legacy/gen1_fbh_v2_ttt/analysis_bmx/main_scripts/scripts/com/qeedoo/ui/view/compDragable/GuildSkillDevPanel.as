package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BoxLabel;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.GuildSkillDevSlot;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.containers.VBox;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   import mx.utils.ObjectUtil;
   
   use namespace mx_internal;
   
   public class GuildSkillDevPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _GuildSkillDevPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1236632085gslot0:GuildSkillDevSlot;
      
      private var _1236632083gslot2:GuildSkillDevSlot;
      
      private var _3582325vBox:VBox;
      
      private var _1236632081gslot4:GuildSkillDevSlot;
      
      mx_internal var _watchers:Array = [];
      
      private var _803560629pageSel:PageSelector;
      
      private var skillDataProvider:ArrayCollection = new ArrayCollection();
      
      private var _100893exp:BoxLabel;
      
      private var _1236632082gslot3:GuildSkillDevSlot;
      
      private var gid:Number = -1;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1236632084gslot1:GuildSkillDevSlot;
      
      public var skillDevData:Object = null;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _GuildSkillDevPanel_Canvas1:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private const GUILD_SKILL_SLOT_NUM:int = 5;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":372,
               "height":338,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GuildSkillDevPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"_GuildSkillDevPanel_Canvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "percentHeight":100,
                        "autoLayout":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":VBox,
                           "id":"vBox",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":250,
                                 "horizontalScrollPolicy":"off",
                                 "y":41,
                                 "x":16,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":GuildSkillDevSlot,
                                    "id":"gslot0"
                                 }),new UIComponentDescriptor({
                                    "type":GuildSkillDevSlot,
                                    "id":"gslot1"
                                 }),new UIComponentDescriptor({
                                    "type":GuildSkillDevSlot,
                                    "id":"gslot2"
                                 }),new UIComponentDescriptor({
                                    "type":GuildSkillDevSlot,
                                    "id":"gslot3"
                                 }),new UIComponentDescriptor({
                                    "type":GuildSkillDevSlot,
                                    "id":"gslot4"
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSel",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":120,
                                 "y":275
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BoxLabel,
                           "id":"exp",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":50,
                                 "y":303,
                                 "text":"Label",
                                 "width":115,
                                 "height":18
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function GuildSkillDevPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 372;
         this.height = 338;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GuildSkillDevPanel._watcherSetupUtil = param1;
      }
      
      private function _GuildSkillDevPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GUILDPANEL_U[13];
         _loc1_ = Language.GUILD_SKILL_DEV_PANEL_U[0];
      }
      
      [Bindable(event="propertyChange")]
      public function get exp() : BoxLabel
      {
         return this._100893exp;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GuildSkillDevPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GuildSkillDevPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GuildSkillDevPanelWatcherSetupUtil");
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
      public function get vBox() : VBox
      {
         return this._3582325vBox;
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
      
      private function clearSkillDevPage() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < GUILD_SKILL_SLOT_NUM)
         {
            this["gslot" + _loc1_].clean();
            _loc1_++;
         }
      }
      
      private function onSkillDevChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc4_ + param1;
            this["gslot" + _loc4_].giids = skillDataProvider[_loc3_];
            this["gslot" + _loc4_].gid = gid;
            _loc4_++;
         }
      }
      
      public function set exp(param1:BoxLabel) : void
      {
         var _loc2_:Object = this._100893exp;
         if(_loc2_ !== param1)
         {
            this._100893exp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",_loc2_,param1));
         }
      }
      
      public function showGuildSkillView(param1:Object, param2:Boolean = true) : void
      {
         var _loc9_:* = undefined;
         this.gid = parseInt(param1.gid);
         skillDevData = param1.skillDevData;
         var _loc3_:ArrayCollection = getGuildSkillList();
         skillDataProvider = new ArrayCollection();
         var _loc4_:Object = null;
         var _loc5_:* = {
            "id":-1,
            "level":-1
         };
         var _loc6_:Object = null;
         var _loc7_:GuildPanel = Core.getInstance().view.getUI(ViewManager.PANEL_GUILD) as GuildPanel;
         _loc7_.skillDevData = param1.skillDevData;
         var _loc8_:int = 0;
         while(_loc8_ < _loc3_.length)
         {
            _loc4_ = _loc3_.getItemAt(_loc8_);
            _loc5_.id = _loc4_.id;
            _loc5_.level = _loc4_.level;
            _loc5_.learn = -1;
            _loc6_ = ObjectUtil.copy(_loc5_);
            for(_loc9_ in skillDevData)
            {
               if(_loc4_.codeName == GameData.d[GamePredef.TBL_SKILL][_loc9_].codeName)
               {
                  _loc6_.id = _loc9_;
                  _loc6_.level = GameData.d[GamePredef.TBL_SKILL][_loc9_].level;
                  _loc6_.learn = _loc5_.level;
                  break;
               }
            }
            skillDataProvider.addItem(_loc6_);
            _loc8_++;
         }
         if(_loc7_.myGuild != null)
         {
            exp.text = _loc7_.myGuild.exp;
         }
         else
         {
            exp.text = "";
         }
         initSkillList();
         if(param2 == true)
         {
            show();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageSel() : PageSelector
      {
         return this._803560629pageSel;
      }
      
      private function getGuildSkillList() : ArrayCollection
      {
         var _loc3_:* = undefined;
         var _loc1_:Object = DataManager.getInstance().gameDataIndex3[GamePredef.TBL_SKILL][4];
         var _loc2_:ArrayCollection = new ArrayCollection();
         for(_loc3_ in _loc1_)
         {
            if(ToolKit.isEqual(_loc1_[_loc3_].level,1))
            {
               _loc2_.addItem(_loc1_[_loc3_]);
            }
         }
         return _loc2_;
      }
      
      public function set gslot0(param1:GuildSkillDevSlot) : void
      {
         var _loc2_:Object = this._1236632085gslot0;
         if(_loc2_ !== param1)
         {
            this._1236632085gslot0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gslot0",_loc2_,param1));
         }
      }
      
      public function set gslot3(param1:GuildSkillDevSlot) : void
      {
         var _loc2_:Object = this._1236632082gslot3;
         if(_loc2_ !== param1)
         {
            this._1236632082gslot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gslot3",_loc2_,param1));
         }
      }
      
      public function set gslot4(param1:GuildSkillDevSlot) : void
      {
         var _loc2_:Object = this._1236632081gslot4;
         if(_loc2_ !== param1)
         {
            this._1236632081gslot4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gslot4",_loc2_,param1));
         }
      }
      
      private function initSkillList() : void
      {
         pageSel.onPageChanged = onSkillDevChanged;
         pageSel.onPageCleared = clearSkillDevPage;
         pageSel.initPageSeletor(skillDataProvider.length,GUILD_SKILL_SLOT_NUM);
      }
      
      public function set gslot2(param1:GuildSkillDevSlot) : void
      {
         var _loc2_:Object = this._1236632083gslot2;
         if(_loc2_ !== param1)
         {
            this._1236632083gslot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gslot2",_loc2_,param1));
         }
      }
      
      public function set gslot1(param1:GuildSkillDevSlot) : void
      {
         var _loc2_:Object = this._1236632084gslot1;
         if(_loc2_ !== param1)
         {
            this._1236632084gslot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gslot1",_loc2_,param1));
         }
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
      public function get gslot0() : GuildSkillDevSlot
      {
         return this._1236632085gslot0;
      }
      
      [Bindable(event="propertyChange")]
      public function get gslot4() : GuildSkillDevSlot
      {
         return this._1236632081gslot4;
      }
      
      [Bindable(event="propertyChange")]
      public function get gslot1() : GuildSkillDevSlot
      {
         return this._1236632084gslot1;
      }
      
      [Bindable(event="propertyChange")]
      public function get gslot2() : GuildSkillDevSlot
      {
         return this._1236632083gslot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get gslot3() : GuildSkillDevSlot
      {
         return this._1236632082gslot3;
      }
      
      private function _GuildSkillDevPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILDPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildSkillDevPanel_BasicTitleCanvas1.text = param1;
         },"_GuildSkillDevPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GUILD_SKILL_DEV_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GuildSkillDevPanel_Canvas1.label = param1;
         },"_GuildSkillDevPanel_Canvas1.label");
         result[1] = binding;
         return result;
      }
   }
}

