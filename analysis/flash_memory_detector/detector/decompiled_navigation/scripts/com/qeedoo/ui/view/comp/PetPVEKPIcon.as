package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.compDragable.PetPVESystem;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetPVEKPIcon extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _677547086petSoul:Canvas;
      
      private var _core:Core = Core.getInstance();
      
      private var _982794599ppIcon:Image;
      
      public var iconData:Object;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1891404463soulLevel:RoundedLabel;
      
      private var _1740157726soulName:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _197702813levelUpBtn:BasicDelayButton;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":70,
               "height":65,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"petSoul",
                  "events":{"click":"__petSoul_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":0,
                        "styleName":"SoulSlotOpen",
                        "width":66,
                        "height":66,
                        "buttonMode":true,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"ppIcon",
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.verticalCenter = "-3";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":46,
                                 "height":46
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"soulName",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontFamily = "宋体";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":2,
                        "y":39,
                        "text":"",
                        "width":68
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"soulLevel",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontFamily = "宋体";
                     this.textAlign = "center";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":2,
                        "y":50,
                        "text":"",
                        "width":68
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicDelayButton,
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
                        "clickDelay":500,
                        "width":18,
                        "styleName":"soulUpBtn",
                        "height":18,
                        "visible":false,
                        "enabled":true
                     };
                  }
               })]
            };
         }
      });
      
      private const _KPICONS:Object = {
         1:4130220002074,
         4:4130220002075,
         5:4130220002076,
         6:4130220002077,
         7:4130220002078,
         8:4130220002079,
         9:4130220002080,
         11:4130220002081,
         13:4130220002082,
         31:4130220002083,
         32:4130220002084,
         58:4130220002085
      };
      
      private var _KPLEVELLIST:Array = [0,20,40,60,80,100];
      
      public function PetPVEKPIcon()
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
         PetPVEKPIcon._watcherSetupUtil = param1;
      }
      
      public function set soulName(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1740157726soulName;
         if(_loc2_ !== param1)
         {
            this._1740157726soulName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulName",_loc2_,param1));
         }
      }
      
      private function soulLevelUp() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("ppLevelUpPetIcon",null,iconData);
            }
         };
         Alert.show(Language.PET_PVE_PANEL[23],"",Alert.YES | Alert.NO,null,func);
      }
      
      protected function petSoul_clickHandler(param1:MouseEvent) : void
      {
         if(Boolean(iconData) && !iconData.isLocked)
         {
            PetPVESystem(parentDocument).ppIconClickHandler(iconData);
         }
      }
      
      public function setPPKPData(param1:Object) : void
      {
         var _loc2_:Object = null;
         iconData = param1;
         if(param1.isLocked)
         {
            petSoul.styleName = "SoulSlotClose";
            soulName.text = Language.PET_PVE_PANEL[25].toString().replace("{num}",_KPLEVELLIST[param1.iconIndex]);
            ppIcon.visible = false;
            soulLevel.visible = false;
            levelUpBtn.visible = false;
         }
         else
         {
            petSoul.styleName = "SoulSlotOpen";
            ppIcon.visible = true;
            soulName.visible = true;
            soulLevel.visible = true;
            levelUpBtn.visible = false;
         }
         if(int(param1.level) > 0)
         {
            _loc2_ = GameData.d[GamePredef.TBL_CARVE][int(param1.level)];
            if(_loc2_)
            {
               if(int(_loc2_.lev) == 20)
               {
                  levelUpBtn.visible = false;
               }
               else
               {
                  levelUpBtn.visible = true;
               }
               soulName.text = Language.PROP_NAME_U[_loc2_.p];
               soulLevel.text = "Lv." + _loc2_.lev;
               soulName.visible = true;
               soulLevel.visible = true;
            }
         }
         else if(!param1.isLocked)
         {
            _loc2_ = GameData.d[GamePredef.TBL_CARVE][(param1.partIndex + 1) * 1000 + (param1.iconIndex + 1) * 100 + 1];
            if(_loc2_)
            {
               soulName.text = Language.PROP_NAME_U[_loc2_.p];
               soulLevel.text = "Khóa";
               levelUpBtn.visible = true;
               soulName.visible = true;
               soulLevel.visible = true;
            }
         }
         if(!param1.isLocked && Boolean(_loc2_))
         {
            ppIcon.source = ResManager.getIconUrl(_KPICONS[_loc2_.p]);
         }
      }
      
      private function _PetPVEKPIcon_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_PVE_PANEL[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            levelUpBtn.toolTip = param1;
         },"levelUpBtn.toolTip");
         result[0] = binding;
         return result;
      }
      
      public function __levelUpBtn_click(param1:MouseEvent) : void
      {
         soulLevelUp();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetPVEKPIcon = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetPVEKPIcon_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_PetPVEKPIconWatcherSetupUtil");
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
      
      public function __petSoul_click(param1:MouseEvent) : void
      {
         petSoul_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get levelUpBtn() : BasicDelayButton
      {
         return this._197702813levelUpBtn;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulName() : RoundedLabel
      {
         return this._1740157726soulName;
      }
      
      private function _PetPVEKPIcon_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PET_PVE_PANEL[22];
      }
      
      public function set petSoul(param1:Canvas) : void
      {
         var _loc2_:Object = this._677547086petSoul;
         if(_loc2_ !== param1)
         {
            this._677547086petSoul = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"petSoul",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ppIcon() : Image
      {
         return this._982794599ppIcon;
      }
      
      [Bindable(event="propertyChange")]
      public function get soulLevel() : RoundedLabel
      {
         return this._1891404463soulLevel;
      }
      
      public function set soulLevel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1891404463soulLevel;
         if(_loc2_ !== param1)
         {
            this._1891404463soulLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get petSoul() : Canvas
      {
         return this._677547086petSoul;
      }
      
      public function set ppIcon(param1:Image) : void
      {
         var _loc2_:Object = this._982794599ppIcon;
         if(_loc2_ !== param1)
         {
            this._982794599ppIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ppIcon",_loc2_,param1));
         }
      }
      
      public function set levelUpBtn(param1:BasicDelayButton) : void
      {
         var _loc2_:Object = this._197702813levelUpBtn;
         if(_loc2_ !== param1)
         {
            this._197702813levelUpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelUpBtn",_loc2_,param1));
         }
      }
   }
}

