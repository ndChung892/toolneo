package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.resource.ResCacher;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.LanguageUtil;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.FilterButton;
   import com.qeedoo.ui.view.comp.SimpleSlot;
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
   import mx.containers.HBox;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.CheckBox;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class AwakenPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private static const NODE:int = 11;
      
      private static const NODE_MAX:* = 7;
      
      private static const IMAGE_BASE:Number = 4130220002000;
      
      private static const OFFSET_LIGHT:int = 1;
      
      private static const OFFSET_GRAY:int = 2;
      
      private static const SWF_BASE:Number = 2080130102000;
      
      private var _1990650299skillBox5:AwakenSkillBox;
      
      private var _905948603sense3:Image;
      
      private var _helpAlert:Alert;
      
      private var _1059134896awakeName:Text;
      
      public var _AwakenPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _selectScene:int;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _738692350propText2:Text;
      
      private var _alert:Alert;
      
      private var _905948604sense2:Image;
      
      private var _738692351propText1:Text;
      
      private var _859285687consumeText:Text;
      
      private var _905948600sense6:Image;
      
      public var _AwakenPanel_Label1:Label;
      
      private var _1497712068awakenItem:SimpleSlot;
      
      private var _1657688947pointsUsedText:Text;
      
      private var _core:Core = Core.getInstance();
      
      private var _1059210888awakeProp:Text;
      
      private var _905948599sense7:Image;
      
      private var _738692352propText0:Text;
      
      private var _1990650294skillBox0:AwakenSkillBox;
      
      mx_internal var _watchers:Array = [];
      
      private var _1990650295skillBox1:AwakenSkillBox;
      
      private var _905948601sense5:Image;
      
      public var _AwakenPanel_Text1:Text;
      
      private var _1283779760pointsText:Text;
      
      public var _AwakenPanel_FilterButton1:FilterButton;
      
      private var _646343081autoBuy:CheckBox;
      
      public var _AwakenPanel_Text9:Text;
      
      private var _905948605sense1:Image;
      
      private var _2035355342swfHolder:UIComponent;
      
      private var _1990650296skillBox2:AwakenSkillBox;
      
      private var _422286893rateText:Text;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _AwakenPanel_Image1:Image;
      
      private var _1990650297skillBox3:AwakenSkillBox;
      
      private var _905948602sense4:Image;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":850,
               "height":460,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_AwakenPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":15,
                        "y":40,
                        "width":650,
                        "height":400,
                        "clipContent":false,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_AwakenPanel_Image1"
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"sense1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":197,
                                 "y":18
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"sense2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":319,
                                 "y":78
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"sense3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":350,
                                 "y":207
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"sense4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":264,
                                 "y":316
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"sense5",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":131,
                                 "y":316
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"sense6",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":43,
                                 "y":207
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"sense7",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":74,
                                 "y":78
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":UIComponent,
                           "id":"swfHolder",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":115,
                                 "y":64
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "x":455,
                                 "y":5,
                                 "width":190,
                                 "height":140,
                                 "clipContent":false,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"_AwakenPanel_Text1",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.color = 16776960;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":10,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"propText0",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":15,
                                          "y":30,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"propText1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":100,
                                          "y":30,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"propText2",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":15,
                                          "y":100,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "x":455,
                                 "y":150,
                                 "width":190,
                                 "height":245,
                                 "clipContent":false,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"awakeName",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":10,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"awakeProp",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.color = 16777215;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":30,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":SimpleSlot,
                                    "id":"awakenItem",
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {"y":70};
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"consumeText",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":115,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Text,
                                    "id":"rateText",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 65535;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":25,
                                          "y":158,
                                          "mouseEnabled":false,
                                          "mouseChildren":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                       this.horizontalGap = 2;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":187,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":CheckBox,
                                             "id":"autoBuy"
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"_AwakenPanel_Label1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":FilterButton,
                                    "id":"_AwakenPanel_FilterButton1",
                                    "events":{"click":"___AwakenPanel_FilterButton1_click"},
                                    "stylesFactory":function():void
                                    {
                                       this.horizontalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":50,
                                          "height":23,
                                          "y":210,
                                          "styleName":"BtnStdGreen"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"_AwakenPanel_Text9",
                           "events":{"click":"___AwakenPanel_Text9_click"},
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":390,
                                 "y":370,
                                 "selectable":false
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "x":670,
                        "y":40,
                        "width":170,
                        "height":400,
                        "clipContent":false,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Text,
                           "id":"pointsText",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":10,
                                 "mouseEnabled":false,
                                 "mouseChildren":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Text,
                           "id":"pointsUsedText",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":30,
                                 "mouseEnabled":false,
                                 "mouseChildren":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":VBox,
                           "stylesFactory":function():void
                           {
                              this.horizontalCenter = "0";
                              this.horizontalAlign = "center";
                              this.verticalGap = 17;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":70,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":AwakenSkillBox,
                                    "id":"skillBox0"
                                 }),new UIComponentDescriptor({
                                    "type":AwakenSkillBox,
                                    "id":"skillBox1"
                                 }),new UIComponentDescriptor({
                                    "type":AwakenSkillBox,
                                    "id":"skillBox2"
                                 }),new UIComponentDescriptor({
                                    "type":AwakenSkillBox,
                                    "id":"skillBox3"
                                 }),new UIComponentDescriptor({
                                    "type":AwakenSkillBox,
                                    "id":"skillBox4"
                                 }),new UIComponentDescriptor({
                                    "type":AwakenSkillBox,
                                    "id":"skillBox5"
                                 })]
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1990650298skillBox4:AwakenSkillBox;
      
      public function AwakenPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 850;
         this.height = 460;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___AwakenPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         AwakenPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get propText1() : Text
      {
         return this._738692351propText1;
      }
      
      public function set propText1(param1:Text) : void
      {
         var _loc2_:Object = this._738692351propText1;
         if(_loc2_ !== param1)
         {
            this._738692351propText1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propText0() : Text
      {
         return this._738692352propText0;
      }
      
      [Bindable(event="propertyChange")]
      public function get propText2() : Text
      {
         return this._738692350propText2;
      }
      
      public function set propText2(param1:Text) : void
      {
         var _loc2_:Object = this._738692350propText2;
         if(_loc2_ !== param1)
         {
            this._738692350propText2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText2",_loc2_,param1));
         }
      }
      
      public function updatePoints(param1:Event = null) : void
      {
         param1 && param1.stopImmediatePropagation();
         if(!this.initialized)
         {
            return;
         }
         var _loc2_:int = _core.player.awakenPoint;
         var _loc3_:int = _core.player.awakenPointUsed;
         pointsText.htmlText = Language.AWAKEN_PANEL[3] + _loc2_;
         pointsUsedText.htmlText = Language.AWAKEN_PANEL[4] + _loc3_;
      }
      
      public function ___AwakenPanel_FilterButton1_click(param1:MouseEvent) : void
      {
         awakenHandler(param1);
      }
      
      public function updateView() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:String = null;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:Number = NaN;
         var _loc13_:String = null;
         var _loc1_:int = _core.player.awakenLevel;
         var _loc2_:Object = {};
         if(_loc1_ >= GamePredef.AWAKEN_EDGE)
         {
            awakeName.htmlText = Language.AWAKEN_PANEL[9];
            awakeProp.htmlText = "";
            _loc2_["reqLevel"] = "-";
            _loc2_["reqNum"] = "-";
            _loc2_["reqMoney"] = "-";
         }
         else
         {
            _loc3_ = _loc1_ + 1;
            _loc4_ = GameData.d[GamePredef.TBL_AWAKENING][_loc3_];
            _loc5_ = Number(_loc4_.reqLevel);
            _loc6_ = Number(_loc4_.itemNum);
            _loc7_ = Number(_loc4_.money);
            _loc8_ = "";
            _loc9_ = 1;
            while(_loc9_ <= 2)
            {
               _loc11_ = int(_loc4_["prop" + _loc9_]);
               if(_loc11_ > 0)
               {
                  _loc12_ = Number(_loc4_["propNum" + _loc9_]);
                  _loc13_ = String(_loc12_);
                  if(GamePredef.AWAKEN_PERCENT_PROP[_loc11_])
                  {
                     _loc12_ *= 100;
                     _loc13_ = _loc12_.toFixed(2);
                     _loc13_ = _loc13_ + "%";
                  }
                  else if(int(_loc12_) < _loc12_)
                  {
                     _loc13_ = _loc12_.toFixed(2);
                  }
                  _loc8_ += _loc8_ ? "\n" : "";
                  _loc8_ = _loc8_ + (GamePredef.AWAKEN_PROP_DICT[_loc11_] + "+" + _loc13_);
               }
               _loc9_++;
            }
            awakeName.htmlText = LanguageUtil.replace(Language.AWAKEN_PANEL[5],{"name":_loc4_.name});
            awakeProp.htmlText = _loc8_;
            _loc10_ = int(_core.getItemNumFromBag(GamePredef.TBL_ITEM_TEMPLATE,GamePredef.AWAKEN_ITEMID).num);
            _loc2_["reqLevel"] = _core.player.level < _loc5_ ? "<font color=\'#FF0000\'>" + _loc5_ + "</font>" : _loc5_;
            _loc2_["reqNum"] = _loc10_ < _loc6_ ? "<font color=\'#FF0000\'>" + _loc6_ + "</font>" : _loc6_;
            _loc2_["reqMoney"] = _core.player.money < _loc7_ ? "<font color=\'#FF0000\'>" + _loc7_ + "</font>" : _loc7_;
         }
         consumeText.htmlText = LanguageUtil.replace(Language.AWAKEN_PANEL[6],_loc2_);
         this.updateUI();
         this.updateTotal();
         this.updateRate();
         this.updateItem();
         this.updatePoints();
         this.updateSkills();
      }
      
      public function set propText0(param1:Text) : void
      {
         var _loc2_:Object = this._738692352propText0;
         if(_loc2_ !== param1)
         {
            this._738692352propText0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText0",_loc2_,param1));
         }
      }
      
      public function set awakeProp(param1:Text) : void
      {
         var _loc2_:Object = this._1059210888awakeProp;
         if(_loc2_ !== param1)
         {
            this._1059210888awakeProp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awakeProp",_loc2_,param1));
         }
      }
      
      public function set pointsUsedText(param1:Text) : void
      {
         var _loc2_:Object = this._1657688947pointsUsedText;
         if(_loc2_ !== param1)
         {
            this._1657688947pointsUsedText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointsUsedText",_loc2_,param1));
         }
      }
      
      private function updateUI() : void
      {
         var _loc3_:Image = null;
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         var _loc9_:Object = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         var _loc1_:int = _core.player.awakenLevel;
         var _loc2_:int = 1;
         while(_loc2_ <= 7)
         {
            _loc3_ = this["sense" + _loc2_];
            _loc4_ = IMAGE_BASE + _loc2_ * 10 + (_loc1_ >= _loc2_ * NODE ? OFFSET_LIGHT : OFFSET_GRAY);
            _loc3_.source = ResManager.getIconUrl(_loc4_);
            _loc5_ = 0;
            _loc6_ = (_loc2_ - 1) * NODE;
            _loc7_ = _loc6_ + NODE;
            _loc8_ = _loc6_;
            while(_loc8_ < _loc7_)
            {
               _loc10_ = _loc8_ + 1;
               _loc11_ = GameData.d[GamePredef.TBL_AWAKENING][_loc10_];
               if(!(!_loc11_ || int(_loc11_.points) <= 0))
               {
                  _loc5_ += int(_loc11_.points);
               }
               _loc8_++;
            }
            _loc9_ = {
               "name":Language.AWAKEN_PANEL[21][_loc2_],
               "num":_loc5_
            };
            _loc3_.toolTip = LanguageUtil.replace(Language.AWAKEN_PANEL[20],_loc9_);
            _loc2_++;
         }
         this.updateSwf();
      }
      
      [Bindable(event="propertyChange")]
      public function get rateText() : Text
      {
         return this._422286893rateText;
      }
      
      private function closeHandler(param1:CloseEvent) : void
      {
         if(param1.detail == Alert.NO)
         {
            return;
         }
         _core.remote.call("ensureBuyAwaken",new Responder(onAwakening));
      }
      
      [Bindable(event="propertyChange")]
      public function get awakenItem() : SimpleSlot
      {
         return this._1497712068awakenItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get sense1() : Image
      {
         return this._905948605sense1;
      }
      
      [Bindable(event="propertyChange")]
      public function get sense2() : Image
      {
         return this._905948604sense2;
      }
      
      [Bindable(event="propertyChange")]
      public function get sense3() : Image
      {
         return this._905948603sense3;
      }
      
      private function updateRate() : void
      {
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:Number = NaN;
         if(!rateText)
         {
            return;
         }
         var _loc1_:String = "-";
         var _loc2_:int = _core.player.awakenLevel;
         if(_loc2_ < GamePredef.AWAKEN_EDGE)
         {
            _loc3_ = _loc2_ + 1;
            _loc4_ = GameData.d[GamePredef.TBL_AWAKENING][_loc3_];
            _loc5_ = _core.player.awakenAdd;
            _loc6_ = Number(_loc4_.rate);
            if(_core.MC_BIRTH_FLAG[19])
            {
               _loc6_ += Number(GamePredef.MC_BIRTH_CONFIG[19]);
               if(_loc6_ > 100)
               {
                  _loc6_ = 100;
               }
            }
            _loc1_ = _loc5_ <= 0 ? _loc6_ + "%" : _loc6_ + "% <font color=\'#00FF00\'>+" + _loc5_ + "%</font>";
         }
         rateText.htmlText = Language.AWAKEN_PANEL[11] + _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get sense4() : Image
      {
         return this._905948602sense4;
      }
      
      [Bindable(event="propertyChange")]
      public function get autoBuy() : CheckBox
      {
         return this._646343081autoBuy;
      }
      
      public function ___AwakenPanel_Text9_click(param1:MouseEvent) : void
      {
         helpHandler(param1);
      }
      
      public function set rateText(param1:Text) : void
      {
         var _loc2_:Object = this._422286893rateText;
         if(_loc2_ !== param1)
         {
            this._422286893rateText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rateText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sense5() : Image
      {
         return this._905948601sense5;
      }
      
      [Bindable(event="propertyChange")]
      public function get consumeText() : Text
      {
         return this._859285687consumeText;
      }
      
      [Bindable(event="propertyChange")]
      public function get sense6() : Image
      {
         return this._905948600sense6;
      }
      
      private function updateSkills() : void
      {
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         var _loc5_:AwakenSkillBox = null;
         var _loc6_:int = 0;
         var _loc1_:Object = {};
         var _loc2_:Object = GameData.d[GamePredef.TBL_AWAKENING_SKILL];
         for each(_loc3_ in _loc2_)
         {
            if(!(!_loc3_ || !_loc3_.hasOwnProperty("position") || _loc3_.reqClass != _core.player.classId))
            {
               _loc1_[_loc3_.position] = _loc3_;
            }
         }
         _loc4_ = 0;
         while(_loc4_ <= 5)
         {
            _loc5_ = this["skillBox" + _loc4_];
            _loc6_ = _loc4_ + 1;
            if(!_loc1_[_loc6_])
            {
               _loc5_.cleanView();
            }
            else
            {
               _loc5_.updateView(_loc1_[_loc6_]);
            }
            _loc4_++;
         }
      }
      
      public function set skillBox0(param1:AwakenSkillBox) : void
      {
         var _loc2_:Object = this._1990650294skillBox0;
         if(_loc2_ !== param1)
         {
            this._1990650294skillBox0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillBox0",_loc2_,param1));
         }
      }
      
      public function set skillBox1(param1:AwakenSkillBox) : void
      {
         var _loc2_:Object = this._1990650295skillBox1;
         if(_loc2_ !== param1)
         {
            this._1990650295skillBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillBox1",_loc2_,param1));
         }
      }
      
      public function set skillBox2(param1:AwakenSkillBox) : void
      {
         var _loc2_:Object = this._1990650296skillBox2;
         if(_loc2_ !== param1)
         {
            this._1990650296skillBox2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillBox2",_loc2_,param1));
         }
      }
      
      public function set skillBox3(param1:AwakenSkillBox) : void
      {
         var _loc2_:Object = this._1990650297skillBox3;
         if(_loc2_ !== param1)
         {
            this._1990650297skillBox3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillBox3",_loc2_,param1));
         }
      }
      
      public function set skillBox4(param1:AwakenSkillBox) : void
      {
         var _loc2_:Object = this._1990650298skillBox4;
         if(_loc2_ !== param1)
         {
            this._1990650298skillBox4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillBox4",_loc2_,param1));
         }
      }
      
      private function updateItem(param1:int = -1) : void
      {
         if(!awakenItem)
         {
            return;
         }
         awakenItem.slotId = GamePredef.AWAKEN_ITEMID;
         if(param1 >= 0)
         {
            awakenItem.stackNum = param1;
         }
      }
      
      public function set skillBox5(param1:AwakenSkillBox) : void
      {
         var _loc2_:Object = this._1990650299skillBox5;
         if(_loc2_ !== param1)
         {
            this._1990650299skillBox5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"skillBox5",_loc2_,param1));
         }
      }
      
      private function awakenHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         var _loc2_:Boolean = Boolean(autoBuy) && autoBuy.selected;
         _core.remote.call("awakening",new Responder(onAwakening),_loc2_);
      }
      
      public function set sense1(param1:Image) : void
      {
         var _loc2_:Object = this._905948605sense1;
         if(_loc2_ !== param1)
         {
            this._905948605sense1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sense1",_loc2_,param1));
         }
      }
      
      public function set awakenItem(param1:SimpleSlot) : void
      {
         var _loc2_:Object = this._1497712068awakenItem;
         if(_loc2_ !== param1)
         {
            this._1497712068awakenItem = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awakenItem",_loc2_,param1));
         }
      }
      
      public function set sense3(param1:Image) : void
      {
         var _loc2_:Object = this._905948603sense3;
         if(_loc2_ !== param1)
         {
            this._905948603sense3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sense3",_loc2_,param1));
         }
      }
      
      public function set awakeName(param1:Text) : void
      {
         var _loc2_:Object = this._1059134896awakeName;
         if(_loc2_ !== param1)
         {
            this._1059134896awakeName = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"awakeName",_loc2_,param1));
         }
      }
      
      public function set sense5(param1:Image) : void
      {
         var _loc2_:Object = this._905948601sense5;
         if(_loc2_ !== param1)
         {
            this._905948601sense5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sense5",_loc2_,param1));
         }
      }
      
      public function ___AwakenPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         updateView();
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:AwakenPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _AwakenPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_AwakenPanelWatcherSetupUtil");
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
      
      public function set consumeText(param1:Text) : void
      {
         var _loc2_:Object = this._859285687consumeText;
         if(_loc2_ !== param1)
         {
            this._859285687consumeText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"consumeText",_loc2_,param1));
         }
      }
      
      public function set sense4(param1:Image) : void
      {
         var _loc2_:Object = this._905948602sense4;
         if(_loc2_ !== param1)
         {
            this._905948602sense4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sense4",_loc2_,param1));
         }
      }
      
      public function set pointsText(param1:Text) : void
      {
         var _loc2_:Object = this._1283779760pointsText;
         if(_loc2_ !== param1)
         {
            this._1283779760pointsText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointsText",_loc2_,param1));
         }
      }
      
      private function onAwakening(param1:Object = null) : void
      {
         var _loc2_:int = 0;
         var _loc3_:String = null;
         if(!param1)
         {
            return;
         }
         if(param1.hasOwnProperty("needGold"))
         {
            if(_alert)
            {
               PopUpManager.removePopUp(_alert);
               _alert = null;
            }
            _loc2_ = int(param1.needGold);
            _loc3_ = LanguageUtil.replace(Language.AWAKEN_PANEL[10],{"money":_loc2_});
            _alert = Alert.show(LanguageUtil.html2PlainText(_loc3_),"",Alert.YES | Alert.NO,null,closeHandler);
            _alert.mx_internal::alertForm.mx_internal::textField.htmlText = _loc3_;
            return;
         }
         if(!param1.hasOwnProperty("success"))
         {
            return;
         }
         _core.player.awakenAdd = param1.hasOwnProperty("awakenAdd") ? int(param1.awakenAdd) : 0;
         if(param1.success)
         {
            _core.player.awakenLevel = param1.awakenLevel;
            _core.player.awakenPoint = param1.awakenPoint;
            this.updateView();
            return;
         }
         this.updateItem(param1.itemNum);
         this.updateRate();
      }
      
      [Bindable(event="propertyChange")]
      public function get sense7() : Image
      {
         return this._905948599sense7;
      }
      
      public function set sense6(param1:Image) : void
      {
         var _loc2_:Object = this._905948600sense6;
         if(_loc2_ !== param1)
         {
            this._905948600sense6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sense6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pointsUsedText() : Text
      {
         return this._1657688947pointsUsedText;
      }
      
      [Bindable(event="propertyChange")]
      public function get awakeProp() : Text
      {
         return this._1059210888awakeProp;
      }
      
      public function set swfHolder(param1:UIComponent) : void
      {
         var _loc2_:Object = this._2035355342swfHolder;
         if(_loc2_ !== param1)
         {
            this._2035355342swfHolder = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"swfHolder",_loc2_,param1));
         }
      }
      
      private function _AwakenPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWAKEN_PANEL[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwakenPanel_BasicTitleCanvas1.text = param1;
         },"_AwakenPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220002000);
         },function(param1:Object):void
         {
            _AwakenPanel_Image1.source = param1;
         },"_AwakenPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AwakenPanel_Text1.filters = param1;
         },"_AwakenPanel_Text1.filters");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWAKEN_PANEL[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwakenPanel_Text1.text = param1;
         },"_AwakenPanel_Text1.text");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propText0.filters = param1;
         },"propText0.filters");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propText1.filters = param1;
         },"propText1.filters");
         result[5] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            propText2.filters = param1;
         },"propText2.filters");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            awakeName.filters = param1;
         },"awakeName.filters");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            awakeProp.filters = param1;
         },"awakeProp.filters");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return GamePredef.TBL_ITEM_TEMPLATE;
         },function(param1:int):void
         {
            awakenItem.type = param1;
         },"awakenItem.type");
         result[9] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            consumeText.filters = param1;
         },"consumeText.filters");
         result[10] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            rateText.filters = param1;
         },"rateText.filters");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWAKEN_PANEL[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwakenPanel_Label1.text = param1;
         },"_AwakenPanel_Label1.text");
         result[12] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AwakenPanel_Label1.filters = param1;
         },"_AwakenPanel_Label1.filters");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWAKEN_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwakenPanel_FilterButton1.label = param1;
         },"_AwakenPanel_FilterButton1.label");
         result[14] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AwakenPanel_FilterButton1.filters = param1;
         },"_AwakenPanel_FilterButton1.filters");
         result[15] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            _AwakenPanel_Text9.filters = param1;
         },"_AwakenPanel_Text9.filters");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.AWAKEN_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _AwakenPanel_Text9.htmlText = param1;
         },"_AwakenPanel_Text9.htmlText");
         result[17] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pointsText.filters = param1;
         },"pointsText.filters");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_GLOW_LOWBLACK];
         },function(param1:Array):void
         {
            pointsUsedText.filters = param1;
         },"pointsUsedText.filters");
         result[19] = binding;
         return result;
      }
      
      public function set autoBuy(param1:CheckBox) : void
      {
         var _loc2_:Object = this._646343081autoBuy;
         if(_loc2_ !== param1)
         {
            this._646343081autoBuy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"autoBuy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get awakeName() : Text
      {
         return this._1059134896awakeName;
      }
      
      public function set sense7(param1:Image) : void
      {
         var _loc2_:Object = this._905948599sense7;
         if(_loc2_ !== param1)
         {
            this._905948599sense7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sense7",_loc2_,param1));
         }
      }
      
      public function set sense2(param1:Image) : void
      {
         var _loc2_:Object = this._905948604sense2;
         if(_loc2_ !== param1)
         {
            this._905948604sense2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sense2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get skillBox0() : AwakenSkillBox
      {
         return this._1990650294skillBox0;
      }
      
      [Bindable(event="propertyChange")]
      public function get pointsText() : Text
      {
         return this._1283779760pointsText;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillBox3() : AwakenSkillBox
      {
         return this._1990650297skillBox3;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillBox5() : AwakenSkillBox
      {
         return this._1990650299skillBox5;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillBox1() : AwakenSkillBox
      {
         return this._1990650295skillBox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillBox2() : AwakenSkillBox
      {
         return this._1990650296skillBox2;
      }
      
      [Bindable(event="propertyChange")]
      public function get skillBox4() : AwakenSkillBox
      {
         return this._1990650298skillBox4;
      }
      
      private function helpHandler(param1:Event) : void
      {
         param1.stopImmediatePropagation();
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc2_:String = Language.AWAKEN_PANEL[12];
         _helpAlert = Alert.show(LanguageUtil.html2PlainText(_loc2_),"",Alert.YES);
         _helpAlert.mx_internal::alertForm.mx_internal::textField.htmlText = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get swfHolder() : UIComponent
      {
         return this._2035355342swfHolder;
      }
      
      private function _AwakenPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.AWAKEN_PANEL[1];
         _loc1_ = ResManager.getIconUrl(4130220002000);
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.AWAKEN_PANEL[2];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = GamePredef.TBL_ITEM_TEMPLATE;
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.AWAKEN_PANEL[7];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.AWAKEN_PANEL[0];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = Language.AWAKEN_PANEL[8];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
         _loc1_ = [GamePredef.FILTER_GLOW_LOWBLACK];
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         param1 && this.updateItem();
      }
      
      public function updateAwakening(param1:int) : void
      {
         var _loc4_:* = undefined;
         if(!_core.player)
         {
            return;
         }
         _core.player.awakenAdd = 0;
         _core.player.awakenPointUsed = 0;
         _core.player.awakenLevel = param1;
         var _loc2_:int = 0;
         var _loc3_:int = 1;
         while(_loc3_ <= param1)
         {
            _loc4_ = GameData.d[GamePredef.TBL_AWAKENING][_loc3_];
            if(!(!_loc4_ || Number(_loc4_.points) <= 0))
            {
               _loc2_ += Number(_loc4_.points);
            }
            _loc3_++;
         }
         _core.player.awakenPoint = _loc2_;
         this.initialized && this.updateView();
      }
      
      private function updateSwf() : void
      {
         var stepIndex:int = 0;
         var selectSense:int = 0;
         var diffScene:Boolean = false;
         var senseUrl:String = null;
         var selectSwf:MovieClip = null;
         var i:int = 0;
         var onLoadSwf:Function = null;
         var awakenLvl:int = _core.player.awakenLevel;
         var stepLvl:int = awakenLvl % NODE;
         stepIndex = stepLvl + 1;
         var nodeLvl:* = Math.ceil(awakenLvl / NODE);
         if(awakenLvl <= 0)
         {
            selectSense = 1;
         }
         else if(awakenLvl >= NODE_MAX * NODE)
         {
            stepIndex = NODE;
            selectSense = NODE_MAX;
         }
         else if(stepLvl == 0)
         {
            stepIndex = 0;
            selectSense = nodeLvl + 1;
         }
         else
         {
            selectSense = nodeLvl;
         }
         diffScene = _selectScene != selectSense;
         if(diffScene)
         {
            _selectScene = selectSense;
            i = swfHolder.numChildren - 1;
            while(i >= 0)
            {
               swfHolder.removeChildAt(i);
               i--;
            }
         }
         senseUrl = ResManager.getResUrl(SWF_BASE + _selectScene);
         selectSwf = ResCacher.getInstance().getRes(senseUrl) as MovieClip;
         if(!selectSwf)
         {
            onLoadSwf = function(param1:Event):void
            {
               var _loc2_:LoaderInfo = ResCacher.getInstance().current_complete_loader;
               if(_loc2_.url.indexOf(senseUrl) == -1)
               {
                  return;
               }
               ResCacher.getInstance().removeEventListener("complete",onLoadSwf);
               selectSwf = param1.target.current_complete_loader.content as MovieClip;
               selectSwf.gotoAndStop(stepIndex);
               diffScene && swfHolder.addChild(selectSwf);
            };
            ResCacher.getInstance().addEventListener("complete",onLoadSwf);
            return;
         }
         selectSwf.gotoAndStop(stepIndex);
         diffScene && swfHolder.addChild(selectSwf);
      }
      
      private function updateTotal() : void
      {
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:Array = null;
         var _loc9_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:Object = null;
         var _loc14_:int = 0;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:String = null;
         var _loc18_:Object = null;
         var _loc19_:int = 0;
         var _loc20_:String = null;
         var _loc21_:Object = null;
         var _loc22_:String = null;
         var _loc1_:int = _core.player.awakenLevel;
         var _loc2_:Object = {};
         var _loc3_:int = 1;
         while(_loc3_ <= _loc1_)
         {
            _loc13_ = GameData.d[GamePredef.TBL_AWAKENING][_loc3_];
            _loc12_ = 1;
            while(_loc12_ <= 2)
            {
               _loc14_ = int(_loc13_["prop" + _loc12_]);
               if(_loc14_ > 0)
               {
                  _loc15_ = Number(_loc13_["propNum" + _loc12_]);
                  _loc2_[_loc14_] = _loc2_.hasOwnProperty(_loc14_) ? Number(_loc2_[_loc14_]) + _loc15_ : _loc15_;
               }
               _loc12_++;
            }
            _loc3_++;
         }
         var _loc4_:Array = [];
         var _loc5_:Array = [];
         for(_loc6_ in _loc2_)
         {
            _loc16_ = Number(_loc2_[_loc6_]);
            _loc17_ = String(_loc16_);
            if(GamePredef.AWAKEN_PERCENT_PROP[_loc6_])
            {
               _loc16_ *= 100;
               _loc17_ = _loc16_.toFixed(2);
               _loc17_ = _loc17_ + "%";
               _loc5_.push({
                  "propType":_loc6_,
                  "propNum":_loc17_
               });
            }
            else
            {
               if(int(_loc16_) < _loc16_)
               {
                  _loc17_ = _loc16_.toFixed(2);
               }
               _loc4_.push({
                  "propType":_loc6_,
                  "propNum":_loc17_
               });
            }
         }
         _loc4_.sortOn("propType",Array.NUMERIC);
         _loc5_.sortOn("propType",Array.NUMERIC);
         _loc7_ = int(_loc4_.length);
         _loc8_ = ["",""];
         _loc9_ = 0;
         while(_loc9_ < _loc7_)
         {
            _loc18_ = _loc4_[_loc9_];
            _loc19_ = _loc9_ % 2;
            _loc20_ = GamePredef.AWAKEN_PROP_DICT[_loc18_.propType] + "+" + _loc18_.propNum;
            _loc8_[_loc19_] += _loc8_[_loc19_] ? "\n" + _loc20_ : _loc20_;
            _loc9_++;
         }
         propText0.htmlText = _loc8_[0];
         propText1.htmlText = _loc8_[1];
         var _loc10_:String = "";
         var _loc11_:int = int(_loc5_.length);
         _loc12_ = 0;
         while(_loc12_ < _loc11_)
         {
            _loc21_ = _loc5_[_loc12_];
            _loc22_ = GamePredef.AWAKEN_PROP_DICT[_loc21_.propType] + "+" + _loc21_.propNum;
            _loc10_ += _loc10_ ? "\n" + _loc22_ : _loc22_;
            _loc12_++;
         }
         propText2.htmlText = _loc10_;
      }
      
      override public function show() : void
      {
         super.show();
         this.initialized && this.visible && updateView();
      }
   }
}

