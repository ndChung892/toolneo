package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MCZDBattleReport extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _MCZDBattleReport_BasicGlowButton5:BasicGlowButton;
      
      public var _MCZDBattleReport_BasicGlowButton6:BasicGlowButton;
      
      private var _3649t5:RoundedLabel;
      
      public var _MCZDBattleReport_BasicGlowButton3:BasicGlowButton;
      
      private var _1464371768txtTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _3635re:RoundedLabel;
      
      private var _3652t8:RoundedLabel;
      
      private var _3650t6:RoundedLabel;
      
      private var _98727cpt:RoundedLabel;
      
      private var bidList:* = [];
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _3651t7:RoundedLabel;
      
      private var _3653t9:RoundedLabel;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":274,
               "height":330,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"txtTitle"
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"re",
                  "stylesFactory":function():void
                  {
                     this.top = "35";
                     this.horizontalCenter = "0";
                     this.fontSize = 20;
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"cpt",
                  "stylesFactory":function():void
                  {
                     this.top = "71";
                     this.horizontalCenter = "0";
                     this.fontSize = 13;
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"t5",
                  "stylesFactory":function():void
                  {
                     this.left = "33.5";
                     this.top = "105";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":132};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"t6",
                  "stylesFactory":function():void
                  {
                     this.left = "33.5";
                     this.top = "141";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":132};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"t7",
                  "stylesFactory":function():void
                  {
                     this.left = "33.5";
                     this.top = "176";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":132};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"t8",
                  "stylesFactory":function():void
                  {
                     this.left = "33.5";
                     this.top = "213";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":132};
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"t9",
                  "stylesFactory":function():void
                  {
                     this.left = "33.5";
                     this.top = "248";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"width":132};
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MCZDBattleReport_BasicGlowButton1",
                  "events":{"click":"___MCZDBattleReport_BasicGlowButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "176.5";
                     this.top = "102";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":64,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MCZDBattleReport_BasicGlowButton2",
                  "events":{"click":"___MCZDBattleReport_BasicGlowButton2_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "176.5";
                     this.top = "139";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":64,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MCZDBattleReport_BasicGlowButton3",
                  "events":{"click":"___MCZDBattleReport_BasicGlowButton3_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "176.5";
                     this.top = "174";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":64,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MCZDBattleReport_BasicGlowButton4",
                  "events":{"click":"___MCZDBattleReport_BasicGlowButton4_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "176.5";
                     this.top = "211";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":64,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MCZDBattleReport_BasicGlowButton5",
                  "events":{"click":"___MCZDBattleReport_BasicGlowButton5_click"},
                  "stylesFactory":function():void
                  {
                     this.left = "176.5";
                     this.top = "246";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":64,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"_MCZDBattleReport_BasicGlowButton6",
                  "events":{"click":"___MCZDBattleReport_BasicGlowButton6_click"},
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":285,
                        "styleName":"CrystalBlueButton"
                     };
                  }
               })]
            };
         }
      });
      
      public var _MCZDBattleReport_BasicGlowButton1:BasicGlowButton;
      
      public var _MCZDBattleReport_BasicGlowButton2:BasicGlowButton;
      
      public var _MCZDBattleReport_BasicGlowButton4:BasicGlowButton;
      
      private var _core:Core = Core.getInstance();
      
      public function MCZDBattleReport()
      {
         super();
         mx_internal::_document = this;
         this.width = 274;
         this.height = 330;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MCZDBattleReport._watcherSetupUtil = param1;
      }
      
      public function showResult(param1:*) : void
      {
         this.show();
         cleanResult();
         if(!param1)
         {
            return;
         }
         if(param1.iswin == -1)
         {
            re.text = "匹配超时";
            t5.text = "无法为您找到匹配的对手";
            t6.text = "";
            t7.text = "";
            t8.text = "";
            t9.text = "";
            cpt.text = "";
         }
         if(param1.iswin == 1)
         {
            re.htmlText = "<font color=\'#00FF00\'>挑战胜利</font>";
            cpt.text = param1.cpt;
         }
         if(param1.iswin == 2)
         {
            re.htmlText = "<font color=\'#FF0000\'>挑战失败</font>";
            cpt.text = param1.cpt;
         }
         if(!param1.list)
         {
            return;
         }
         var _loc2_:* = param1.list;
         var _loc3_:* = 5;
         while(_loc3_ < 10)
         {
            if(_loc2_[_loc3_])
            {
               bidList[_loc3_] = String(_loc2_[_loc3_].bid);
               if(_loc2_[_loc3_].result == 1)
               {
                  this["t" + _loc3_].text += ":   胜利";
               }
               else if(_loc2_[_loc3_].result == 2)
               {
                  this["t" + _loc3_].text += ":   失败";
               }
            }
            _loc3_++;
         }
      }
      
      public function set t5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3649t5;
         if(_loc2_ !== param1)
         {
            this._3649t5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t5",_loc2_,param1));
         }
      }
      
      public function set t7(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3651t7;
         if(_loc2_ !== param1)
         {
            this._3651t7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t7",_loc2_,param1));
         }
      }
      
      public function set t9(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3653t9;
         if(_loc2_ !== param1)
         {
            this._3653t9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t9",_loc2_,param1));
         }
      }
      
      public function set t6(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3650t6;
         if(_loc2_ !== param1)
         {
            this._3650t6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t6",_loc2_,param1));
         }
      }
      
      private function _MCZDBattleReport_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[58];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[44];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[44];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[44];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[45];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[48];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[46];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[47];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[59];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[59];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[59];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[59];
         _loc1_ = Language.MCZDPETFIGHT_PANEL_U[59];
         _loc1_ = Language.STAR_BATTLE_REPORT[9];
      }
      
      public function set t8(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3652t8;
         if(_loc2_ !== param1)
         {
            this._3652t8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"t8",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MCZDBattleReport = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MCZDBattleReport_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_MCZDBattleReportWatcherSetupUtil");
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
      
      private function _MCZDBattleReport_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[58];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txtTitle.text = param1;
         },"txtTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            re.text = param1;
         },"re.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            cpt.text = param1;
         },"cpt.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t5.text = param1;
         },"t5.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t6.text = param1;
         },"t6.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[48];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t7.text = param1;
         },"t7.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t8.text = param1;
         },"t8.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[47];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            t9.text = param1;
         },"t9.text");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDBattleReport_BasicGlowButton1.label = param1;
         },"_MCZDBattleReport_BasicGlowButton1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDBattleReport_BasicGlowButton2.label = param1;
         },"_MCZDBattleReport_BasicGlowButton2.label");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDBattleReport_BasicGlowButton3.label = param1;
         },"_MCZDBattleReport_BasicGlowButton3.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDBattleReport_BasicGlowButton4.label = param1;
         },"_MCZDBattleReport_BasicGlowButton4.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MCZDPETFIGHT_PANEL_U[59];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDBattleReport_BasicGlowButton5.label = param1;
         },"_MCZDBattleReport_BasicGlowButton5.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.STAR_BATTLE_REPORT[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MCZDBattleReport_BasicGlowButton6.label = param1;
         },"_MCZDBattleReport_BasicGlowButton6.label");
         result[13] = binding;
         return result;
      }
      
      public function ___MCZDBattleReport_BasicGlowButton2_click(param1:MouseEvent) : void
      {
         playRecord(6);
      }
      
      public function ___MCZDBattleReport_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         playRecord(8);
      }
      
      private function playRecord(param1:*) : void
      {
         var _loc2_:* = undefined;
         if(bidList[param1])
         {
            _loc2_ = bidList[param1];
            if(_loc2_)
            {
               _core.replayMCZD = true;
               _core.remote.call("replayMCZDFight",null,_loc2_);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cpt() : RoundedLabel
      {
         return this._98727cpt;
      }
      
      public function ___MCZDBattleReport_BasicGlowButton6_click(param1:MouseEvent) : void
      {
         this.hide();
      }
      
      public function set txtTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1464371768txtTitle;
         if(_loc2_ !== param1)
         {
            this._1464371768txtTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtTitle",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get re() : RoundedLabel
      {
         return this._3635re;
      }
      
      [Bindable(event="propertyChange")]
      public function get t5() : RoundedLabel
      {
         return this._3649t5;
      }
      
      [Bindable(event="propertyChange")]
      public function get t7() : RoundedLabel
      {
         return this._3651t7;
      }
      
      [Bindable(event="propertyChange")]
      public function get t8() : RoundedLabel
      {
         return this._3652t8;
      }
      
      [Bindable(event="propertyChange")]
      public function get t9() : RoundedLabel
      {
         return this._3653t9;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtTitle() : BasicTitleCanvas
      {
         return this._1464371768txtTitle;
      }
      
      override public function hide() : void
      {
         if(this.visible)
         {
            this.visible = false;
         }
      }
      
      private function cleanResult() : void
      {
         t5.text = Language.MCZDPETFIGHT_PANEL_U[44];
         t6.text = Language.MCZDPETFIGHT_PANEL_U[45];
         t7.text = Language.MCZDPETFIGHT_PANEL_U[46];
         t8.text = Language.MCZDPETFIGHT_PANEL_U[47];
         t9.text = Language.MCZDPETFIGHT_PANEL_U[48];
         re.text = "";
         cpt.text = "";
         bidList = [];
      }
      
      public function set cpt(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._98727cpt;
         if(_loc2_ !== param1)
         {
            this._98727cpt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cpt",_loc2_,param1));
         }
      }
      
      public function ___MCZDBattleReport_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         playRecord(5);
      }
      
      public function ___MCZDBattleReport_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         playRecord(7);
      }
      
      [Bindable(event="propertyChange")]
      public function get t6() : RoundedLabel
      {
         return this._3650t6;
      }
      
      public function ___MCZDBattleReport_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         playRecord(9);
      }
      
      public function set re(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._3635re;
         if(_loc2_ !== param1)
         {
            this._3635re = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re",_loc2_,param1));
         }
      }
   }
}

