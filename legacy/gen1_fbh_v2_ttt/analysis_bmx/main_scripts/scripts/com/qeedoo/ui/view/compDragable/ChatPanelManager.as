package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.ui.utils.ChatPanelUtil;
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
   import mx.controls.List;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ChatPanelManager extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var chatListAC:ArrayCollection;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      public var _ChatPanelManager_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1437158422chatList:List;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":166,
               "height":396,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_ChatPanelManager_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":List,
                  "id":"chatList",
                  "events":{"itemDoubleClick":"__chatList_itemDoubleClick"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "40";
                     this.bottom = "20";
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CSSBorder",
                        "doubleClickEnabled":true
                     };
                  }
               })]
            };
         }
      });
      
      public var iconClass:Class = ChatPanelManager_iconClass;
      
      public function ChatPanelManager()
      {
         super();
         mx_internal::_document = this;
         this.width = 166;
         this.height = 396;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ChatPanelManager._watcherSetupUtil = param1;
      }
      
      private function showChatPanel() : void
      {
         ChatPanelUtil.createChatPanel(chatList.selectedItem.id);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ChatPanelManager = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ChatPanelManager_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_ChatPanelManagerWatcherSetupUtil");
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
      
      override public function initView() : void
      {
         var _loc1_:* = undefined;
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         chatListAC = new ArrayCollection();
         for(_loc1_ in ChatPanelUtil.chatData)
         {
            if(ChatPanelUtil.chatData[_loc1_] != "")
            {
               if(ChatPanelUtil.panelStatusObj[_loc1_] == "unread")
               {
                  chatListAC.addItem({
                     "label":ChatPanelUtil.charactorName[_loc1_],
                     "id":_loc1_,
                     "icon":iconClass
                  });
               }
               else
               {
                  chatListAC.addItem({
                     "label":ChatPanelUtil.charactorName[_loc1_],
                     "id":_loc1_,
                     "icon":null
                  });
               }
            }
         }
         chatListAC.source.sortOn("icon");
         chatList.dataProvider = chatListAC;
         chatList.iconField = "icon";
      }
      
      public function __chatList_itemDoubleClick(param1:ListEvent) : void
      {
         showChatPanel();
      }
      
      [Bindable(event="propertyChange")]
      public function get chatList() : List
      {
         return this._1437158422chatList;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(param1 == true)
         {
            initView();
         }
      }
      
      private function _ChatPanelManager_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATPANELMANAGER_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _ChatPanelManager_BasicTitleCanvas1.text = param1;
         },"_ChatPanelManager_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CHATPANELMANAGER_S[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            chatList.toolTip = param1;
         },"chatList.toolTip");
         result[1] = binding;
         return result;
      }
      
      private function _ChatPanelManager_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CHATPANELMANAGER_U[0];
         _loc1_ = Language.CHATPANELMANAGER_S[0];
      }
      
      public function set chatList(param1:List) : void
      {
         var _loc2_:Object = this._1437158422chatList;
         if(_loc2_ !== param1)
         {
            this._1437158422chatList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"chatList",_loc2_,param1));
         }
      }
   }
}

