package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
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
   
   public class TipStarReq extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1288349932txt_starName:Text;
      
      private var _429905214reqMoney:String;
      
      mx_internal var _watchers:Array = [];
      
      private var _458435979txt_reqLevel:Text;
      
      private var _1094713483reqTime:String;
      
      private var _1315666941starName:String;
      
      private var _153113279txt_reqStar:Text;
      
      private var _165871276reqStarLevel:String;
      
      private var _457222223txt_reqMoney:Text;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _431118970reqLevel:String;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1834909674effDesc:String;
      
      private var _153093700txt_reqTime:Text;
      
      private var _483072605nextEffDesc:String;
      
      private var _934531937reqExp:String;
      
      private var _599242019txt_nextEff:Text;
      
      private var _2135048057txt_effct:Text;
      
      private var _878185905txt_req:Text;
      
      mx_internal var _bindings:Array = [];
      
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
                        "id":"txt_starName",
                        "stylesFactory":function():void
                        {
                           this.color = 16407301;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"白羊座"};
                        }
                     }),new UIComponentDescriptor({"type":Text}),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_effct",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"星座效果"};
                        }
                     }),new UIComponentDescriptor({"type":Text}),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_req"
                     }),new UIComponentDescriptor({"type":Text}),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_nextEff",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"下级效果"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_reqStar",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求星座等级"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_reqLevel",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求人物等级"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_reqMoney",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求升级银子"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_reqTime",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"需求升级时间"};
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      private var _core:Core = Core.getInstance();
      
      public function TipStarReq()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipStarReq_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipStarReq._watcherSetupUtil = param1;
      }
      
      public function set txt_reqStar(param1:Text) : void
      {
         var _loc2_:Object = this._153113279txt_reqStar;
         if(_loc2_ !== param1)
         {
            this._153113279txt_reqStar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_reqStar",_loc2_,param1));
         }
      }
      
      private function set reqMoney(param1:String) : void
      {
         var _loc2_:Object = this._429905214reqMoney;
         if(_loc2_ !== param1)
         {
            this._429905214reqMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqMoney",_loc2_,param1));
         }
      }
      
      public function set object(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Object = null;
         if(!param1)
         {
            return;
         }
         starName = param1.name + Language.STAR_REQ_TIP_U[5].toString().replace("{num}",param1.level);
         reqStarLevel = Language.STAR_REQ_TIP_U[0] + "：" + param1.reqStarLevel;
         reqExp = Language.STAR_REQ_TIP_U[1] + "：" + param1.reqExp;
         reqLevel = Language.STAR_REQ_TIP_U[2] + "：" + param1.reqLevel;
         reqMoney = Language.STAR_REQ_TIP_U[3] + "：" + param1.reqMoney;
         effDesc = Language.CHARACTORPANEL_U[51] + Language.CHARACTORPANEL_U[57].toString().replace("{prop}",GamePredef.STAR_PROP_DIC[param1.type]).replace("{value}",param1.addValue1);
         nextEffDesc = Language.CHARACTORPANEL_U[51] + Language.CHARACTORPANEL_U[57].toString().replace("{prop}",GamePredef.STAR_PROP_DIC[param1.type]).replace("{value}",param1.addValue2);
         if(param1.type == 8 || param1.type == 11)
         {
            effDesc += "%";
            nextEffDesc += "%";
         }
         reqTime = Language.STAR_REQ_TIP_U[6] + "：" + param1.reqTime;
         var _loc2_:Number = 0;
         var _loc3_:Object = _core.player.starsData;
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = GameData.d[GamePredef.TBL_STARS_TEMPLATE][_loc4_.tid];
            if(_loc5_)
            {
               _loc2_ += parseInt(_loc5_.level);
            }
         }
         if(_loc2_ < param1.reqStarLevel)
         {
            txt_reqStar.setStyle("color","#f90303");
         }
         else
         {
            txt_reqStar.setStyle("color","#e3f236");
         }
         if(_core.player.level < param1.reqLevel)
         {
            txt_reqLevel.setStyle("color","#f90303");
         }
         else
         {
            txt_reqLevel.setStyle("color","#e3f236");
         }
         if(_core.player.money < Number(param1.reqMoney) && 2 == GamePredef.GLOBAL_SETTING.defaultMoney || _core.player.moneyBind < Number(param1.reqMoney) && 1 == GamePredef.GLOBAL_SETTING.defaultMoney)
         {
            txt_reqMoney.setStyle("color","#f90303");
         }
         else
         {
            txt_reqMoney.setStyle("color","#e3f236");
         }
         txt_nextEff.setStyle("color","#e3f236");
         txt_req.setStyle("color","#e3f236");
         txt_reqTime.setStyle("color","#e3f236");
      }
      
      [Bindable(event="propertyChange")]
      private function get reqLevel() : String
      {
         return this._431118970reqLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_effct() : Text
      {
         return this._2135048057txt_effct;
      }
      
      [Bindable(event="propertyChange")]
      private function get reqTime() : String
      {
         return this._1094713483reqTime;
      }
      
      public function set txt_effct(param1:Text) : void
      {
         var _loc2_:Object = this._2135048057txt_effct;
         if(_loc2_ !== param1)
         {
            this._2135048057txt_effct = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_effct",_loc2_,param1));
         }
      }
      
      private function set reqLevel(param1:String) : void
      {
         var _loc2_:Object = this._431118970reqLevel;
         if(_loc2_ !== param1)
         {
            this._431118970reqLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevel",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipStarReq = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipStarReq_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipStarReqWatcherSetupUtil");
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
      private function get effDesc() : String
      {
         return this._1834909674effDesc;
      }
      
      public function set txt_req(param1:Text) : void
      {
         var _loc2_:Object = this._878185905txt_req;
         if(_loc2_ !== param1)
         {
            this._878185905txt_req = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_req",_loc2_,param1));
         }
      }
      
      private function _TipStarReq_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = starName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_starName.htmlText = param1;
         },"txt_starName.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = effDesc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_effct.htmlText = param1;
         },"txt_effct.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_REQ_TIP_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_req.htmlText = param1;
         },"txt_req.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = nextEffDesc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_nextEff.htmlText = param1;
         },"txt_nextEff.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = reqStarLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_reqStar.htmlText = param1;
         },"txt_reqStar.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_reqLevel.htmlText = param1;
         },"txt_reqLevel.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = reqMoney;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_reqMoney.htmlText = param1;
         },"txt_reqMoney.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = reqTime;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_reqTime.htmlText = param1;
         },"txt_reqTime.htmlText");
         result[7] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_nextEff() : Text
      {
         return this._599242019txt_nextEff;
      }
      
      private function set reqTime(param1:String) : void
      {
         var _loc2_:Object = this._1094713483reqTime;
         if(_loc2_ !== param1)
         {
            this._1094713483reqTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqTime",_loc2_,param1));
         }
      }
      
      private function set reqStarLevel(param1:String) : void
      {
         var _loc2_:Object = this._165871276reqStarLevel;
         if(_loc2_ !== param1)
         {
            this._165871276reqStarLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqStarLevel",_loc2_,param1));
         }
      }
      
      public function ___TipStarReq_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      [Bindable(event="propertyChange")]
      private function get reqExp() : String
      {
         return this._934531937reqExp;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_reqMoney() : Text
      {
         return this._457222223txt_reqMoney;
      }
      
      [Bindable(event="propertyChange")]
      private function get nextEffDesc() : String
      {
         return this._483072605nextEffDesc;
      }
      
      [Bindable(event="propertyChange")]
      private function get starName() : String
      {
         return this._1315666941starName;
      }
      
      private function set effDesc(param1:String) : void
      {
         var _loc2_:Object = this._1834909674effDesc;
         if(_loc2_ !== param1)
         {
            this._1834909674effDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effDesc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_reqStar() : Text
      {
         return this._153113279txt_reqStar;
      }
      
      [Bindable(event="propertyChange")]
      private function get reqMoney() : String
      {
         return this._429905214reqMoney;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_reqTime() : Text
      {
         return this._153093700txt_reqTime;
      }
      
      private function set reqExp(param1:String) : void
      {
         var _loc2_:Object = this._934531937reqExp;
         if(_loc2_ !== param1)
         {
            this._934531937reqExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqExp",_loc2_,param1));
         }
      }
      
      public function set txt_nextEff(param1:Text) : void
      {
         var _loc2_:Object = this._599242019txt_nextEff;
         if(_loc2_ !== param1)
         {
            this._599242019txt_nextEff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_nextEff",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_req() : Text
      {
         return this._878185905txt_req;
      }
      
      [Bindable(event="propertyChange")]
      private function get reqStarLevel() : String
      {
         return this._165871276reqStarLevel;
      }
      
      private function set nextEffDesc(param1:String) : void
      {
         var _loc2_:Object = this._483072605nextEffDesc;
         if(_loc2_ !== param1)
         {
            this._483072605nextEffDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextEffDesc",_loc2_,param1));
         }
      }
      
      public function set txt_starName(param1:Text) : void
      {
         var _loc2_:Object = this._1288349932txt_starName;
         if(_loc2_ !== param1)
         {
            this._1288349932txt_starName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_starName",_loc2_,param1));
         }
      }
      
      public function set txt_reqMoney(param1:Text) : void
      {
         var _loc2_:Object = this._457222223txt_reqMoney;
         if(_loc2_ !== param1)
         {
            this._457222223txt_reqMoney = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_reqMoney",_loc2_,param1));
         }
      }
      
      private function _TipStarReq_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = starName;
         _loc1_ = effDesc;
         _loc1_ = Language.STAR_REQ_TIP_U[4];
         _loc1_ = nextEffDesc;
         _loc1_ = reqStarLevel;
         _loc1_ = reqLevel;
         _loc1_ = reqMoney;
         _loc1_ = reqTime;
      }
      
      public function set txt_reqLevel(param1:Text) : void
      {
         var _loc2_:Object = this._458435979txt_reqLevel;
         if(_loc2_ !== param1)
         {
            this._458435979txt_reqLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_reqLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_reqLevel() : Text
      {
         return this._458435979txt_reqLevel;
      }
      
      public function set txt_reqTime(param1:Text) : void
      {
         var _loc2_:Object = this._153093700txt_reqTime;
         if(_loc2_ !== param1)
         {
            this._153093700txt_reqTime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_reqTime",_loc2_,param1));
         }
      }
      
      private function set starName(param1:String) : void
      {
         var _loc2_:Object = this._1315666941starName;
         if(_loc2_ !== param1)
         {
            this._1315666941starName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_starName() : Text
      {
         return this._1288349932txt_starName;
      }
      
      override public function show(param1:Object = null) : void
      {
         setPos();
         this.visible = true;
      }
   }
}

