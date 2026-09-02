package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicDelayButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CrossFightPlayerInfo;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.controls.Alert;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossFightTeamInfo extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _CrossFightTeamInfo_Label2:Label;
      
      public var _CrossFightTeamInfo_Label3:Label;
      
      public var _CrossFightTeamInfo_Label4:Label;
      
      private var _112396936vote2:BasicDelayButton;
      
      private var _948881626member4:CrossFightPlayerInfo;
      
      mx_internal var _watchers:Array = [];
      
      private var teamData:Object;
      
      private var _112396937vote3:BasicDelayButton;
      
      private var PK_MOBAI_AWARD3_ID:int = 3982;
      
      private var _948881625member3:CrossFightPlayerInfo;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _33585252protectSlot1:ItemSlot;
      
      private var _33585253protectSlot2:ItemSlot;
      
      private var _33585254protectSlot3:ItemSlot;
      
      private var PK_MOBAI_COST2:int = 10;
      
      private var PK_MOBAI_COST3:int = 100;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var PK_MOBAI_COST1_ID:int = 3983;
      
      private var _948881624member2:CrossFightPlayerInfo;
      
      private var _1668760952teamName:Label;
      
      private var PK_MOBAI_AWARD2_ID:int = 3981;
      
      private var memberData:Object;
      
      private var _112396935vote1:BasicDelayButton;
      
      private var PK_MOBAI_AWARD1_ID:int = 3980;
      
      private var _948881623member1:CrossFightPlayerInfo;
      
      mx_internal var _bindings:Array = [];
      
      private var _948881627member5:CrossFightPlayerInfo;
      
      private var _110371416title:BasicTitleCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":300,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"title"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"teamName",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.top = "34";
                     this.fontSize = 18;
                     this.textAlign = "center";
                     this.color = 16776960;
                     this.fontWeight = "bold";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":255,
                        "height":32
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CrossFightPlayerInfo,
                  "id":"member1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":59,
                        "x":55,
                        "width":222,
                        "height":72
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CrossFightPlayerInfo,
                  "id":"member2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":149,
                        "x":55,
                        "width":222,
                        "height":72
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CrossFightPlayerInfo,
                  "id":"member3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":239,
                        "x":55,
                        "width":222,
                        "height":72
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CrossFightPlayerInfo,
                  "id":"member4",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":59,
                        "x":280,
                        "width":222,
                        "height":72
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":CrossFightPlayerInfo,
                  "id":"member5",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":149,
                        "x":280,
                        "width":222,
                        "height":72
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"protectSlot1",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-100";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":330,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"protectSlot2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":330,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ItemSlot,
                  "id":"protectSlot3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "100";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":330,
                        "movable":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"vote1",
                  "events":{"click":"__vote1_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-100";
                     this.bottom = "50";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalRed",
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"vote2",
                  "events":{"click":"__vote2_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "50";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalRed",
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
                  "id":"vote3",
                  "events":{"click":"__vote3_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "100";
                     this.bottom = "50";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnNormalRed",
                        "width":90
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_CrossFightTeamInfo_Label2",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "-100";
                     this.bottom = "20";
                     this.textAlign = "center";
                     this.color = 16776960;
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_CrossFightTeamInfo_Label3",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.bottom = "20";
                     this.textAlign = "center";
                     this.color = 16776960;
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_CrossFightTeamInfo_Label4",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "100";
                     this.bottom = "20";
                     this.textAlign = "center";
                     this.color = 16776960;
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function CrossFightTeamInfo()
      {
         super();
         mx_internal::_document = this;
         this.width = 300;
         this.height = 450;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossFightTeamInfo_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossFightTeamInfo._watcherSetupUtil = param1;
      }
      
      private function toVote(param1:int) : void
      {
         var str:String;
         var name:String;
         var func:Function;
         var cost:int = 0;
         var index:int = param1;
         if(!teamData || teamData.tid == null)
         {
            return;
         }
         cost = 0;
         if(index == 0)
         {
            cost = 1;
         }
         else if(index == 1)
         {
            cost = PK_MOBAI_COST2;
         }
         else
         {
            if(index != 2)
            {
               return;
            }
            cost = PK_MOBAI_COST3;
         }
         func = function(param1:CloseEvent):void
         {
            var _loc2_:Object = null;
            if(param1.detail == Alert.YES)
            {
               if(index == 0)
               {
                  _loc2_ = _core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,PK_MOBAI_COST1_ID);
                  if(!_loc2_ || !_loc2_.slot || _loc2_.num < 1)
                  {
                     ViewManager.getInstance().getUI(ViewManager.MAIN_CHAT).showSystemMsg(Language.CROSS_FIGHT_PANEL_U[35]);
                     return;
                  }
               }
               else if(_core.player.gold < cost)
               {
                  Alert.show(Language.GUILDCONTRIBPANEL_U[1]);
               }
               _core.remote.call("crossPKMobai",new Responder(onBuy),index,teamData.tid);
            }
         };
         str = Language.CROSS_FIGHT_PANEL_U[36];
         name = Language.CROSS_FIGHT_PANEL_U[37];
         if(index > 0)
         {
            name = Language.GAMEPREDEF_S[49];
         }
         str = str.replace("{num}",cost).replace("{name}",name);
         Alert.show(str,"",Alert.YES | Alert.NO,null,func);
      }
      
      private function _CrossFightTeamInfo_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[44];
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Slot.SLOT_BAG;
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[29];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[30];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[31];
         _loc1_ = Language.CROSS_FIGHT_PANEL_U[49];
         _loc1_ = 10 + Language.GAMEPREDEF_S[49];
         _loc1_ = 100 + Language.GAMEPREDEF_S[49];
      }
      
      [Bindable(event="propertyChange")]
      public function get vote1() : BasicDelayButton
      {
         return this._112396935vote1;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossFightTeamInfo = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossFightTeamInfo_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossFightTeamInfoWatcherSetupUtil");
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
      public function get protectSlot1() : ItemSlot
      {
         return this._33585252protectSlot1;
      }
      
      public function set vote1(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._112396935vote1;
         if(_loc2_ !== param1)
         {
            this._112396935vote1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vote1",_loc2_,param1));
         }
      }
      
      public function set vote3(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._112396937vote3;
         if(_loc2_ !== param1)
         {
            this._112396937vote3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vote3",_loc2_,param1));
         }
      }
      
      public function set protectSlot2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585253protectSlot2;
         if(_loc2_ !== param1)
         {
            this._33585253protectSlot2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot2",_loc2_,param1));
         }
      }
      
      private function _CrossFightTeamInfo_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            title.text = param1;
         },"title.text");
         result[0] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot1.slotType = param1;
         },"protectSlot1.slotType");
         result[1] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot2.slotType = param1;
         },"protectSlot2.slotType");
         result[2] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_BAG;
         },function(param1:int):void
         {
            protectSlot3.slotType = param1;
         },"protectSlot3.slotType");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vote1.label = param1;
         },"vote1.label");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[30];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vote2.label = param1;
         },"vote2.label");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            vote3.label = param1;
         },"vote3.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_FIGHT_PANEL_U[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightTeamInfo_Label2.text = param1;
         },"_CrossFightTeamInfo_Label2.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = 10 + Language.GAMEPREDEF_S[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightTeamInfo_Label3.text = param1;
         },"_CrossFightTeamInfo_Label3.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = 100 + Language.GAMEPREDEF_S[49];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossFightTeamInfo_Label4.text = param1;
         },"_CrossFightTeamInfo_Label4.text");
         result[9] = binding;
         return result;
      }
      
      private function init() : void
      {
         if(Boolean(teamData) && Boolean(memberData))
         {
            open(teamData,memberData);
         }
         refreshItems();
      }
      
      [Bindable(event="propertyChange")]
      public function get member4() : CrossFightPlayerInfo
      {
         return this._948881626member4;
      }
      
      [Bindable(event="propertyChange")]
      public function get vote3() : BasicDelayButton
      {
         return this._112396937vote3;
      }
      
      private function refreshItems() : void
      {
         this["protectSlot1"].type = GamePredef.TBL_ITEM_TEMPLATE;
         this["protectSlot1"].giid = PK_MOBAI_AWARD1_ID;
         this["protectSlot1"].enabled = true;
         this["protectSlot1"].acceptable = false;
         this["protectSlot2"].type = GamePredef.TBL_ITEM_TEMPLATE;
         this["protectSlot2"].giid = PK_MOBAI_AWARD2_ID;
         this["protectSlot2"].enabled = true;
         this["protectSlot2"].acceptable = false;
         this["protectSlot3"].type = GamePredef.TBL_ITEM_TEMPLATE;
         this["protectSlot3"].giid = PK_MOBAI_AWARD3_ID;
         this["protectSlot3"].enabled = true;
         this["protectSlot3"].acceptable = false;
      }
      
      public function set teamName(param1:Label) : void
      {
         var _loc2_:Object = this._1668760952teamName;
         if(_loc2_ !== param1)
         {
            this._1668760952teamName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"teamName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get teamName() : Label
      {
         return this._1668760952teamName;
      }
      
      private function onBuy(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         var _loc2_:String = Language.CROSS_FIGHT_PANEL_U[38 + param1];
         Alert.show(_loc2_,"",Alert.YES,null,null);
      }
      
      public function __vote2_click(param1:MouseEvent) : void
      {
         toVote(1);
      }
      
      public function set member3(param1:CrossFightPlayerInfo) : void
      {
         var _loc2_:Object = this._948881625member3;
         if(_loc2_ !== param1)
         {
            this._948881625member3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"member3",_loc2_,param1));
         }
      }
      
      public function set member4(param1:CrossFightPlayerInfo) : void
      {
         var _loc2_:Object = this._948881626member4;
         if(_loc2_ !== param1)
         {
            this._948881626member4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"member4",_loc2_,param1));
         }
      }
      
      public function set member5(param1:CrossFightPlayerInfo) : void
      {
         var _loc2_:Object = this._948881627member5;
         if(_loc2_ !== param1)
         {
            this._948881627member5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"member5",_loc2_,param1));
         }
      }
      
      public function set member2(param1:CrossFightPlayerInfo) : void
      {
         var _loc2_:Object = this._948881624member2;
         if(_loc2_ !== param1)
         {
            this._948881624member2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"member2",_loc2_,param1));
         }
      }
      
      public function set vote2(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._112396936vote2;
         if(_loc2_ !== param1)
         {
            this._112396936vote2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vote2",_loc2_,param1));
         }
      }
      
      public function set title(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vote2() : BasicDelayButton
      {
         return this._112396936vote2;
      }
      
      public function set member1(param1:CrossFightPlayerInfo) : void
      {
         var _loc2_:Object = this._948881623member1;
         if(_loc2_ !== param1)
         {
            this._948881623member1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"member1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot3() : ItemSlot
      {
         return this._33585254protectSlot3;
      }
      
      public function set protectSlot1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585252protectSlot1;
         if(_loc2_ !== param1)
         {
            this._33585252protectSlot1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get member1() : CrossFightPlayerInfo
      {
         return this._948881623member1;
      }
      
      [Bindable(event="propertyChange")]
      public function get member2() : CrossFightPlayerInfo
      {
         return this._948881624member2;
      }
      
      private function refresh() : void
      {
         teamName.text = teamData.tname;
         member1.refresh(memberData[1],teamData);
         member2.refresh(memberData[2],teamData);
         member3.refresh(memberData[3],teamData);
         member4.refresh(memberData[4],teamData);
         member5.refresh(memberData[5],teamData);
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : BasicTitleCanvas
      {
         return this._110371416title;
      }
      
      [Bindable(event="propertyChange")]
      public function get member3() : CrossFightPlayerInfo
      {
         return this._948881625member3;
      }
      
      [Bindable(event="propertyChange")]
      public function get protectSlot2() : ItemSlot
      {
         return this._33585253protectSlot2;
      }
      
      [Bindable(event="propertyChange")]
      public function get member5() : CrossFightPlayerInfo
      {
         return this._948881627member5;
      }
      
      public function set protectSlot3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._33585254protectSlot3;
         if(_loc2_ !== param1)
         {
            this._33585254protectSlot3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"protectSlot3",_loc2_,param1));
         }
      }
      
      public function __vote1_click(param1:MouseEvent) : void
      {
         toVote(0);
      }
      
      public function ___CrossFightTeamInfo_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __vote3_click(param1:MouseEvent) : void
      {
         toVote(2);
      }
      
      public function open(param1:Object, param2:Object) : void
      {
         if(!member1)
         {
            return;
         }
         if(param1)
         {
            teamData = param1;
            memberData = param2;
            refresh();
         }
      }
   }
}

