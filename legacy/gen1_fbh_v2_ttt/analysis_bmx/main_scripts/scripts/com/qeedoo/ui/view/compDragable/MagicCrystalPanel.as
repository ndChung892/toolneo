package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.MagicCrystalCanvas;
   import com.qeedoo.ui.view.comp.PageSelector;
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
   import mx.controls.Alert;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.RadioButton;
   import mx.controls.RadioButtonGroup;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class MagicCrystalPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1464427280showCombine2:Label;
      
      private var _107869mc3:MagicCrystalCanvas;
      
      private var _1847394597showCombine14:Label;
      
      private var _1464427279showCombine3:Label;
      
      public var _MagicCrystalPanel_LinkButton1:LinkButton;
      
      private var _helpAlert:Alert;
      
      private var _107870mc4:MagicCrystalCanvas;
      
      public var _MagicCrystalPanel_RadioButton1:RadioButton;
      
      public var _MagicCrystalPanel_RadioButton2:RadioButton;
      
      private var max_num:* = 16;
      
      public var _MagicCrystalPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _1847394594showCombine11:Label;
      
      private var _107867mc1:MagicCrystalCanvas;
      
      private var _517675181gameQuality:RadioButtonGroup;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1847394599showCombine16:Label;
      
      public var _MagicCrystalPanel_Label1:Label;
      
      public var _MagicCrystalPanel_Label2:Label;
      
      public var _MagicCrystalPanel_Label3:Label;
      
      public var _MagicCrystalPanel_Label4:Label;
      
      private var mcData:Object = {};
      
      private var _1464427276showCombine6:Label;
      
      private var _1464427274showCombine8:Label;
      
      private var _1847394596showCombine13:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _1464427281showCombine1:Label;
      
      private var _1969543397titleWrapper:Canvas;
      
      private var _1464427278showCombine4:Label;
      
      private var _975883165nameAddText:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _1847394593showCombine10:Label;
      
      private var _107868mc2:MagicCrystalCanvas;
      
      private var _607339634pageSelector:PageSelector;
      
      private var firstLoad:Boolean = true;
      
      private var _1847394598showCombine15:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var page_num:* = 4;
      
      private var _1847394595showCombine12:Label;
      
      public var _MagicCrystalPanel_Image1:Image;
      
      private var _1464427277showCombine5:Label;
      
      mx_internal var _bindings:Array = [];
      
      public var _MagicCrystalPanel_Label22:Label;
      
      public var _MagicCrystalPanel_Label23:Label;
      
      private var _1464427273showCombine9:Label;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":660,
               "height":530,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_MagicCrystalPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"CanvasBorder",
                        "width":640,
                        "height":470,
                        "x":10,
                        "y":38,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_MagicCrystalPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MagicCrystalCanvas,
                           "id":"mc1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":34,
                                 "y":58
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MagicCrystalCanvas,
                           "id":"mc2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":231,
                                 "y":58
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MagicCrystalCanvas,
                           "id":"mc3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":34,
                                 "y":243
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":MagicCrystalCanvas,
                           "id":"mc4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":231,
                                 "y":243
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "width":200,
                                 "height":105,
                                 "x":434,
                                 "y":6,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_MagicCrystalPanel_Label1",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":21,
                                          "y":16,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_MagicCrystalPanel_Label2",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 16711680;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":128,
                                          "y":36,
                                          "width":82,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_MagicCrystalPanel_Label3",
                                    "stylesFactory":function():void
                                    {
                                       this.textAlign = "left";
                                       this.color = 65280;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":128,
                                          "y":16,
                                          "width":82,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"_MagicCrystalPanel_Label4",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16777215;
                                       this.fontSize = 12;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":21,
                                          "y":36,
                                          "height":21
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"_MagicCrystalPanel_RadioButton1",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "groupName":"gameQuality",
                                          "value":1,
                                          "x":21,
                                          "y":61,
                                          "selected":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RadioButton,
                                    "id":"_MagicCrystalPanel_RadioButton2",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 12;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "groupName":"gameQuality",
                                          "value":2,
                                          "x":21,
                                          "y":80
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
                                 "width":200,
                                 "height":350,
                                 "x":434,
                                 "y":114,
                                 "verticalScrollPolicy":"off",
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"titleWrapper",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":15,
                                          "y":9,
                                          "styleName":"StandardTitle",
                                          "width":180,
                                          "x":10
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Label,
                                    "id":"nameAddText",
                                    "stylesFactory":function():void
                                    {
                                       this.color = 16382208;
                                       this.textAlign = "center";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":8,
                                          "width":153,
                                          "x":29
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":HRule,
                                    "stylesFactory":function():void
                                    {
                                       this.themeColor = 40447;
                                       this.strokeColor = 847355;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":15,
                                          "y":33,
                                          "width":170
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":297,
                                          "y":43,
                                          "width":180,
                                          "x":10,
                                          "horizontalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine1",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":5,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine2",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":30,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine3",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":55,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine4",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":80,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine5",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":105,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine6",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":130,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine7",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":155,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine8",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":180,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine9",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":205,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine10",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":230,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine11",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":255,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine12",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":280,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine13",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":305,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine14",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":330,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine15",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":355,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Label,
                                             "id":"showCombine16",
                                             "stylesFactory":function():void
                                             {
                                                this.color = 16777215;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":12,
                                                   "y":380,
                                                   "text":"Label",
                                                   "width":158
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":PageSelector,
                           "id":"pageSelector",
                           "stylesFactory":function():void
                           {
                              this.bottom = "20";
                              this.horizontalCenter = "-100";
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_MagicCrystalPanel_Label22",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":21,
                                 "y":16,
                                 "width":95,
                                 "height":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_MagicCrystalPanel_Label23",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":101,
                                 "y":16,
                                 "width":95,
                                 "height":21
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_MagicCrystalPanel_LinkButton1",
                           "events":{"click":"___MagicCrystalPanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                              this.color = 16777215;
                              this.textDecoration = "underline";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":320,
                                 "y":15,
                                 "width":106
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _1464427275showCombine7:Label;
      
      public function MagicCrystalPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 660;
         this.height = 530;
         this.styleName = "StandardContent";
         _MagicCrystalPanel_RadioButtonGroup1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         MagicCrystalPanel._watcherSetupUtil = param1;
      }
      
      private function onUpdatePro() : void
      {
         var _loc2_:* = undefined;
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         var _loc1_:* = 0;
         while(_loc1_ < max_num)
         {
            if(mcData[_loc1_])
            {
               _loc2_ = 1;
               _loc3_ = 0;
               _loc4_ = 0;
               if(ToolKit.isEqual(mcData[_loc1_]["a"],1))
               {
                  _loc2_ = mcData[_loc1_]["max"];
                  _loc3_ = ToolKit.add(mcData[_loc1_]["l"],mcData[_loc1_]["s"]);
                  _loc4_ = mcData[_loc1_]["lv"];
               }
               _loc5_ = Math.floor(GamePredef.MAGIC_CRYSTAL_UP[_loc1_][_loc4_]["v"] * _loc3_ / _loc2_ * 10000) / 10000;
               _loc6_ = GamePredef.MAGIC_CRYSTAL_UP[_loc1_][_loc4_]["t"];
               _loc7_ = ToolKit.add(_loc1_,1);
               this["showCombine" + _loc7_].text = Language.TIP_MONSTER_H[_loc6_] + _loc5_.toFixed(4);
               if(_loc6_ == 59 || _loc6_ == 60 || _loc6_ == 62 || _loc6_ == 63)
               {
                  this["showCombine" + _loc7_].text = Language.TIP_MONSTER_H[_loc6_] + _loc5_.toFixed(4) + "%";
               }
            }
            _loc1_++;
         }
      }
      
      public function set showCombine9(param1:Label) : void
      {
         var _loc2_:Object = this._1464427273showCombine9;
         if(_loc2_ !== param1)
         {
            this._1464427273showCombine9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine9",_loc2_,param1));
         }
      }
      
      public function showPanel() : void
      {
         initView();
         visible = true;
      }
      
      public function ___MagicCrystalPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine5() : Label
      {
         return this._1464427277showCombine5;
      }
      
      public function getSelectPointType() : String
      {
         return gameQuality.selectedValue.toString();
      }
      
      [Bindable(event="propertyChange")]
      public function get titleWrapper() : Canvas
      {
         return this._1969543397titleWrapper;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine10() : Label
      {
         return this._1847394593showCombine10;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine13() : Label
      {
         return this._1847394596showCombine13;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine14() : Label
      {
         return this._1847394597showCombine14;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine11() : Label
      {
         return this._1847394594showCombine11;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine12() : Label
      {
         return this._1847394595showCombine12;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine15() : Label
      {
         return this._1847394598showCombine15;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine8() : Label
      {
         return this._1464427274showCombine8;
      }
      
      public function set showCombine8(param1:Label) : void
      {
         var _loc2_:Object = this._1464427274showCombine8;
         if(_loc2_ !== param1)
         {
            this._1464427274showCombine8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine8",_loc2_,param1));
         }
      }
      
      public function set pageSelector(param1:PageSelector) : void
      {
         var _loc2_:Object = this._607339634pageSelector;
         if(_loc2_ !== param1)
         {
            this._607339634pageSelector = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageSelector",_loc2_,param1));
         }
      }
      
      public function set titleWrapper(param1:Canvas) : void
      {
         var _loc2_:Object = this._1969543397titleWrapper;
         if(_loc2_ !== param1)
         {
            this._1969543397titleWrapper = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleWrapper",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine16() : Label
      {
         return this._1847394599showCombine16;
      }
      
      public function set showCombine12(param1:Label) : void
      {
         var _loc2_:Object = this._1847394595showCombine12;
         if(_loc2_ !== param1)
         {
            this._1847394595showCombine12 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine12",_loc2_,param1));
         }
      }
      
      public function set showCombine13(param1:Label) : void
      {
         var _loc2_:Object = this._1847394596showCombine13;
         if(_loc2_ !== param1)
         {
            this._1847394596showCombine13 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine13",_loc2_,param1));
         }
      }
      
      public function set showCombine10(param1:Label) : void
      {
         var _loc2_:Object = this._1847394593showCombine10;
         if(_loc2_ !== param1)
         {
            this._1847394593showCombine10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine10",_loc2_,param1));
         }
      }
      
      public function set showCombine11(param1:Label) : void
      {
         var _loc2_:Object = this._1847394594showCombine11;
         if(_loc2_ !== param1)
         {
            this._1847394594showCombine11 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine11",_loc2_,param1));
         }
      }
      
      public function set showCombine14(param1:Label) : void
      {
         var _loc2_:Object = this._1847394597showCombine14;
         if(_loc2_ !== param1)
         {
            this._1847394597showCombine14 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine14",_loc2_,param1));
         }
      }
      
      public function set showCombine15(param1:Label) : void
      {
         var _loc2_:Object = this._1847394598showCombine15;
         if(_loc2_ !== param1)
         {
            this._1847394598showCombine15 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine15",_loc2_,param1));
         }
      }
      
      public function set showCombine16(param1:Label) : void
      {
         var _loc2_:Object = this._1847394599showCombine16;
         if(_loc2_ !== param1)
         {
            this._1847394599showCombine16 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine16",_loc2_,param1));
         }
      }
      
      public function set gameQuality(param1:RadioButtonGroup) : void
      {
         var _loc2_:Object = this._517675181gameQuality;
         if(_loc2_ !== param1)
         {
            this._517675181gameQuality = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameQuality",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mc1() : MagicCrystalCanvas
      {
         return this._107867mc1;
      }
      
      [Bindable(event="propertyChange")]
      public function get mc2() : MagicCrystalCanvas
      {
         return this._107868mc2;
      }
      
      [Bindable(event="propertyChange")]
      public function get mc3() : MagicCrystalCanvas
      {
         return this._107869mc3;
      }
      
      [Bindable(event="propertyChange")]
      public function get mc4() : MagicCrystalCanvas
      {
         return this._107870mc4;
      }
      
      private function _MagicCrystalPanel_RadioButtonGroup1_i() : RadioButtonGroup
      {
         var _loc1_:RadioButtonGroup = new RadioButtonGroup();
         gameQuality = _loc1_;
         _loc1_.initialized(this,"gameQuality");
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameAddText() : Label
      {
         return this._975883165nameAddText;
      }
      
      private function clearPage() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= page_num)
         {
            this["mc" + _loc1_].visible = false;
            _loc1_++;
         }
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.MAGIC_CRYSTAL_PANEL[19].toString();
         _helpAlert = Alert.show(_loc1_,Language.MAGIC_CRYSTAL_PANEL[20].toString(),Alert.YES,null,null);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:MagicCrystalPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _MagicCrystalPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_MagicCrystalPanelWatcherSetupUtil");
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
      public function get pageSelector() : PageSelector
      {
         return this._607339634pageSelector;
      }
      
      private function _MagicCrystalPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_BasicTitleCanvas1.text = param1;
         },"_MagicCrystalPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000897"));
         },function(param1:Object):void
         {
            _MagicCrystalPanel_Image1.source = param1;
         },"_MagicCrystalPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_Label1.text = param1;
         },"_MagicCrystalPanel_Label1.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.magiccystallimit;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_Label2.text = param1;
         },"_MagicCrystalPanel_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.magiccystalpre;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_Label3.text = param1;
         },"_MagicCrystalPanel_Label3.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_Label4.text = param1;
         },"_MagicCrystalPanel_Label4.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_RadioButton1.label = param1;
         },"_MagicCrystalPanel_RadioButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[16];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_RadioButton2.label = param1;
         },"_MagicCrystalPanel_RadioButton2.label");
         result[7] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            nameAddText.filters = param1;
         },"nameAddText.filters");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nameAddText.text = param1;
         },"nameAddText.text");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[18];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_Label22.text = param1;
         },"_MagicCrystalPanel_Label22.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.magiccystalrec;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_Label23.text = param1;
         },"_MagicCrystalPanel_Label23.text");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.MAGIC_CRYSTAL_PANEL[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _MagicCrystalPanel_LinkButton1.label = param1;
         },"_MagicCrystalPanel_LinkButton1.label");
         result[12] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get gameQuality() : RadioButtonGroup
      {
         return this._517675181gameQuality;
      }
      
      public function set mc2(param1:MagicCrystalCanvas) : void
      {
         var _loc2_:Object = this._107868mc2;
         if(_loc2_ !== param1)
         {
            this._107868mc2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc2",_loc2_,param1));
         }
      }
      
      public function set mc3(param1:MagicCrystalCanvas) : void
      {
         var _loc2_:Object = this._107869mc3;
         if(_loc2_ !== param1)
         {
            this._107869mc3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc3",_loc2_,param1));
         }
      }
      
      public function set mc4(param1:MagicCrystalCanvas) : void
      {
         var _loc2_:Object = this._107870mc4;
         if(_loc2_ !== param1)
         {
            this._107870mc4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc4",_loc2_,param1));
         }
      }
      
      public function set mc1(param1:MagicCrystalCanvas) : void
      {
         var _loc2_:Object = this._107867mc1;
         if(_loc2_ !== param1)
         {
            this._107867mc1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mc1",_loc2_,param1));
         }
      }
      
      public function onInitMagicCrystalData(param1:Object) : void
      {
         if(initialized)
         {
            mcData = param1;
            if(firstLoad)
            {
               pageSelector.onPageChanged = onPageChanged;
               pageSelector.onPageCleared = clearPage;
               pageSelector.initPageSeletor(max_num,page_num);
               firstLoad = false;
            }
            pageSelector.refreshPage();
            onUpdatePro();
         }
      }
      
      private function onPageChanged(param1:int, param2:int) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 1;
         while(_loc4_ <= param2)
         {
            _loc3_ = _loc4_ + param1 - 1;
            mcData[_loc3_].index = _loc3_;
            this["mc" + _loc4_].data = mcData[_loc3_];
            this["mc" + _loc4_].visible = true;
            _loc4_++;
         }
      }
      
      override public function completeHandler(param1:FlexEvent) : void
      {
         param1.currentTarget.removeEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
         initView();
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initMagicCrystalData",null);
      }
      
      private function _MagicCrystalPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[0];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000897"));
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[13];
         _loc1_ = _core.player.magiccystallimit;
         _loc1_ = _core.player.magiccystalpre;
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[14];
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[15];
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[16];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[17];
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[18];
         _loc1_ = _core.player.magiccystalrec;
         _loc1_ = Language.MAGIC_CRYSTAL_PANEL[20];
      }
      
      public function set nameAddText(param1:Label) : void
      {
         var _loc2_:Object = this._975883165nameAddText;
         if(_loc2_ !== param1)
         {
            this._975883165nameAddText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameAddText",_loc2_,param1));
         }
      }
      
      public function set showCombine2(param1:Label) : void
      {
         var _loc2_:Object = this._1464427280showCombine2;
         if(_loc2_ !== param1)
         {
            this._1464427280showCombine2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine2",_loc2_,param1));
         }
      }
      
      public function set showCombine1(param1:Label) : void
      {
         var _loc2_:Object = this._1464427281showCombine1;
         if(_loc2_ !== param1)
         {
            this._1464427281showCombine1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine1",_loc2_,param1));
         }
      }
      
      public function set showCombine5(param1:Label) : void
      {
         var _loc2_:Object = this._1464427277showCombine5;
         if(_loc2_ !== param1)
         {
            this._1464427277showCombine5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine5",_loc2_,param1));
         }
      }
      
      public function set showCombine6(param1:Label) : void
      {
         var _loc2_:Object = this._1464427276showCombine6;
         if(_loc2_ !== param1)
         {
            this._1464427276showCombine6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine6",_loc2_,param1));
         }
      }
      
      public function set showCombine3(param1:Label) : void
      {
         var _loc2_:Object = this._1464427279showCombine3;
         if(_loc2_ !== param1)
         {
            this._1464427279showCombine3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine3",_loc2_,param1));
         }
      }
      
      public function set showCombine7(param1:Label) : void
      {
         var _loc2_:Object = this._1464427275showCombine7;
         if(_loc2_ !== param1)
         {
            this._1464427275showCombine7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine7",_loc2_,param1));
         }
      }
      
      public function set showCombine4(param1:Label) : void
      {
         var _loc2_:Object = this._1464427278showCombine4;
         if(_loc2_ !== param1)
         {
            this._1464427278showCombine4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine1() : Label
      {
         return this._1464427281showCombine1;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine6() : Label
      {
         return this._1464427276showCombine6;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine7() : Label
      {
         return this._1464427275showCombine7;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine2() : Label
      {
         return this._1464427280showCombine2;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine3() : Label
      {
         return this._1464427279showCombine3;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine4() : Label
      {
         return this._1464427278showCombine4;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine9() : Label
      {
         return this._1464427273showCombine9;
      }
   }
}

