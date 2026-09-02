package com.qeedoo.ui.view.compDragable
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.GuardSlot;
   import com.qeedoo.ui.view.comp.Slot;
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
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class PetGuardInSidePanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1464427280showCombine2:Label;
      
      private var _3437300pet3:GuardSlot;
      
      private var _3437302pet5:GuardSlot;
      
      public var _PetGuardInSidePanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _helpAlert:Alert;
      
      private var PET_GUARD_INDEX_SID:Object = {
         11:{
            1:{
               "val":0,
               "per":0.0016
            },
            2:{
               "val":0,
               "per":0.08
            },
            3:{
               "val":0,
               "per":0.4
            },
            4:{
               "val":0,
               "per":2
            },
            5:{
               "val":0,
               "per":10
            }
         },
         21:{
            1:{
               "val":0,
               "per":0.0016
            },
            2:{
               "val":0,
               "per":0.08
            },
            3:{
               "val":0,
               "per":0.4
            },
            4:{
               "val":0,
               "per":2
            },
            5:{
               "val":0,
               "per":10
            }
         },
         31:{
            1:{
               "val":0,
               "per":0.0016
            },
            2:{
               "val":0,
               "per":0.08
            },
            3:{
               "val":0,
               "per":0.4
            },
            4:{
               "val":0,
               "per":2
            },
            5:{
               "val":0,
               "per":10
            }
         },
         41:{
            1:{
               "val":0,
               "per":0.0016
            },
            2:{
               "val":0,
               "per":0.08
            },
            3:{
               "val":0,
               "per":0.4
            },
            4:{
               "val":0,
               "per":2
            },
            5:{
               "val":0,
               "per":10
            }
         }
      };
      
      private var _1091440169lvText:Label;
      
      private var _738692350propText2:Label;
      
      public var _PetGuardInSidePanel_LinkButton1:LinkButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var petGuardObj:* = {
         "lvData":{},
         "petData":{}
      };
      
      private var _865666787needText:Label;
      
      private var _3437298pet1:GuardSlot;
      
      private var _738692347propText5:Label;
      
      private var _738692351propText1:Label;
      
      private var _alert:Alert;
      
      private var _1464427278showCombine4:Label;
      
      private var _1840576088nameText:Label;
      
      private var _core:Core = Core.getInstance();
      
      private var _738692348propText4:Label;
      
      private var _505171265openBtn1:BasicGlowButton;
      
      private var _1464427281showCombine1:Label;
      
      private var _3437301pet4:GuardSlot;
      
      private var _1969543397titleWrapper:Canvas;
      
      private var _975883165nameAddText:Label;
      
      private var _738692349propText3:Label;
      
      mx_internal var _watchers:Array = [];
      
      private var _454209194mainBackImag:Image;
      
      private var _3521p1:GuardSlot;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var max_lev:* = 30;
      
      private var _index:int = 1;
      
      public var _PetGuardInSidePanel_Label4:Label;
      
      public var _PetGuardInSidePanel_Label5:Label;
      
      public var _PetGuardInSidePanel_Label6:Label;
      
      public var _PetGuardInSidePanel_Label7:Label;
      
      public var _PetGuardInSidePanel_Label2:Label;
      
      private var _3437299pet2:GuardSlot;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":530,
               "height":330,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_PetGuardInSidePanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.top = "38";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "width":510,
                        "height":270,
                        "x":9,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"mainBackImag",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "width":510,
                                 "height":270
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
                        "width":320,
                        "height":250,
                        "x":18,
                        "y":46,
                        "verticalScrollPolicy":"off",
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Label,
                           "id":"lvText",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":45,
                                 "y":111,
                                 "width":66
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetGuardInSidePanel_Label2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":12,
                                 "y":160,
                                 "width":99
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"needText",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "left";
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":116,
                                 "y":160,
                                 "width":80,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetGuardInSidePanel_Label4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":11,
                                 "y":183,
                                 "width":96
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetGuardInSidePanel_Label5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "left";
                              this.color = 65535;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":116,
                                 "y":183,
                                 "width":80
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_PetGuardInSidePanel_LinkButton1",
                           "events":{"click":"___PetGuardInSidePanel_LinkButton1_click"},
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
                                 "x":22,
                                 "y":205,
                                 "width":106
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GuardSlot,
                           "id":"pet1",
                           "events":{"click":"__pet1_click"},
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":175,
                                 "y":31,
                                 "acceptable":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GuardSlot,
                           "id":"pet2",
                           "events":{"click":"__pet2_click"},
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":175,
                                 "y":72,
                                 "acceptable":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GuardSlot,
                           "id":"pet3",
                           "events":{"click":"__pet3_click"},
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":175,
                                 "y":114,
                                 "acceptable":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GuardSlot,
                           "id":"pet4",
                           "events":{"click":"__pet4_click"},
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":175,
                                 "y":157,
                                 "acceptable":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":GuardSlot,
                           "id":"pet5",
                           "events":{"click":"__pet5_click"},
                           "stylesFactory":function():void
                           {
                              this.borderStyle = "none";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":175,
                                 "y":201,
                                 "acceptable":true
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetGuardInSidePanel_Label6",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "right";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":127,
                                 "y":10,
                                 "width":106
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"_PetGuardInSidePanel_Label7",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "right";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":185,
                                 "y":10,
                                 "width":106
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"propText1",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "left";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":215,
                                 "y":38,
                                 "width":108
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"propText2",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "left";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":215,
                                 "y":81,
                                 "width":108
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"propText3",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "left";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":215,
                                 "y":122,
                                 "width":108
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"propText4",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "left";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":215,
                                 "y":163,
                                 "width":108
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"propText5",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "left";
                              this.color = 16382208;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":215,
                                 "y":205,
                                 "width":108
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
                        "width":170,
                        "height":250,
                        "x":342,
                        "y":46,
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
                                 "width":150,
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
                                 "width":103,
                                 "x":34
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
                                 "x":10,
                                 "y":33,
                                 "width":150
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"showCombine1",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":43,
                                 "text":"Label",
                                 "width":150
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
                                 "x":10,
                                 "y":69,
                                 "text":"Label",
                                 "width":150
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
                                 "x":11,
                                 "y":91,
                                 "text":"Label",
                                 "width":149
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
                                 "x":11,
                                 "y":116,
                                 "text":"Label",
                                 "width":149
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"nameText",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 12;
                     this.textAlign = "left";
                     this.color = 16382208;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":22,
                        "y":53
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Image,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":65,
                        "height":65,
                        "x":63,
                        "y":89
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":GuardSlot,
                  "id":"p1",
                  "stylesFactory":function():void
                  {
                     this.borderStyle = "none";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":78,
                        "y":104,
                        "acceptable":false,
                        "sid":1
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"openBtn1",
                  "events":{"click":"__openBtn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":177,
                        "styleName":"BtnStdRed",
                        "x":71
                     };
                  }
               })]
            };
         }
      });
      
      private var _1464427279showCombine3:Label;
      
      public function PetGuardInSidePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 530;
         this.height = 330;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         PetGuardInSidePanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get propText5() : Label
      {
         return this._738692347propText5;
      }
      
      [Bindable(event="propertyChange")]
      public function get propText1() : Label
      {
         return this._738692351propText1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet2() : GuardSlot
      {
         return this._3437299pet2;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet4() : GuardSlot
      {
         return this._3437301pet4;
      }
      
      public function set propText4(param1:Label) : void
      {
         var _loc2_:Object = this._738692348propText4;
         if(_loc2_ !== param1)
         {
            this._738692348propText4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText4",_loc2_,param1));
         }
      }
      
      public function set propText1(param1:Label) : void
      {
         var _loc2_:Object = this._738692351propText1;
         if(_loc2_ !== param1)
         {
            this._738692351propText1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propText3() : Label
      {
         return this._738692349propText3;
      }
      
      public function onInitPetSolt() : void
      {
         var _loc3_:* = undefined;
         var _loc4_:Object = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         p1.clean();
         pet1.clean();
         pet2.clean();
         pet3.clean();
         pet4.clean();
         pet5.clean();
         var _loc1_:int = _index;
         if(Boolean(petGuardObj["petData"][_loc1_]) && petGuardObj["petData"][_loc1_] > 0)
         {
            for each(_loc3_ in _core.player.petList)
            {
               if(_loc3_)
               {
                  _loc4_ = _core.getTemplateData(GamePredef.TBL_CREATURE,_loc3_.tid,false);
                  if(!(!_loc4_ || Number(_loc4_.classIds) != 10 || Number(_loc4_.useLv) < 50))
                  {
                     if(_loc3_.id == petGuardObj["petData"][_loc1_])
                     {
                        this["p1"].type = GamePredef.TBL_PET;
                        this["p1"].slotData = _loc3_;
                        this["p1"].stackNum = 1;
                        this["p1"].giid = _loc3_.id;
                        break;
                     }
                  }
               }
            }
         }
         _loc1_ = _index * 10;
         var _loc2_:* = 1;
         while(_loc2_ <= 5)
         {
            this["propText" + _loc2_].visible = false;
            _loc5_ = _loc1_ + _loc2_;
            if(Boolean(petGuardObj["petData"][_loc5_]) && petGuardObj["petData"][_loc5_] > 0)
            {
               for each(_loc3_ in _core.player.petList)
               {
                  if(_loc3_)
                  {
                     _loc4_ = _core.getTemplateData(GamePredef.TBL_CREATURE,_loc3_.tid,false);
                     if(!(!_loc4_ || Number(_loc4_.classIds) != 10 || Number(_loc4_.useLv) < 50))
                     {
                        if(_loc3_.id == petGuardObj["petData"][_loc5_])
                        {
                           this["pet" + _loc2_].type = GamePredef.TBL_PET;
                           this["pet" + _loc2_].slotData = _loc3_;
                           this["pet" + _loc2_].stackNum = 1;
                           this["pet" + _loc2_].giid = _loc3_.id;
                           _loc6_ = _core.basic.colorByGrowRate(_loc3_.growRate);
                           this["propText" + _loc2_].setStyle("color",GamePredef.CODE_ITEM_COLOR[_loc6_]);
                           this["propText" + _loc2_].text = Language.PANEL_PETGUARDINSIDE[2] + " +" + PET_GUARD_INDEX_SID[_loc1_ + 1][_loc6_ + 1]["per"] + "%";
                           this["propText" + _loc2_].visible = true;
                           break;
                        }
                     }
                  }
               }
            }
            _loc2_++;
         }
      }
      
      public function set propText3(param1:Label) : void
      {
         var _loc2_:Object = this._738692349propText3;
         if(_loc2_ !== param1)
         {
            this._738692349propText3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText3",_loc2_,param1));
         }
      }
      
      public function set pet5(param1:GuardSlot) : void
      {
         var _loc2_:Object = this._3437302pet5;
         if(_loc2_ !== param1)
         {
            this._3437302pet5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet5",_loc2_,param1));
         }
      }
      
      private function _PetGuardInSidePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARDINSIDE[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetGuardInSidePanel_BasicTitleCanvas1.text = param1;
         },"_PetGuardInSidePanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(parseInt("4130220000811"));
         },function(param1:Object):void
         {
            mainBackImag.source = param1;
         },"mainBackImag.source");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lvText.text = param1;
         },"lvText.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARDINSIDE[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetGuardInSidePanel_Label2.text = param1;
         },"_PetGuardInSidePanel_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARDINSIDE[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetGuardInSidePanel_Label4.text = param1;
         },"_PetGuardInSidePanel_Label4.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = _core.player.petguardin;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetGuardInSidePanel_Label5.text = param1;
         },"_PetGuardInSidePanel_Label5.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARDINSIDE[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetGuardInSidePanel_LinkButton1.label = param1;
         },"_PetGuardInSidePanel_LinkButton1.label");
         result[6] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUARD;
         },function(param1:int):void
         {
            pet1.slotType = param1;
         },"pet1.slotType");
         result[7] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUARD;
         },function(param1:int):void
         {
            pet2.slotType = param1;
         },"pet2.slotType");
         result[8] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUARD;
         },function(param1:int):void
         {
            pet3.slotType = param1;
         },"pet3.slotType");
         result[9] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUARD;
         },function(param1:int):void
         {
            pet4.slotType = param1;
         },"pet4.slotType");
         result[10] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUARD;
         },function(param1:int):void
         {
            pet5.slotType = param1;
         },"pet5.slotType");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARDINSIDE[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetGuardInSidePanel_Label6.text = param1;
         },"_PetGuardInSidePanel_Label6.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARDINSIDE[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _PetGuardInSidePanel_Label7.text = param1;
         },"_PetGuardInSidePanel_Label7.text");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propText1.text = param1;
         },"propText1.text");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propText2.text = param1;
         },"propText2.text");
         result[15] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propText3.text = param1;
         },"propText3.text");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propText4.text = param1;
         },"propText4.text");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            propText5.text = param1;
         },"propText5.text");
         result[18] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_TITLE];
         },function(param1:Array):void
         {
            nameAddText.filters = param1;
         },"nameAddText.filters");
         result[19] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARD[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            nameText.text = param1;
         },"nameText.text");
         result[20] = binding;
         binding = new Binding(this,function():int
         {
            return Slot.SLOT_GUARD;
         },function(param1:int):void
         {
            p1.slotType = param1;
         },"p1.slotType");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.PANEL_PETGUARDINSIDE[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            openBtn1.label = param1;
         },"openBtn1.label");
         result[22] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get titleWrapper() : Canvas
      {
         return this._1969543397titleWrapper;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine4() : Label
      {
         return this._1464427278showCombine4;
      }
      
      public function set propText5(param1:Label) : void
      {
         var _loc2_:Object = this._738692347propText5;
         if(_loc2_ !== param1)
         {
            this._738692347propText5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText5",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get propText2() : Label
      {
         return this._738692350propText2;
      }
      
      [Bindable(event="propertyChange")]
      public function get showCombine1() : Label
      {
         return this._1464427281showCombine1;
      }
      
      public function upInGuardSid() : void
      {
         var gold:Number;
         var ct:int = 0;
         var temp:Object = null;
         var bagPanel:BagPanel = null;
         var goldLockFlag:Boolean = false;
         var gfunc:Function = null;
         var handler:Function = null;
         var str:String = null;
         var lev:int = int(petGuardObj["lvData"][_index]);
         if(lev >= 30)
         {
            return;
         }
         ct = 2;
         gold = 0;
         for each(temp in _core.data.gameDataIndex[GamePredef.TBL_PET_GUARD][_index])
         {
            if(Number(temp.lev) == lev)
            {
               if(temp.num > _core.player.petguardin)
               {
                  bagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
                  goldLockFlag = bagPanel.goldLockFlag;
                  if(goldLockFlag || !bagPanel)
                  {
                     gfunc = function(param1:String):void
                     {
                        _core.remote.call("unlockMoney",new Responder(doUnlockMoneyGold),MD5.hash(param1));
                     };
                     _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.ACTIVEPANEL_S[38],gfunc);
                     return;
                  }
                  ct = 1;
                  gold = Number(temp["gold"]);
               }
               if(ct == 1)
               {
                  handler = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("upGuardSid",null,_index,ct);
                     }
                  };
                  if(_alert)
                  {
                     PopUpManager.removePopUp(_alert);
                     _alert = null;
                  }
                  str = Language.PANEL_PETGUARDINSIDE[13].toString().replace("{num}",gold).replace("{name}",GamePredef.GUARD_NAME[_index]);
                  _alert = Alert.show(str,null,Alert.YES | Alert.NO,null,handler);
                  return;
               }
               _core.remote.call("upGuardSid",null,_index,ct);
            }
         }
      }
      
      public function __pet2_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(2);
      }
      
      public function setGoldLock(param1:Boolean) : void
      {
         var _loc2_:BagPanel = BagPanel(_core.view.getUI(ViewManager.PANEL_BAG));
         var _loc3_:Boolean = _loc2_.goldLockFlag;
         if(_loc3_ != param1 && Boolean(_loc2_))
         {
            _loc2_.goldLockFlag = param1;
         }
      }
      
      public function onGetPetGuardData(param1:Object) : void
      {
         if(!initialized)
         {
            return;
         }
         if(param1)
         {
            petGuardObj["lvData"] = param1["lvData"];
            petGuardObj["petData"] = param1["petData"];
            onInit();
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
      
      public function set propText2(param1:Label) : void
      {
         var _loc2_:Object = this._738692350propText2;
         if(_loc2_ !== param1)
         {
            this._738692350propText2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"propText2",_loc2_,param1));
         }
      }
      
      public function set mainBackImag(param1:Image) : void
      {
         var _loc2_:Object = this._454209194mainBackImag;
         if(_loc2_ !== param1)
         {
            this._454209194mainBackImag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainBackImag",_loc2_,param1));
         }
      }
      
      private function doUnlockMoneyGold(param1:Boolean) : void
      {
         if(param1)
         {
            setGoldLock(false);
         }
      }
      
      public function __pet3_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(3);
      }
      
      [Bindable(event="propertyChange")]
      public function get nameAddText() : Label
      {
         return this._975883165nameAddText;
      }
      
      [Bindable(event="propertyChange")]
      public function get nameText() : Label
      {
         return this._1840576088nameText;
      }
      
      [Bindable(event="propertyChange")]
      public function get propText4() : Label
      {
         return this._738692348propText4;
      }
      
      public function set openBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._505171265openBtn1;
         if(_loc2_ !== param1)
         {
            this._505171265openBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"openBtn1",_loc2_,param1));
         }
      }
      
      public function onInit() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         onInitPetSolt();
         lvText.text = "Lv" + petGuardObj["lvData"][_index];
         var _loc1_:int = int(petGuardObj["lvData"][_index]);
         needText.text = "0";
         for each(_loc3_ in _core.data.gameDataIndex[GamePredef.TBL_PET_GUARD][_index])
         {
            if(Number(_loc3_.lev) == _loc1_)
            {
               _loc2_ = _loc3_;
               needText.text = _loc3_["num"];
               break;
            }
         }
         openBtn1.enabled = true;
         if(needText.text == "0")
         {
            openBtn1.enabled = false;
         }
         nameText.text = GamePredef.GUARD_NAME[_index];
         nameAddText.text = GamePredef.GUARD_NAME[_index] + Language.PANEL_PETGUARDINSIDE[12];
         getProp(_loc2_);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:PetGuardInSidePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _PetGuardInSidePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_PetGuardInSidePanelWatcherSetupUtil");
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
      
      public function set p1(param1:GuardSlot) : void
      {
         var _loc2_:Object = this._3521p1;
         if(_loc2_ !== param1)
         {
            this._3521p1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"p1",_loc2_,param1));
         }
      }
      
      private function _PetGuardInSidePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.PANEL_PETGUARDINSIDE[1];
         _loc1_ = ResManager.getIconUrl(parseInt("4130220000811"));
         _loc1_ = Language.PANEL_PETGUARD[3];
         _loc1_ = Language.PANEL_PETGUARDINSIDE[4];
         _loc1_ = Language.PANEL_PETGUARDINSIDE[5];
         _loc1_ = _core.player.petguardin;
         _loc1_ = Language.PANEL_PETGUARDINSIDE[14];
         _loc1_ = Slot.SLOT_GUARD;
         _loc1_ = Slot.SLOT_GUARD;
         _loc1_ = Slot.SLOT_GUARD;
         _loc1_ = Slot.SLOT_GUARD;
         _loc1_ = Slot.SLOT_GUARD;
         _loc1_ = Language.PANEL_PETGUARDINSIDE[6];
         _loc1_ = Language.PANEL_PETGUARDINSIDE[7];
         _loc1_ = Language.PANEL_PETGUARD[3];
         _loc1_ = Language.PANEL_PETGUARD[3];
         _loc1_ = Language.PANEL_PETGUARD[3];
         _loc1_ = Language.PANEL_PETGUARD[3];
         _loc1_ = Language.PANEL_PETGUARD[3];
         _loc1_ = [GamePredef.FILTER_TITLE];
         _loc1_ = Language.PANEL_PETGUARD[3];
         _loc1_ = Slot.SLOT_GUARD;
         _loc1_ = Language.PANEL_PETGUARDINSIDE[3];
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.PANEL_PETGUARDINSIDE[22].toString();
         _helpAlert = Alert.show(_loc1_,Language.PANEL_PETGUARDINSIDE[14].toString(),Alert.YES,null,null);
      }
      
      public function __pet4_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(4);
      }
      
      [Bindable(event="propertyChange")]
      public function get mainBackImag() : Image
      {
         return this._454209194mainBackImag;
      }
      
      public function set lvText(param1:Label) : void
      {
         var _loc2_:Object = this._1091440169lvText;
         if(_loc2_ !== param1)
         {
            this._1091440169lvText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lvText",_loc2_,param1));
         }
      }
      
      public function set nameText(param1:Label) : void
      {
         var _loc2_:Object = this._1840576088nameText;
         if(_loc2_ !== param1)
         {
            this._1840576088nameText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameText",_loc2_,param1));
         }
      }
      
      public function resetPetBagSlot(param1:int) : *
      {
         param1 = _index * 10 + param1;
         if(Boolean(petGuardObj["petData"][param1]) && Number(petGuardObj["petData"][param1]) > 0)
         {
            _core.remote.call("putDownPet",null,param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get openBtn1() : BasicGlowButton
      {
         return this._505171265openBtn1;
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
      
      public function openGuardInSidePanel(param1:int) : void
      {
         _index = param1;
         initView();
         visible = true;
      }
      
      [Bindable(event="propertyChange")]
      public function get p1() : GuardSlot
      {
         return this._3521p1;
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         var _loc1_:* = 1;
         while(_loc1_ <= 5)
         {
            this["pet" + _loc1_].sid = _index * 10 + _loc1_;
            _loc1_++;
         }
         _core.remote.call("getPetGuardData",null);
      }
      
      [Bindable(event="propertyChange")]
      public function get lvText() : Label
      {
         return this._1091440169lvText;
      }
      
      private function getProp(param1:Object) : void
      {
         var _loc4_:* = undefined;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(!param1)
         {
            return;
         }
         var _loc2_:Number = _index * 10;
         var _loc3_:Number = 0;
         _loc4_ = 1;
         while(_loc4_ <= 5)
         {
            _loc5_ = _loc2_ + _loc4_;
            if(Boolean(petGuardObj["petData"][_loc5_]) && petGuardObj["petData"][_loc5_] > 0)
            {
               _loc6_ = getPetColor(petGuardObj["petData"][_loc5_]);
               if(_loc6_ != -1)
               {
                  _loc3_ = Number(_loc3_) + Number(PET_GUARD_INDEX_SID[_loc2_ + 1][_loc6_ + 1]["per"]);
               }
            }
            _loc4_++;
         }
         _loc4_ = 1;
         while(_loc4_ <= 4)
         {
            _loc7_ = Number(param1["propVal" + _loc4_]);
            _loc7_ = _loc7_ / 10000 * (1 + _loc3_ / 100);
            this["showCombine" + _loc4_].text = Language.TIP_MONSTER_H[param1["prop" + _loc4_]] + _loc7_.toFixed(4);
            if(param1["prop" + _loc4_] == 59 || param1["prop" + _loc4_] == 60 || param1["prop" + _loc4_] == 62 || param1["prop" + _loc4_] == 63)
            {
               this["showCombine" + _loc4_].text = Language.TIP_MONSTER_H[param1["prop" + _loc4_]] + Number(_loc7_ * 100).toFixed(4) + "%";
            }
            _loc4_++;
         }
      }
      
      public function __pet1_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(1);
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
      
      public function set showCombine3(param1:Label) : void
      {
         var _loc2_:Object = this._1464427279showCombine3;
         if(_loc2_ !== param1)
         {
            this._1464427279showCombine3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCombine3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get needText() : Label
      {
         return this._865666787needText;
      }
      
      public function set pet1(param1:GuardSlot) : void
      {
         var _loc2_:Object = this._3437298pet1;
         if(_loc2_ !== param1)
         {
            this._3437298pet1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet1",_loc2_,param1));
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
      
      public function __pet5_click(param1:MouseEvent) : void
      {
         resetPetBagSlot(5);
      }
      
      public function set pet4(param1:GuardSlot) : void
      {
         var _loc2_:Object = this._3437301pet4;
         if(_loc2_ !== param1)
         {
            this._3437301pet4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet4",_loc2_,param1));
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
      
      public function __openBtn1_click(param1:MouseEvent) : void
      {
         upInGuardSid();
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
      
      public function ___PetGuardInSidePanel_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      [Bindable(event="propertyChange")]
      public function get pet3() : GuardSlot
      {
         return this._3437300pet3;
      }
      
      public function set pet2(param1:GuardSlot) : void
      {
         var _loc2_:Object = this._3437299pet2;
         if(_loc2_ !== param1)
         {
            this._3437299pet2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet2",_loc2_,param1));
         }
      }
      
      public function set pet3(param1:GuardSlot) : void
      {
         var _loc2_:Object = this._3437300pet3;
         if(_loc2_ !== param1)
         {
            this._3437300pet3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pet3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pet1() : GuardSlot
      {
         return this._3437298pet1;
      }
      
      private function getPetColor(param1:Number) : int
      {
         var _loc2_:* = undefined;
         var _loc3_:Object = null;
         var _loc4_:int = 0;
         for each(_loc2_ in _core.player.petList)
         {
            if(_loc2_)
            {
               _loc3_ = _core.getTemplateData(GamePredef.TBL_CREATURE,_loc2_.tid,false);
               if(!(!_loc3_ || Number(_loc3_.classIds) != 10 || Number(_loc3_.useLv) < 50))
               {
                  if(_loc2_.id == param1)
                  {
                     return _core.basic.colorByGrowRate(_loc2_.growRate);
                  }
               }
            }
         }
         return -1;
      }
      
      [Bindable(event="propertyChange")]
      public function get pet5() : GuardSlot
      {
         return this._3437302pet5;
      }
      
      public function set needText(param1:Label) : void
      {
         var _loc2_:Object = this._865666787needText;
         if(_loc2_ !== param1)
         {
            this._865666787needText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"needText",_loc2_,param1));
         }
      }
   }
}

