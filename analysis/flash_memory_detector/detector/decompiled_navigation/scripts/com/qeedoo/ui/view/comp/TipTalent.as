package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.vo.ToolTipVO;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
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
   import mx.containers.VBox;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.IToolTip;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.events.ResizeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipTalent extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _2012328149tipName1:Label;
      
      private var dm:DataManager;
      
      private var _core:Core;
      
      mx_internal var _watchers:Array = [];
      
      private var _2067263007showBtn:Button;
      
      private var _106934601price:Text;
      
      private var _2012328150tipName0:Label;
      
      private var _95474626desc3:Text;
      
      private var _738251546iconImg0:Image;
      
      private var _3769vo:ToolTipVO;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _TipTalent_Text1:Text;
      
      public var _TipTalent_Text2:Text;
      
      private var _557573430tipContainer0:VBox;
      
      private var _431118970reqLevel:Text;
      
      private var _1306552954nextReqStr:Text;
      
      mx_internal var _bindings:Array = [];
      
      private var _3079825desc:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {
               "width":244,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":VBox,
                  "id":"tipContainer0",
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
                        "width":240,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "creationPolicy":"all",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":57,
                                 "width":231,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"tipName0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":45,
                                          "y":23,
                                          "text":"完美的什么装备名字[金]"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"tipName1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":45,
                                          "y":43,
                                          "text":"完美的什么装备名字[金]"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Image,
                                    "id":"iconImg0",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "y":15,
                                          "width":32,
                                          "height":32
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
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipTalent_Text1",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"勋章属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_TipTalent_Text2",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"勋章属性"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"nextReqStr",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"可激活回路"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"nextReqDesc",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"可激活回路"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"desc3",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"可激活回路"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"reqLevel",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"装备位置: 主手"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"desc",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"等级需求: 123"};
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"price",
                           "propertiesFactory":function():Object
                           {
                              return {"text":"神器等级: 123"};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var obj:Object;
      
      private var _1848897060nextReqDesc:Text;
      
      public function TipTalent()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.width = 244;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("resize",___TipTalent_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipTalent._watcherSetupUtil = param1;
      }
      
      public function set desc3(param1:Text) : void
      {
         var _loc2_:Object = this._95474626desc3;
         if(_loc2_ !== param1)
         {
            this._95474626desc3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc3",_loc2_,param1));
         }
      }
      
      public function __showBtn_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipTalent = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipTalent_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipTalentWatcherSetupUtil");
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
      public function get desc() : Text
      {
         return this._3079825desc;
      }
      
      public function set nextReqStr(param1:Text) : void
      {
         var _loc2_:Object = this._1306552954nextReqStr;
         if(_loc2_ !== param1)
         {
            this._1306552954nextReqStr = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextReqStr",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextReqStr() : Text
      {
         return this._1306552954nextReqStr;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqLevel() : Text
      {
         return this._431118970reqLevel;
      }
      
      [Bindable(event="propertyChange")]
      public function get showBtn() : Button
      {
         return this._2067263007showBtn;
      }
      
      public function set object(param1:Object) : void
      {
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         obj = param1;
         if(!param1.temp)
         {
            return;
         }
         setCommon(param1);
         showBtn.visible = true;
      }
      
      public function set price(param1:Text) : void
      {
         var _loc2_:Object = this._106934601price;
         if(_loc2_ !== param1)
         {
            this._106934601price = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"price",_loc2_,param1));
         }
      }
      
      public function set tipContainer0(param1:VBox) : void
      {
         var _loc2_:Object = this._557573430tipContainer0;
         if(_loc2_ !== param1)
         {
            this._557573430tipContainer0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipContainer0",_loc2_,param1));
         }
      }
      
      public function set desc(param1:Text) : void
      {
         var _loc2_:Object = this._3079825desc;
         if(_loc2_ !== param1)
         {
            this._3079825desc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"desc",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tipName0() : Label
      {
         return this._2012328150tipName0;
      }
      
      public function ___TipTalent_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      private function _TipTalent_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = vo.name;
         _loc1_ = vo.level;
         _loc1_ = Language.TALENT_TOOLTIP_S[1];
         _loc1_ = vo.bProp1;
         _loc1_ = Language.TALENT_TOOLTIP_S[2];
         _loc1_ = vo.bProp2;
         _loc1_ = Language.TALENT_TOOLTIP_S[3];
         _loc1_ = vo.reqLevel;
         _loc1_ = vo.description;
         _loc1_ = vo.priceType;
      }
      
      public function set nextReqDesc(param1:Text) : void
      {
         var _loc2_:Object = this._1848897060nextReqDesc;
         if(_loc2_ !== param1)
         {
            this._1848897060nextReqDesc = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextReqDesc",_loc2_,param1));
         }
      }
      
      public function set reqLevel(param1:Text) : void
      {
         var _loc2_:Object = this._431118970reqLevel;
         if(_loc2_ !== param1)
         {
            this._431118970reqLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reqLevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tipName1() : Label
      {
         return this._2012328149tipName1;
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
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      [Bindable(event="propertyChange")]
      public function get desc3() : Text
      {
         return this._95474626desc3;
      }
      
      [Bindable(event="propertyChange")]
      public function get price() : Text
      {
         return this._106934601price;
      }
      
      [Bindable(event="propertyChange")]
      public function get tipContainer0() : VBox
      {
         return this._557573430tipContainer0;
      }
      
      public function set tipName0(param1:Label) : void
      {
         var _loc2_:Object = this._2012328150tipName0;
         if(_loc2_ !== param1)
         {
            this._2012328150tipName0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipName0",_loc2_,param1));
         }
      }
      
      public function set tipName1(param1:Label) : void
      {
         var _loc2_:Object = this._2012328149tipName1;
         if(_loc2_ !== param1)
         {
            this._2012328149tipName1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipName1",_loc2_,param1));
         }
      }
      
      public function set iconImg0(param1:Image) : void
      {
         var _loc2_:Object = this._738251546iconImg0;
         if(_loc2_ !== param1)
         {
            this._738251546iconImg0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg0",_loc2_,param1));
         }
      }
      
      private function _TipTalent_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tipName0.htmlText = param1;
         },"tipName0.htmlText");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tipName1.htmlText = param1;
         },"tipName1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_TOOLTIP_S[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipTalent_Text1.htmlText = param1;
         },"_TipTalent_Text1.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bProp1;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipTalent_Text2.htmlText = param1;
         },"_TipTalent_Text2.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_TOOLTIP_S[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nextReqStr.htmlText = param1;
         },"nextReqStr.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bProp2;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nextReqDesc.htmlText = param1;
         },"nextReqDesc.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TALENT_TOOLTIP_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            desc3.htmlText = param1;
         },"desc3.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqLevel.htmlText = param1;
         },"reqLevel.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            desc.htmlText = param1;
         },"desc.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.priceType;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            price.htmlText = param1;
         },"price.htmlText");
         result[9] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextReqDesc() : Text
      {
         return this._1848897060nextReqDesc;
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg0() : Image
      {
         return this._738251546iconImg0;
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
      
      private function setCommon(param1:Object) : void
      {
         var _loc3_:Object = null;
         vo = new ToolTipVO();
         vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[Math.floor(param1.temp.sid / 10000)] + "\'>" + param1.temp.name + "</font>";
         vo.level = "<font color=\'#ABABAB\'>" + Language.TALENT_TOOLTIP_S[0].replace("{lv}",param1.temp.lv) + "</font>";
         var _loc2_:Boolean = false;
         if((Math.floor(param1.temp.sid / 10000) == 10 || Math.floor(param1.temp.sid / 10000) == 11) && (!param1.temp.exp || ToolKit.isEqual(param1.temp.exp,0)))
         {
            _loc2_ = true;
            iconImg0.visible = false;
            tipName0.x = 0;
            tipName1.x = 0;
         }
         else
         {
            iconImg0.source = ResManager.getIconUrl(param1.temp.iconCode);
            iconImg0.visible = true;
            tipName0.x = 45;
            tipName1.x = 45;
         }
         vo.bProp1 = "<font color=\'#7CCD7C\'>" + param1.temp.desc + "</font>";
         reqLevel.visible = true;
         price.visible = true;
         desc.visible = false;
         desc3.visible = true;
         if(param1.temp.lv == 5)
         {
            vo.bProp2 = "<font color=\'#7CCD7C\'>" + Language.TALENT_TOOLTIP_S[9] + "</font>";
            reqLevel.visible = false;
            price.visible = false;
            desc3.visible = false;
         }
         for each(_loc3_ in _core.data.gameDataIndex[GamePredef.TBL_PET_TALENT][param1.temp.basicTid])
         {
            if(Boolean(_loc3_) && ToolKit.isEqual(ToolKit.add(param1.temp.lv,1),_loc3_.lv))
            {
               nextReqDesc.htmlText = "<font color=\'#7CCD7C\'>" + _loc3_.desc + "</font>";
               reqLevel.htmlText = Language.TALENT_TOOLTIP_S[4].replace("{num}",_loc3_.rlv);
               if(ToolKit.isBigThan(_loc3_.rlv,_core.player.level))
               {
                  reqLevel.htmlText = "<font color=\'#FF0000\'>" + Language.TALENT_TOOLTIP_S[4].replace("{num}",_loc3_.rlv) + "</font>";
               }
               price.visible = true;
               price.htmlText = Language.TALENT_TOOLTIP_S[5].replace("{num}",_loc3_.upExp);
               if(ToolKit.isEqual(_loc3_.upExp,0))
               {
                  price.visible = false;
               }
               if(ToolKit.isBigThan(_loc3_.upExp,_core.player.pvePoint))
               {
                  price.htmlText = Language.TALENT_TOOLTIP_S[5].replace("{num}",_loc3_.upExp);
               }
            }
         }
         if(_loc2_ && param1.temp.lv == 0)
         {
            desc.visible = true;
            vo.description = Language.TALENT_TOOLTIP_S[7];
            if(Math.floor(param1.temp.sid / 10000) == 11)
            {
               vo.description = Language.TALENT_TOOLTIP_S[8];
            }
         }
      }
   }
}

