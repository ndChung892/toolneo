package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.BasicTxtButton;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
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
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.List;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NpcFuncOther extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2141324026npcIcon:Image;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _1379747202funcList:List;
      
      private var _3237038info:IntroText;
      
      private var moneyNum:int;
      
      private var _241352511button1:BasicGlowButton;
      
      private var _2141470988npcName:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1791483012titleLabel:BasicTitleCanvas;
      
      private var _177764720funcLabel:BasicTxtButton;
      
      public var npc:Npc;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":278,
               "height":398,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"titleLabel"
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"npcIcon",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":26,
                        "y":37,
                        "width":50.2,
                        "height":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"npcName",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":84.2,
                        "y":35,
                        "text":"Label",
                        "width":172.8
                     };
                  }
               }),new UIComponentDescriptor({
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
                        "height":117,
                        "width":255,
                        "x":11,
                        "y":93
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicTxtButton,
                  "id":"funcLabel",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":22,
                        "y":215,
                        "width":120,
                        "height":18
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"funcList",
                  "events":{
                     "mouseDown":"__funcList_mouseDown",
                     "itemClick":"__funcList_itemClick"
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
                        "horizontalScrollPolicy":"off",
                        "height":120,
                        "x":32,
                        "y":241
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"button1",
                  "events":{"click":"__button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":364.5,
                        "styleName":"BtnStdRed",
                        "x":113.75,
                        "width":50
                     };
                  }
               })]
            };
         }
      });
      
      public function NpcFuncOther()
      {
         super();
         mx_internal::_document = this;
         this.width = 278;
         this.height = 398;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NpcFuncOther._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get funcList() : List
      {
         return this._1379747202funcList;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleLabel() : BasicTitleCanvas
      {
         return this._1791483012titleLabel;
      }
      
      public function set funcList(param1:List) : void
      {
         var _loc2_:Object = this._1379747202funcList;
         if(_loc2_ !== param1)
         {
            this._1379747202funcList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funcList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get npcName() : RoundedLabel
      {
         return this._2141470988npcName;
      }
      
      private function updateView() : void
      {
         var _loc1_:ArrayCollection = null;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:Array = null;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         clearView();
         if(npc)
         {
            npcIcon.source = ResManager.getIconUrl(npc.iconCode);
            npcName.text = npc.name;
            info.htmlText = npc.onServiceText;
            _loc1_ = new ArrayCollection();
            if(npc.npcType == GamePredef.NPC_TYPE_HEAL)
            {
               funcLabel.label = Language.NPCFUNCOTHER_S[0];
               titleLabel.text = Language.NPCFUNCOTHER_S[1];
               _loc1_.source = [{
                  "type":GamePredef.NPC_TYPE_HEAL,
                  "id":1,
                  "label":Language.NPCFUNCOTHER_S[2]
               },{
                  "type":GamePredef.NPC_TYPE_HEAL,
                  "id":2,
                  "label":Language.NPCFUNCOTHER_S[3]
               },{
                  "type":GamePredef.NPC_TYPE_HEAL,
                  "id":3,
                  "label":Language.NPCFUNCOTHER_S[4]
               }];
            }
            else if(npc.npcType == GamePredef.NPC_TYPE_TRANSPORT && String(npc.funcInfo).length > 5)
            {
               funcLabel.label = Language.NPCFUNCOTHER_S[5];
               titleLabel.text = Language.NPCFUNCOTHER_S[6];
               _loc2_ = String(npc.funcInfo).split("|",50);
               if(_loc2_)
               {
                  for(_loc3_ in _loc2_)
                  {
                     if(Boolean(_loc2_[_loc3_]) && _loc2_[_loc3_].length > 5)
                     {
                        _loc4_ = _loc2_[_loc3_].split(",");
                        if(_loc4_)
                        {
                           _loc1_.source.push({
                              "type":GamePredef.NPC_TYPE_TRANSPORT,
                              "id":_loc3_,
                              "label":_loc4_[1] + Language.NPCFUNCOTHER_S[7] + _loc4_[2] + Language.NPCFUNCOTHER_S[8],
                              "money":_loc4_[2]
                           });
                        }
                     }
                  }
               }
            }
            else if(npc.npcType == GamePredef.NPC_TYPE_TUTOR)
            {
               funcLabel.label = Language.NPCFUNCOTHER_S[23];
               titleLabel.text = Language.NPCFUNCOTHER_S[24];
               _loc1_.source = [{
                  "type":GamePredef.NPC_TYPE_TUTOR,
                  "id":1,
                  "label":Language.NPCFUNCOTHER_S[25]
               }];
            }
            funcList.dataProvider = _loc1_;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NpcFuncOther = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NpcFuncOther_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NpcFuncOtherWatcherSetupUtil");
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
         info.text = "";
         info.htmlText = "";
         funcLabel.label = "";
         npcName.text = "";
         funcList.dataProvider = null;
         npcIcon.source = null;
      }
      
      public function __funcList_itemClick(param1:ListEvent) : void
      {
         funcClick();
      }
      
      public function set funcLabel(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._177764720funcLabel;
         if(_loc2_ !== param1)
         {
            this._177764720funcLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funcLabel",_loc2_,param1));
         }
      }
      
      private function funcClick() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Player = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:Number = NaN;
         var _loc1_:String = "";
         if(funcList.selectedItem)
         {
            if(funcList.selectedItem.type == GamePredef.NPC_TYPE_HEAL)
            {
               _loc2_ = _core.battlePet;
               _loc3_ = _core.player;
               _loc4_ = GamePredef.BASIC_GET_MONEY[_loc3_.level] / 70000 > 1 ? 1 : GamePredef.BASIC_GET_MONEY[_loc3_.level] / 70000;
               _loc5_ = Math.ceil((_loc3_.property.finalHp - _loc3_.currentHp + (_loc3_.property.finalMp - _loc3_.currentMp) * 1.3) * _loc4_);
               if(_loc2_)
               {
                  _loc7_ = GamePredef.BASIC_GET_MONEY[_loc2_.level] / 70000 > 1 ? 1 : GamePredef.BASIC_GET_MONEY[_loc2_.level] / 70000;
                  _loc6_ = Math.ceil((_loc2_.property.finalHp - _loc2_.currentHp + (_loc2_.property.finalMp - _loc2_.currentMp) * 1.3) * _loc7_);
               }
               else
               {
                  _loc6_ = 0;
               }
               switch(funcList.selectedItem.id)
               {
                  case 1:
                     moneyNum = _loc5_;
                     if(moneyNum <= 0)
                     {
                        _core.sysMidNote(Language.NPCFUNCOTHER_S[9]);
                        visible = false;
                        return;
                     }
                     _loc1_ = Language.NPCFUNCOTHER_S[10];
                     _loc1_ = _loc1_.replace("{moneyNum}",moneyNum.toString());
                     Alert.show(_loc1_,"",3,this,funcHandler);
                     funcList.enabled = false;
                     break;
                  case 2:
                     if(_core.battlePet)
                     {
                        moneyNum = _loc6_;
                        if(moneyNum <= 0)
                        {
                           _core.sysMidNote(Language.NPCFUNCOTHER_S[13]);
                           visible = false;
                           return;
                        }
                        _loc1_ = Language.NPCFUNCOTHER_S[14];
                        _loc1_ = _loc1_.replace("{moneyNum}",moneyNum.toString());
                        Alert.show(_loc1_,"",3,this,funcHandler);
                        funcList.enabled = false;
                        break;
                     }
                     _core.sysMidNote(Language.NPCFUNCOTHER_S[12]);
                     return;
                     break;
                  case 3:
                     moneyNum = _loc5_;
                     if(_core.battlePet)
                     {
                        moneyNum += _loc6_;
                     }
                     if(moneyNum <= 0)
                     {
                        _core.sysMidNote(Language.NPCFUNCOTHER_S[16]);
                        visible = false;
                        return;
                     }
                     _loc1_ = Language.NPCFUNCOTHER_S[17];
                     _loc1_ = _loc1_.replace("{moneyNum}",moneyNum.toString());
                     Alert.show(_loc1_,"",3,this,funcHandler);
                     funcList.enabled = false;
               }
            }
            else if(funcList.selectedItem.type == GamePredef.NPC_TYPE_TRANSPORT)
            {
               moneyNum = Number(funcList.selectedItem.money);
               if(moneyNum > 0)
               {
                  if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,1))
                  {
                     if(moneyNum > _core.player.moneyBind)
                     {
                        _loc1_ = Language.NPCFUNCOTHER_S[19];
                        _loc1_ = _loc1_.replace("{money}",GamePredef.CURRENCY_TIP[2]);
                        _core.sysMidNote(_loc1_);
                        return;
                     }
                  }
                  if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,2))
                  {
                     if(moneyNum > _core.player.money)
                     {
                        _loc1_ = Language.NPCFUNCOTHER_S[20];
                        _loc1_ = _loc1_.replace("{money}",GamePredef.CURRENCY_TIP[0]);
                        _core.sysMidNote(_loc1_);
                        return;
                     }
                  }
               }
               _core.remote.npcFuncOther(npc.id,funcList.selectedItem.id);
            }
            else if(funcList.selectedItem.type == GamePredef.NPC_TYPE_TUTOR)
            {
               _core.remote.npcFuncOther(npc.id,funcList.selectedItem.id);
               this.visible = false;
            }
         }
      }
      
      public function __button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      public function setNpc(param1:Npc) : void
      {
         if(!param1)
         {
            return;
         }
         npc = param1;
         visible = true;
         updateView();
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
      
      [Bindable(event="propertyChange")]
      public function get funcLabel() : BasicTxtButton
      {
         return this._177764720funcLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get info() : IntroText
      {
         return this._3237038info;
      }
      
      [Bindable(event="propertyChange")]
      public function get button1() : BasicGlowButton
      {
         return this._241352511button1;
      }
      
      private function tutorConfirmHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.YES)
         {
            _core.remote.confirmTutor();
         }
      }
      
      public function __funcList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         updateView();
      }
      
      private function _NpcFuncOther_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.NPCFUNCOTHER_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            button1.label = param1;
         },"button1.label");
         result[0] = binding;
         return result;
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
      
      public function tutorFuncAlert() : void
      {
         Alert.show(Language.NPCFUNCOTHER_S[26],"",3,null,tutorConfirmHandler);
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(visible == false)
         {
            initView();
         }
      }
      
      private function funcHandler(param1:CloseEvent) : void
      {
         funcList.enabled = true;
         var _loc2_:String = "";
         if(param1.detail == Alert.YES)
         {
            if(funcList.selectedItem)
            {
               if(funcList.selectedItem.type == GamePredef.NPC_TYPE_HEAL)
               {
                  if(moneyNum > 0)
                  {
                     if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,1))
                     {
                        if(moneyNum > _core.player.moneyBind)
                        {
                           _loc2_ = Language.NPCFUNCOTHER_S[21];
                           _loc2_ = _loc2_.replace("{money}",GamePredef.CURRENCY_TIP[2]);
                           _core.sysMidNote(_loc2_);
                           return;
                        }
                     }
                     if(ToolKit.isEqual(GamePredef.GLOBAL_SETTING.defaultMoney,2))
                     {
                        if(moneyNum > _core.player.money)
                        {
                           _loc2_ = Language.NPCFUNCOTHER_S[22];
                           _loc2_ = _loc2_.replace("{money}",GamePredef.CURRENCY_TIP[0]);
                           _core.sysMidNote(_loc2_);
                           return;
                        }
                     }
                     _core.remote.npcFuncOther(npc.id,funcList.selectedItem.id);
                  }
               }
               else if(funcList.selectedItem.type == GamePredef.NPC_TYPE_TUTOR)
               {
                  _core.remote.confirmTutor();
               }
            }
         }
      }
      
      private function _NpcFuncOther_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.NPCFUNCOTHER_U[0];
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
      
      public function __info_mouseDown(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function set titleLabel(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1791483012titleLabel;
         if(_loc2_ !== param1)
         {
            this._1791483012titleLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleLabel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get npcIcon() : Image
      {
         return this._2141324026npcIcon;
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
   }
}

