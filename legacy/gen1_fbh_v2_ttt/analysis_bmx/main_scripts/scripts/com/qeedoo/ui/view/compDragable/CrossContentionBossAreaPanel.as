package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.IntroText;
   import com.qeedoo.ui.view.comp.RoundedLabel;
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
   import mx.controls.Image;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionBossAreaPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3118c1:Canvas;
      
      private var _1665385320areaname:RoundedLabel;
      
      private var _85076701areapoint:RoundedLabel;
      
      private var _helpAlert:Alert;
      
      public var mapData:Object = new Object();
      
      private var _2126212486bossIcon:Image;
      
      private var _3305i2:Image;
      
      public var _CrossContentionBossAreaPanel_RoundedLabel13:RoundedLabel;
      
      public var _CrossContentionBossAreaPanel_RoundedLabel14:RoundedLabel;
      
      private var _3121c4:Canvas;
      
      private var _2132384574btnPointsAward:BasicGlowButton;
      
      private var _352346643lorder5:RoundedLabel;
      
      private var _746491451areaLag:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1617706140areaoccupy:RoundedLabel;
      
      private var _352346642lorder4:RoundedLabel;
      
      private var _3304i1:Image;
      
      private var _3120c3:Canvas;
      
      private var _3308i5:Image;
      
      private var _352346639lorder1:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      public var _CrossContentionBossAreaPanel_LinkButton1:LinkButton;
      
      private var _352346641lorder3:RoundedLabel;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _697267248lorderLag:RoundedLabel;
      
      public var _CrossContentionBossAreaPanel_IntroText1:IntroText;
      
      public var bIndex:int = 0;
      
      private var _352346640lorder2:RoundedLabel;
      
      public var _CrossContentionBossAreaPanel_RoundedLabel1:RoundedLabel;
      
      public var _CrossContentionBossAreaPanel_RoundedLabel3:RoundedLabel;
      
      private var bossIcons:Array = [0,[0,3060100200050,3060100200066,3060100200001,3060100200018],[0,3060100001065],[0,3060100200054,3060100001092,3060100200007,3060100000036],[0,3060100200019,3060090000075,3060100200067,3060100001161],[0,3060100200051,3060100001160,3060100001095,3060100000038]];
      
      private var _3307i4:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _3119c2:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      private var _3122c5:Canvas;
      
      private var _3306i3:Image;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":475,
               "height":405,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "stylesFactory":function():void
                  {
                     this.left = "7";
                     this.right = "7";
                     this.top = "40";
                     this.bottom = "25";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "12";
                              this.top = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "height":120,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":-20,
                                          "y":-20,
                                          "height":120,
                                          "width":120,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"bossIcon",
                                             "stylesFactory":function():void
                                             {
                                                this.horizontalCenter = "0";
                                                this.verticalCenter = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "scaleX":0.6,
                                                   "scaleY":0.6
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
                                          "x":75,
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_CrossContentionBossAreaPanel_RoundedLabel1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":0,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areaname",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":0,
                                                   "width":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_CrossContentionBossAreaPanel_RoundedLabel3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":25,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areaoccupy",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":175,
                                                   "y":25,
                                                   "width":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areaLag",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":50,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areapoint",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":175,
                                                   "y":50,
                                                   "width":100
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lorderLag",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 12;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":228,
                                                   "y":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lorder1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"",
                                                   "x":185,
                                                   "y":20,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lorder2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"",
                                                   "x":185,
                                                   "y":40,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lorder3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"",
                                                   "x":185,
                                                   "y":60,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lorder4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"",
                                                   "x":185,
                                                   "y":80,
                                                   "width":70
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"lorder5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"",
                                                   "x":185,
                                                   "y":100,
                                                   "width":70
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "12";
                              this.top = "130";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":370,
                                 "height":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionBossAreaPanel_RoundedLabel13",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 16;
                                       this.color = 16776960;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":0,
                                          "width":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "85";
                                       this.top = "30";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"c1",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "0";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":50,
                                                   "height":50,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"i1",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.verticalCenter = "0";
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"c2",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "55";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":50,
                                                   "height":50,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"i2",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.verticalCenter = "0";
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"c3",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "110";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":50,
                                                   "height":50,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"i3",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.verticalCenter = "0";
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"c4",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "165";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":50,
                                                   "height":50,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"i4",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.verticalCenter = "0";
                                                      }
                                                   })]
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"c5",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "220";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":50,
                                                   "height":50,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"i5",
                                                      "stylesFactory":function():void
                                                      {
                                                         this.horizontalCenter = "0";
                                                         this.verticalCenter = "0";
                                                      }
                                                   })]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"_CrossContentionBossAreaPanel_RoundedLabel14",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 16;
                              this.color = 16777215;
                              this.fontWeight = "bold";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":12,
                                 "y":204
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":IntroText,
                           "id":"_CrossContentionBossAreaPanel_IntroText1",
                           "stylesFactory":function():void
                           {
                              this.fontStyle = "normal";
                              this.fontWeight = "bold";
                              this.textAlign = "left";
                              this.fontSize = 12;
                              this.borderThickness = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":40,
                                 "y":225,
                                 "width":410,
                                 "height":100
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"btnPointsAward",
                  "events":{"click":"__btnPointsAward_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "3";
                     this.left = "207";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"styleName":"BtnStdRed"};
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_CrossContentionBossAreaPanel_LinkButton1",
                  "events":{"click":"___CrossContentionBossAreaPanel_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "3";
                     this.color = 16770560;
                     this.textDecoration = "underline";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "width":78
                     };
                  }
               })]
            };
         }
      });
      
      public function CrossContentionBossAreaPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 475;
         this.height = 405;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionBossAreaPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionBossAreaPanel._watcherSetupUtil = param1;
      }
      
      public function showPanel(param1:int, param2:Object, param3:Number) : void
      {
         var _loc9_:String = null;
         var _loc10_:int = 0;
         var _loc11_:Object = null;
         bIndex = param1;
         mapData = param2;
         visible = true;
         var _loc4_:Object = GamePredef.CROSS_CONTENTION_BOSS_DATA[CrossContentionSinglePanel.MAP_ID].data[param1];
         var _loc5_:Object = GameData.d[GamePredef.TBL_NPC][_loc4_.nid];
         if(!_loc5_)
         {
            return;
         }
         this["areaname"].htmlText = "<font color=\'" + GamePredef.AREAR_COLOR[3] + "\'>" + _loc5_.name + "</font>";
         var _loc6_:Object = CrossContentionSinglePanel.bossData;
         if((Boolean(_loc6_)) && Boolean(_loc6_.data) && Boolean(_loc6_.data[param1]) && _loc6_.data[param1].state == 2)
         {
            this["areaoccupy"].htmlText = "<font color=\'#00FFFF\'>" + Language.CROSS_CONTENTION_PANEL_U[21] + "</font>";
            _loc9_ = CrossContentionTotalPanel.getServerName(Number(_loc6_.data[param1].osid));
            areapoint.htmlText = "<font color=\'#FF0000\'>" + Language.CROSS_CONTENTION_PANEL_U[18].toString().replace("{osid}",_loc9_) + "</font>";
            areaLag.visible = true;
            areapoint.visible = true;
            btnPointsAward.enabled = true;
         }
         else
         {
            this["areaoccupy"].htmlText = "<font color=\'#00FF00\'>" + Language.CROSS_CONTENTION_PANEL_U[22] + "</font>";
            areaLag.visible = false;
            areapoint.visible = false;
            if(Boolean(mapData) && Boolean(mapData.osid) && mapData.osid == CrossContentionTotalPanel._ORIGINAL_SERVER_ID)
            {
               btnPointsAward.enabled = true;
            }
         }
         lorderLag.visible = false;
         var _loc7_:int = 1;
         while(_loc7_ < 6)
         {
            this["lorder" + _loc7_].htmlText = "";
            _loc7_++;
         }
         if(Boolean(_loc6_ && _loc6_.data && _loc6_.data[param1]) && Boolean(_loc6_.data[param1].state == 2) && Boolean(_loc6_.data[param1].members))
         {
            _loc10_ = 1;
            _loc11_ = _loc6_.data[param1].members.head;
            while(_loc11_ != null && Boolean(_loc11_.obj))
            {
               this["lorder" + _loc10_].htmlText = "<font color=\'#00FFFF\'>" + _loc11_.cname + "</font>";
               _loc10_++;
               lorderLag.visible = true;
               _loc11_ = _loc11_.next;
            }
         }
         var _loc8_:int = int(GamePredef.CROSS_CONTENTION_MAP_REC_INIT[CrossContentionSinglePanel.MAP_ID]);
         bossIcon.source = ResManager.getIconUrl(param3);
         _loc7_ = 1;
         while(_loc7_ <= 5)
         {
            if(Boolean(bossIcons) && Boolean(bossIcons[_loc8_][_loc7_]) && Boolean(bossIcons[_loc8_][_loc7_]))
            {
               this["c" + _loc7_].visible = true;
               this["i" + _loc7_].source = ResManager.getIconUrl(bossIcons[_loc8_][_loc7_]);
            }
            else
            {
               this["c" + _loc7_].visible = false;
               this["i" + _loc7_].source = null;
            }
            _loc7_++;
         }
      }
      
      public function set bossIcon(param1:Image) : void
      {
         var _loc2_:Object = this._2126212486bossIcon;
         if(_loc2_ !== param1)
         {
            this._2126212486bossIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossIcon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder1() : RoundedLabel
      {
         return this._352346639lorder1;
      }
      
      private function init() : void
      {
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder3() : RoundedLabel
      {
         return this._352346641lorder3;
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder5() : RoundedLabel
      {
         return this._352346643lorder5;
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder2() : RoundedLabel
      {
         return this._352346640lorder2;
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder4() : RoundedLabel
      {
         return this._352346642lorder4;
      }
      
      public function set lorder3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._352346641lorder3;
         if(_loc2_ !== param1)
         {
            this._352346641lorder3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lorder3",_loc2_,param1));
         }
      }
      
      public function set lorder1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._352346639lorder1;
         if(_loc2_ !== param1)
         {
            this._352346639lorder1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lorder1",_loc2_,param1));
         }
      }
      
      public function ___CrossContentionBossAreaPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      [Bindable(event="propertyChange")]
      public function get areapoint() : RoundedLabel
      {
         return this._85076701areapoint;
      }
      
      public function set lorder4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._352346642lorder4;
         if(_loc2_ !== param1)
         {
            this._352346642lorder4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lorder4",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get c4() : Canvas
      {
         return this._3121c4;
      }
      
      [Bindable(event="propertyChange")]
      public function get c5() : Canvas
      {
         return this._3122c5;
      }
      
      [Bindable(event="propertyChange")]
      public function get c1() : Canvas
      {
         return this._3118c1;
      }
      
      public function __btnPointsAward_click(param1:MouseEvent) : void
      {
         attack();
      }
      
      public function set areaname(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1665385320areaname;
         if(_loc2_ !== param1)
         {
            this._1665385320areaname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaname",_loc2_,param1));
         }
      }
      
      private function _CrossContentionBossAreaPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[119];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[113];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[32];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[114];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[34];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[115];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[22];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[41];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[42];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[43];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[116];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[45];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[46];
      }
      
      public function set areapoint(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._85076701areapoint;
         if(_loc2_ !== param1)
         {
            this._85076701areapoint = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areapoint",_loc2_,param1));
         }
      }
      
      private function attack() : void
      {
         var _loc1_:* = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_FIGHT);
         if(_loc1_)
         {
            _loc1_.areaId = bIndex;
            _loc1_.isBoss = true;
            _loc1_.mapId = CrossContentionSinglePanel.MAP_ID;
            _loc1_.showPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPointsAward() : BasicGlowButton
      {
         return this._2132384574btnPointsAward;
      }
      
      public function set areaoccupy(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1617706140areaoccupy;
         if(_loc2_ !== param1)
         {
            this._1617706140areaoccupy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaoccupy",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get c3() : Canvas
      {
         return this._3120c3;
      }
      
      public function set lorder5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._352346643lorder5;
         if(_loc2_ !== param1)
         {
            this._352346643lorder5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lorder5",_loc2_,param1));
         }
      }
      
      public function set lorder2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._352346640lorder2;
         if(_loc2_ !== param1)
         {
            this._352346640lorder2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lorder2",_loc2_,param1));
         }
      }
      
      public function set c3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3120c3;
         if(_loc2_ !== param1)
         {
            this._3120c3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c3",_loc2_,param1));
         }
      }
      
      public function set c1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3118c1;
         if(_loc2_ !== param1)
         {
            this._3118c1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c1",_loc2_,param1));
         }
      }
      
      public function set c5(param1:Canvas) : void
      {
         var _loc2_:Object = this._3122c5;
         if(_loc2_ !== param1)
         {
            this._3122c5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c5",_loc2_,param1));
         }
      }
      
      public function set c2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3119c2;
         if(_loc2_ !== param1)
         {
            this._3119c2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get c2() : Canvas
      {
         return this._3119c2;
      }
      
      public function set panelTitle(param1:BasicTitleCanvas) : void
      {
         var _loc2_:Object = this._1287834292panelTitle;
         if(_loc2_ !== param1)
         {
            this._1287834292panelTitle = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"panelTitle",_loc2_,param1));
         }
      }
      
      public function set c4(param1:Canvas) : void
      {
         var _loc2_:Object = this._3121c4;
         if(_loc2_ !== param1)
         {
            this._3121c4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c4",_loc2_,param1));
         }
      }
      
      public function set btnPointsAward(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2132384574btnPointsAward;
         if(_loc2_ !== param1)
         {
            this._2132384574btnPointsAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPointsAward",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bossIcon() : Image
      {
         return this._2126212486bossIcon;
      }
      
      private function _CrossContentionBossAreaPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[119];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[113];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionBossAreaPanel_RoundedLabel1.htmlText = param1;
         },"_CrossContentionBossAreaPanel_RoundedLabel1.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areaname.htmlText = param1;
         },"areaname.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[114];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionBossAreaPanel_RoundedLabel3.htmlText = param1;
         },"_CrossContentionBossAreaPanel_RoundedLabel3.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areaoccupy.htmlText = param1;
         },"areaoccupy.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[115];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areaLag.htmlText = param1;
         },"areaLag.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[22];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areapoint.htmlText = param1;
         },"areapoint.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lorderLag.htmlText = param1;
         },"lorderLag.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionBossAreaPanel_RoundedLabel13.htmlText = param1;
         },"_CrossContentionBossAreaPanel_RoundedLabel13.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionBossAreaPanel_RoundedLabel14.htmlText = param1;
         },"_CrossContentionBossAreaPanel_RoundedLabel14.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[116];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionBossAreaPanel_IntroText1.text = param1;
         },"_CrossContentionBossAreaPanel_IntroText1.text");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPointsAward.label = param1;
         },"btnPointsAward.label");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionBossAreaPanel_LinkButton1.label = param1;
         },"_CrossContentionBossAreaPanel_LinkButton1.label");
         result[12] = binding;
         return result;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionBossAreaPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionBossAreaPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionBossAreaPanelWatcherSetupUtil");
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
      
      public function set areaLag(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._746491451areaLag;
         if(_loc2_ !== param1)
         {
            this._746491451areaLag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaLag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get areaoccupy() : RoundedLabel
      {
         return this._1617706140areaoccupy;
      }
      
      public function set lorderLag(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._697267248lorderLag;
         if(_loc2_ !== param1)
         {
            this._697267248lorderLag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lorderLag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get areaname() : RoundedLabel
      {
         return this._1665385320areaname;
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      public function ___CrossContentionBossAreaPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CROSS_CONTENTION_PANEL_U[29].toString();
         _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[28].toString(),Alert.YES,null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get areaLag() : RoundedLabel
      {
         return this._746491451areaLag;
      }
      
      public function set i1(param1:Image) : void
      {
         var _loc2_:Object = this._3304i1;
         if(_loc2_ !== param1)
         {
            this._3304i1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i1",_loc2_,param1));
         }
      }
      
      public function set i2(param1:Image) : void
      {
         var _loc2_:Object = this._3305i2;
         if(_loc2_ !== param1)
         {
            this._3305i2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lorderLag() : RoundedLabel
      {
         return this._697267248lorderLag;
      }
      
      public function set i5(param1:Image) : void
      {
         var _loc2_:Object = this._3308i5;
         if(_loc2_ !== param1)
         {
            this._3308i5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i5",_loc2_,param1));
         }
      }
      
      public function set i3(param1:Image) : void
      {
         var _loc2_:Object = this._3306i3;
         if(_loc2_ !== param1)
         {
            this._3306i3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i1() : Image
      {
         return this._3304i1;
      }
      
      [Bindable(event="propertyChange")]
      public function get i2() : Image
      {
         return this._3305i2;
      }
      
      [Bindable(event="propertyChange")]
      public function get i3() : Image
      {
         return this._3306i3;
      }
      
      [Bindable(event="propertyChange")]
      public function get i4() : Image
      {
         return this._3307i4;
      }
      
      [Bindable(event="propertyChange")]
      public function get i5() : Image
      {
         return this._3308i5;
      }
      
      public function set i4(param1:Image) : void
      {
         var _loc2_:Object = this._3307i4;
         if(_loc2_ !== param1)
         {
            this._3307i4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i4",_loc2_,param1));
         }
      }
   }
}

