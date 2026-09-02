package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.controls.Alert;
   import mx.controls.TextInput;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AddGuildPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _AddGuildPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _AddGuildPanel_BasicGlowButton2:BasicGlowButton;
      
      mx_internal var _watchers:Array = [];
      
      public var _AddGuildPanel_RoundedLabel1:RoundedLabel;
      
      private var _1986547808addGuildInfo:IntroText;
      
      private var guildList:Object;
      
      private var _1994489252addGuildButton:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var selfGuildMemberData:Object;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":340,
               "height":338,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AddGuildPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":IntroText,
                  "id":"addGuildInfo",
                  "events":{"mouseDown":"__addGuildInfo_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.top = "40";
                     this.right = "15";
                     this.left = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"height":210};
                  }
               }),new UIComponentDescriptor({
                  "type":TextInput,
                  "id":"addGuildText",
                  "events":{"mouseDown":"__addGuildText_mouseDown"},
                  "stylesFactory":function():void
                  {
                     this.top = "268";
                     this.right = "28";
                     this.left = "113";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "maxChars":10,
                        "enabled":true
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"addGuildButton",
                  "events":{
                     "mouseDown":"__addGuildButton_mouseDown",
                     "click":"__addGuildButton_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":95,
                        "y":298,
                        "styleName":"CrystalBlueButton",
                        "width":60
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_AddGuildPanel_BasicGlowButton2",
                  "events":{
                     "mouseDown":"___AddGuildPanel_BasicGlowButton2_mouseDown",
                     "click":"___AddGuildPanel_BasicGlowButton2_click"
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":200,
                        "y":298,
                        "styleName":"CrystalBlueButton",
                        "width":60
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"_AddGuildPanel_RoundedLabel1",
                  "events":{"mouseDown":"___AddGuildPanel_RoundedLabel1_mouseDown"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":36,
                        "y":270,
                        "width":69
                     };
                  }
               })]
            };
         }
      });
      
      private var _1986228193addGuildText:TextInput;
      
      private var _core:Core = Core.getInstance();
      
      public function AddGuildPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 340;
         this.height = 338;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AddGuildPanel._watcherSetupUtil = param1;
      }
      
      private function _AddGuildPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ADDGUIDEPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AddGuildPanel_BasicTitleCanvas1.text = param1;
         },"_AddGuildPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            addGuildButton.label = param1;
         },"addGuildButton.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.INPUTPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AddGuildPanel_BasicGlowButton2.label = param1;
         },"_AddGuildPanel_BasicGlowButton2.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.ADDGUILDPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AddGuildPanel_RoundedLabel1.text = param1;
         },"_AddGuildPanel_RoundedLabel1.text");
         result[3] = binding;
         return result;
      }
      
      public function __addGuildButton_click(param1:MouseEvent) : void
      {
         showAlert();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AddGuildPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AddGuildPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AddGuildPanelWatcherSetupUtil");
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
      public function get addGuildText() : TextInput
      {
         return this._1986228193addGuildText;
      }
      
      [Bindable(event="propertyChange")]
      public function get addGuildInfo() : IntroText
      {
         return this._1986547808addGuildInfo;
      }
      
      [Bindable(event="propertyChange")]
      public function get addGuildButton() : BasicGlowButton
      {
         return this._1994489252addGuildButton;
      }
      
      private function _AddGuildPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.ADDGUIDEPANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[0];
         _loc1_ = Language.INPUTPANEL_U[1];
         _loc1_ = Language.ADDGUILDPANEL_S[7];
      }
      
      public function __addGuildText_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      private function rand3(param1:Object) : Object
      {
         var _loc3_:String = null;
         var _loc2_:Array = [];
         for(_loc3_ in param1)
         {
            _loc2_.push(param1[_loc3_]);
         }
         return _loc2_[Math.floor(Math.random() * _loc2_.length)];
      }
      
      public function set addGuildText(param1:TextInput) : void
      {
         var _loc2_:Object = this._1986228193addGuildText;
         if(_loc2_ !== param1)
         {
            this._1986228193addGuildText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addGuildText",_loc2_,param1));
         }
      }
      
      public function set addGuildInfo(param1:IntroText) : void
      {
         var _loc2_:Object = this._1986547808addGuildInfo;
         if(_loc2_ !== param1)
         {
            this._1986547808addGuildInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addGuildInfo",_loc2_,param1));
         }
      }
      
      public function set addGuildButton(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1994489252addGuildButton;
         if(_loc2_ !== param1)
         {
            this._1994489252addGuildButton = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addGuildButton",_loc2_,param1));
         }
      }
      
      private function addGuild(param1:CloseEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:* = undefined;
         if(param1.detail == Alert.YES)
         {
            if(_core.haveSpecialStr(addGuildText.text) || _core.haveBadWord(addGuildText.text))
            {
               Alert.show(Language.ADDGUILDPANEL_S[0],"",Alert.OK);
            }
            else if(addGuildText.text.length < 2)
            {
               Alert.show(Language.ADDGUILDPANEL_S[1],"",Alert.OK);
            }
            else if(addGuildText.text.length > 10)
            {
               Alert.show(Language.ADDGUILDPANEL_S[2],"",Alert.OK);
            }
            else if(_core.player.money < 1000000)
            {
               Alert.show(Language.ADDGUILDPANEL_S[3],"",Alert.OK);
            }
            else
            {
               _loc2_ = 0;
               if(guildList != null)
               {
                  for each(_loc3_ in guildList)
                  {
                     if(_loc3_ != undefined)
                     {
                        if(_loc3_.name == addGuildText.text)
                        {
                           _loc2_ = 1;
                        }
                     }
                  }
               }
               if(_loc2_ == 1)
               {
                  Alert.show(GamePredef.GUILD_EXISTGUILD,"",Alert.OK);
               }
               else
               {
                  _core.remote.addGuild({"name":addGuildText.text});
                  visible = false;
               }
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
         selfGuildMemberData = _core.view.getUI(ViewManager.PANEL_GUILD).selfGuildMemberData;
         if(selfGuildMemberData != null || _core.view.getUI(ViewManager.PANEL_GUILD).joinGuildFlag == 1)
         {
            addGuildInfo.text = GamePredef.GUILD_NOADDGUILD;
            addGuildText.visible = false;
            addGuildButton.visible = false;
         }
         else
         {
            addGuildInfo.text = GamePredef.GUILD_ADDGUILDINFO;
            guildList = _core.view.getUI(ViewManager.PANEL_GUILD).guildList;
            addGuildText.visible = true;
            addGuildButton.visible = true;
         }
      }
      
      private function setRandName() : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:String = null;
         var _loc1_:Object = _core.data.gameDataIndex[80];
         var _loc2_:Array = [];
         for(_loc3_ in _loc1_)
         {
            if(_loc3_ != "0")
            {
               _loc2_.push(_loc1_[_loc3_]);
            }
         }
         _loc1_ = _loc2_[Math.floor(Math.random() * _loc2_.length)];
         _loc4_ = rand3(_loc1_);
         if(!_loc4_ || !ToolKit.isEqual(_loc4_.type,32) && String(_loc4_.name).length < 6 && Math.random() > 0.3)
         {
            _loc5_ = rand3(_loc1_);
            while(_loc4_.id == _loc5_.id || String(_loc4_.name + _loc5_.name).length > 12)
            {
               _loc5_ = rand3(_loc1_);
            }
         }
         if(Boolean(_loc5_) && Math.floor(_loc4_.type / 10) == 2)
         {
            addGuildText.text = _loc4_.name + "·" + _loc5_.name;
         }
         else
         {
            addGuildText.text = _loc4_.name + (_loc5_ ? _loc5_.name : "");
         }
         if(Math.random() > 0.7)
         {
            _loc6_ = rand3(_core.data.gameDataIndex[80][0]).name;
            if(_loc6_)
            {
               addGuildText.text = _loc6_ + addGuildText.text + _loc6_;
            }
         }
         if(String(Language.GAMEPREDEF_S[338]).indexOf(addGuildText.text) > 0)
         {
            addGuildText.text = "";
            setRandName();
         }
      }
      
      private function showAlert() : void
      {
         var _loc1_:String = "";
         if(addGuildText.text.length > 2 && addGuildText.text.length < 10)
         {
            _loc1_ = Language.ADDGUILDPANEL_S[4];
            _loc1_ = _loc1_.replace("{addGuildText.text}",addGuildText.text);
            Alert.show(_loc1_,"",Alert.YES | Alert.NO,this,addGuild);
         }
         else
         {
            Alert.show(Language.ADDGUILDPANEL_S[6]);
         }
      }
      
      public function ___AddGuildPanel_BasicGlowButton2_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(initialized)
         {
         }
         if(param1 == true)
         {
            initView();
         }
      }
      
      public function ___AddGuildPanel_RoundedLabel1_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function __addGuildInfo_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function __addGuildButton_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function ___AddGuildPanel_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         hide();
      }
   }
}

