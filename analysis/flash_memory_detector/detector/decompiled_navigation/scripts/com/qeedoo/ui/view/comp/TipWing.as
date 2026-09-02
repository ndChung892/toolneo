package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.DataManager;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.event.GameDataEvent;
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
   import mx.states.RemoveChild;
   import mx.states.SetProperty;
   import mx.states.SetStyle;
   import mx.states.State;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class TipWing extends BasicToolTip implements IBindingClient, IToolTip
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      mx_internal var _bindings:Array = [];
      
      private var _1638753418iconImg:Image;
      
      private var _110256292text1:Text;
      
      private var _994192832propBind:Text;
      
      public var _TipWing_SetStyle1:SetStyle;
      
      public var _TipWing_SetStyle2:SetStyle;
      
      public var _TipWing_SetStyle3:SetStyle;
      
      public var _TipWing_Text2:Text;
      
      public var _TipWing_Text6:Text;
      
      public var _TipWing_SetProperty2:SetProperty;
      
      private var _549739330canSell:Label;
      
      public var _TipWing_Label3:Label;
      
      public var _TipWing_Label6:Label;
      
      public var _TipWing_Text1:Text;
      
      public var _TipWing_Label2:Label;
      
      private var _3769vo:ToolTipVO;
      
      public var _TipWing_Image10:Image;
      
      public var _TipWing_Image11:Image;
      
      public var _TipWing_Image12:Image;
      
      public var _TipWing_Image13:Image;
      
      public var _TipWing_Image14:Image;
      
      public var _TipWing_Image15:Image;
      
      public var _TipWing_Image16:Image;
      
      public var _TipWing_Image17:Image;
      
      public var _TipWing_Image18:Image;
      
      public var _TipWing_Image19:Image;
      
      public var _TipWing_Text9:Text;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _110256294text3:Text;
      
      public var _TipWing_Image20:Image;
      
      public var _TipWing_Image21:Image;
      
      private var _267844315magicWeaponLevel:Text;
      
      private var _1311839802tipName:Label;
      
      private var _609884145featherInfo:Text;
      
      private var _849270234tipContainer:VBox;
      
      private var _99346des:Label;
      
      private var _148001439useType:Text;
      
      private var _core:Core;
      
      private var dm:DataManager;
      
      public var _TipWing_Text10:Text;
      
      private var _1994147171_isLimitWing:Boolean = false;
      
      private var _1463976772featherCanvasPet:Canvas;
      
      private var _1298740563endure:Text;
      
      public var _TipWing_Image2:Image;
      
      public var _TipWing_Image3:Image;
      
      public var _TipWing_Image4:Image;
      
      public var _TipWing_Image5:Image;
      
      public var _TipWing_Image6:Image;
      
      public var _TipWing_Image7:Image;
      
      public var _TipWing_Image8:Image;
      
      private var _1861745199featherCanvasChar:Canvas;
      
      public var _TipWing_RemoveChild1:RemoveChild;
      
      private var _110256293text2:Text;
      
      public var _TipWing_Image9:Image;
      
      mx_internal var _watchers:Array = [];
      
      public var _TipWing_Button1:Button;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _431118970reqLevel:Text;
      
      private var obj:Object;
      
      private var _1095316408currencyPrice:Currency;
      
      private var _110256295text4:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":BasicToolTip,
         "propertiesFactory":function():Object
         {
            return {"childDescriptors":[new UIComponentDescriptor({
               "type":VBox,
               "id":"tipContainer",
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
                        "type":Canvas,
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":57,
                              "verticalScrollPolicy":"off",
                              "horizontalScrollPolicy":"off",
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"tipName",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":45,
                                       "y":5,
                                       "text":"完美的什么装备名字[金]"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TipWing_Label2",
                                 "stylesFactory":function():void
                                 {
                                    this.color = 3997440;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":2,
                                       "y":39,
                                       "text":"已绑定"
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Label,
                                 "id":"_TipWing_Label3",
                                 "stylesFactory":function():void
                                 {
                                    this.textAlign = "right";
                                    this.right = "5";
                                    this.color = 16766552;
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":38,
                                       "text":"名字最长的人打造",
                                       "height":18
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"iconImg",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":5,
                                       "y":5,
                                       "width":32,
                                       "height":32
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image2",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":46,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image3",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":60,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image4",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":74,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image5",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":88,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image6",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":102,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image7",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":115.75,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image8",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":129.5,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image9",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":143,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image10",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":156.75,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image11",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":170.75,
                                       "y":22,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Button,
                                 "id":"_TipWing_Button1",
                                 "events":{"click":"___TipWing_Button1_click"},
                                 "stylesFactory":function():void
                                 {
                                    this.right = "0";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "y":0,
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
                        "id":"_TipWing_Text1",
                        "stylesFactory":function():void
                        {
                           this.color = 16773307;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"装备描述"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipWing_Text2",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"装备位置: 主手"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"useType",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"使用对象: 123"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"reqLevel",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"等级需求: 123"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"magicWeaponLevel",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"神器等级: 123"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipWing_Text6",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"物理攻击: 9999"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"endure",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"装备耐久: 9999/9999"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"propBind",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"绑定属性"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipWing_Text9",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"羽毛（人物）属性"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "id":"featherCanvasChar",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":19,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image12",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":2.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image13",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":17.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image14",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":32.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image15",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":47.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image16",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":61.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"_TipWing_Text10",
                        "propertiesFactory":function():Object
                        {
                           return {"text":"羽毛（宠物）属性"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Canvas,
                        "id":"featherCanvasPet",
                        "propertiesFactory":function():Object
                        {
                           return {
                              "height":19,
                              "childDescriptors":[new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image17",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":2.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image18",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":17.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image19",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":32.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image20",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":47.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              }),new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_TipWing_Image21",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "x":61.4,
                                       "y":3,
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              })]
                           };
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"featherInfo",
                        "stylesFactory":function():void
                        {
                           this.color = 7829367;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":""};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"text3",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"外形效果:"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"text4",
                        "stylesFactory":function():void
                        {
                           this.color = 16759296;
                           this.fontSize = 11;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"外形效果:"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"text1",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"外形效果:"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Text,
                        "id":"text2",
                        "stylesFactory":function():void
                        {
                           this.color = 65280;
                        },
                        "propertiesFactory":function():Object
                        {
                           return {"text":"外形效果:"};
                        }
                     }),new UIComponentDescriptor({
                        "type":Currency,
                        "id":"currencyPrice"
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"canSell",
                        "stylesFactory":function():void
                        {
                           this.color = 13158600;
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"des",
                        "stylesFactory":function():void
                        {
                           this.color = 7829367;
                        }
                     }),new UIComponentDescriptor({
                        "type":Label,
                        "id":"_TipWing_Label6",
                        "stylesFactory":function():void
                        {
                           this.color = 7829367;
                        }
                     })]
                  };
               }
            })]};
         }
      });
      
      public function TipWing()
      {
         super();
         mx_internal::_document = this;
         this.styleName = "CanvasToolTip";
         this.currentState = "common";
         this.states = [_TipWing_State1_c(),_TipWing_State2_c()];
         this.addEventListener("resize",___TipWing_BasicToolTip1_resize);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         TipWing._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get featherInfo() : Text
      {
         return this._609884145featherInfo;
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
      
      public function set iconImg(param1:Image) : void
      {
         var _loc2_:Object = this._1638753418iconImg;
         if(_loc2_ !== param1)
         {
            this._1638753418iconImg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"iconImg",_loc2_,param1));
         }
      }
      
      private function _TipWing_SetStyle3_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _TipWing_SetStyle3 = _loc1_;
         _loc1_.name = "fontSize";
         _loc1_.value = 11;
         BindingManager.executeBindings(this,"_TipWing_SetStyle3",_TipWing_SetStyle3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get des() : Label
      {
         return this._99346des;
      }
      
      private function _TipWing_State1_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "simplify";
         _loc1_.overrides = [_TipWing_RemoveChild1_i()];
         return _loc1_;
      }
      
      public function set des(param1:Label) : void
      {
         var _loc2_:Object = this._99346des;
         if(_loc2_ !== param1)
         {
            this._99346des = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"des",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tipContainer() : VBox
      {
         return this._849270234tipContainer;
      }
      
      private function setFeatherInfo(param1:Object) : void
      {
         var _loc2_:int = int(int(param1.inst.holeNum / 10) || 0);
         var _loc3_:int = int(int(param1.inst.holeNum % 10) || 0);
         _setFeatherInfo(param1,"Char",_loc2_);
         _setFeatherInfo(param1,"Pet",_loc3_);
      }
      
      private function setTreasure(param1:Object) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc2_:Number = Number(Number(param1.slotData.q) || Number(param1.slotData.quality));
         var _loc3_:Number = _core.basic.getColorByQuality(_loc2_);
         if(_loc3_ == 0)
         {
            _loc4_ = Number(GamePredef.EQUIPT_QUALITY[0]);
            _loc5_ = Number(GamePredef.EQUIPT_QUALITY[0]);
         }
         else
         {
            _loc4_ = Number(GamePredef.EQUIPT_QUALITY[_loc3_ * 5 - 4]);
            _loc5_ = Number(GamePredef.EQUIPT_QUALITY[_loc3_ * 5]);
         }
         vo.costVisible = param1.temp.tradable > 0;
         if(_loc2_ > 0 && param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER)
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_core.basic.getColorByQuality(_loc2_)] + "\'>" + vo.name + "</font>";
         }
         if(ToolKit.isBigOrEqual(param1.temp.color,0))
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.temp.color] + "\'>" + param1.temp.name + "</font>";
         }
         vo.propBasic = "";
         if(param1.temp.mainProp1 > 0)
         {
            vo.propBasic = GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + Math.round(param1.temp.mainPropNum1 * _loc4_) + "-" + Math.round(param1.temp.mainPropNum1 * _loc5_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.mainProp2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + Math.round(param1.temp.mainPropNum2 * _loc4_) + "-" + Math.round(param1.temp.mainPropNum2 * _loc5_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop1 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop1] + ": " + FONT_COLOR_PRE_PROP + Math.round(param1.temp.propNum1 * _loc4_) + "-" + Math.round(param1.temp.propNum1 * _loc5_) + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop2] + ": " + FONT_COLOR_PRE_PROP + Math.round(param1.temp.propNum2 * _loc4_) + "-" + Math.round(param1.temp.propNum2 * _loc5_) + FONT_COLOR_SUF_PROP;
         }
         vo.propBind = "";
         if(param1.temp.bindPropNum > 0 && (param1.slotData.q >= 6 || param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON || param1.temp.kind == GamePredef.ITEM_KIND_FLYER))
         {
            propBind.visible = true;
            propBind.includeInLayout = true;
            _loc6_ = param1.temp.kind == GamePredef.ITEM_KIND_MAGICWEAPON || param1.temp.kind == GamePredef.ITEM_KIND_FLYER ? Math.round(param1.temp.bindPropNum) : "0-" + Math.round(param1.temp.bindPropNum * _loc5_);
            vo.propBind = PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + _loc6_ + "%" + FONT_COLOR_SUF_PROP;
            vo.propBind += "\n";
            vo.propBind += PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + _loc6_ + "%" + FONT_COLOR_SUF_PROP;
         }
         if(param1.slotData.b > 0)
         {
            vo.bind = Language.TIPEQUIP_S[3];
         }
         else if(param1.slotData.b == 0)
         {
            vo.bind = Language.TIPEQUIP_S[4];
            if(vo.propBind.length > 0)
            {
               vo.propBind = FONT_COLOR_PRE_UNACTIVE + vo.propBind + FONT_COLOR_SUF_UNACTIVE;
            }
         }
         if(Boolean(param1.slotData.sid) && Boolean(param1.slotData.gold))
         {
            vo.bind = "";
         }
         if(vo.propBind.length > 0)
         {
            vo.propBind = PRE_BIND_PROP + "\n" + vo.propBind;
         }
         if(param1.temp.kind != GamePredef.ITEM_KIND_MAGICWEAPON && param1.temp.kind != GamePredef.ITEM_KIND_FLYER && param1.temp.kind != GamePredef.ITEM_KIND_PETEQU)
         {
            vo.propJewel = Language.TIPEQUIP_S[5];
         }
      }
      
      private function _TipWing_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():DisplayObject
         {
            return currencyPrice;
         },function(param1:DisplayObject):void
         {
            _TipWing_RemoveChild1.target = param1;
         },"_TipWing_RemoveChild1.target");
         result[0] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return text3;
         },function(param1:IStyleClient):void
         {
            _TipWing_SetStyle1.target = param1;
         },"_TipWing_SetStyle1.target");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return text4;
         },function(param1:Object):void
         {
            _TipWing_SetProperty2.target = param1;
         },"_TipWing_SetProperty2.target");
         result[2] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return text4;
         },function(param1:IStyleClient):void
         {
            _TipWing_SetStyle2.target = param1;
         },"_TipWing_SetStyle2.target");
         result[3] = binding;
         binding = new Binding(this,function():IStyleClient
         {
            return text4;
         },function(param1:IStyleClient):void
         {
            _TipWing_SetStyle3.target = param1;
         },"_TipWing_SetStyle3.target");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.name;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tipName.htmlText = param1;
         },"tipName.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.bind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Label2.htmlText = param1;
         },"_TipWing_Label2.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.maker;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Label3.htmlText = param1;
         },"_TipWing_Label3.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.urlIcon;
         },function(param1:Object):void
         {
            iconImg.source = param1;
         },"iconImg.source");
         result[8] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar1;
         },function(param1:Object):void
         {
            _TipWing_Image2.source = param1;
         },"_TipWing_Image2.source");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar2;
         },function(param1:Object):void
         {
            _TipWing_Image3.source = param1;
         },"_TipWing_Image3.source");
         result[10] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar3;
         },function(param1:Object):void
         {
            _TipWing_Image4.source = param1;
         },"_TipWing_Image4.source");
         result[11] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar4;
         },function(param1:Object):void
         {
            _TipWing_Image5.source = param1;
         },"_TipWing_Image5.source");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar5;
         },function(param1:Object):void
         {
            _TipWing_Image6.source = param1;
         },"_TipWing_Image6.source");
         result[13] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar6;
         },function(param1:Object):void
         {
            _TipWing_Image7.source = param1;
         },"_TipWing_Image7.source");
         result[14] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar7;
         },function(param1:Object):void
         {
            _TipWing_Image8.source = param1;
         },"_TipWing_Image8.source");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar8;
         },function(param1:Object):void
         {
            _TipWing_Image9.source = param1;
         },"_TipWing_Image9.source");
         result[16] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar9;
         },function(param1:Object):void
         {
            _TipWing_Image10.source = param1;
         },"_TipWing_Image10.source");
         result[17] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsStar10;
         },function(param1:Object):void
         {
            _TipWing_Image11.source = param1;
         },"_TipWing_Image11.source");
         result[18] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.btnVisible;
         },function(param1:Boolean):void
         {
            _TipWing_Button1.visible = param1;
         },"_TipWing_Button1.visible");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.description;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Text1.htmlText = param1;
         },"_TipWing_Text1.htmlText");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.position;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Text2.htmlText = param1;
         },"_TipWing_Text2.htmlText");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.useType;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            useType.htmlText = param1;
         },"useType.htmlText");
         result[22] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.reqLevel;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            reqLevel.htmlText = param1;
         },"reqLevel.htmlText");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.level;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            magicWeaponLevel.htmlText = param1;
         },"magicWeaponLevel.htmlText");
         result[24] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propBasic;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Text6.htmlText = param1;
         },"_TipWing_Text6.htmlText");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.endure;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            endure.htmlText = param1;
         },"endure.htmlText");
         result[26] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propBind;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propBind.htmlText = param1;
         },"propBind.htmlText");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propFeatherChar;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Text9.htmlText = param1;
         },"_TipWing_Text9.htmlText");
         result[28] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel1;
         },function(param1:Object):void
         {
            _TipWing_Image12.source = param1;
         },"_TipWing_Image12.source");
         result[29] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel3;
         },function(param1:Object):void
         {
            _TipWing_Image13.source = param1;
         },"_TipWing_Image13.source");
         result[30] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel5;
         },function(param1:Object):void
         {
            _TipWing_Image14.source = param1;
         },"_TipWing_Image14.source");
         result[31] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel7;
         },function(param1:Object):void
         {
            _TipWing_Image15.source = param1;
         },"_TipWing_Image15.source");
         result[32] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel9;
         },function(param1:Object):void
         {
            _TipWing_Image16.source = param1;
         },"_TipWing_Image16.source");
         result[33] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.propFeatherPet;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Text10.htmlText = param1;
         },"_TipWing_Text10.htmlText");
         result[34] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel2;
         },function(param1:Object):void
         {
            _TipWing_Image17.source = param1;
         },"_TipWing_Image17.source");
         result[35] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel4;
         },function(param1:Object):void
         {
            _TipWing_Image18.source = param1;
         },"_TipWing_Image18.source");
         result[36] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel6;
         },function(param1:Object):void
         {
            _TipWing_Image19.source = param1;
         },"_TipWing_Image19.source");
         result[37] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel8;
         },function(param1:Object):void
         {
            _TipWing_Image20.source = param1;
         },"_TipWing_Image20.source");
         result[38] = binding;
         binding = new Binding(this,function():Object
         {
            return vo.clsJewel10;
         },function(param1:Object):void
         {
            _TipWing_Image21.source = param1;
         },"_TipWing_Image21.source");
         result[39] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.info;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            text3.htmlText = param1;
         },"text3.htmlText");
         result[40] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.info != null;
         },function(param1:Boolean):void
         {
            text3.includeInLayout = param1;
         },"text3.includeInLayout");
         result[41] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.lwingName;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            text4.htmlText = param1;
         },"text4.htmlText");
         result[42] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _isLimitWing;
         },function(param1:Boolean):void
         {
            text4.includeInLayout = param1;
         },"text4.includeInLayout");
         result[43] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.effectTime;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            text1.htmlText = param1;
         },"text1.htmlText");
         result[44] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _isLimitWing;
         },function(param1:Boolean):void
         {
            text1.includeInLayout = param1;
         },"text1.includeInLayout");
         result[45] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = vo.effectEndTime;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            text2.htmlText = param1;
         },"text2.htmlText");
         result[46] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _isLimitWing;
         },function(param1:Boolean):void
         {
            text2.includeInLayout = param1;
         },"text2.includeInLayout");
         result[47] = binding;
         binding = new Binding(this,function():Number
         {
            return vo.currency;
         },function(param1:Number):void
         {
            currencyPrice.value = param1;
         },"currencyPrice.value");
         result[48] = binding;
         binding = new Binding(this,function():uint
         {
            return vo.currencyType;
         },function(param1:uint):void
         {
            currencyPrice.type = param1;
         },"currencyPrice.type");
         result[49] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            currencyPrice.visible = param1;
         },"currencyPrice.visible");
         result[50] = binding;
         binding = new Binding(this,function():Boolean
         {
            return vo.costVisible;
         },function(param1:Boolean):void
         {
            currencyPrice.includeInLayout = param1;
         },"currencyPrice.includeInLayout");
         result[51] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !vo.costVisible;
         },function(param1:Boolean):void
         {
            canSell.visible = param1;
         },"canSell.visible");
         result[52] = binding;
         binding = new Binding(this,function():Boolean
         {
            return !vo.costVisible;
         },function(param1:Boolean):void
         {
            canSell.includeInLayout = param1;
         },"canSell.includeInLayout");
         result[53] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEQUIP_S[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            canSell.text = param1;
         },"canSell.text");
         result[54] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.TIPEQUIP_S[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _TipWing_Label6.text = param1;
         },"_TipWing_Label6.text");
         result[55] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get propBind() : Text
      {
         return this._994192832propBind;
      }
      
      private function set _isLimitWing(param1:Boolean) : void
      {
         var _loc2_:Object = this._1994147171_isLimitWing;
         if(_loc2_ !== param1)
         {
            this._1994147171_isLimitWing = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_isLimitWing",_loc2_,param1));
         }
      }
      
      public function set text1(param1:Text) : void
      {
         var _loc2_:Object = this._110256292text1;
         if(_loc2_ !== param1)
         {
            this._110256292text1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text1",_loc2_,param1));
         }
      }
      
      private function _TipWing_SetStyle2_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _TipWing_SetStyle2 = _loc1_;
         _loc1_.name = "color";
         _loc1_.value = 16759296;
         BindingManager.executeBindings(this,"_TipWing_SetStyle2",_TipWing_SetStyle2);
         return _loc1_;
      }
      
      private function setTemp(param1:Object) : void
      {
         vo.propBasic = "";
         if(param1.temp.mainProp1 > 0)
         {
            vo.propBasic = GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp1] + ": " + FONT_COLOR_PRE_PROP + param1.temp.mainPropNum1 + (param1.temp.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || param1.temp.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.mainProp2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.mainProp2] + ": " + FONT_COLOR_PRE_PROP + param1.temp.mainPropNum2 + (param1.temp.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || param1.temp.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop1 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop1] + ": " + FONT_COLOR_PRE_PROP + param1.temp.propNum1 + FONT_COLOR_SUF_PROP;
         }
         if(param1.temp.prop2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.temp.prop2] + ": " + FONT_COLOR_PRE_PROP + param1.temp.propNum2 + FONT_COLOR_SUF_PROP;
         }
      }
      
      private function _TipWing_SetProperty2_i() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _TipWing_SetProperty2 = _loc1_;
         _loc1_.name = "width";
         _loc1_.value = 168;
         BindingManager.executeBindings(this,"_TipWing_SetProperty2",_TipWing_SetProperty2);
         return _loc1_;
      }
      
      public function set propBind(param1:Text) : void
      {
         var _loc2_:Object = this._994192832propBind;
         if(_loc2_ !== param1)
         {
            this._994192832propBind = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propBind",_loc2_,param1));
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
      
      public function set text2(param1:Text) : void
      {
         var _loc2_:Object = this._110256293text2;
         if(_loc2_ !== param1)
         {
            this._110256293text2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text2",_loc2_,param1));
         }
      }
      
      private function _setFeatherInfo(param1:Object, param2:String, param3:int) : void
      {
         var _loc8_:Object = null;
         var _loc9_:int = 0;
         var _loc4_:Number = 1;
         var _loc5_:String = "";
         if(param2 == "Char")
         {
            _loc4_ = 1;
         }
         else
         {
            if(param2 != "Pet")
            {
               return;
            }
            _loc4_ = 2;
         }
         if(param3 > 0)
         {
            this["featherCanvas" + param2].visible = true;
            this["featherCanvas" + param2].includeInLayout = true;
         }
         param3 = (Math.min(5,param3) - 1) * 2;
         _loc5_ += "\n";
         var _loc6_:int = _loc4_;
         while(_loc6_ <= _loc4_ + param3)
         {
            if(param1.inst["t" + _loc6_] > 0)
            {
               _loc8_ = _core.data.getData(GamePredef.TBL_ITEM_TEMPLATE,param1.inst["t" + _loc6_]);
               if(_loc8_)
               {
                  _loc9_ = 1;
                  while(_loc9_ <= 3)
                  {
                     if(_loc8_["i" + _loc9_] > 0 && _loc8_["n" + _loc9_] > 0)
                     {
                        _loc5_ += "" + GamePredef.FEATHER_PROP_NAME[_loc8_["i" + _loc9_]] + ":" + FONT_COLOR_PRE_PROP + _loc8_["n" + _loc9_];
                        if(_loc8_.type == GamePredef.ITEM_TYPE_FEATHER_D)
                        {
                           _loc5_ += "%";
                        }
                        _loc5_ += FONT_COLOR_SUF_PROP + " ";
                     }
                     _loc9_++;
                  }
                  if(_loc5_.length > 0)
                  {
                     _loc5_ += "\n";
                  }
                  vo["clsJewel" + _loc6_] = ResManager.ICON_EQUIP_WING_FEATHER;
               }
            }
            else
            {
               vo["clsJewel" + _loc6_] = ResManager.ICON_EQUIP_WING_HOLE;
            }
            _loc6_ += 2;
         }
         var _loc7_:String = param2 == "Char" ? PRE_FEATHER_PROP_CHAR : PRE_FEATHER_PROP_PET;
         if(_loc5_.length > 0 || true)
         {
            vo["propFeather" + param2] = _loc7_ + _loc5_;
         }
      }
      
      public function set object(param1:Object) : void
      {
         _core = Core.getInstance();
         dm = DataManager.getInstance();
         vo = new ToolTipVO();
         obj = param1;
         if(!param1.temp)
         {
            return;
         }
         setCommon(param1);
         if(Boolean(param1.slotData && param1.slotData.wingTemp) || Boolean(param1.slotType == Slot.SLOT_TREASURE) || Boolean(param1.slotData) && (Boolean(param1.slotData.q) || Boolean(Number(param1.slotData.quality))))
         {
            setTreasure(param1);
         }
         else if(param1.type == BasicToolTip.TYPE_TEMP)
         {
            setTemp(param1);
         }
         else
         {
            setInst(param1);
         }
      }
      
      private function isEquSid(param1:int) : void
      {
         var _loc2_:Core = Core.getInstance();
         _loc2_.remote.call("isEquSid",new Responder(onIsEquSid),param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get iconImg() : Image
      {
         return this._1638753418iconImg;
      }
      
      public function set canSell(param1:Label) : void
      {
         var _loc2_:Object = this._549739330canSell;
         if(_loc2_ !== param1)
         {
            this._549739330canSell = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canSell",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:TipWing = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _TipWing_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_TipWingWatcherSetupUtil");
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
      public function get useType() : Text
      {
         return this._148001439useType;
      }
      
      private function _TipWing_SetStyle1_i() : SetStyle
      {
         var _loc1_:SetStyle = new SetStyle();
         _TipWing_SetStyle1 = _loc1_;
         _loc1_.name = "fontSize";
         _loc1_.value = 10;
         BindingManager.executeBindings(this,"_TipWing_SetStyle1",_TipWing_SetStyle1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get reqLevel() : Text
      {
         return this._431118970reqLevel;
      }
      
      public function set endure(param1:Text) : void
      {
         var _loc2_:Object = this._1298740563endure;
         if(_loc2_ !== param1)
         {
            this._1298740563endure = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endure",_loc2_,param1));
         }
      }
      
      private function _TipWing_RemoveChild1_i() : RemoveChild
      {
         var _loc1_:RemoveChild = new RemoveChild();
         _TipWing_RemoveChild1 = _loc1_;
         BindingManager.executeBindings(this,"_TipWing_RemoveChild1",_TipWing_RemoveChild1);
         return _loc1_;
      }
      
      public function set featherCanvasChar(param1:Canvas) : void
      {
         var _loc2_:Object = this._1861745199featherCanvasChar;
         if(_loc2_ !== param1)
         {
            this._1861745199featherCanvasChar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherCanvasChar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get text1() : Text
      {
         return this._110256292text1;
      }
      
      private function _TipWing_SetProperty1_c() : SetProperty
      {
         var _loc1_:SetProperty = new SetProperty();
         _loc1_.name = "height";
         _loc1_.value = 472;
         return _loc1_;
      }
      
      public function set currencyPrice(param1:Currency) : void
      {
         var _loc2_:Object = this._1095316408currencyPrice;
         if(_loc2_ !== param1)
         {
            this._1095316408currencyPrice = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currencyPrice",_loc2_,param1));
         }
      }
      
      public function set featherCanvasPet(param1:Canvas) : void
      {
         var _loc2_:Object = this._1463976772featherCanvasPet;
         if(_loc2_ !== param1)
         {
            this._1463976772featherCanvasPet = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherCanvasPet",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get text2() : Text
      {
         return this._110256293text2;
      }
      
      [Bindable(event="propertyChange")]
      public function get endure() : Text
      {
         return this._1298740563endure;
      }
      
      private function equipDataLoaded(param1:GameDataEvent) : void
      {
         param1.currentTarget.removeEventListener(GameDataEvent.DATA_RECIEVED + "_" + param1.data.type + "_" + param1.data.data.id,equipDataLoaded);
         vo.activeEquipName = param1.data.name;
      }
      
      public function set tipName(param1:Label) : void
      {
         var _loc2_:Object = this._1311839802tipName;
         if(_loc2_ !== param1)
         {
            this._1311839802tipName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipName",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get text3() : Text
      {
         return this._110256294text3;
      }
      
      [Bindable(event="propertyChange")]
      public function get currencyPrice() : Currency
      {
         return this._1095316408currencyPrice;
      }
      
      [Bindable(event="propertyChange")]
      private function get vo() : ToolTipVO
      {
         return this._3769vo;
      }
      
      public function set text4(param1:Text) : void
      {
         var _loc2_:Object = this._110256295text4;
         if(_loc2_ !== param1)
         {
            this._110256295text4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherCanvasPet() : Canvas
      {
         return this._1463976772featherCanvasPet;
      }
      
      [Bindable(event="propertyChange")]
      public function get canSell() : Label
      {
         return this._549739330canSell;
      }
      
      private function setInst(param1:Object) : void
      {
         var _loc4_:Date = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc9_:String = null;
         var _loc10_:* = undefined;
         var _loc11_:String = null;
         var _loc12_:Array = null;
         var _loc13_:RegExp = null;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:int = 0;
         var _loc20_:Date = null;
         var _loc21_:Object = null;
         if(ToolKit.isBigThan(param1.inst.t,0))
         {
            _loc4_ = new Date(Number(param1.inst.t));
            _loc5_ = Language.TIPEQUIP_S[21].toString();
            _loc5_ = _loc5_.replace("{fullYear}",_loc4_.fullYear);
            _loc5_ = _loc5_.replace("{lastMonth}",ToolKit.add(_loc4_.month,1));
            _loc5_ = _loc5_.replace("{lastDate}",_loc4_.date);
            _loc5_ = _loc5_.replace("{lastHour}",_loc4_.hours);
            _loc5_ = _loc5_.replace("{lastMinutes}",_loc4_.minutes);
            vo.info += _loc5_;
         }
         vo.costVisible = param1.temp.tradable > 0;
         if(vo.costVisible)
         {
            if(param1.temp.price > 0)
            {
               vo.currency = int(param1.temp.price / 4);
               if(param1.inst.binded > 0)
               {
                  vo.currencyType = Currency.TYPE_MONEY_BIND;
               }
               else
               {
                  vo.currencyType = Currency.TYPE_MONEY;
               }
            }
            if(param1.temp.gold > 0)
            {
               vo.currency = 1;
               if(param1.inst.binded > 0)
               {
                  vo.currencyType = Currency.TYPE_MONEY_BIND;
               }
               else
               {
                  vo.currencyType = Currency.TYPE_MONEY;
               }
            }
         }
         var _loc2_:int = 1;
         while(_loc2_ <= Math.min(param1.inst.upgradeNum,10))
         {
            vo["clsStar" + _loc2_] = ResManager.ICON_EQUIP_STAR;
            _loc2_++;
         }
         var _loc3_:int = 0;
         if(Boolean(param1.inst.flag) && param1.inst.flag.indexOf("level") >= 0)
         {
            _loc6_ = param1.inst.flag;
            _loc6_ = _loc6_.substring(_loc6_.indexOf("level"));
            _loc7_ = _loc6_.split(",");
            _loc8_ = _loc7_[0].split(":");
            _loc9_ = _loc8_[1].split("\"").join("");
            _loc3_ = int(_loc9_);
         }
         if(param1.inst.color > 0)
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.inst.color] + "\'>" + (_loc3_ ? vo.name + GamePredef.WING_QUALITY_NAME_ARR[_loc3_ - 1] : vo.name) + "</font>";
         }
         if(ToolKit.isBigOrEqual(param1.temp.color,0))
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.temp.color] + "\'>" + param1.temp.name + "</font>";
         }
         vo.propBasic = "";
         if(param1.inst.mainProp1 > 0)
         {
            _loc10_ = GamePredef.EQUIPT_STAR_NUM[param1.inst.upgradeNum];
            vo.propBasic = GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp1] + ": " + FONT_COLOR_PRE_PROP + int(param1.inst.mainPropNum1 * _loc10_) + (param1.inst.mainProp1 == GamePredef.EQUIPT_PROP_HP_PER || param1.inst.mainProp1 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
         }
         if(param1.inst.mainProp2 > 0)
         {
            _loc10_ = GamePredef.EQUIPT_STAR_NUM[param1.inst.upgradeNum];
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp2] + ": " + FONT_COLOR_PRE_PROP + int(param1.inst.mainPropNum2 * _loc10_) + (param1.inst.mainProp2 == GamePredef.EQUIPT_PROP_HP_PER || param1.inst.mainProp2 == GamePredef.EQUIPT_PROP_MP_PER ? "%" : "") + FONT_COLOR_SUF_PROP;
         }
         if(param1.inst.prop1 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.inst.prop1] + ": " + FONT_COLOR_PRE_PROP + param1.inst.propNum1 + FONT_COLOR_SUF_PROP;
         }
         if(param1.inst.prop2 > 0)
         {
            vo.propBasic += "\n" + GamePredef.EQUIPT_PROP_NAME[param1.inst.prop2] + ": " + FONT_COLOR_PRE_PROP + param1.inst.propNum2 + FONT_COLOR_SUF_PROP;
         }
         setFeatherInfo(param1);
         vo.propBind = "";
         if(param1.inst.bindMainPropNum1 > 0 || param1.inst.bindMainPropNum2 > 0)
         {
            propBind.visible = true;
            propBind.includeInLayout = true;
         }
         if(param1.inst.binded > 0)
         {
            vo.bind = Language.TIPEQUIP_S[3];
            if(param1.inst.bindMainPropNum1 > 0)
            {
               vo.propBind = PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp1] + ": " + FONT_COLOR_PRE_PROP + param1.inst.bindMainPropNum1 + "%" + FONT_COLOR_SUF_PROP;
            }
            if(param1.inst.bindMainPropNum2 > 0)
            {
               if(vo.propBind.length > 0)
               {
                  vo.propBind += "\n";
               }
               vo.propBind += PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp2] + ": " + FONT_COLOR_PRE_PROP + param1.inst.bindMainPropNum2 + "%" + FONT_COLOR_SUF_PROP;
            }
         }
         else
         {
            vo.bind = Language.TIPEQUIP_S[4];
            if(param1.inst.bindMainPropNum1 > 0)
            {
               vo.propBind = PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp1] + ": " + param1.inst.bindMainPropNum1 + "%";
            }
            if(param1.inst.bindMainPropNum2 > 0)
            {
               if(vo.propBind.length > 0)
               {
                  vo.propBind += "\n";
               }
               vo.propBind += PRE_BINDED_PROP + GamePredef.EQUIPT_PROP_NAME[param1.inst.mainProp2] + ": " + param1.inst.bindMainPropNum2 + "%";
            }
            if(vo.propBind.length > 0)
            {
               vo.propBind = FONT_COLOR_PRE_UNACTIVE + vo.propBind + FONT_COLOR_SUF_UNACTIVE;
            }
         }
         if(vo.propBind.length > 0)
         {
            vo.propBind = PRE_BIND_PROP + "\n" + vo.propBind;
         }
         if(!ToolKit.isEqual(param1.temp.kind,GamePredef.ITEM_KIND_DRESS))
         {
            _loc11_ = Language.TIPEQUIP_S[22].toString();
            _loc11_ = _loc11_.replace("{endureLeft}",Number(param1.inst.endureLeft));
            _loc11_ = _loc11_.replace("{endureMax}",param1.inst.endureMax);
            vo.endure = _loc11_;
         }
         if(param1.inst.endureLeft == 0)
         {
            vo.endure = FONT_COLOR_RED_PROP + vo.endure + FONT_COLOR_SUF_PROP;
         }
         if(param1.inst.maker)
         {
            vo.maker = param1.inst.maker + Language.TIPEQUIP_S[23];
         }
         if(Boolean(param1.inst.flag && param1.inst.flag != "") && Boolean(param1.inst.flag.indexOf("lc:") >= 0) && (param1.inst.flag.indexOf("{s:2") >= 0 || param1.inst.flag.indexOf(",s:2") >= 0))
         {
            _loc12_ = String(param1.inst.flag).split(",");
            _loc13_ = /\d+/;
            _loc14_ = 99999;
            _loc15_ = 1;
            _loc17_ = 0;
            _loc18_ = 0;
            _loc19_ = 0;
            while(_loc19_ < _loc12_.length)
            {
               if(_loc12_[_loc19_].indexOf("lc:") >= 0)
               {
                  _loc14_ = _loc19_;
               }
               if(_loc12_[_loc19_].indexOf("s:") >= 0 && _loc19_ >= _loc14_)
               {
                  _loc15_ = Number(_loc12_[_loc19_].match(_loc13_));
                  _loc18_++;
                  if(_loc15_ != 1)
                  {
                     _isLimitWing = true;
                  }
                  else if(_loc18_ == 0)
                  {
                     _isLimitWing = false;
                  }
               }
               if(_loc12_[_loc19_].indexOf("t:") >= 0 && _loc19_ >= _loc14_)
               {
                  _loc16_ = Number(_loc12_[_loc19_].match(_loc13_));
                  _loc20_ = new Date(_loc16_);
                  vo.effectEndTime = Language.TIPEQUIP_S[39] + _loc20_.getFullYear() + "-" + ToolKit.add(_loc20_.month,1) + "-" + _loc20_.date + " " + _loc20_.hours + ":" + _loc20_.minutes + ":" + _loc20_.seconds;
               }
               if(_loc12_[_loc19_].indexOf("r:") >= 0 && _loc19_ >= _loc14_ && _loc18_ == 0)
               {
                  _loc18_++;
                  _loc17_ = Number(_loc12_[_loc19_].match(_loc13_));
                  if(GamePredef.WING_RES_ID[_loc17_])
                  {
                     _loc21_ = GameData.d[GamePredef.TBL_EQUIPT_TEMPLATE][GamePredef.WING_RES_ID[_loc17_][0]];
                     vo.lwingName = Language.TIPEQUIP_S[40] + _loc21_.name;
                     vo.effectTime = Language.TIPEQUIP_S[41].replace("{num}",GamePredef.WING_RES_ID[_loc17_][1]);
                  }
               }
               _loc19_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get text4() : Text
      {
         return this._110256295text4;
      }
      
      [Bindable(event="propertyChange")]
      private function get _isLimitWing() : Boolean
      {
         return this._1994147171_isLimitWing;
      }
      
      [Bindable(event="propertyChange")]
      public function get tipName() : Label
      {
         return this._1311839802tipName;
      }
      
      public function set magicWeaponLevel(param1:Text) : void
      {
         var _loc2_:Object = this._267844315magicWeaponLevel;
         if(_loc2_ !== param1)
         {
            this._267844315magicWeaponLevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"magicWeaponLevel",_loc2_,param1));
         }
      }
      
      public function set text3(param1:Text) : void
      {
         var _loc2_:Object = this._110256294text3;
         if(_loc2_ !== param1)
         {
            this._110256294text3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"text3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get featherCanvasChar() : Canvas
      {
         return this._1861745199featherCanvasChar;
      }
      
      private function onIsEquSid(param1:Boolean) : void
      {
         if(param1)
         {
            des.text = Language.TIPEQUIP_S[32];
         }
         else
         {
            des.text = Language.TIPEQUIP_S[33];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get magicWeaponLevel() : Text
      {
         return this._267844315magicWeaponLevel;
      }
      
      private function _TipWing_State2_c() : State
      {
         var _loc1_:State = new State();
         _loc1_.name = "common";
         _loc1_.overrides = [_TipWing_SetProperty1_c(),_TipWing_SetStyle1_i(),_TipWing_SetProperty2_i(),_TipWing_SetStyle2_i(),_TipWing_SetStyle3_i()];
         return _loc1_;
      }
      
      public function set featherInfo(param1:Text) : void
      {
         var _loc2_:Object = this._609884145featherInfo;
         if(_loc2_ !== param1)
         {
            this._609884145featherInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"featherInfo",_loc2_,param1));
         }
      }
      
      public function set useType(param1:Text) : void
      {
         var _loc2_:Object = this._148001439useType;
         if(_loc2_ !== param1)
         {
            this._148001439useType = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"useType",_loc2_,param1));
         }
      }
      
      private function setCommon(param1:Object) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:Array = null;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         vo.bind = "";
         vo.btnVisible = param1.btnVisible;
         tipName.toolTip = "";
         vo.name = param1.temp.name;
         if(ToolKit.isBigOrEqual(param1.temp.color,0))
         {
            vo.name = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[param1.temp.color] + "\'>" + param1.temp.name + "</font>";
         }
         vo.urlIcon = ResManager.getIconUrl(param1.temp.iconCode);
         ResManager.setColorCode(iconImg,param1.temp.colorCode);
         vo.description = param1.temp.description;
         vo.info = param1.temp.info;
         if(ToolKit.isBigThan(param1.temp.t,0) && ToolKit.isSmallOrEqual(param1.temp.t,100000000000))
         {
            if(vo.info.length > 0)
            {
               vo.info += "<br>";
            }
            vo.info += Language.TIPEQUIP_S[7];
            _loc3_ = param1.temp.t % 60;
            _loc4_ = Math.floor(param1.temp.t / 60) % 24;
            _loc5_ = Math.floor(param1.temp.t / 1440) % 31;
            _loc6_ = Math.floor(param1.temp.t / 44640) % 365;
            _loc7_ = Math.floor(param1.temp.t / 16293600);
            if(ToolKit.isBigThan(_loc7_,0))
            {
               vo.info += Language.TIPEQUIP_S[8].toString().replace("{year}",_loc7_);
            }
            if(ToolKit.isBigThan(_loc6_,0))
            {
               vo.info += Language.TIPEQUIP_S[9].toString().replace("{month}",_loc6_);
            }
            if(ToolKit.isBigThan(_loc5_,0))
            {
               vo.info += Language.TIPEQUIP_S[10].toString().replace("{day}",_loc5_);
            }
            if(ToolKit.isBigThan(_loc4_,0))
            {
               vo.info += Language.TIPEQUIP_S[11].toString().replace("{hour}",_loc4_);
            }
            if(ToolKit.isBigThan(_loc3_,0))
            {
               vo.info += Language.TIPEQUIP_S[12].toString().replace("{minute}",_loc3_);
            }
         }
         var _loc2_:String = Language.TIPEQUIP_S[14].toString().replace("{EQUIP_POSITION}",GamePredef.EQUIP_POSITION[param1.temp.position]);
         vo.costVisible = true;
         vo.position = _loc2_;
         vo.bind = GamePredef.PROP_BINDTYPE[param1.temp.bindType];
         if(Boolean(param1.slotData) && Boolean(param1.slotData.type))
         {
            if(param1.slotData.type == GamePredef.TBL_EQUIPT_TEMPLATE || param1.slotData.type == GamePredef.TBL_ITEM_TEMPLATE || param1.slotData.type == GamePredef.TBL_CREATURE)
            {
               vo.bind = "";
            }
         }
         if(param1.cost > 0)
         {
            vo.currency = param1.cost;
            vo.currencyType = param1.costType;
         }
         else
         {
            if(param1.temp.price > 0)
            {
               vo.currency = param1.temp.price;
               vo.currencyType = Currency.TYPE_MONEYALL;
            }
            if(param1.temp.gold > 0)
            {
               vo.currency = param1.temp.gold;
               vo.currencyType = Currency.TYPE_GOLDALL;
            }
         }
         featherCanvasChar.visible = false;
         featherCanvasChar.includeInLayout = false;
         featherCanvasPet.visible = false;
         featherCanvasPet.includeInLayout = false;
         propBind.visible = false;
         propBind.includeInLayout = false;
         switch(Number(param1.temp.useType))
         {
            case 1:
               if(param1.temp.reqLevel)
               {
                  _loc8_ = Language.TIPEQUIP_S[15].toString().replace("{reqLevel}",param1.temp.reqLevel);
                  vo.reqLevel = _loc8_;
                  if(ToolKit.isSmallThan(_core.player.level,param1.temp.reqLevel))
                  {
                     vo.reqLevel = FONT_COLOR_RED_PROP + vo.reqLevel + FONT_COLOR_SUF_PROP;
                  }
               }
               if(param1.temp.reqClass)
               {
                  vo.useType = Language.TIPEQUIP_S[16];
                  _loc9_ = param1.temp.reqClass.split("|");
                  _loc10_ = 0;
                  for each(_loc11_ in _loc9_)
                  {
                     if(Boolean(_loc11_) && Boolean(_loc11_ >= 1) && _loc11_ <= 6)
                     {
                        vo.useType += dm.getGameDataList(GamePredef.TBL_CLASS)[_loc11_].name + " ";
                        _loc10_ += _loc11_;
                     }
                  }
                  if(_loc10_ == 21)
                  {
                     vo.useType = Language.TIPEQUIP_S[17];
                  }
                  if(String(param1.temp.reqClass).indexOf("|" + _core.player.classId + "|") < 0)
                  {
                     vo.useType = FONT_COLOR_RED_PROP + vo.useType + FONT_COLOR_SUF_PROP;
                  }
               }
               useType.includeInLayout = true;
               reqLevel.includeInLayout = true;
               break;
            default:
               vo.useType = Language.TIPEQUIP_S[20];
               useType.includeInLayout = true;
               reqLevel.includeInLayout = false;
         }
         if(obj.slotData)
         {
            isEquSid(obj.slotData.sid);
         }
      }
      
      public function ___TipWing_BasicToolTip1_resize(param1:ResizeEvent) : void
      {
         setPos();
      }
      
      public function ___TipWing_Button1_click(param1:MouseEvent) : void
      {
         visible = false;
      }
      
      private function _TipWing_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = currencyPrice;
         _loc1_ = text3;
         _loc1_ = text4;
         _loc1_ = text4;
         _loc1_ = text4;
         _loc1_ = vo.name;
         _loc1_ = vo.bind;
         _loc1_ = vo.maker;
         _loc1_ = vo.urlIcon;
         _loc1_ = vo.clsStar1;
         _loc1_ = vo.clsStar2;
         _loc1_ = vo.clsStar3;
         _loc1_ = vo.clsStar4;
         _loc1_ = vo.clsStar5;
         _loc1_ = vo.clsStar6;
         _loc1_ = vo.clsStar7;
         _loc1_ = vo.clsStar8;
         _loc1_ = vo.clsStar9;
         _loc1_ = vo.clsStar10;
         _loc1_ = vo.btnVisible;
         _loc1_ = vo.description;
         _loc1_ = vo.position;
         _loc1_ = vo.useType;
         _loc1_ = vo.reqLevel;
         _loc1_ = vo.level;
         _loc1_ = vo.propBasic;
         _loc1_ = vo.endure;
         _loc1_ = vo.propBind;
         _loc1_ = vo.propFeatherChar;
         _loc1_ = vo.clsJewel1;
         _loc1_ = vo.clsJewel3;
         _loc1_ = vo.clsJewel5;
         _loc1_ = vo.clsJewel7;
         _loc1_ = vo.clsJewel9;
         _loc1_ = vo.propFeatherPet;
         _loc1_ = vo.clsJewel2;
         _loc1_ = vo.clsJewel4;
         _loc1_ = vo.clsJewel6;
         _loc1_ = vo.clsJewel8;
         _loc1_ = vo.clsJewel10;
         _loc1_ = vo.info;
         _loc1_ = vo.info != null;
         _loc1_ = vo.lwingName;
         _loc1_ = _isLimitWing;
         _loc1_ = vo.effectTime;
         _loc1_ = _isLimitWing;
         _loc1_ = vo.effectEndTime;
         _loc1_ = _isLimitWing;
         _loc1_ = vo.currency;
         _loc1_ = vo.currencyType;
         _loc1_ = vo.costVisible;
         _loc1_ = vo.costVisible;
         _loc1_ = !vo.costVisible;
         _loc1_ = !vo.costVisible;
         _loc1_ = Language.TIPEQUIP_S[24];
         _loc1_ = Language.TIPEQUIP_S[34];
      }
      
      public function currencyHide(param1:String) : void
      {
         if(param1 == "temp")
         {
            currentState = "simplify";
         }
         if(param1 == "inst")
         {
            if(!vo.currency || vo.currency < 500 || canSell.visible)
            {
               currentState = "simplify";
            }
            else
            {
               currentState = "common";
            }
         }
      }
      
      public function set tipContainer(param1:VBox) : void
      {
         var _loc2_:Object = this._849270234tipContainer;
         if(_loc2_ !== param1)
         {
            this._849270234tipContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipContainer",_loc2_,param1));
         }
      }
   }
}

