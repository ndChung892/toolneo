package com.qeedoo.ui.view.compBattle
{
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.BuffVO;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.RoundedText;
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
   import mx.containers.HBox;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.core.Repeater;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class BattleInfoSinglePlayer extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _35212935buffIcons:Repeater;
      
      private var _1055343087buffIconHbox:HBox;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _117054941_BattleInfoSinglePlayer_HBox1:HBox;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var nameTXT:RoundedText;
      
      private var _3198432head:Image;
      
      public var _BattleInfoSinglePlayer_BattleInfoBuffCanvas1:Array;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":215,
               "height":50,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Image,
                  "id":"head",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "scaleX":0.6,
                        "scaleY":0.6
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HRule,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":0,
                        "y":30,
                        "percentWidth":100,
                        "height":2
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"buffIconHbox",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 3;
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "percentWidth":100,
                        "y":33,
                        "height":25,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Repeater,
                           "id":"buffIcons",
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":BattleInfoBuffCanvas,
                                 "id":"_BattleInfoSinglePlayer_BattleInfoBuffCanvas1"
                              })]};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function BattleInfoSinglePlayer()
      {
         super();
         mx_internal::_document = this;
         this.width = 215;
         this.height = 50;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         BattleInfoSinglePlayer._watcherSetupUtil = param1;
      }
      
      public function set buffIconHbox(param1:HBox) : void
      {
         var _loc2_:Object = this._1055343087buffIconHbox;
         if(_loc2_ !== param1)
         {
            this._1055343087buffIconHbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffIconHbox",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get buffIconHbox() : HBox
      {
         return this._1055343087buffIconHbox;
      }
      
      private function _BattleInfoSinglePlayer_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return buffIcons.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _BattleInfoSinglePlayer_BattleInfoBuffCanvas1[param2[0]].refresh = param1;
         },"_BattleInfoSinglePlayer_BattleInfoBuffCanvas1.refresh");
         result[0] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get buffIcons() : Repeater
      {
         return this._35212935buffIcons;
      }
      
      public function set head(param1:Image) : void
      {
         var _loc2_:Object = this._3198432head;
         if(_loc2_ !== param1)
         {
            this._3198432head = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"head",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
         head.source = null;
         head.filters = null;
         if(nameTXT)
         {
            nameTXT.text = "";
         }
         visible = false;
      }
      
      public function set buffIcons(param1:Repeater) : void
      {
         var _loc2_:Object = this._35212935buffIcons;
         if(_loc2_ !== param1)
         {
            this._35212935buffIcons = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buffIcons",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:BattleInfoSinglePlayer = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _BattleInfoSinglePlayer_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compBattle_BattleInfoSinglePlayerWatcherSetupUtil");
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
      
      private function buffSort(param1:Array) : Array
      {
         var _loc5_:ArrayCollection = null;
         var _loc7_:BuffVO = null;
         var _loc2_:Array = [];
         var _loc3_:Object = {};
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            if(Boolean(param1[_loc4_]) && Boolean(param1[_loc4_].data) && Boolean(param1[_loc4_].data.id))
            {
               _loc3_[param1[_loc4_].data.id] = param1[_loc4_];
            }
            _loc4_++;
         }
         var _loc6_:* = _core.view.getUI(ViewManager.STAGE_BATTLE);
         if(_loc6_)
         {
            _loc5_ = _loc6_.getCharactorBuff();
         }
         if(_loc5_)
         {
            for each(_loc7_ in _loc5_)
            {
               if(_loc3_[_loc7_.id])
               {
                  _loc2_.push(_loc3_[_loc7_.id]);
               }
            }
         }
         else
         {
            _loc2_ = param1;
         }
         return _loc2_;
      }
      
      private function _BattleInfoSinglePlayer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = buffIcons.currentItem;
      }
      
      public function refresh(param1:Object) : void
      {
         var _loc4_:Object = null;
         var _loc5_:UIComponent = null;
         var _loc6_:int = 0;
         var _loc7_:Object = null;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         if(!nameTXT)
         {
            nameTXT = new RoundedText();
            _loc5_ = new UIComponent();
            _loc5_.x = 38;
            nameTXT.x = 0;
            nameTXT.autoSize = TextFieldAutoSize.LEFT;
            _loc5_.y = 8;
            nameTXT.width = 200;
            nameTXT.height = 20;
            _loc5_.addChild(nameTXT);
            addChild(_loc5_);
         }
         if(!param1 || int(param1.data.hp) == 0)
         {
            dead();
            return;
         }
         head.filters = [];
         visible = true;
         var _loc2_:Array = [];
         head.source = ResManager.getIconUrl(param1.data.gameObject.iconCode);
         nameTXT.text = param1.data.gameObject.name;
         var _loc3_:uint = 16777164;
         if(param1.data.gameObject.type == GamePredef.TBL_CREATURE)
         {
            if(param1.data.leftSide)
            {
               if(param1.data.gameObject.bossFlag == 1)
               {
                  _loc3_ = 16711680;
               }
               else if(param1.data.gameObject.bossFlag == 2)
               {
                  _loc3_ = 65280;
               }
            }
         }
         else if(param1.data.gameObject.type == GamePredef.TBL_PET)
         {
         }
         if(param1.color)
         {
            _loc3_ = uint(param1.color);
         }
         nameTXT.textColor = _loc3_;
         for(_loc4_ in param1.battleBuff)
         {
            _loc6_ = 0;
            if(int(_loc4_) > 10000000)
            {
               _loc6_ = Math.floor(int(_loc4_) / 10000);
            }
            else
            {
               _loc6_ = int(_loc4_);
            }
            _loc7_ = _core.data.gameData[GamePredef.TBL_BUFF][_loc6_];
            _loc8_ = int(_loc7_.skillId);
            _loc9_ = _core.data.gameData[GamePredef.TBL_SKILL][_loc8_];
            if(!((Boolean(_loc9_)) && Boolean(int(_loc9_.buffRound) > 10) || int(param1.battleBuff[_loc4_]) > 10))
            {
               _loc2_.push({
                  "data":_loc7_,
                  "keepRound":param1.battleBuff[_loc4_]
               });
            }
         }
         if(param1.data.gameObject.id == _core.player.id && _loc2_.length > 0)
         {
            _loc2_ = buffSort(_loc2_);
         }
         buffIcons.dataProvider = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get _BattleInfoSinglePlayer_HBox1() : HBox
      {
         return this._117054941_BattleInfoSinglePlayer_HBox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get head() : Image
      {
         return this._3198432head;
      }
      
      private function dead() : void
      {
         ResManager.applyGray(head);
         nameTXT.textColor = 13684944;
      }
      
      public function set _BattleInfoSinglePlayer_HBox1(param1:HBox) : void
      {
         var _loc2_:Object = this._117054941_BattleInfoSinglePlayer_HBox1;
         if(_loc2_ !== param1)
         {
            this._117054941_BattleInfoSinglePlayer_HBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_BattleInfoSinglePlayer_HBox1",_loc2_,param1));
         }
      }
   }
}

