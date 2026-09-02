package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
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
   import mx.containers.HBox;
   import mx.controls.Image;
   import mx.core.Repeater;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class ActivityDetail extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1870278688hardStarHbox:HBox;
      
      private var _1713554638moneyStar:Repeater;
      
      mx_internal var _watchers:Array = [];
      
      public var _ActivityDetail_Image3:Array;
      
      public var _ActivityDetail_Image4:Array;
      
      private var _1367080559_ActivityDetail_HBox2:HBox;
      
      private var _711621622LB_time:RoundedLabel;
      
      public var _ActivityDetail_Image2:Array;
      
      private var _37263852lb_hard:RoundedLabel;
      
      private var hardStarArr:Array;
      
      private var _1367080560_ActivityDetail_HBox3:HBox;
      
      private var _1150148425lb_money:RoundedLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _104387img:Image;
      
      private var moneyStarArr:Array;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _2669TA:LinkTextArea;
      
      private var expStarArr:Array;
      
      private var _115854813hardStar:Repeater;
      
      private var _1109582892lb_exp:RoundedLabel;
      
      private var _711435188LB_name:RoundedLabel;
      
      private var _1309889009expStar:Repeater;
      
      private var _1515550027moneyStarHbox:HBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "height":100,
               "width":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"LB_name",
                  "stylesFactory":function():void
                  {
                     this.left = "80";
                     this.fontSize = 14;
                     this.color = 16776960;
                     this.top = "3";
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"LB_time",
                  "stylesFactory":function():void
                  {
                     this.horizontalCenter = "0";
                     this.color = 16777215;
                     this.top = "5";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"text":""};
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"img",
                  "stylesFactory":function():void
                  {
                     this.left = "10";
                     this.verticalCenter = "6";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":60,
                        "height":60
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":SimpleCanvas,
                  "stylesFactory":function():void
                  {
                     this.top = "26";
                     this.left = "80";
                     this.bottom = "10";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":379,
                        "styleName":"CanvasBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":LinkTextArea,
                           "id":"TA",
                           "stylesFactory":function():void
                           {
                              this.left = "5";
                              this.right = "5";
                              this.top = "5";
                              this.backgroundAlpha = 0;
                              this.fontSize = 12;
                              this.color = 16777215;
                              this.borderStyle = "none";
                              this.bottom = "5";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off"
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"lb_hard",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":467,
                        "y":18,
                        "width":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"lb_exp",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":467,
                        "y":34,
                        "width":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":RoundedLabel,
                  "id":"lb_money",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":467,
                        "y":52,
                        "width":35
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"hardStarHbox",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "y":21,
                        "height":12,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Repeater,
                           "id":"hardStar",
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_ActivityDetail_Image2",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"expStarHbox",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "y":37,
                        "height":12,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Repeater,
                           "id":"expStar",
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_ActivityDetail_Image3",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":HBox,
                  "id":"moneyStarHbox",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 1;
                     this.right = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "y":55,
                        "height":12,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Repeater,
                           "id":"moneyStar",
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Image,
                                 "id":"_ActivityDetail_Image4",
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "width":12,
                                       "height":12
                                    };
                                 }
                              })]};
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1367080558_ActivityDetail_HBox1:HBox;
      
      private var _1893418770expStarHbox:HBox;
      
      public function ActivityDetail()
      {
         super();
         mx_internal::_document = this;
         this.height = 100;
         this.width = 600;
         this.styleName = "CanvasBorder";
         this.addEventListener("creationComplete",___ActivityDetail_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         ActivityDetail._watcherSetupUtil = param1;
      }
      
      public function set _ActivityDetail_HBox2(param1:HBox) : void
      {
         var _loc2_:Object = this._1367080559_ActivityDetail_HBox2;
         if(_loc2_ !== param1)
         {
            this._1367080559_ActivityDetail_HBox2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ActivityDetail_HBox2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get LB_time() : RoundedLabel
      {
         return this._711621622LB_time;
      }
      
      public function set img(param1:Image) : void
      {
         var _loc2_:Object = this._104387img;
         if(_loc2_ !== param1)
         {
            this._104387img = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"img",_loc2_,param1));
         }
      }
      
      public function set _ActivityDetail_HBox3(param1:HBox) : void
      {
         var _loc2_:Object = this._1367080560_ActivityDetail_HBox3;
         if(_loc2_ !== param1)
         {
            this._1367080560_ActivityDetail_HBox3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ActivityDetail_HBox3",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:ActivityDetail = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _ActivityDetail_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_ActivityDetailWatcherSetupUtil");
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
      public function get expStarHbox() : HBox
      {
         return this._1893418770expStarHbox;
      }
      
      public function init() : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         LB_name.text = data.name;
         LB_time.text = data.timeStr;
         TA.htmlText = data.desc;
         hardStarArr = [];
         expStarArr = [];
         moneyStarArr = [];
         var _loc1_:int = 0;
         while(_loc1_ < data.hard)
         {
            hardStarArr.push(ResManager.ICON_EQUIP_STAR);
            _loc1_++;
         }
         if(data.exp)
         {
            _loc2_ = 0;
            while(_loc2_ < data.exp)
            {
               expStarArr.push(ResManager.ICON_EQUIP_STAR);
               _loc2_++;
            }
            lb_exp.text = Language.GAMEINTROPANEL_U[16];
         }
         else if(data.sx)
         {
            _loc2_ = 0;
            while(_loc2_ < data.sx)
            {
               expStarArr.push(ResManager.ICON_EQUIP_STAR);
               _loc2_++;
            }
            lb_exp.text = Language.GAMEINTROPANEL_U[27];
         }
         if(data.money)
         {
            _loc3_ = 0;
            while(_loc3_ < data.money)
            {
               moneyStarArr.push(ResManager.ICON_EQUIP_STAR);
               _loc3_++;
            }
            lb_money.text = Language.GAMEINTROPANEL_U[17];
         }
         else if(data.quality)
         {
            _loc2_ = 0;
            while(_loc2_ < data.quality)
            {
               moneyStarArr.push(ResManager.ICON_EQUIP_STAR);
               _loc2_++;
            }
            lb_money.text = Language.GAMEINTROPANEL_U[26];
         }
         hardStar.dataProvider = hardStarArr;
         expStar.dataProvider = expStarArr;
         moneyStar.dataProvider = moneyStarArr;
         img.source = ResManager.getIconUrl(data.resCode);
         if(expStarArr.length == 0)
         {
            lb_exp.visible = false;
         }
         else
         {
            lb_exp.visible = true;
         }
         if(moneyStarArr.length == 0)
         {
            lb_money.visible = false;
         }
         else
         {
            lb_money.visible = true;
         }
         setLbPosition();
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_hard() : RoundedLabel
      {
         return this._37263852lb_hard;
      }
      
      public function ___ActivityDetail_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set lb_exp(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1109582892lb_exp;
         if(_loc2_ !== param1)
         {
            this._1109582892lb_exp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_exp",_loc2_,param1));
         }
      }
      
      public function set lb_hard(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._37263852lb_hard;
         if(_loc2_ !== param1)
         {
            this._37263852lb_hard = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_hard",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get expStar() : Repeater
      {
         return this._1309889009expStar;
      }
      
      [Bindable(event="propertyChange")]
      public function get LB_name() : RoundedLabel
      {
         return this._711435188LB_name;
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyStarHbox() : HBox
      {
         return this._1515550027moneyStarHbox;
      }
      
      public function set expStar(param1:Repeater) : void
      {
         var _loc2_:Object = this._1309889009expStar;
         if(_loc2_ !== param1)
         {
            this._1309889009expStar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expStar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_money() : RoundedLabel
      {
         return this._1150148425lb_money;
      }
      
      [Bindable(event="propertyChange")]
      public function get moneyStar() : Repeater
      {
         return this._1713554638moneyStar;
      }
      
      public function set hardStarHbox(param1:HBox) : void
      {
         var _loc2_:Object = this._1870278688hardStarHbox;
         if(_loc2_ !== param1)
         {
            this._1870278688hardStarHbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hardStarHbox",_loc2_,param1));
         }
      }
      
      private function setLbPosition() : void
      {
         if(!lb_exp.visible && Boolean(lb_money))
         {
            lb_money.y = 34;
            moneyStarHbox.y = 37;
         }
         else
         {
            lb_money.y = 52;
            moneyStarHbox.y = 55;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hardStarHbox() : HBox
      {
         return this._1870278688hardStarHbox;
      }
      
      public function set prop(param1:Object) : void
      {
         data = param1;
      }
      
      public function set hardStar(param1:Repeater) : void
      {
         var _loc2_:Object = this._115854813hardStar;
         if(_loc2_ !== param1)
         {
            this._115854813hardStar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hardStar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lb_exp() : RoundedLabel
      {
         return this._1109582892lb_exp;
      }
      
      [Bindable(event="propertyChange")]
      public function get img() : Image
      {
         return this._104387img;
      }
      
      public function set _ActivityDetail_HBox1(param1:HBox) : void
      {
         var _loc2_:Object = this._1367080558_ActivityDetail_HBox1;
         if(_loc2_ !== param1)
         {
            this._1367080558_ActivityDetail_HBox1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_ActivityDetail_HBox1",_loc2_,param1));
         }
      }
      
      private function _ActivityDetail_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GAMEINTROPANEL_U[18];
         _loc1_ = hardStar.currentItem;
         _loc1_ = expStar.currentItem;
         _loc1_ = moneyStar.currentItem;
      }
      
      [Bindable(event="propertyChange")]
      public function get hardStar() : Repeater
      {
         return this._115854813hardStar;
      }
      
      private function _ActivityDetail_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GAMEINTROPANEL_U[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lb_hard.text = param1;
         },"lb_hard.text");
         result[0] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return hardStar.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _ActivityDetail_Image2[param2[0]].source = param1;
         },"_ActivityDetail_Image2.source");
         result[1] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return expStar.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _ActivityDetail_Image3[param2[0]].source = param1;
         },"_ActivityDetail_Image3.source");
         result[2] = binding;
         binding = new RepeatableBinding(this,function(param1:Array, param2:Array):Object
         {
            return moneyStar.mx_internal::getItemAt(param2[0]);
         },function(param1:Object, param2:Array):void
         {
            _ActivityDetail_Image4[param2[0]].source = param1;
         },"_ActivityDetail_Image4.source");
         result[3] = binding;
         return result;
      }
      
      public function set LB_name(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._711435188LB_name;
         if(_loc2_ !== param1)
         {
            this._711435188LB_name = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"LB_name",_loc2_,param1));
         }
      }
      
      public function set expStarHbox(param1:HBox) : void
      {
         var _loc2_:Object = this._1893418770expStarHbox;
         if(_loc2_ !== param1)
         {
            this._1893418770expStarHbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expStarHbox",_loc2_,param1));
         }
      }
      
      public function set moneyStar(param1:Repeater) : void
      {
         var _loc2_:Object = this._1713554638moneyStar;
         if(_loc2_ !== param1)
         {
            this._1713554638moneyStar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyStar",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _ActivityDetail_HBox1() : HBox
      {
         return this._1367080558_ActivityDetail_HBox1;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ActivityDetail_HBox2() : HBox
      {
         return this._1367080559_ActivityDetail_HBox2;
      }
      
      [Bindable(event="propertyChange")]
      public function get _ActivityDetail_HBox3() : HBox
      {
         return this._1367080560_ActivityDetail_HBox3;
      }
      
      public function set moneyStarHbox(param1:HBox) : void
      {
         var _loc2_:Object = this._1515550027moneyStarHbox;
         if(_loc2_ !== param1)
         {
            this._1515550027moneyStarHbox = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moneyStarHbox",_loc2_,param1));
         }
      }
      
      public function set TA(param1:LinkTextArea) : void
      {
         var _loc2_:Object = this._2669TA;
         if(_loc2_ !== param1)
         {
            this._2669TA = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"TA",_loc2_,param1));
         }
      }
      
      public function set LB_time(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._711621622LB_time;
         if(_loc2_ !== param1)
         {
            this._711621622LB_time = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"LB_time",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get TA() : LinkTextArea
      {
         return this._2669TA;
      }
      
      public function set lb_money(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1150148425lb_money;
         if(_loc2_ !== param1)
         {
            this._1150148425lb_money = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lb_money",_loc2_,param1));
         }
      }
   }
}

