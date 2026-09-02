package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.vo.ToolTipVO;
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
   import mx.containers.VBox;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipDevSkill extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1469089236txtLevelMoney:Text;
      
      private var dm:DataManager;
      
      private var _552983622txtGuildExp:Text;
      
      private var _core:Core;
      
      private var skill:Object = null;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _watchers:Array = [];
      
      private var _1164591585txtGuildLevel:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _1656631245levelFull:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "stylesFactory":function():void
               {
                  this.verticalGap = 0;
                  this.paddingLeft = 5;
                  this.paddingRight = 5;
                  this.paddingTop = 5;
                  this.paddingBottom = 5;
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "x":0,
                     "y":0,
                     "childDescriptors":[new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtGuildLevel"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtGuildExp"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtLevelMoney"
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"levelFull",
                        "stylesFactory":function():void
                        {
                           this.color = 16319235;
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      private var _temp:int = 0;
      
      private var _3769vo:ToolTipVO;
      
      public function TipDevSkill()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipDevSkill_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipDevSkill._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtGuildExp() : Text
      {
         return this._552983622txtGuildExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get levelFull() : Text
      {
         return this._1656631245levelFull;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtLevelMoney() : Text
      {
         return this._1469089236txtLevelMoney;
      }
      
      public function set object(param1:Object) : void
      {
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         vo = new ToolTipVO();
         _temp = param1.temp;
         skill = param1.skill;
         if(skill != null)
         {
            vo.guildLevel = Language.TIPREQSKILL_S[6].toString().replace("{guildLevel}",_temp + 1);
            vo.guildExp = Language.TIPREQSKILL_S[7].toString().replace("{guildExp}",skill.guildDevExp);
            vo.guildMoney = Language.TIPREQSKILL_S[8].toString().replace("{guildMoney}",skill.guildDevMoney);
            txtGuildLevel.visible = true;
            txtGuildExp.visible = true;
            txtLevelMoney.visible = true;
            levelFull.visible = false;
         }
         else
         {
            txtGuildLevel.visible = false;
            txtGuildExp.visible = false;
            txtLevelMoney.visible = false;
            levelFull.visible = true;
         }
         if(_temp + 1 <= Math.floor(_core.player.guild.level))
         {
            txtGuildLevel.setStyle("color","#e3f236");
         }
         else
         {
            txtGuildLevel.setStyle("color","#f90303");
         }
         if(Boolean(skill) && Math.floor(skill.guildDevExp) <= Math.floor(_core.player.guild.exp))
         {
            txtGuildExp.setStyle("color","#e3f236");
         }
         else
         {
            txtGuildExp.setStyle("color","#f90303");
         }
         if(Boolean(skill) && Math.floor(skill.guildDevMoney) <= Math.floor(_core.player.guild.money))
         {
            txtLevelMoney.setStyle("color","#e3f236");
         }
         else
         {
            txtLevelMoney.setStyle("color","#f90303");
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipDevSkill = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipDevSkill_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipDevSkillWatcherSetupUtil");
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
      
      public function ___TipDevSkill_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipDevSkill_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.guildLevel;
         _loc1_ = Language.TIPREQSKILL_S[10];
         _loc1_ = vo.guildExp;
         _loc1_ = Language.TIPREQSKILL_S[11];
         _loc1_ = Number(skill.guildDevExp) != 0;
         _loc1_ = vo.guildMoney;
         _loc1_ = Language.TIPREQSKILL_S[12];
         _loc1_ = Number(skill.guildDevMoney) != 0;
         _loc1_ = Language.TIPREQSKILL_S[13];
      }
      
      [Bindable(event="propertyChange")]
      public function get txtGuildLevel() : Text
      {
         return this._1164591585txtGuildLevel;
      }
      
      public function set txtGuildLevel(param1:Text) : void
      {
         var _loc2_:Object = this._1164591585txtGuildLevel;
         if(_loc2_ !== param1)
         {
            this._1164591585txtGuildLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtGuildLevel",_loc2_,param1));
         }
      }
      
      public function set txtLevelMoney(param1:Text) : void
      {
         var _loc2_:Object = this._1469089236txtLevelMoney;
         if(_loc2_ !== param1)
         {
            this._1469089236txtLevelMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtLevelMoney",_loc2_,param1));
         }
      }
      
      private function _TipDevSkill_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.guildLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtGuildLevel.htmlText = param1;
         },"txtGuildLevel.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPREQSKILL_S[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtGuildLevel.text = param1;
         },"txtGuildLevel.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.guildExp;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtGuildExp.htmlText = param1;
         },"txtGuildExp.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPREQSKILL_S[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtGuildExp.text = param1;
         },"txtGuildExp.text");
         result[3] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Number(skill.guildDevExp) != 0;
         },function(param1:Boolean):void
         {
            txtGuildExp.visible = param1;
         },"txtGuildExp.visible");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.guildMoney;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtLevelMoney.htmlText = param1;
         },"txtLevelMoney.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPREQSKILL_S[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtLevelMoney.text = param1;
         },"txtLevelMoney.text");
         result[6] = binding;
         binding = new Binding(this,function():Boolean
         {
            return Number(skill.guildDevMoney) != 0;
         },function(param1:Boolean):void
         {
            txtLevelMoney.visible = param1;
         },"txtLevelMoney.visible");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPREQSKILL_S[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            levelFull.text = param1;
         },"levelFull.text");
         result[8] = binding;
         return result;
      }
      
      private function set vo(param1:ToolTipVO) : void
      {
         var _loc2_:Object = this._3769vo;
         if(_loc2_ !== param1)
         {
            this._3769vo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vo",_loc2_,param1));
         }
      }
      
      public function set txtGuildExp(param1:Text) : void
      {
         var _loc2_:Object = this._552983622txtGuildExp;
         if(_loc2_ !== param1)
         {
            this._552983622txtGuildExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtGuildExp",_loc2_,param1));
         }
      }
      
      public function set levelFull(param1:Text) : void
      {
         var _loc2_:Object = this._1656631245levelFull;
         if(_loc2_ !== param1)
         {
            this._1656631245levelFull = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"levelFull",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
   }
}

