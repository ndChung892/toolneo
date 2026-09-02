package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.ItemConfig;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
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
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FazendaPorTraitCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _watchers:Array = [];
      
      private var _790207134rl_playerLevel:RoundedLabel;
      
      private var _742552512rl_movepnt:Label;
      
      private var _205996609btnLvUp:BasicGlowButton;
      
      private var _695119652img_head:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _856830001rl_playerName:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _639103497rl_actpnt:Label;
      
      private var _1289197386expBar:Property;
      
      private var _1000667455rl_level:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":250,
               "height":57,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":192,
                        "height":57,
                        "styleName":"fazendaCharCanva",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"img_head",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":49,
                                 "x":5,
                                 "height":47,
                                 "y":5
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_playerName",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.right = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":1,
                                 "width":86,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"rl_playerLevel",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.left = "60";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":1,
                                 "width":45,
                                 "height":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.bottom = "0";
                              this.right = "5";
                              this.left = "60";
                              this.top = "20";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"fazendaCharDataCanva",
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"rl_level",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.textAlign = "left";
                                       this.fontSize = 12;
                                       this.left = "0";
                                       this.top = "-2";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"庄园等级:",
                                          "height":16,
                                          "width":125
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"rl_movepnt",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.textAlign = "left";
                                       this.fontSize = 12;
                                       this.left = "0";
                                       this.top = "13";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"行动力:",
                                          "height":16,
                                          "width":125
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"rl_actpnt",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.textAlign = "left";
                                       this.fontSize = 12;
                                       this.left = "0";
                                       this.top = "13";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "text":"活力:",
                                          "height":16,
                                          "width":125,
                                          "visible":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Property,
                                    "id":"expBar",
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "2";
                                       this.right = "5";
                                       this.left = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":6,
                                          "styleName":"ProgressExp"
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnLvUp",
                  "events":{"click":"__btnLvUp_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":198,
                        "y":0,
                        "styleName":"BtnLevelUp",
                        "width":46,
                        "height":22
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function FazendaPorTraitCanvas()
      {
         super();
         mx_internal::_document = this;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.cacheAsBitmap = true;
         this.width = 250;
         this.height = 57;
         this.x = 61.95;
         this.y = 1;
         this.addEventListener("creationComplete",___FazendaPorTraitCanvas_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FazendaPorTraitCanvas._watcherSetupUtil = param1;
      }
      
      public function set btnLvUp(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._205996609btnLvUp;
         if(_loc2_ !== param1)
         {
            this._205996609btnLvUp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnLvUp",_loc2_,param1));
         }
      }
      
      public function set rl_level(param1:Label) : void
      {
         var _loc2_:Object = this._1000667455rl_level;
         if(_loc2_ !== param1)
         {
            this._1000667455rl_level = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_level",_loc2_,param1));
         }
      }
      
      public function set rl_movepnt(param1:Label) : void
      {
         var _loc2_:Object = this._742552512rl_movepnt;
         if(_loc2_ !== param1)
         {
            this._742552512rl_movepnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_movepnt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_actpnt() : Label
      {
         return this._639103497rl_actpnt;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FazendaPorTraitCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FazendaPorTraitCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FazendaPorTraitCanvasWatcherSetupUtil");
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
      
      public function set rl_actpnt(param1:Label) : void
      {
         var _loc2_:Object = this._639103497rl_actpnt;
         if(_loc2_ !== param1)
         {
            this._639103497rl_actpnt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_actpnt",_loc2_,param1));
         }
      }
      
      public function onFarmLvUp(param1:int) : void
      {
         var _loc2_:int = _core.getFazendaLevelByExp(param1);
         if(param1 >= GamePredef.FARM_LVUP_CONFIG[_loc2_].exp)
         {
            btnLvUp.visible = true;
         }
         else
         {
            btnLvUp.visible = false;
         }
         rl_level.text = Language.FAZENDAPANEL_U[1] + _loc2_;
         expBar.setProgress(param1,GamePredef.FARM_LVUP_CONFIG[_loc2_].exp);
         expBar.toolTip = Language.FAZENDAPANEL_U[2] + param1 + "/" + GamePredef.FARM_LVUP_CONFIG[_loc2_].exp;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_playerLevel() : RoundedLabel
      {
         return this._790207134rl_playerLevel;
      }
      
      public function init() : void
      {
      }
      
      public function ___FazendaPorTraitCanvas_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function __btnLvUp_click(param1:MouseEvent) : void
      {
         levelUp();
      }
      
      private function _FazendaPorTraitCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAZENDAPANEL_S[9];
         _loc1_ = Language.PORTRAITCANVAS_U[0];
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_playerName() : RoundedLabel
      {
         return this._856830001rl_playerName;
      }
      
      [Bindable(event="propertyChange")]
      public function get expBar() : Property
      {
         return this._1289197386expBar;
      }
      
      public function set img_head(param1:Image) : void
      {
         var _loc2_:Object = this._695119652img_head;
         if(_loc2_ !== param1)
         {
            this._695119652img_head = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img_head",_loc2_,param1));
         }
      }
      
      public function hideHeadImage() : void
      {
         img_head.source = ResManager.getIconUrl(GamePredef.DEFAULT_FARM_HEAD_ICON_CODE);
      }
      
      public function set rl_playerLevel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._790207134rl_playerLevel;
         if(_loc2_ !== param1)
         {
            this._790207134rl_playerLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_playerLevel",_loc2_,param1));
         }
      }
      
      public function levelUp() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.farmLvUp();
            }
         };
         var lvStr:String = rl_level.text.toString();
         var lv:int = parseInt(lvStr.substr(lvStr.length - 1,1));
         var money:int = int(GamePredef.FARM_LVUP_CONFIG[lv].money);
         var str:String = Language.FAZENDAPANEL_S[20].toString().replace("{num}",money);
         Alert.show(str,"",Alert.YES | Alert.NO,this,func);
      }
      
      [Bindable(event="propertyChange")]
      public function get btnLvUp() : BasicGlowButton
      {
         return this._205996609btnLvUp;
      }
      
      public function updateCharProp(param1:Object) : void
      {
         var _loc2_:int = 0;
         if(param1)
         {
            _loc2_ = _core.getFazendaLevelByExp(param1.exp);
            rl_playerName.text = param1.name;
            rl_playerLevel.text = "Lv:" + param1.level;
            rl_level.text = Language.FAZENDAPANEL_U[1] + _loc2_;
            rl_movepnt.text = Language.FAZENDAPANEL_U[3] + param1.movePnt + "/" + param1.maxMovePnt;
            expBar.setProgress(param1.exp,GamePredef.FARM_LVUP_CONFIG[_loc2_].exp);
            expBar.toolTip = Language.FAZENDAPANEL_U[2] + param1.exp + "/" + GamePredef.FARM_LVUP_CONFIG[_loc2_].exp;
            if(param1.name == _core.player.name)
            {
               img_head.source = ResManager.getIconUrl(_core.player.iconCode);
            }
            if(param1.exp >= GamePredef.FARM_LVUP_CONFIG[_loc2_].exp && param1.name == _core.player.name && Boolean(GamePredef.FARM_LVUP_CONFIG[_loc2_ + 1]))
            {
               btnLvUp.visible = true;
            }
            else
            {
               btnLvUp.visible = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_level() : Label
      {
         return this._1000667455rl_level;
      }
      
      [Bindable(event="propertyChange")]
      public function get rl_movepnt() : Label
      {
         return this._742552512rl_movepnt;
      }
      
      private function _FazendaPorTraitCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAZENDAPANEL_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            rl_movepnt.toolTip = param1;
         },"rl_movepnt.toolTip");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PORTRAITCANVAS_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnLvUp.label = param1;
         },"btnLvUp.label");
         result[1] = binding;
         return result;
      }
      
      public function set rl_playerName(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._856830001rl_playerName;
         if(_loc2_ !== param1)
         {
            this._856830001rl_playerName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rl_playerName",_loc2_,param1));
         }
      }
      
      public function updateCharHeadImage(param1:Number) : void
      {
         img_head.source = ResManager.getIconUrl(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get img_head() : Image
      {
         return this._695119652img_head;
      }
      
      public function set expBar(param1:Property) : void
      {
         var _loc2_:Object = this._1289197386expBar;
         if(_loc2_ !== param1)
         {
            this._1289197386expBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expBar",_loc2_,param1));
         }
      }
      
      public function changeActpntAndMovePntVisible() : void
      {
         var _loc1_:Object = null;
         if(rl_playerName.text == _core.player.name)
         {
            _loc1_ = _core.view.getUI(ViewManager.PANEL_FAZENDA);
            if(_loc1_._ownerId == _core.player.id)
            {
               rl_actpnt.visible = true;
               rl_movepnt.visible = false;
               rl_actpnt.text = Language.GAMEPREDEF_S[257] + "：" + _core.player.actpoint + "/" + _core.player.maxActpoint;
            }
            else
            {
               rl_actpnt.visible = false;
               rl_movepnt.visible = true;
            }
         }
      }
      
      public function updateMovePoint() : void
      {
         rl_movepnt.text = Language.FAZENDAPANEL_U[3] + _core.player.movePnt + "/" + _core.player.maxMovePnt;
      }
      
      public function addActpoint() : void
      {
         var str:String;
         var shopData:Object = null;
         var func:Function = function(param1:CloseEvent):*
         {
            var _loc2_:Object = null;
            if(param1.detail)
            {
               _loc2_ = {
                  "tid":ItemConfig.ITEM_ACTPOINT_WATER,
                  "sid":shopData.id
               };
               _core.remote.useItemGold2(_loc2_);
            }
         };
         var i:int = 0;
         while(i <= GameData.d[GamePredef.TBL_SHOP_SLOT].length)
         {
            if(GameData.d[GamePredef.TBL_SHOP_SLOT][i])
            {
               if(GameData.d[GamePredef.TBL_SHOP_SLOT][i].type == GamePredef.TBL_ITEM_TEMPLATE && GameData.d[GamePredef.TBL_SHOP_SLOT][i].itemId == ItemConfig.ITEM_ACTPOINT_WATER)
               {
                  shopData = GameData.d[GamePredef.TBL_SHOP_SLOT][i];
                  break;
               }
            }
            i++;
         }
         str = Language.MONEYITEMPANEL_S[0].toString().replace("{shopData.gold}",shopData.gold).replace("{name}",GameData.d[GamePredef.TBL_ITEM_TEMPLATE][ItemConfig.ITEM_ACTPOINT_WATER].name);
         Alert.show(str,"",Alert.OK | Alert.CANCEL,this,func);
      }
   }
}

