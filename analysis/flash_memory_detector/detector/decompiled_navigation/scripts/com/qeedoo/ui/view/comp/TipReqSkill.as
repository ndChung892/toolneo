package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.object.Player;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.game.vo.ToolTipVO;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.compDragable.GuildPanel;
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
   import mx.states.RemoveChild;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipReqSkill extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _552465410txtPreSkill:Text;
      
      private var _1476030621txtGuild:Text;
      
      private var _1378070903txtLevelExp:Text;
      
      private var _3769vo:ToolTipVO;
      
      private var _1469089236txtLevelMoney:Text;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      public var _TipReqSkill_RemoveChild1:RemoveChild;
      
      public var _TipReqSkill_RemoveChild2:RemoveChild;
      
      public var _TipReqSkill_RemoveChild3:RemoveChild;
      
      public var _TipReqSkill_RemoveChild4:RemoveChild;
      
      public var _TipReqSkill_RemoveChild5:RemoveChild;
      
      public var _TipReqSkill_RemoveChild6:RemoveChild;
      
      public var _TipReqSkill_RemoveChild7:RemoveChild;
      
      public var _TipReqSkill_RemoveChild8:RemoveChild;
      
      private var _418184118txtSkillBook:Text;
      
      public var _TipReqSkill_RemoveChild9:RemoveChild;
      
      private var _277055558txtProGrade:Text;
      
      private var _core:Core = Core.getInstance();
      
      private var dm:DataManager;
      
      mx_internal var _watchers:Array = [];
      
      private var _932190282txtGuildContrib:Text;
      
      private var _temp:int = 0;
      
      private var _9364448txtPlayLevel:Text;
      
      private var _1068883605txtMagicWeaponLevel:Text;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipReqSkill_RemoveChild11:RemoveChild;
      
      public var _TipReqSkill_RemoveChild13:RemoveChild;
      
      public var _TipReqSkill_RemoveChild14:RemoveChild;
      
      mx_internal var _bindings:Array = [];
      
      public var _TipReqSkill_RemoveChild10:RemoveChild;
      
      public var _TipReqSkill_RemoveChild15:RemoveChild;
      
      public var _TipReqSkill_RemoveChild16:RemoveChild;
      
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
                        "id":"txtSkillBook",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求技能书"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtPreSkill",
                        "stylesFactory":function():void
                        {
                           this.color = 14938678;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求前置技能"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtPlayLevel",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求人物等级"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtLevelExp",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"升级经验"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtLevelMoney",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求升级金钱"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtProGrade",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求职业等级"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtGuild",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求公会等级"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtGuildContrib",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求公会捐献"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtMagicWeaponLevel",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求神器等级"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txtDex",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"熟练度"};
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public var _TipReqSkill_RemoveChild12:RemoveChild;
      
      private var _859638905txtDex:Text;
      
      public function TipReqSkill()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.states = [_TipReqSkill_State1_c(),_TipReqSkill_State2_c(),_TipReqSkill_State3_c(),_TipReqSkill_State4_c(),_TipReqSkill_State5_c()];
         this.addEventListener("resize",___TipReqSkill_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipReqSkill._watcherSetupUtil = param1;
      }
      
      public function set txtMagicWeaponLevel(param1:Text) : void
      {
         var _loc2_:Object = this._1068883605txtMagicWeaponLevel;
         if(_loc2_ !== param1)
         {
            this._1068883605txtMagicWeaponLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtMagicWeaponLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPreSkill() : Text
      {
         return this._552465410txtPreSkill;
      }
      
      public function set txtDex(param1:Text) : void
      {
         var _loc2_:Object = this._859638905txtDex;
         if(_loc2_ !== param1)
         {
            this._859638905txtDex = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtDex",_loc2_,param1));
         }
      }
      
      private function _TipReqSkill_RemoveChild10_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild10 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild10",_TipReqSkill_RemoveChild10);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild1",_TipReqSkill_RemoveChild1);
         return _loc1_;
      }
      
      public function set txtPreSkill(param1:Text) : void
      {
         var _loc2_:Object = this._552465410txtPreSkill;
         if(_loc2_ !== param1)
         {
            this._552465410txtPreSkill = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPreSkill",_loc2_,param1));
         }
      }
      
      private function _TipReqSkill_RemoveChild14_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild14 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild14",_TipReqSkill_RemoveChild14);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild5_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild5 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild5",_TipReqSkill_RemoveChild5);
         return _loc1_;
      }
      
      public function set txtLevelExp(param1:Text) : void
      {
         var _loc2_:Object = this._1378070903txtLevelExp;
         if(_loc2_ !== param1)
         {
            this._1378070903txtLevelExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtLevelExp",_loc2_,param1));
         }
      }
      
      private function _TipReqSkill_RemoveChild9_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild9 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild9",_TipReqSkill_RemoveChild9);
         return _loc1_;
      }
      
      private function _TipReqSkill_State4_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "life";
         _loc1_.overrides = [_TipReqSkill_RemoveChild10_i(),_TipReqSkill_RemoveChild11_i(),_TipReqSkill_RemoveChild12_i()];
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtPlayLevel() : Text
      {
         return this._9364448txtPlayLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtLevelMoney() : Text
      {
         return this._1469089236txtLevelMoney;
      }
      
      public function set txtPlayLevel(param1:Text) : void
      {
         var _loc2_:Object = this._9364448txtPlayLevel;
         if(_loc2_ !== param1)
         {
            this._9364448txtPlayLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtPlayLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtSkillBook() : Text
      {
         return this._418184118txtSkillBook;
      }
      
      private function _TipReqSkill_RemoveChild13_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild13 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild13",_TipReqSkill_RemoveChild13);
         return _loc1_;
      }
      
      private function _TipReqSkill_State3_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "artifact";
         _loc1_.overrides = [_TipReqSkill_RemoveChild7_i(),_TipReqSkill_RemoveChild8_i(),_TipReqSkill_RemoveChild9_i()];
         return _loc1_;
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
      
      private function _TipReqSkill_RemoveChild8_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild8 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild8",_TipReqSkill_RemoveChild8);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild4_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild4 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild4",_TipReqSkill_RemoveChild4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtGuild() : Text
      {
         return this._1476030621txtGuild;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtMagicWeaponLevel() : Text
      {
         return this._1068883605txtMagicWeaponLevel;
      }
      
      public function set txtGuildContrib(param1:Text) : void
      {
         var _loc2_:Object = this._932190282txtGuildContrib;
         if(_loc2_ !== param1)
         {
            this._932190282txtGuildContrib = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtGuildContrib",_loc2_,param1));
         }
      }
      
      public function set txtProGrade(param1:Text) : void
      {
         var _loc2_:Object = this._277055558txtProGrade;
         if(_loc2_ !== param1)
         {
            this._277055558txtProGrade = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtProGrade",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      public function get txtDex() : Text
      {
         return this._859638905txtDex;
      }
      
      private function _TipReqSkill_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return txtGuild;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild1.target = param1;
         },"_TipReqSkill_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtGuildContrib;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild2.target = param1;
         },"_TipReqSkill_RemoveChild2.target");
         result[1] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtMagicWeaponLevel;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild3.target = param1;
         },"_TipReqSkill_RemoveChild3.target");
         result[2] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtSkillBook;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild4.target = param1;
         },"_TipReqSkill_RemoveChild4.target");
         result[3] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtProGrade;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild5.target = param1;
         },"_TipReqSkill_RemoveChild5.target");
         result[4] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtMagicWeaponLevel;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild6.target = param1;
         },"_TipReqSkill_RemoveChild6.target");
         result[5] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtProGrade;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild7.target = param1;
         },"_TipReqSkill_RemoveChild7.target");
         result[6] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtGuild;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild8.target = param1;
         },"_TipReqSkill_RemoveChild8.target");
         result[7] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtGuildContrib;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild9.target = param1;
         },"_TipReqSkill_RemoveChild9.target");
         result[8] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtProGrade;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild10.target = param1;
         },"_TipReqSkill_RemoveChild10.target");
         result[9] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtGuild;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild11.target = param1;
         },"_TipReqSkill_RemoveChild11.target");
         result[10] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtMagicWeaponLevel;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild12.target = param1;
         },"_TipReqSkill_RemoveChild12.target");
         result[11] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtProGrade;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild13.target = param1;
         },"_TipReqSkill_RemoveChild13.target");
         result[12] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtGuild;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild14.target = param1;
         },"_TipReqSkill_RemoveChild14.target");
         result[13] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtGuildContrib;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild15.target = param1;
         },"_TipReqSkill_RemoveChild15.target");
         result[14] = binding;
         binding = new Binding(this,function():DisplayObject
         {
            return txtMagicWeaponLevel;
         },function(param1:DisplayObject):void
         {
            _TipReqSkill_RemoveChild16.target = param1;
         },"_TipReqSkill_RemoveChild16.target");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtSkillBook.htmlText = param1;
         },"txtSkillBook.htmlText");
         result[16] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.name != "";
         },function(param1:Boolean):void
         {
            txtSkillBook.visible = param1;
         },"txtSkillBook.visible");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.name != "";
         },function(param1:Boolean):void
         {
            txtSkillBook.includeInLayout = param1;
         },"txtSkillBook.includeInLayout");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.preSkill;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtPreSkill.htmlText = param1;
         },"txtPreSkill.htmlText");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.preSkill != "";
         },function(param1:Boolean):void
         {
            txtPreSkill.visible = param1;
         },"txtPreSkill.visible");
         result[20] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.preSkill != "";
         },function(param1:Boolean):void
         {
            txtPreSkill.includeInLayout = param1;
         },"txtPreSkill.includeInLayout");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtPlayLevel.htmlText = param1;
         },"txtPlayLevel.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.expSkill;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtLevelExp.htmlText = param1;
         },"txtLevelExp.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.price;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtLevelMoney.htmlText = param1;
         },"txtLevelMoney.htmlText");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqCL;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtProGrade.htmlText = param1;
         },"txtProGrade.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.guildLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtGuild.htmlText = param1;
         },"txtGuild.htmlText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.guildContrib;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtGuildContrib.htmlText = param1;
         },"txtGuildContrib.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.magicWeaponLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtMagicWeaponLevel.htmlText = param1;
         },"txtMagicWeaponLevel.htmlText");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.dexProgress;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtDex.htmlText = param1;
         },"txtDex.htmlText");
         result[29] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipReqSkill = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipReqSkill_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipReqSkillWatcherSetupUtil");
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
      
      private function _TipReqSkill_RemoveChild12_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild12 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild12",_TipReqSkill_RemoveChild12);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild3_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild3 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild3",_TipReqSkill_RemoveChild3);
         return _loc1_;
      }
      
      public function set txtSkillBook(param1:Text) : void
      {
         var _loc2_:Object = this._418184118txtSkillBook;
         if(_loc2_ !== param1)
         {
            this._418184118txtSkillBook = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtSkillBook",_loc2_,param1));
         }
      }
      
      private function _TipReqSkill_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "guild";
         _loc1_.overrides = [_TipReqSkill_RemoveChild4_i(),_TipReqSkill_RemoveChild5_i(),_TipReqSkill_RemoveChild6_i()];
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild16_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild16 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild16",_TipReqSkill_RemoveChild16);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild7_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild7 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild7",_TipReqSkill_RemoveChild7);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtLevelExp() : Text
      {
         return this._1378070903txtLevelExp;
      }
      
      public function ___TipReqSkill_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipReqSkill_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = txtGuild;
         _loc1_ = txtGuildContrib;
         _loc1_ = txtMagicWeaponLevel;
         _loc1_ = txtSkillBook;
         _loc1_ = txtProGrade;
         _loc1_ = txtMagicWeaponLevel;
         _loc1_ = txtProGrade;
         _loc1_ = txtGuild;
         _loc1_ = txtGuildContrib;
         _loc1_ = txtProGrade;
         _loc1_ = txtGuild;
         _loc1_ = txtMagicWeaponLevel;
         _loc1_ = txtProGrade;
         _loc1_ = txtGuild;
         _loc1_ = txtGuildContrib;
         _loc1_ = txtMagicWeaponLevel;
         _loc1_ = vo.name;
         _loc1_ = vo.name != "";
         _loc1_ = vo.name != "";
         _loc1_ = vo.preSkill;
         _loc1_ = vo.preSkill != "";
         _loc1_ = vo.preSkill != "";
         _loc1_ = vo.reqLevel;
         _loc1_ = vo.expSkill;
         _loc1_ = vo.price;
         _loc1_ = vo.reqCL;
         _loc1_ = vo.guildLevel;
         _loc1_ = vo.guildContrib;
         _loc1_ = vo.magicWeaponLevel;
         _loc1_ = vo.dexProgress;
      }
      
      public function set object(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         var _loc7_:Number = NaN;
         if(!param1.skill)
         {
            return;
         }
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         var _loc2_:Player = _core.player;
         vo = new ToolTipVO();
         _temp = param1.temp;
         var _loc3_:Object = param1.skill;
         for(_loc4_ in param1)
         {
         }
         _loc5_ = _core.skillBookBySkillName(_loc3_.name);
         if(_temp == 0)
         {
            if(!ToolKit.isEqual(_loc3_.useEnv,4) && !ToolKit.isEqual(_loc3_.useEnv,5) && !ToolKit.isEqual(_loc3_.useEnv,3))
            {
               if(Boolean(_loc5_) && _core.hasItemNum(GamePredef.TBL_ITEM_TEMPLATE,_loc5_.id) > 0)
               {
                  txtSkillBook.setStyle("color","#e3f236");
               }
               else
               {
                  txtSkillBook.setStyle("color","#f90303");
               }
               vo.name = Language.TIPREQSKILL_S[0].toString().replace("{skillBook}",_loc3_.name);
               vo.preSkill = "";
            }
         }
         else
         {
            vo.name = "";
            vo.preSkill = Language.TIPREQSKILL_S[1].toString().replace("{preSkill}",_loc3_.name + _temp);
         }
         vo.reqLevel = Language.TIPREQSKILL_S[2].toString().replace("{playLevel}",_loc3_.reqLevel);
         vo.expSkill = Language.TIPREQSKILL_S[3].toString().replace("{levelExp}",_loc3_.expSkill);
         vo.price = Language.TIPREQSKILL_S[4].toString().replace("{levelMoney}",_loc3_.price);
         vo.reqCL = Language.TIPREQSKILL_S[5].toString().replace("{proGrade}",GamePredef.CLASS_LEVEL[_loc3_.reqCL]);
         vo.guildLevel = Language.TIPREQSKILL_S[6].toString().replace("{guildLevel}",_temp + 1);
         vo.guildContrib = Language.TIPREQSKILL_S[9].toString().replace("{guildContrib}",_loc3_.costGuildContrib);
         vo.magicWeaponLevel = Language.TIPREQSKILL_S[14].toString().replace("{magicWeaponLevel}",_loc3_.creKind);
         if(param1.dex !== undefined)
         {
            vo.dexProgress = Language.TIPREQSKILL_S[15].toString().replace("{dexNow}",param1.dex).replace("{dexRequire}",_loc3_.dexSkill);
            if(Number(param1.dex) < Number(_loc3_.dexSkill))
            {
               txtDex.setStyle("color","#f90303");
            }
            else
            {
               txtDex.setStyle("color","#e3f236");
            }
         }
         if(_loc2_.level < Number(_loc3_.reqLevel))
         {
            txtPlayLevel.setStyle("color","#f90303");
         }
         else
         {
            txtPlayLevel.setStyle("color","#e3f236");
         }
         if(_loc2_.expSkill < Number(_loc3_.expSkill))
         {
            txtLevelExp.setStyle("color","#f90303");
         }
         else
         {
            txtLevelExp.setStyle("color","#e3f236");
         }
         if(_loc2_.money < Number(_loc3_.price) && 2 == GamePredef.GLOBAL_SETTING.defaultMoney || _loc2_.moneyBind < Number(_loc3_.price) && 1 == GamePredef.GLOBAL_SETTING.defaultMoney)
         {
            txtLevelMoney.setStyle("color","#f90303");
         }
         else
         {
            txtLevelMoney.setStyle("color","#e3f236");
         }
         if(_loc2_.cl < int(_loc3_.reqCL) && int(_loc3_.reqCL) != GamePredef.SKILL_REQUEST_CHAR_LEVEL || int(_loc3_.reqCL) == GamePredef.SKILL_REQUEST_CHAR_LEVEL && !_core.player.expRe)
         {
            txtProGrade.setStyle("color","#f90303");
         }
         else
         {
            txtProGrade.setStyle("color","#e3f236");
         }
         var _loc6_:GuildPanel = _core.view.getUI(ViewManager.PANEL_GUILD) as GuildPanel;
         if(_core.player.guild != null && _core.player.gData != null)
         {
            _loc7_ = Number(_core.player.gData.normalContrib) + Number(_core.player.gData.donateContrib);
            if(_loc7_ >= Number(_loc3_.costGuildContrib))
            {
               txtGuildContrib.setStyle("color","#e3f236");
            }
            else
            {
               txtGuildContrib.setStyle("color","#f90303");
            }
            if(Number(_core.player.guild.level) < Number(_temp) + 1)
            {
               txtGuild.setStyle("color","#f90303");
            }
            else
            {
               txtGuild.setStyle("color","#e3f236");
            }
         }
         else
         {
            txtGuild.setStyle("color","#f90303");
            txtGuildContrib.setStyle("color","#f90303");
         }
         if(Number(_loc3_.creKind) < 3 || true)
         {
            txtMagicWeaponLevel.setStyle("color","#e3f236");
         }
         else
         {
            txtMagicWeaponLevel.setStyle("color","#f90303");
         }
         if(ToolKit.isEqual(_loc3_.useEnv,4))
         {
            currentState = "guild";
         }
         else if(ToolKit.isEqual(_loc3_.useEnv,5))
         {
            currentState = "artifact";
         }
         else if(ToolKit.isEqual(_loc3_.useEnv,6))
         {
            if(Number(_loc3_.costGuildContrib) > 0)
            {
               currentState = "life";
            }
            else
            {
               currentState = "lifeNoContribution";
            }
         }
         else
         {
            currentState = "normal";
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txtGuildContrib() : Text
      {
         return this._932190282txtGuildContrib;
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtProGrade() : Text
      {
         return this._277055558txtProGrade;
      }
      
      public function set txtGuild(param1:Text) : void
      {
         var _loc2_:Object = this._1476030621txtGuild;
         if(_loc2_ !== param1)
         {
            this._1476030621txtGuild = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtGuild",_loc2_,param1));
         }
      }
      
      private function _TipReqSkill_RemoveChild11_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild11 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild11",_TipReqSkill_RemoveChild11);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild2_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild2 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild2",_TipReqSkill_RemoveChild2);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild15_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild15 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild15",_TipReqSkill_RemoveChild15);
         return _loc1_;
      }
      
      private function _TipReqSkill_RemoveChild6_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipReqSkill_RemoveChild6 = _loc1_;
         BindingManager.executeBindings(this,"_TipReqSkill_RemoveChild6",_TipReqSkill_RemoveChild6);
         return _loc1_;
      }
      
      private function _TipReqSkill_State5_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "lifeNoContribution";
         _loc1_.overrides = [_TipReqSkill_RemoveChild13_i(),_TipReqSkill_RemoveChild14_i(),_TipReqSkill_RemoveChild15_i(),_TipReqSkill_RemoveChild16_i()];
         return _loc1_;
      }
      
      private function _TipReqSkill_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "normal";
         _loc1_.overrides = [_TipReqSkill_RemoveChild1_i(),_TipReqSkill_RemoveChild2_i(),_TipReqSkill_RemoveChild3_i()];
         return _loc1_;
      }
      
      override public function show(param1:Object = null) : void
      {
         setPos();
         this.visible = true;
      }
   }
}

