package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   public class MonthWelfareLBCanvas extends SimpleCanvas
   {
      
      private var _550778329canvas1:Canvas;
      
      private var _550778331canvas3:Canvas;
      
      private var _392424659numberLab1:Label;
      
      private var _2092864078ZheKouPicture2:Image;
      
      private var _550778328canvas0:Canvas;
      
      private var _1355476203discountPriceLab0:Label;
      
      private var _xgnumarr:Array;
      
      private var _3034453btn1:Button;
      
      private var _3034455btn3:Button;
      
      private var _itemarr:Array;
      
      private var _100525950item1:ItemSlot;
      
      private var _550778330canvas2:Canvas;
      
      private var _2125993681priceLab3:Label;
      
      private var _yuanjiaarr:Array;
      
      private var _1355476204discountPriceLab1:Label;
      
      private var _392424658numberLab2:Label;
      
      private var _2092864079ZheKouPicture3:Image;
      
      private var _2125993683priceLab1:Label;
      
      private var _1355476205discountPriceLab2:Label;
      
      private var _100525952item3:ItemSlot;
      
      private var _2125993682priceLab2:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _100525949item0:ItemSlot;
      
      private var _1355476206discountPriceLab3:Label;
      
      private var _2125993684priceLab0:Label;
      
      private var _2092864076ZheKouPicture0:Image;
      
      private var _392424657numberLab3:Label;
      
      private var _3034452btn0:Button;
      
      private var _3034454btn2:Button;
      
      private var _1840333166nameLab0:Label;
      
      private var _1840333167nameLab1:Label;
      
      private var _1840333168nameLab2:Label;
      
      private var _392424660numberLab0:Label;
      
      private var _1840333169nameLab3:Label;
      
      private var _leixin:Number;
      
      private var _zkshow:Number;
      
      private var _100525951item2:ItemSlot;
      
      private var _labarr:Array;
      
      private var _2092864077ZheKouPicture1:Image;
      
      private var _1929740079leixinpicture:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":SimpleCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":650,
               "height":190,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":140,
                        "width":120,
                        "styleName":"RoundedGradientBorder",
                        "x":16,
                        "y":45,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item0",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":41,
                                 "y":8,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn0",
                           "events":{"click":"__btn0_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "label":"点击购买",
                                 "x":29,
                                 "y":113,
                                 "width":58,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"nameLab0",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":45,
                                 "width":120,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"numberLab0",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":60,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"priceLab0",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":75,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"discountPriceLab0",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":88,
                                 "width":110,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":140,
                        "width":120,
                        "styleName":"RoundedGradientBorder",
                        "x":179,
                        "y":45,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":41,
                                 "y":8,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn1",
                           "events":{"click":"__btn1_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "label":"点击购买",
                                 "x":29,
                                 "y":113,
                                 "width":58,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"nameLab1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":44,
                                 "width":120,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"numberLab1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":60,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"priceLab1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":75,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"discountPriceLab1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":88,
                                 "width":110,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":140,
                        "width":120,
                        "styleName":"RoundedGradientBorder",
                        "x":335,
                        "y":45,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":43,
                                 "y":8,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn2",
                           "events":{"click":"__btn2_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "label":"点击购买",
                                 "x":29,
                                 "y":113,
                                 "width":58,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"nameLab2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":44,
                                 "width":120,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"numberLab2",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":60,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"priceLab2",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":75,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"discountPriceLab2",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":88,
                                 "width":110,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"canvas3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "height":140,
                        "width":120,
                        "styleName":"RoundedGradientBorder",
                        "x":493,
                        "y":45,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":ItemSlot,
                           "id":"item3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":41,
                                 "y":8,
                                 "movable":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn3",
                           "events":{"click":"__btn3_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "label":"点击购买",
                                 "x":29,
                                 "y":113,
                                 "width":58,
                                 "height":23
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"nameLab3",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":44,
                                 "width":120,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"numberLab3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":60,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"priceLab3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":75,
                                 "width":110,
                                 "height":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"discountPriceLab3",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":88,
                                 "width":110,
                                 "height":20
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"leixinpicture",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":274,
                        "y":7,
                        "width":80,
                        "height":30
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ZheKouPicture0",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":110,
                        "y":33
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ZheKouPicture1",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":275,
                        "y":33
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ZheKouPicture2",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":430,
                        "y":33
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "id":"ZheKouPicture3",
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":585,
                        "y":33
                     };
                  }
               })]
            };
         }
      });
      
      public function MonthWelfareLBCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 650;
         this.height = 190;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this.addEventListener("creationComplete",___MonthWelfareLBCanvas_SimpleCanvas1_creationComplete);
      }
      
      public function set item3(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525952item3;
         if(_loc2_ !== param1)
         {
            this._100525952item3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item3",_loc2_,param1));
         }
      }
      
      public function set item1(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525950item1;
         if(_loc2_ !== param1)
         {
            this._100525950item1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item1",_loc2_,param1));
         }
      }
      
      public function set item2(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525951item2;
         if(_loc2_ !== param1)
         {
            this._100525951item2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get numberLab0() : Label
      {
         return this._392424660numberLab0;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberLab1() : Label
      {
         return this._392424659numberLab1;
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLab1() : Label
      {
         return this._2125993683priceLab1;
      }
      
      public function get ItemArr() : Array
      {
         return _itemarr;
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLab0() : Label
      {
         return this._2125993684priceLab0;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberLab2() : Label
      {
         return this._392424658numberLab2;
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         itemBuy(2);
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLab2() : Label
      {
         return this._2125993682priceLab2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ZheKouPicture1() : Image
      {
         return this._2092864077ZheKouPicture1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ZheKouPicture2() : Image
      {
         return this._2092864078ZheKouPicture2;
      }
      
      [Bindable(event="propertyChange")]
      public function get ZheKouPicture3() : Image
      {
         return this._2092864079ZheKouPicture3;
      }
      
      [Bindable(event="propertyChange")]
      public function get numberLab3() : Label
      {
         return this._392424657numberLab3;
      }
      
      [Bindable(event="propertyChange")]
      public function get ZheKouPicture0() : Image
      {
         return this._2092864076ZheKouPicture0;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : Button
      {
         return this._3034453btn1;
      }
      
      public function ___MonthWelfareLBCanvas_SimpleCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initData();
      }
      
      public function set Leixin(param1:Number) : void
      {
         _leixin = param1;
         if(initialized)
         {
            if(param1 == 1)
            {
               leixinpicture.source = ResManager.getIconUrl(4130220000576);
            }
            if(param1 == 2)
            {
               leixinpicture.source = ResManager.getIconUrl(4130220000575);
            }
            if(param1 == 3)
            {
               leixinpicture.source = ResManager.getIconUrl(4130220000574);
            }
         }
      }
      
      public function set XGnumArr(param1:Array) : void
      {
         var _loc2_:Number = NaN;
         _xgnumarr = param1;
         if(initialized)
         {
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this["numberLab" + _loc2_].htmlText = Language.MONTH_WELFARE_PANEL[2].replace("{num}",param1[_loc2_]);
               _loc2_++;
            }
         }
      }
      
      public function set ItemArr(param1:Array) : void
      {
         var _loc2_:* = undefined;
         _itemarr = param1;
         if(initialized)
         {
            for(_loc2_ in param1)
            {
               this["item" + _loc2_].type = GamePredef.TBL_ITEM_TEMPLATE;
               this["item" + _loc2_].giid = param1[_loc2_];
               this["item" + _loc2_].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][param1[_loc2_]];
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : Button
      {
         return this._3034454btn2;
      }
      
      public function set numberLab1(param1:Label) : void
      {
         var _loc2_:Object = this._392424659numberLab1;
         if(_loc2_ !== param1)
         {
            this._392424659numberLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberLab1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn0() : Button
      {
         return this._3034452btn0;
      }
      
      public function set numberLab3(param1:Label) : void
      {
         var _loc2_:Object = this._392424657numberLab3;
         if(_loc2_ !== param1)
         {
            this._392424657numberLab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberLab3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLab3() : Label
      {
         return this._1840333169nameLab3;
      }
      
      private function itemBuy(param1:Number) : void
      {
         var _loc2_:String = "";
         _loc2_ += Language.MONTH_WELFARE_PANEL[5].replace("{num}",Math.floor(0.1 * _zkshow * _yuanjiaarr[param1])).replace("{name}",this["item" + param1].slotData.name);
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_MONTHWELFARE_ALERT);
         if(_loc3_)
         {
            _loc3_.iid = _itemarr[param1];
            _loc3_.str = _loc2_;
            _loc3_.showPanel();
         }
      }
      
      public function set numberLab2(param1:Label) : void
      {
         var _loc2_:Object = this._392424658numberLab2;
         if(_loc2_ !== param1)
         {
            this._392424658numberLab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberLab2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLab0() : Label
      {
         return this._1840333166nameLab0;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLab1() : Label
      {
         return this._1840333167nameLab1;
      }
      
      public function set LabArr(param1:Array) : void
      {
         var _loc2_:* = undefined;
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         _labarr = param1;
         if(initialized)
         {
            for(_loc2_ in param1)
            {
               _loc3_ = 0;
               if(Boolean(this["item" + _loc2_].slotData) && Boolean(this["item" + _loc2_].slotData.color))
               {
                  _loc3_ = Number(this["item" + _loc2_].slotData.color);
               }
               if(_loc3_ < 0)
               {
                  _loc3_ = 0;
               }
               _loc4_ = "<font color=\'" + GamePredef.MSG_ITEM_COLOR[_loc3_] + "\'>" + param1[_loc2_] + "</font>";
               this["nameLab" + _loc2_].htmlText = _loc4_;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : Button
      {
         return this._3034455btn3;
      }
      
      public function set numberLab0(param1:Label) : void
      {
         var _loc2_:Object = this._392424660numberLab0;
         if(_loc2_ !== param1)
         {
            this._392424660numberLab0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"numberLab0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item0() : ItemSlot
      {
         return this._100525949item0;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemSlot
      {
         return this._100525951item2;
      }
      
      public function __btn3_click(param1:MouseEvent) : void
      {
         itemBuy(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get priceLab3() : Label
      {
         return this._2125993681priceLab3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemSlot
      {
         return this._100525952item3;
      }
      
      public function set priceLab2(param1:Label) : void
      {
         var _loc2_:Object = this._2125993682priceLab2;
         if(_loc2_ !== param1)
         {
            this._2125993682priceLab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLab2",_loc2_,param1));
         }
      }
      
      public function set priceLab3(param1:Label) : void
      {
         var _loc2_:Object = this._2125993681priceLab3;
         if(_loc2_ !== param1)
         {
            this._2125993681priceLab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLab3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemSlot
      {
         return this._100525950item1;
      }
      
      public function set priceLab0(param1:Label) : void
      {
         var _loc2_:Object = this._2125993684priceLab0;
         if(_loc2_ !== param1)
         {
            this._2125993684priceLab0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLab0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameLab2() : Label
      {
         return this._1840333168nameLab2;
      }
      
      public function set priceLab1(param1:Label) : void
      {
         var _loc2_:Object = this._2125993683priceLab1;
         if(_loc2_ !== param1)
         {
            this._2125993683priceLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"priceLab1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         super.initialize();
      }
      
      public function set ZheKouPicture0(param1:Image) : void
      {
         var _loc2_:Object = this._2092864076ZheKouPicture0;
         if(_loc2_ !== param1)
         {
            this._2092864076ZheKouPicture0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ZheKouPicture0",_loc2_,param1));
         }
      }
      
      public function set ZKShow(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         _zkshow = param1;
         if(initialized)
         {
            switch(param1)
            {
               case 10:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000587);
                     _loc2_++;
                  }
                  break;
               case 9:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000586);
                     _loc2_++;
                  }
                  break;
               case 8:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000585);
                     _loc2_++;
                  }
                  break;
               case 7:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000584);
                     _loc2_++;
                  }
                  break;
               case 6:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000583);
                     _loc2_++;
                  }
                  break;
               case 5:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000582);
                     _loc2_++;
                  }
                  break;
               case 4:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000581);
                     _loc2_++;
                  }
                  break;
               case 3:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000580);
                     _loc2_++;
                  }
                  break;
               case 2:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000579);
                     _loc2_++;
                  }
                  break;
               case 1:
                  _loc2_ = 0;
                  while(_loc2_ < 4)
                  {
                     this["ZheKouPicture" + _loc2_].source = ResManager.getIconUrl(4130220000578);
                     _loc2_++;
                  }
            }
         }
      }
      
      public function set ZheKouPicture1(param1:Image) : void
      {
         var _loc2_:Object = this._2092864077ZheKouPicture1;
         if(_loc2_ !== param1)
         {
            this._2092864077ZheKouPicture1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ZheKouPicture1",_loc2_,param1));
         }
      }
      
      public function set leixinpicture(param1:Image) : void
      {
         var _loc2_:Object = this._1929740079leixinpicture;
         if(_loc2_ !== param1)
         {
            this._1929740079leixinpicture = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"leixinpicture",_loc2_,param1));
         }
      }
      
      public function set ZheKouPicture2(param1:Image) : void
      {
         var _loc2_:Object = this._2092864078ZheKouPicture2;
         if(_loc2_ !== param1)
         {
            this._2092864078ZheKouPicture2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ZheKouPicture2",_loc2_,param1));
         }
      }
      
      public function set ZheKouPicture3(param1:Image) : void
      {
         var _loc2_:Object = this._2092864079ZheKouPicture3;
         if(_loc2_ !== param1)
         {
            this._2092864079ZheKouPicture3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ZheKouPicture3",_loc2_,param1));
         }
      }
      
      public function get XGnumArr() : Array
      {
         return _xgnumarr;
      }
      
      public function set btn0(param1:Button) : void
      {
         var _loc2_:Object = this._3034452btn0;
         if(_loc2_ !== param1)
         {
            this._3034452btn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn0",_loc2_,param1));
         }
      }
      
      public function set btn1(param1:Button) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:Button) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      public function set canvas3(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778331canvas3;
         if(_loc2_ !== param1)
         {
            this._550778331canvas3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas3",_loc2_,param1));
         }
      }
      
      public function set canvas0(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778328canvas0;
         if(_loc2_ !== param1)
         {
            this._550778328canvas0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas0",_loc2_,param1));
         }
      }
      
      public function set canvas1(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778329canvas1;
         if(_loc2_ !== param1)
         {
            this._550778329canvas1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas1",_loc2_,param1));
         }
      }
      
      public function __btn0_click(param1:MouseEvent) : void
      {
         itemBuy(0);
      }
      
      public function set canvas2(param1:Canvas) : void
      {
         var _loc2_:Object = this._550778330canvas2;
         if(_loc2_ !== param1)
         {
            this._550778330canvas2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas2",_loc2_,param1));
         }
      }
      
      public function set btn2(param1:Button) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function set YuanJiaArr(param1:Array) : void
      {
         var _loc2_:Number = NaN;
         _yuanjiaarr = param1;
         if(initialized)
         {
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               this["priceLab" + _loc2_].htmlText = Language.MONTH_WELFARE_PANEL[3].replace("{num}",param1[_loc2_]);
               this["discountPriceLab" + _loc2_].htmlText = Language.MONTH_WELFARE_PANEL[4].replace("{num}",Math.floor(0.1 * _zkshow * param1[_loc2_]));
               _loc2_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get leixinpicture() : Image
      {
         return this._1929740079leixinpicture;
      }
      
      public function set discountPriceLab0(param1:Label) : void
      {
         var _loc2_:Object = this._1355476203discountPriceLab0;
         if(_loc2_ !== param1)
         {
            this._1355476203discountPriceLab0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"discountPriceLab0",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas0() : Canvas
      {
         return this._550778328canvas0;
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas1() : Canvas
      {
         return this._550778329canvas1;
      }
      
      private function initData() : void
      {
         if(_leixin)
         {
            this.Leixin = _leixin;
         }
         if(_itemarr)
         {
            this.ItemArr = _itemarr;
         }
         if(_labarr)
         {
            this.LabArr = _labarr;
         }
         if(_zkshow)
         {
            this.ZKShow = _zkshow;
         }
         if(_yuanjiaarr)
         {
            this.YuanJiaArr = _yuanjiaarr;
         }
         if(_xgnumarr)
         {
            this.XGnumArr = _xgnumarr;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas3() : Canvas
      {
         return this._550778331canvas3;
      }
      
      public function set nameLab1(param1:Label) : void
      {
         var _loc2_:Object = this._1840333167nameLab1;
         if(_loc2_ !== param1)
         {
            this._1840333167nameLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLab1",_loc2_,param1));
         }
      }
      
      public function set discountPriceLab1(param1:Label) : void
      {
         var _loc2_:Object = this._1355476204discountPriceLab1;
         if(_loc2_ !== param1)
         {
            this._1355476204discountPriceLab1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"discountPriceLab1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas2() : Canvas
      {
         return this._550778330canvas2;
      }
      
      public function set nameLab3(param1:Label) : void
      {
         var _loc2_:Object = this._1840333169nameLab3;
         if(_loc2_ !== param1)
         {
            this._1840333169nameLab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLab3",_loc2_,param1));
         }
      }
      
      public function set discountPriceLab3(param1:Label) : void
      {
         var _loc2_:Object = this._1355476206discountPriceLab3;
         if(_loc2_ !== param1)
         {
            this._1355476206discountPriceLab3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"discountPriceLab3",_loc2_,param1));
         }
      }
      
      public function set nameLab2(param1:Label) : void
      {
         var _loc2_:Object = this._1840333168nameLab2;
         if(_loc2_ !== param1)
         {
            this._1840333168nameLab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLab2",_loc2_,param1));
         }
      }
      
      public function set discountPriceLab2(param1:Label) : void
      {
         var _loc2_:Object = this._1355476205discountPriceLab2;
         if(_loc2_ !== param1)
         {
            this._1355476205discountPriceLab2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"discountPriceLab2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get discountPriceLab0() : Label
      {
         return this._1355476203discountPriceLab0;
      }
      
      [Bindable(event="propertyChange")]
      public function get discountPriceLab2() : Label
      {
         return this._1355476205discountPriceLab2;
      }
      
      [Bindable(event="propertyChange")]
      public function get discountPriceLab3() : Label
      {
         return this._1355476206discountPriceLab3;
      }
      
      [Bindable(event="propertyChange")]
      public function get discountPriceLab1() : Label
      {
         return this._1355476204discountPriceLab1;
      }
      
      public function set nameLab0(param1:Label) : void
      {
         var _loc2_:Object = this._1840333166nameLab0;
         if(_loc2_ !== param1)
         {
            this._1840333166nameLab0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameLab0",_loc2_,param1));
         }
      }
      
      public function set item0(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525949item0;
         if(_loc2_ !== param1)
         {
            this._100525949item0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item0",_loc2_,param1));
         }
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         itemBuy(1);
      }
   }
}

