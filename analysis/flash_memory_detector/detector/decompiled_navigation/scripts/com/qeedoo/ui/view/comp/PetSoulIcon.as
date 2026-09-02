package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.containers.Canvas;
   import mx.controls.Alert;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetSoulIcon extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      private var lockImg:Class = PetSoulIcon_lockImg;
      
      private var _1891404463soulLevel:Label;
      
      private var _1740157726soulName:Label;
      
      private var _1908992068lockIcon:Image;
      
      private var _805807514helpTip:BasicToolTip;
      
      private var _677547086petSoul:PetSoulSlot;
      
      private var _1010174295optBtn:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _index:int;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindings:Array = [];
      
      private var _197702813levelUpBtn:BasicGlowButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":70,
               "height":65,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":PetSoulSlot,
                  "id":"petSoul",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicToolTip,
                  "id":"helpTip",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"lockIcon",
                  "stylesFactory":function():void
                  {
                     this.left = "5";
                     this.top = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":13,
                        "height":12,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"optBtn",
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                     this.top = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":16,
                        "height":18,
                        "styleName":"soulOperationBtn",
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"levelUpBtn",
                  "events":{"click":"__levelUpBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":18,
                        "styleName":"soulUpBtn",
                        "height":18,
                        "visible":false
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"soulName",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                     this.horizontalCenter = "0";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":39,
                        "text":"",
                        "height":15
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"soulLevel",
                  "stylesFactory":function():void
                  {
                     this.color = 16775802;
                     this.horizontalCenter = "0";
                     this.fontSize = 11;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":50,
                        "text":"",
                        "height":15
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function PetSoulIcon()
      {
         super();
         mx_internal::_document = this;
         this.width = 70;
         this.height = 65;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetSoulIcon._watcherSetupUtil = param1;
      }
      
      public function set lockIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1908992068lockIcon;
         if(_loc2_ !== param1)
         {
            this._1908992068lockIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lockIcon",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetSoulIcon = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetSoulIcon_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PetSoulIconWatcherSetupUtil");
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
      
      private function _PetSoulIcon_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = lockImg;
         _loc1_ = Language.PET_SOUL_S[43];
         _loc1_ = Language.PET_SOUL_S[29];
      }
      
      [Bindable(event="propertyChange")]
      public function get levelUpBtn() : BasicGlowButton
      {
         return this._197702813levelUpBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulName() : Label
      {
         return this._1740157726soulName;
      }
      
      [Bindable(event="propertyChange")]
      public function get helpTip() : BasicToolTip
      {
         return this._805807514helpTip;
      }
      
      public function set soulLevel(param1:Label) : void
      {
         var _loc2_:Object = this._1891404463soulLevel;
         if(_loc2_ !== param1)
         {
            this._1891404463soulLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get optBtn() : BasicGlowButton
      {
         return this._1010174295optBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul() : PetSoulSlot
      {
         return this._677547086petSoul;
      }
      
      public function set helpTip(param1:BasicToolTip) : void
      {
         var _loc2_:Object = this._805807514helpTip;
         if(_loc2_ !== param1)
         {
            this._805807514helpTip = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpTip",_loc2_,param1));
         }
      }
      
      public function set levelUpBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._197702813levelUpBtn;
         if(_loc2_ !== param1)
         {
            this._197702813levelUpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelUpBtn",_loc2_,param1));
         }
      }
      
      public function set soulName(param1:Label) : void
      {
         var _loc2_:Object = this._1740157726soulName;
         if(_loc2_ !== param1)
         {
            this._1740157726soulName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulName",_loc2_,param1));
         }
      }
      
      public function setSoulData(param1:Object) : void
      {
         var _loc2_:Object = null;
         petSoul.setData(param1);
         if(Boolean(param1.isPet) || Boolean(param1.state == 0) || param1.soulId < 0)
         {
            this.optBtn.visible = false;
            lockIcon.visible = false;
            soulName.visible = false;
            soulLevel.visible = false;
            levelUpBtn.visible = false;
         }
         else
         {
            if(!param1.lock)
            {
               lockIcon.visible = false;
            }
            else
            {
               lockIcon.visible = true;
            }
            this.optBtn.visible = true;
         }
         if(param1.soulId > 0)
         {
            _loc2_ = GameData.d[GamePredef.TBL_PET_SOUL][param1.soulId];
            if(_loc2_)
            {
               if(Boolean(_loc2_) && Boolean(int(_core.player.soulExp) + int(param1.exp) >= _loc2_["upExp"]) && int(_loc2_["level"]) < 10)
               {
                  this.levelUpBtn.visible = true;
               }
               else
               {
                  this.levelUpBtn.visible = false;
               }
               soulName.text = _loc2_.name;
               soulLevel.text = "Lv." + _loc2_.level;
               soulName.setStyle("color",GamePredef.CODE_SOUL_COLOR[_loc2_.color]);
               soulLevel.setStyle("color",GamePredef.CODE_SOUL_COLOR[_loc2_.color]);
               soulName.visible = true;
               soulLevel.visible = true;
            }
         }
         if(_index > 100)
         {
            petSoul.slotType = SoulSlot.SLOT_PET_SOUL;
         }
         else
         {
            petSoul.slotType = SoulSlot.SLOT_BAG_SOUL;
         }
         petSoul.index = _index;
         petSoul.state = param1.state;
         optBtn.addEventListener(MouseEvent.CLICK,showOperation);
      }
      
      [Bindable(event="propertyChange")]
      public function get lockIcon() : Image
      {
         return this._1908992068lockIcon;
      }
      
      private function soulLevelUp() : void
      {
         var func:Function;
         var temp:Object = GameData.d[GamePredef.TBL_PET_SOUL][petSoul.acceptObj.soulId];
         if(!temp)
         {
            return;
         }
         func = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               if(petSoul.slotType == SoulSlot.SLOT_PET_SOUL)
               {
                  _core.remote.call("soulLevelUp",null,_index,petSoul.acceptObj.petId);
               }
               else
               {
                  _core.remote.call("soulLevelUp",null,_index);
               }
            }
         };
         Alert.show(Language.PET_SOUL_S[33].replace("{name}",temp.name),"",Alert.YES | Alert.NO,null,func);
      }
      
      public function __levelUpBtn_click(param1:MouseEvent) : void
      {
         soulLevelUp();
      }
      
      [Bindable(event="propertyChange")]
      public function get soulLevel() : Label
      {
         return this._1891404463soulLevel;
      }
      
      public function set optBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1010174295optBtn;
         if(_loc2_ !== param1)
         {
            this._1010174295optBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"optBtn",_loc2_,param1));
         }
      }
      
      public function set petSoul(param1:PetSoulSlot) : void
      {
         var _loc2_:Object = this._677547086petSoul;
         if(_loc2_ !== param1)
         {
            this._677547086petSoul = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul",_loc2_,param1));
         }
      }
      
      public function changeBtnState() : void
      {
         var _loc1_:Object = null;
         if(!petSoul.acceptObj)
         {
            return;
         }
         if(Boolean(petSoul.acceptObj.isPet) || Boolean(petSoul.acceptObj.state == 0) || petSoul.acceptObj.soulId < 0)
         {
            this.optBtn.visible = false;
            lockIcon.visible = false;
            levelUpBtn.visible = false;
         }
         else
         {
            if(!petSoul.acceptObj.lock)
            {
               lockIcon.visible = false;
            }
            else
            {
               lockIcon.visible = true;
            }
            this.optBtn.visible = true;
         }
         if(petSoul.acceptObj.soulId > 0)
         {
            _loc1_ = GameData.d[GamePredef.TBL_PET_SOUL][petSoul.acceptObj.soulId];
            if(_loc1_)
            {
               if(Boolean(_loc1_) && Boolean(int(_core.player.soulExp) + int(petSoul.acceptObj.exp) >= _loc1_["upExp"]) && int(_loc1_["level"]) < 10)
               {
                  this.levelUpBtn.visible = true;
               }
               else
               {
                  this.levelUpBtn.visible = false;
               }
            }
         }
      }
      
      public function showOperation(param1:MouseEvent) : void
      {
         if(petSoul.index <= 0)
         {
            return;
         }
         var _loc2_:Object = _core.view.getUI(ViewManager.PANEL_PET_SOUL);
         if(_loc2_)
         {
            _loc2_.showMenu(petSoul.index,param1.stageX,param1.stageY);
         }
      }
      
      private function _PetSoulIcon_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():Object
         {
            return lockImg;
         },function(param1:Object):void
         {
            lockIcon.source = param1;
         },"lockIcon.source");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lockIcon.toolTip = param1;
         },"lockIcon.toolTip");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_S[29];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            levelUpBtn.toolTip = param1;
         },"levelUpBtn.toolTip");
         result[2] = binding;
         return result;
      }
   }
}

