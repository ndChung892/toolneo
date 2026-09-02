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
   import mx.controls.Button;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipSoul extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2061317841nextEffctDes:Text;
      
      private var _1847049202nextEff:String;
      
      private var _1761980277txt_effct2:Text;
      
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
                        "id":"txt_SoulName",
                        "stylesFactory":function():void
                        {
                           this.color = 16407301;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"斗魂"};
                        }
                     }),new UIComponentDescriptor({"type":Text}),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_Exp",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"兽魂经验"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_effct1",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"effctDes",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"txt_effct2",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"nextEffctDes",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        }
                     })]
                  };
               }
            }),new UIComponentDescriptor({
               "type":Button,
               "id":"showBtn",
               "events":{"click":"__showBtn_click"},
               "stylesFactory":function():void
               {
                  this.right = "5";
                  this.top = "5";
               },
               "propertiesFactory":function():Object
               {
                  return {
                     "visible":false,
                     "styleName":"BtnToolTipClose",
                     "width":15,
                     "height":15
                  };
               }
            })]};
         }
      });
      
      mx_internal var _watchers:Array = [];
      
      private var _2067263007showBtn:Button;
      
      private var _1891404463soulLevel:String;
      
      private var _1018594020effctDes:Text;
      
      private var _1740157726soulName:String;
      
      private var _878228562txt_Exp:Text;
      
      private var _1761980278txt_effct1:Text;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1777484845txt_SoulName:Text;
      
      private var _1834909674effDesc:String;
      
      private var _1349163075curExp:String;
      
      private var _934531937reqExp:String;
      
      public var tipData:Object;
      
      mx_internal var _bindings:Array = [];
      
      private var _core:Core = Core.getInstance();
      
      public function TipSoul()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.addEventListener("resize",___TipSoul_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipSoul._watcherSetupUtil = param1;
      }
      
      public function set nextEffctDes(param1:Text) : void
      {
         var _loc2_:Object = this._2061317841nextEffctDes;
         if(_loc2_ !== param1)
         {
            this._2061317841nextEffctDes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextEffctDes",_loc2_,param1));
         }
      }
      
      public function set object(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(!param1 || !param1.temp)
         {
            return;
         }
         if(param1.visible)
         {
            showBtn.visible = true;
         }
         else
         {
            showBtn.visible = false;
         }
         tipData = param1;
         soulName = param1.temp.name + "  " + Language.PET_SOUL_TIP[0] + param1.temp.level;
         if(param1.isIns)
         {
            curExp = Language.PET_SOUL_TIP[1] + (Number(param1.slotData.exp) + Number(param1.temp.exp));
         }
         else
         {
            curExp = Language.PET_SOUL_TIP[1] + param1.temp.exp;
         }
         curExp += "/" + (Number(param1.temp.upExp) + Number(param1.temp.exp));
         effDesc = "  " + param1.temp.desc;
         if(int(param1.temp.level) < 10)
         {
            _loc2_ = GameData.d[GamePredef.TBL_PET_SOUL][int(param1.temp.id) + 1];
            if(_loc2_)
            {
               nextEff = "  " + _loc2_.desc;
               txt_effct2.visible = true;
               nextEffctDes.visible = true;
               nextEffctDes.setStyle("color","#e3f236");
            }
         }
         else
         {
            txt_effct2.visible = false;
            nextEffctDes.visible = false;
         }
         txt_SoulName.setStyle("color",GamePredef.MSG_ITEM_COLOR[param1.temp.color]);
         txt_Exp.setStyle("color","#e3f236");
         effctDes.setStyle("color","#e3f236");
      }
      
      public function ___TipSoul_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function __showBtn_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private function _TipSoul_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = soulName;
         _loc1_ = curExp;
         _loc1_ = Language.PET_SOUL_TIP[2];
         _loc1_ = effDesc;
         _loc1_ = Language.PET_SOUL_TIP[3];
         _loc1_ = nextEff;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_effct2() : Text
      {
         return this._1761980277txt_effct2;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipSoul = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipSoul_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipSoulWatcherSetupUtil");
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
      public function get txt_effct1() : Text
      {
         return this._1761980278txt_effct1;
      }
      
      [Bindable(event="propertyChange")]
      public function get effctDes() : Text
      {
         return this._1018594020effctDes;
      }
      
      public function set txt_effct2(param1:Text) : void
      {
         var _loc2_:Object = this._1761980277txt_effct2;
         if(_loc2_ !== param1)
         {
            this._1761980277txt_effct2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_effct2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get soulName() : String
      {
         return this._1740157726soulName;
      }
      
      private function set soulLevel(param1:String) : void
      {
         var _loc2_:Object = this._1891404463soulLevel;
         if(_loc2_ !== param1)
         {
            this._1891404463soulLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulLevel",_loc2_,param1));
         }
      }
      
      public function set txt_effct1(param1:Text) : void
      {
         var _loc2_:Object = this._1761980278txt_effct1;
         if(_loc2_ !== param1)
         {
            this._1761980278txt_effct1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_effct1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get effDesc() : String
      {
         return this._1834909674effDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_SoulName() : Text
      {
         return this._1777484845txt_SoulName;
      }
      
      private function _TipSoul_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = soulName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_SoulName.htmlText = param1;
         },"txt_SoulName.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = curExp;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_Exp.htmlText = param1;
         },"txt_Exp.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_TIP[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_effct1.htmlText = param1;
         },"txt_effct1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = effDesc;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            effctDes.htmlText = param1;
         },"effctDes.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PET_SOUL_TIP[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            txt_effct2.htmlText = param1;
         },"txt_effct2.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = nextEff;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nextEffctDes.htmlText = param1;
         },"nextEffctDes.htmlText");
         result[5] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextEffctDes() : Text
      {
         return this._2061317841nextEffctDes;
      }
      
      [Bindable(event="propertyChange")]
      public function get txt_Exp() : Text
      {
         return this._878228562txt_Exp;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBtn() : Button
      {
         return this._2067263007showBtn;
      }
      
      public function set effctDes(param1:Text) : void
      {
         var _loc2_:Object = this._1018594020effctDes;
         if(_loc2_ !== param1)
         {
            this._1018594020effctDes = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"effctDes",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get curExp() : String
      {
         return this._1349163075curExp;
      }
      
      [Bindable(event="propertyChange")]
      private function get reqExp() : String
      {
         return this._934531937reqExp;
      }
      
      private function set soulName(param1:String) : void
      {
         var _loc2_:Object = this._1740157726soulName;
         if(_loc2_ !== param1)
         {
            this._1740157726soulName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"soulName",_loc2_,param1));
         }
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
      
      public function set showBtn(param1:Button) : void
      {
         var _loc2_:Object = this._2067263007showBtn;
         if(_loc2_ !== param1)
         {
            this._2067263007showBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showBtn",_loc2_,param1));
         }
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
      
      [Bindable(event="propertyChange")]
      private function get soulLevel() : String
      {
         return this._1891404463soulLevel;
      }
      
      public function set txt_Exp(param1:Text) : void
      {
         var _loc2_:Object = this._878228562txt_Exp;
         if(_loc2_ !== param1)
         {
            this._878228562txt_Exp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_Exp",_loc2_,param1));
         }
      }
      
      public function set txt_SoulName(param1:Text) : void
      {
         var _loc2_:Object = this._1777484845txt_SoulName;
         if(_loc2_ !== param1)
         {
            this._1777484845txt_SoulName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txt_SoulName",_loc2_,param1));
         }
      }
      
      private function set nextEff(param1:String) : void
      {
         var _loc2_:Object = this._1847049202nextEff;
         if(_loc2_ !== param1)
         {
            this._1847049202nextEff = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextEff",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get nextEff() : String
      {
         return this._1847049202nextEff;
      }
      
      private function set curExp(param1:String) : void
      {
         var _loc2_:Object = this._1349163075curExp;
         if(_loc2_ !== param1)
         {
            this._1349163075curExp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curExp",_loc2_,param1));
         }
      }
      
      override public function show(param1:Object = null) : void
      {
         setPos();
         this.visible = true;
      }
   }
}

