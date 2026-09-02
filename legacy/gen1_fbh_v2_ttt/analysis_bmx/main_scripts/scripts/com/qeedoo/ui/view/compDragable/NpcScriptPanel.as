package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Npc;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
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
   import mx.controls.Image;
   import mx.controls.List;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class NpcScriptPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2141324026npcIcon:Image;
      
      private var _core:Core = Core.getInstance();
      
      private var _info:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _1379747202funcList:List;
      
      private var _241352511button1:BasicGlowButton;
      
      private var _2141470988npcName:RoundedLabel;
      
      private var _nid:Number;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _title:String;
      
      private var _1791483012titleLabel:BasicTitleCanvas;
      
      private var _177381979infoArea:IntroText;
      
      private var _177764720funcLabel:RoundedLabel;
      
      private var _hulaData:Object;
      
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
                  "type":BasicGlowButton,
                  "id":"button1",
                  "events":{"click":"__button1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":357.5,
                        "styleName":"BtnStdRed",
                        "x":113.75,
                        "width":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"npcIcon",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":26,
                        "y":37,
                        "width":50.2,
                        "height":50.2
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
                  "id":"infoArea",
                  "events":{"mouseDown":"__infoArea_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":110,
                        "width":248,
                        "x":14,
                        "y":98
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"funcLabel",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":19,
                        "y":209
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
                        "y":233
                     };
                  }
               })]
            };
         }
      });
      
      private var _list:Array;
      
      public function NpcScriptPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 278;
         this.height = 398;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         NpcScriptPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get npcIcon() : Image
      {
         return this._2141324026npcIcon;
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
         var _loc1_:Npc = null;
         _loc1_ = _core.getNpc(_nid);
         if(_loc1_)
         {
            npcIcon.source = ResManager.getIconUrl(_loc1_.iconCode);
            npcName.text = _loc1_.name;
         }
         infoArea.htmlText = _info;
         titleLabel.text = _title;
         funcLabel.text = _title;
         funcList.dataProvider = _list;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:NpcScriptPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _NpcScriptPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_NpcScriptPanelWatcherSetupUtil");
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
      
      public function __funcList_itemClick(param1:ListEvent) : void
      {
         funcClick();
      }
      
      public function set funcLabel(param1:RoundedLabel) : void
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
         var _loc1_:Object = null;
         var _loc2_:Array = null;
         var _loc3_:Npc = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Object = null;
         if(!funcList.selectedItem)
         {
            return;
         }
         if(_hulaData)
         {
            _loc1_ = _core.getNpc(_hulaData.index);
            if(Boolean(_loc1_) && _loc1_.npcType == GamePredef.NPC_TYPE_HULA)
            {
               if(_loc1_.npcType == GamePredef.NPC_TYPE_HULA)
               {
                  if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_AWARD)
                  {
                     _core.remote.call("hulaNpcAward",null,_loc1_.hulaData.index);
                     hide();
                  }
                  else if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_BATTLE)
                  {
                     _core.remote.call("hulaAskBattle",null,_loc1_.hulaData.index);
                     hide();
                  }
                  else if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_CHANGE)
                  {
                     _loc2_ = [];
                     _loc2_.push({
                        "func":HulaPanel.HULA_NPC_SCRIPT_CHANGE_RED,
                        "label":Language.HULA_PANEL[7]
                     });
                     _loc2_.push({
                        "func":HulaPanel.HULA_NPC_SCRIPT_CHANGE_YELLOW,
                        "label":Language.HULA_PANEL[8]
                     });
                     _loc2_.push({
                        "func":HulaPanel.HULA_NPC_SCRIPT_CHANGE_GREEN,
                        "label":Language.HULA_PANEL[10]
                     });
                     _loc2_.push({
                        "func":HulaPanel.HULA_NPC_SCRIPT_CHANGE_BLUE,
                        "label":Language.HULA_PANEL[9]
                     });
                     setInfo(_nid,_title,_info,_loc2_,_hulaData);
                  }
                  else if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_CANCEL)
                  {
                     hide();
                  }
                  else if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_CHANGE_RED)
                  {
                     _core.remote.call("hulaChangeColor",null,_loc1_.hulaData.index,0);
                     hide();
                  }
                  else if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_CHANGE_YELLOW)
                  {
                     _core.remote.call("hulaChangeColor",null,_loc1_.hulaData.index,1);
                     hide();
                  }
                  else if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_CHANGE_GREEN)
                  {
                     _core.remote.call("hulaChangeColor",null,_loc1_.hulaData.index,3);
                     hide();
                  }
                  else if(funcList.selectedItem.func == HulaPanel.HULA_NPC_SCRIPT_CHANGE_BLUE)
                  {
                     _core.remote.call("hulaChangeColor",null,_loc1_.hulaData.index,2);
                     hide();
                  }
               }
            }
         }
         else
         {
            _loc3_ = _core.getNpc(_nid);
            if(Boolean(_loc3_) && _loc3_.npcType == GamePredef.NPC_TYPE_TRIPLE_TOWN)
            {
               _loc4_ = _loc3_.tripleNpc;
               _loc5_ = funcList.selectedItem;
               hide();
               if(Boolean(_loc4_) && _loc5_.hasOwnProperty("func"))
               {
                  _loc6_ = _core.view.getUI(ViewManager.PANEL_TRIPLE_TOWN);
                  (_loc6_) && _loc6_.tripleNpcScript(_loc4_.instId,_loc5_);
               }
            }
            else
            {
               _core.remote.npcScript(funcList.selectedItem.func);
               hide();
            }
         }
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
      
      public function setInfo(param1:Number, param2:String, param3:String, param4:Array, param5:Object = null) : void
      {
         _nid = param1;
         _title = param2;
         _info = param3;
         _list = param4;
         _hulaData = param5;
         visible = true;
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get funcLabel() : RoundedLabel
      {
         return this._177764720funcLabel;
      }
      
      [Bindable(event="propertyChange")]
      public function get button1() : BasicGlowButton
      {
         return this._241352511button1;
      }
      
      private function _NpcScriptPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.NPCFUNCOTHER_U[0];
      }
      
      public function set infoArea(param1:IntroText) : void
      {
         var _loc2_:Object = this._177381979infoArea;
         if(_loc2_ !== param1)
         {
            this._177381979infoArea = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoArea",_loc2_,param1));
         }
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
      
      public function __funcList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function __infoArea_mouseDown(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function _NpcScriptPanel_bindingsSetup() : Array
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
      
      [Bindable(event="propertyChange")]
      public function get infoArea() : IntroText
      {
         return this._177381979infoArea;
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
      
      public function set titleLabel(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1791483012titleLabel;
         if(_loc2_ !== param1)
         {
            this._1791483012titleLabel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleLabel",_loc2_,param1));
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
   }
}

