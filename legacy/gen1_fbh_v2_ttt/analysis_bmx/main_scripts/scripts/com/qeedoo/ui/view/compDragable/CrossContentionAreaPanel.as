package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
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
   import mx.events.CloseEvent;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionAreaPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _3118c1:Canvas;
      
      private var pvpIcons:Array = [3050080000004,3050070000003,3050070000005,3050080000006,3050080000002,3050070000001];
      
      private var creatureIcons:Array = [{},{
         0:[3060100200065],
         1:[3060100001122,3060100001057],
         2:[3060100001122,3060100001057],
         3:[3060100001122,3060100001057],
         4:[3060100001122,3060100001057],
         5:[3060100001122,3060100001057]
      },{
         0:[3060100001065],
         1:[3060100001096,3060100001057],
         2:[3060100001096,3060100001057],
         3:[3060100001096,3060100001057],
         4:[3060100001096,3060100001057],
         5:[3060100001096,3060100001057]
      },{
         0:[3060100200054],
         1:[3060100001121,3060100000039,3060100001057],
         2:[3060100001121,3060100000039,3060100001057],
         3:[3060100001121,3060100000039,3060100001057],
         4:[3060100001121,3060100000039,3060100001057],
         5:[3060100001121,3060100000039,3060100001057]
      },{
         0:[3060100200019],
         1:[3060100200053,3060100200056,3060100001057],
         2:[3060100200053,3060100200056,3060100001057],
         3:[3060100200053,3060100200056,3060100001057],
         4:[3060100200053,3060100200056,3060100001057],
         5:[3060100200053,3060100200056,3060100001057]
      },{
         0:[3060100200051],
         1:[3060100001159,3060100200055,3060100001104,3060100001057],
         2:[3060100001159,3060100200055,3060100001104,3060100001057],
         3:[3060100001159,3060100200055,3060100001104,3060100001057],
         4:[3060100001159,3060100200055,3060100001104,3060100001057],
         5:[3060100001159,3060100200055,3060100001104,3060100001057]
      }];
      
      private var _1665385320areaname:RoundedLabel;
      
      private var _85076701areapoint:RoundedLabel;
      
      private var _helpAlert:Alert;
      
      public var mapData:Object = new Object();
      
      private var _3305i2:Image;
      
      private var _89056489arealevel:RoundedLabel;
      
      private var _3121c4:Canvas;
      
      private var _3309i6:Image;
      
      private var _352346643lorder5:RoundedLabel;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1617706140areaoccupy:RoundedLabel;
      
      private var _1666485594areaIcon:Image;
      
      private var _3304i1:Image;
      
      private var _3120c3:Canvas;
      
      private var _3308i5:Image;
      
      private var _352346639lorder1:RoundedLabel;
      
      private var _352346642lorder4:RoundedLabel;
      
      private var _core:Core = Core.getInstance();
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      public var areaId:int = 0;
      
      private var _352346641lorder3:RoundedLabel;
      
      public var _CrossContentionAreaPanel_IntroText1:IntroText;
      
      mx_internal var _watchers:Array = [];
      
      private var _697267248lorderLag:RoundedLabel;
      
      public var mapId:int = 0;
      
      private var _352346640lorder2:RoundedLabel;
      
      public var _CrossContentionAreaPanel_RoundedLabel15:RoundedLabel;
      
      public var _CrossContentionAreaPanel_RoundedLabel16:RoundedLabel;
      
      private var _3307i4:Image;
      
      private var _3123c6:Canvas;
      
      private var _1446942000giveUpBtn:BasicGlowButton;
      
      public var isBoss:Boolean = false;
      
      private var _478932236attackBtn:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      public var _CrossContentionAreaPanel_RoundedLabel1:RoundedLabel;
      
      public var _CrossContentionAreaPanel_RoundedLabel3:RoundedLabel;
      
      public var _CrossContentionAreaPanel_RoundedLabel7:RoundedLabel;
      
      private var _3119c2:Canvas;
      
      public var _CrossContentionAreaPanel_RoundedLabel5:RoundedLabel;
      
      public var _CrossContentionAreaPanel_LinkButton1:LinkButton;
      
      private var _3122c5:Canvas;
      
      mx_internal var _bindings:Array = [];
      
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
                                 "height":115,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.top = "12";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":78,
                                          "width":78,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"areaIcon",
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
                                             "id":"_CrossContentionAreaPanel_RoundedLabel1",
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
                                                   "y":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areaname",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":0
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_CrossContentionAreaPanel_RoundedLabel3",
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
                                                   "y":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areaoccupy",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":75,
                                                   "y":25
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_CrossContentionAreaPanel_RoundedLabel5",
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
                                                   "y":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areapoint",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":175,
                                                   "y":50
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"_CrossContentionAreaPanel_RoundedLabel7",
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
                                                   "y":75
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"arealevel",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":175,
                                                   "y":75
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
                                                   "y":-10
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
                                                   "width":176
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
                                                   "width":176
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
                                                   "width":176
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
                                                   "width":176
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
                                                   "width":176
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
                                 "width":430,
                                 "height":100,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionAreaPanel_RoundedLabel15",
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
                                          "y":0
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
                                          }),new UIComponentDescriptor({
                                             "type":Canvas,
                                             "id":"c6",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "275";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":50,
                                                   "height":50,
                                                   "styleName":"CanvasBorder",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"i6",
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
                           "id":"_CrossContentionAreaPanel_RoundedLabel16",
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
                           "id":"_CrossContentionAreaPanel_IntroText1",
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
                  "id":"attackBtn",
                  "events":{"click":"__attackBtn_click"},
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
                  "type":BasicGlowButton,
                  "id":"giveUpBtn",
                  "events":{"click":"__giveUpBtn_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "3";
                     this.left = "207";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "width":60,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_CrossContentionAreaPanel_LinkButton1",
                  "events":{"click":"___CrossContentionAreaPanel_LinkButton1_click"},
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
      
      private var _3306i3:Image;
      
      public function CrossContentionAreaPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 475;
         this.height = 405;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionAreaPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionAreaPanel._watcherSetupUtil = param1;
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
      
      [Bindable(event="propertyChange")]
      public function get i6() : Image
      {
         return this._3309i6;
      }
      
      public function showPanel(param1:Object, param2:Number) : void
      {
         var _loc12_:String = null;
         var _loc13_:int = 0;
         var _loc14_:Object = null;
         this.visible = true;
         attackBtn.visible = true;
         giveUpBtn.visible = false;
         mapData = param1;
         var _loc3_:int = int(GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[mapId]][areaId].p);
         this["areaname"].htmlText = "<font color=\'" + GamePredef.AREAR_COLOR[_loc3_] + "\'>" + Language.CROSS_CONTENTION_PANEL_U[32].toString().replace("{id}",areaId).replace("{color}",Language.QUESTCANVAS_PCOLOR[(_loc3_ - 1) % 5]) + "</font>";
         if(Boolean(mapData) && Boolean(mapData.mData) && Boolean(mapData.mData[areaId]) && Boolean(mapData.mData[areaId].osid))
         {
            _loc12_ = CrossContentionTotalPanel.getServerName(Number(mapData.mData[areaId].osid));
            this["areaoccupy"].htmlText = "<font color=\'#00FFFF\'>" + Language.CROSS_CONTENTION_PANEL_U[18].toString().replace("{osid}",_loc12_) + "</font>";
         }
         else
         {
            this["areaoccupy"].htmlText = "<font color=\'#00FF00\'>" + Language.CROSS_CONTENTION_PANEL_U[34] + "</font>";
         }
         this["areapoint"].htmlText = "<font color=\'#FFFF00\'><b>" + Language.CROSS_CONTENTION_PANEL_U[37].toString().replace("{point}",GamePredef.CROSS_CONTENTION_P_DATA[_loc3_].score) + "</b></font>";
         var _loc4_:int = int(GamePredef.CROSS_CONTENTION_P_DATA[_loc3_].lvl);
         var _loc5_:int = int(GamePredef.CROSS_CONTENTION_P_DATA[_loc3_].lvl2);
         if(CrossContentionTotalPanel.LEVLE_TYPE == 1)
         {
            this["arealevel"].htmlText = "<font color=\'#FFFF00\'><b>" + Language.CROSS_CONTENTION_PANEL_U[122].toString().replace("{level}",_loc4_).replace("{level2}",_loc5_) + "</font>";
         }
         else if(CrossContentionTotalPanel.LEVLE_TYPE == 2)
         {
            this["arealevel"].htmlText = "<font color=\'#FFFF00\'><b>" + Language.CROSS_CONTENTION_PANEL_U[39].toString().replace("{level}",_loc4_) + "</font>";
         }
         else if(CrossContentionTotalPanel.LEVLE_TYPE == 3)
         {
            this["arealevel"].htmlText = "<font color=\'#FFFF00\'><b>" + Language.CROSS_CONTENTION_PANEL_U[121].toString().replace("{level}",_loc5_) + "</font>";
         }
         else if(CrossContentionTotalPanel.LEVLE_TYPE == 4)
         {
            this["arealevel"].htmlText = "<font color=\'#FFFF00\'><b>" + Language.CROSS_CONTENTION_PANEL_U[120] + "</font>";
         }
         lorderLag.visible = false;
         var _loc6_:int = 1;
         while(_loc6_ < 6)
         {
            this["lorder" + _loc6_].htmlText = "";
            _loc6_++;
         }
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Array = [];
         if(Boolean(mapData) && Boolean(mapData.mData) && Boolean(mapData.mData[areaId]) && Boolean(mapData.mData[areaId].members))
         {
            _loc13_ = 1;
            _loc7_ = true;
            _loc14_ = mapData.mData[areaId].members.head;
            while(_loc14_ != null && Boolean(_loc14_.obj))
            {
               if(int(_loc14_.obj) == _core.player.id)
               {
                  _loc8_ = true;
               }
               this["lorder" + _loc13_].htmlText = "<font color=\'#00FFFF\'>" + _loc14_.cname + "</font>";
               _loc13_++;
               _loc9_.push(_loc14_.iconCode);
               lorderLag.visible = true;
               _loc14_ = _loc14_.next;
            }
         }
         if(_loc8_ && CrossContentionTotalPanel.giveup)
         {
            attackBtn.visible = false;
            giveUpBtn.visible = true;
         }
         if(param2)
         {
            areaIcon.source = ResManager.getIconUrl(param2);
         }
         var _loc10_:int = int(GamePredef.CROSS_CONTENTION_MAP_REC_INIT[CrossContentionSinglePanel.MAP_ID]);
         var _loc11_:Array = [];
         if(_loc7_)
         {
            _loc11_ = _loc9_;
         }
         else
         {
            _loc11_ = creatureIcons[_loc10_][_loc3_];
         }
         _loc6_ = 1;
         while(_loc6_ <= 6)
         {
            if(Boolean(_loc11_) && Boolean(_loc11_[_loc6_ - 1]))
            {
               this["c" + _loc6_].visible = true;
               this["i" + _loc6_].source = ResManager.getIconUrl(_loc11_[_loc6_ - 1]);
            }
            else
            {
               this["c" + _loc6_].visible = false;
               this["i" + _loc6_].source = null;
            }
            _loc6_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder1() : RoundedLabel
      {
         return this._352346639lorder1;
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder3() : RoundedLabel
      {
         return this._352346641lorder3;
      }
      
      public function set i6(param1:Image) : void
      {
         var _loc2_:Object = this._3309i6;
         if(_loc2_ !== param1)
         {
            this._3309i6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"i6",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder4() : RoundedLabel
      {
         return this._352346642lorder4;
      }
      
      [Bindable(event="propertyChange")]
      public function get lorder5() : RoundedLabel
      {
         return this._352346643lorder5;
      }
      
      private function init() : void
      {
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
      
      [Bindable(event="propertyChange")]
      public function get lorder2() : RoundedLabel
      {
         return this._352346640lorder2;
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
      public function get arealevel() : RoundedLabel
      {
         return this._89056489arealevel;
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
      
      public function set areaname(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1665385320areaname;
         if(_loc2_ !== param1)
         {
            this._1665385320areaname = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaname",_loc2_,param1));
         }
      }
      
      public function set arealevel(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._89056489arealevel;
         if(_loc2_ !== param1)
         {
            this._89056489arealevel = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"arealevel",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get c2() : Canvas
      {
         return this._3119c2;
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
      
      public function onGiveUp(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!param1)
         {
            return;
         }
         if(param1.flag)
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[137]);
            _loc2_ = CrossContentionSinglePanel.mData;
            removeFromMembers();
            _loc3_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE);
            if(_loc3_)
            {
               _loc3_.onGetCrossContentionSingleState(CrossContentionSinglePanel.mData);
            }
            showPanel(CrossContentionSinglePanel.mData,0);
         }
         else if(param1.data)
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[param1.data]);
         }
         else
         {
            _core.sysMidNote(Language.CROSS_CONTENTION_PANEL_U[138]);
         }
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
            _loc1_.mapData = mapData;
            _loc1_.areaId = areaId;
            _loc1_.isBoss = false;
            _loc1_.mapId = mapData.mid;
            _loc1_.showPanel();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get c1() : Canvas
      {
         return this._3118c1;
      }
      
      [Bindable(event="propertyChange")]
      public function get c3() : Canvas
      {
         return this._3120c3;
      }
      
      public function set areaIcon(param1:Image) : void
      {
         var _loc2_:Object = this._1666485594areaIcon;
         if(_loc2_ !== param1)
         {
            this._1666485594areaIcon = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"areaIcon",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get c6() : Canvas
      {
         return this._3123c6;
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
      
      public function set c1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3118c1;
         if(_loc2_ !== param1)
         {
            this._3118c1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get giveUpBtn() : BasicGlowButton
      {
         return this._1446942000giveUpBtn;
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
      
      public function set lorder5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._352346643lorder5;
         if(_loc2_ !== param1)
         {
            this._352346643lorder5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lorder5",_loc2_,param1));
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
      
      public function ___CrossContentionAreaPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      public function set giveUpBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1446942000giveUpBtn;
         if(_loc2_ !== param1)
         {
            this._1446942000giveUpBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"giveUpBtn",_loc2_,param1));
         }
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
      
      public function set c6(param1:Canvas) : void
      {
         var _loc2_:Object = this._3123c6;
         if(_loc2_ !== param1)
         {
            this._3123c6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"c6",_loc2_,param1));
         }
      }
      
      private function _CrossContentionAreaPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[117];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[31];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[32];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[33];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[34];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[36];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[37];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[38];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[39];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[41];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[42];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[43];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[44];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[45];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[136];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[46];
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
      
      private function giveUp() : void
      {
         var func:Function = function(param1:CloseEvent):void
         {
            if(param1.detail == Alert.YES)
            {
               _core.remote.call("crossContentionGiveUp",null,mapId,areaId);
            }
         };
         Alert.show(Language.CROSS_CONTENTION_PANEL_U[143],"",Alert.YES | Alert.NO,null,func);
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
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionAreaPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionAreaPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionAreaPanelWatcherSetupUtil");
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
      public function get areaoccupy() : RoundedLabel
      {
         return this._1617706140areaoccupy;
      }
      
      public function __attackBtn_click(param1:MouseEvent) : void
      {
         attack();
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
      public function get areaIcon() : Image
      {
         return this._1666485594areaIcon;
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      private function _CrossContentionAreaPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[117];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[31];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_RoundedLabel1.htmlText = param1;
         },"_CrossContentionAreaPanel_RoundedLabel1.htmlText");
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
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[33];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_RoundedLabel3.htmlText = param1;
         },"_CrossContentionAreaPanel_RoundedLabel3.htmlText");
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
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_RoundedLabel5.htmlText = param1;
         },"_CrossContentionAreaPanel_RoundedLabel5.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areapoint.htmlText = param1;
         },"areapoint.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_RoundedLabel7.htmlText = param1;
         },"_CrossContentionAreaPanel_RoundedLabel7.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            arealevel.htmlText = param1;
         },"arealevel.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[41];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            lorderLag.htmlText = param1;
         },"lorderLag.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[42];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_RoundedLabel15.htmlText = param1;
         },"_CrossContentionAreaPanel_RoundedLabel15.htmlText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[43];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_RoundedLabel16.htmlText = param1;
         },"_CrossContentionAreaPanel_RoundedLabel16.htmlText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[44];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_IntroText1.text = param1;
         },"_CrossContentionAreaPanel_IntroText1.text");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[45];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            attackBtn.label = param1;
         },"attackBtn.label");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[136];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            giveUpBtn.label = param1;
         },"giveUpBtn.label");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[46];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionAreaPanel_LinkButton1.label = param1;
         },"_CrossContentionAreaPanel_LinkButton1.label");
         result[15] = binding;
         return result;
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CROSS_CONTENTION_PANEL_U[29].toString();
         _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[132].toString(),Alert.YES,null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get areaname() : RoundedLabel
      {
         return this._1665385320areaname;
      }
      
      private function _crossContentionGetGroupNum(param1:Object) : int
      {
         if(!param1 || !param1.head)
         {
            return 0;
         }
         var _loc2_:int = 0;
         var _loc3_:* = param1.head;
         while(Boolean(_loc3_) && Boolean(_loc3_.obj))
         {
            _loc2_++;
            _loc3_ = _loc3_.next;
         }
         return _loc2_;
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
      
      public function ___CrossContentionAreaPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
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
      
      public function __giveUpBtn_click(param1:MouseEvent) : void
      {
         giveUp();
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
      
      public function set attackBtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._478932236attackBtn;
         if(_loc2_ !== param1)
         {
            this._478932236attackBtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"attackBtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get i2() : Image
      {
         return this._3305i2;
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
      
      private function removeFromMembers() : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         if(!CrossContentionSinglePanel.mData || !CrossContentionSinglePanel.mData.mData || !CrossContentionSinglePanel.mData.mData[areaId] || !CrossContentionSinglePanel.mData.mData[areaId].members)
         {
            return;
         }
         var _loc1_:int = _crossContentionGetGroupNum(CrossContentionSinglePanel.mData.mData[areaId].members);
         if(_loc1_ == 1)
         {
            CrossContentionSinglePanel.mData.mData[areaId].osid = 0;
            CrossContentionSinglePanel.mData.mData[areaId].members = null;
            CrossContentionSinglePanel.mData.mData[areaId].state1 = 0;
         }
         else
         {
            _loc2_ = CrossContentionSinglePanel.mData.mData[areaId].members.head;
            if(_core.player.id == int(_loc2_.obj))
            {
               CrossContentionSinglePanel.mData.mData[areaId].members.head = _loc2_.next;
            }
            else
            {
               _loc3_ = _loc2_;
               _loc2_ = _loc2_.next;
               while(Boolean(_loc2_) && Boolean(_loc2_.obj))
               {
                  if(_core.player.id == int(_loc2_.obj))
                  {
                     if(Boolean(_loc2_.next) && Boolean(_loc2_.next.obj))
                     {
                        _loc3_.next = _loc2_.next;
                     }
                     else
                     {
                        _loc3_.next = null;
                     }
                     break;
                  }
                  _loc2_ = _loc2_.next;
               }
            }
         }
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
      
      [Bindable(event="propertyChange")]
      public function get i1() : Image
      {
         return this._3304i1;
      }
      
      [Bindable(event="propertyChange")]
      public function get attackBtn() : BasicGlowButton
      {
         return this._478932236attackBtn;
      }
   }
}

