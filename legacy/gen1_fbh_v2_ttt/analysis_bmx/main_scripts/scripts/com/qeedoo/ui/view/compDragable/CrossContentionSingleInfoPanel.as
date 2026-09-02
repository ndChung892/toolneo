package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CrossContentionIcon;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   
   public class CrossContentionSingleInfoPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var areaUrl:Array = [0,4130220000331,4130220000330,4130220000329,4130220000332,4130220000333];
      
      private var _74925319unoccypy3:RoundedLabel;
      
      private var _247605121firstoccupy:RoundedLabel;
      
      private var _1636875842occypy1:RoundedLabel;
      
      private var _1665385320areaname:RoundedLabel;
      
      private var _helpAlert:Alert;
      
      private var mapData:Object = new Object();
      
      private var _1245447979pointIcon4:Image;
      
      private var _1636875839occypy4:RoundedLabel;
      
      private var _1636875841occypy2:RoundedLabel;
      
      private var _2022655936boosstate:RoundedLabel;
      
      private var _2132384574btnPointsAward:BasicGlowButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1636875838occypy5:RoundedLabel;
      
      private var _1825700023bordername:RoundedLabel;
      
      private var _1636875840occypy3:RoundedLabel;
      
      private var _1666485594areaIcon:Image;
      
      private var _1245447978pointIcon3:Image;
      
      private var _core:Core = Core.getInstance();
      
      public var _CrossContentionSingleInfoPanel_LinkButton1:LinkButton;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      mx_internal var _watchers:Array = [];
      
      private var _1245447977pointIcon2:Image;
      
      public var _CrossContentionSingleInfoPanel_RoundedLabel5:RoundedLabel;
      
      public var _CrossContentionSingleInfoPanel_RoundedLabel7:RoundedLabel;
      
      public var _CrossContentionSingleInfoPanel_RoundedLabel8:RoundedLabel;
      
      public var _CrossContentionSingleInfoPanel_RoundedLabel9:RoundedLabel;
      
      private var _74925320unoccypy4:RoundedLabel;
      
      private var _601956334currentlord:RoundedLabel;
      
      private var inited:Boolean = false;
      
      private var _1245447980pointIcon5:Image;
      
      private var _74925317unoccypy1:RoundedLabel;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _74925321unoccypy5:RoundedLabel;
      
      private var _1245447976pointIcon1:Image;
      
      private var _74925318unoccypy2:RoundedLabel;
      
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
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":40,
                        "styleName":"RoundedGradientBorder",
                        "height":335,
                        "horizontalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "12";
                              this.top = "10";
                              this.right = "12";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":85,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "5";
                                       this.verticalCenter = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "height":83,
                                          "width":83,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Image,
                                             "id":"areaIcon",
                                             "stylesFactory":function():void
                                             {
                                                this.left = "5";
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
                                          "x":95,
                                          "y":0,
                                          "height":85,
                                          "width":300,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"areaname",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 16;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":0,
                                                   "width":250
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"firstoccupy",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 16;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":20,
                                                   "width":250
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"currentlord",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 16;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":40,
                                                   "width":250
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"boosstate",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 16;
                                                this.color = 16776960;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "y":60,
                                                   "width":250
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
                              this.top = "110";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":425,
                                 "height":60,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionSingleInfoPanel_RoundedLabel5",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 16;
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "width":250
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"bordername",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.color = 16777215;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":25,
                                          "width":430
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
                              this.top = "170";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":110,
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionSingleInfoPanel_RoundedLabel7",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 16;
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "y":0,
                                          "width":200
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "60";
                                       this.top = "25";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":80,
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":Canvas,
                                             "stylesFactory":function():void
                                             {
                                                this.left = "10";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":78,
                                                   "height":78,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"pointIcon1",
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
                                             "stylesFactory":function():void
                                             {
                                                this.left = "80";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":78,
                                                   "height":78,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"pointIcon2",
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
                                             "stylesFactory":function():void
                                             {
                                                this.left = "150";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":78,
                                                   "height":78,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"pointIcon3",
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
                                             "stylesFactory":function():void
                                             {
                                                this.left = "220";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":78,
                                                   "height":78,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"pointIcon4",
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
                                             "stylesFactory":function():void
                                             {
                                                this.left = "300";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "width":78,
                                                   "height":78,
                                                   "horizontalScrollPolicy":"off",
                                                   "verticalScrollPolicy":"off",
                                                   "childDescriptors":[new UIComponentDescriptor({
                                                      "type":Image,
                                                      "id":"pointIcon5",
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
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.left = "12";
                              this.top = "280";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "height":50,
                                 "percentWidth":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionSingleInfoPanel_RoundedLabel8",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.color = 16777215;
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
                                    "type":RoundedLabel,
                                    "id":"_CrossContentionSingleInfoPanel_RoundedLabel9",
                                    "stylesFactory":function():void
                                    {
                                       this.fontSize = 14;
                                       this.color = 16777215;
                                       this.fontWeight = "bold";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":0,
                                          "y":25,
                                          "width":100
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "stylesFactory":function():void
                                    {
                                       this.left = "105";
                                       this.top = "0";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentHeight":100,
                                          "percentWidth":100,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"occypy1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"1",
                                                   "x":0,
                                                   "y":0,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"occypy2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 32768;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"2",
                                                   "x":70,
                                                   "y":0,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"occypy3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 33023;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"3",
                                                   "x":140,
                                                   "y":0,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"occypy4",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 8421631;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"4",
                                                   "x":210,
                                                   "y":0,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"occypy5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 16744512;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"5",
                                                   "x":280,
                                                   "y":0,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"unoccypy1",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 16777215;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"1",
                                                   "x":0,
                                                   "y":25,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"unoccypy2",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 32768;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"2",
                                                   "x":70,
                                                   "y":25,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"unoccypy3",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 33023;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"3",
                                                   "x":140,
                                                   "y":25,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"unoccypy4",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 8421631;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"4",
                                                   "x":210,
                                                   "y":25,
                                                   "width":30
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":RoundedLabel,
                                             "id":"unoccypy5",
                                             "stylesFactory":function():void
                                             {
                                                this.fontSize = 14;
                                                this.color = 16744512;
                                                this.fontWeight = "bold";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "htmlText":"5",
                                                   "x":280,
                                                   "y":25,
                                                   "width":30
                                                };
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
                  "type":BasicGlowButton,
                  "id":"btnPointsAward",
                  "events":{"click":"__btnPointsAward_click"},
                  "stylesFactory":function():void
                  {
                     this.bottom = "7";
                     this.left = "207";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":60,
                        "styleName":"BtnStdRed"
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":LinkButton,
                  "id":"_CrossContentionSingleInfoPanel_LinkButton1",
                  "events":{"click":"___CrossContentionSingleInfoPanel_LinkButton1_click"},
                  "stylesFactory":function():void
                  {
                     this.right = "10";
                     this.bottom = "7";
                     this.color = 16770560;
                     this.textDecoration = "underline";
                  }
               })]
            };
         }
      });
      
      public function CrossContentionSingleInfoPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 475;
         this.height = 405;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionSingleInfoPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionSingleInfoPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get unoccypy1() : RoundedLabel
      {
         return this._74925317unoccypy1;
      }
      
      [Bindable(event="propertyChange")]
      public function get unoccypy2() : RoundedLabel
      {
         return this._74925318unoccypy2;
      }
      
      public function showPanel(param1:int) : void
      {
         _core.remote.call("getCrossContentionSingleState",null,param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get unoccypy5() : RoundedLabel
      {
         return this._74925321unoccypy5;
      }
      
      [Bindable(event="propertyChange")]
      public function get unoccypy3() : RoundedLabel
      {
         return this._74925319unoccypy3;
      }
      
      [Bindable(event="propertyChange")]
      public function get unoccypy4() : RoundedLabel
      {
         return this._74925320unoccypy4;
      }
      
      private function init() : void
      {
      }
      
      public function set unoccypy1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._74925317unoccypy1;
         if(_loc2_ !== param1)
         {
            this._74925317unoccypy1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unoccypy1",_loc2_,param1));
         }
      }
      
      public function set unoccypy5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._74925321unoccypy5;
         if(_loc2_ !== param1)
         {
            this._74925321unoccypy5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unoccypy5",_loc2_,param1));
         }
      }
      
      public function set unoccypy2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._74925318unoccypy2;
         if(_loc2_ !== param1)
         {
            this._74925318unoccypy2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unoccypy2",_loc2_,param1));
         }
      }
      
      public function set unoccypy3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._74925319unoccypy3;
         if(_loc2_ !== param1)
         {
            this._74925319unoccypy3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unoccypy3",_loc2_,param1));
         }
      }
      
      public function set unoccypy4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._74925320unoccypy4;
         if(_loc2_ !== param1)
         {
            this._74925320unoccypy4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"unoccypy4",_loc2_,param1));
         }
      }
      
      public function __btnPointsAward_click(param1:MouseEvent) : void
      {
         enter();
      }
      
      [Bindable(event="propertyChange")]
      public function get pointIcon2() : Image
      {
         return this._1245447977pointIcon2;
      }
      
      [Bindable(event="propertyChange")]
      public function get pointIcon3() : Image
      {
         return this._1245447978pointIcon3;
      }
      
      [Bindable(event="propertyChange")]
      public function get pointIcon4() : Image
      {
         return this._1245447979pointIcon4;
      }
      
      public function ___CrossContentionSingleInfoPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get pointIcon1() : Image
      {
         return this._1245447976pointIcon1;
      }
      
      public function ___CrossContentionSingleInfoPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
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
      
      [Bindable(event="propertyChange")]
      public function get pointIcon5() : Image
      {
         return this._1245447980pointIcon5;
      }
      
      [Bindable(event="propertyChange")]
      public function get boosstate() : RoundedLabel
      {
         return this._2022655936boosstate;
      }
      
      [Bindable(event="propertyChange")]
      public function get btnPointsAward() : BasicGlowButton
      {
         return this._2132384574btnPointsAward;
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
      
      public function set pointIcon1(param1:Image) : void
      {
         var _loc2_:Object = this._1245447976pointIcon1;
         if(_loc2_ !== param1)
         {
            this._1245447976pointIcon1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointIcon1",_loc2_,param1));
         }
      }
      
      public function set pointIcon2(param1:Image) : void
      {
         var _loc2_:Object = this._1245447977pointIcon2;
         if(_loc2_ !== param1)
         {
            this._1245447977pointIcon2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointIcon2",_loc2_,param1));
         }
      }
      
      public function set pointIcon4(param1:Image) : void
      {
         var _loc2_:Object = this._1245447979pointIcon4;
         if(_loc2_ !== param1)
         {
            this._1245447979pointIcon4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointIcon4",_loc2_,param1));
         }
      }
      
      public function set pointIcon5(param1:Image) : void
      {
         var _loc2_:Object = this._1245447980pointIcon5;
         if(_loc2_ !== param1)
         {
            this._1245447980pointIcon5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointIcon5",_loc2_,param1));
         }
      }
      
      public function set pointIcon3(param1:Image) : void
      {
         var _loc2_:Object = this._1245447978pointIcon3;
         if(_loc2_ !== param1)
         {
            this._1245447978pointIcon3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pointIcon3",_loc2_,param1));
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
      
      public function set btnPointsAward(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._2132384574btnPointsAward;
         if(_loc2_ !== param1)
         {
            this._2132384574btnPointsAward = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnPointsAward",_loc2_,param1));
         }
      }
      
      public function set bordername(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1825700023bordername;
         if(_loc2_ !== param1)
         {
            this._1825700023bordername = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bordername",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get firstoccupy() : RoundedLabel
      {
         return this._247605121firstoccupy;
      }
      
      public function set boosstate(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2022655936boosstate;
         if(_loc2_ !== param1)
         {
            this._2022655936boosstate = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boosstate",_loc2_,param1));
         }
      }
      
      public function set occypy4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1636875839occypy4;
         if(_loc2_ !== param1)
         {
            this._1636875839occypy4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"occypy4",_loc2_,param1));
         }
      }
      
      public function set occypy3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1636875840occypy3;
         if(_loc2_ !== param1)
         {
            this._1636875840occypy3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"occypy3",_loc2_,param1));
         }
      }
      
      public function set occypy1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1636875842occypy1;
         if(_loc2_ !== param1)
         {
            this._1636875842occypy1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"occypy1",_loc2_,param1));
         }
      }
      
      public function set occypy2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1636875841occypy2;
         if(_loc2_ !== param1)
         {
            this._1636875841occypy2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"occypy2",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionSingleInfoPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionSingleInfoPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionSingleInfoPanelWatcherSetupUtil");
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
      
      public function set occypy5(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1636875838occypy5;
         if(_loc2_ !== param1)
         {
            this._1636875838occypy5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"occypy5",_loc2_,param1));
         }
      }
      
      private function _CrossContentionSingleInfoPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[12];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            areaname.htmlText = param1;
         },"areaname.htmlText");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            firstoccupy.htmlText = param1;
         },"firstoccupy.htmlText");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[19];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            currentlord.htmlText = param1;
         },"currentlord.htmlText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[20];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            boosstate.htmlText = param1;
         },"boosstate.htmlText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSingleInfoPanel_RoundedLabel5.htmlText = param1;
         },"_CrossContentionSingleInfoPanel_RoundedLabel5.htmlText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[23];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bordername.htmlText = param1;
         },"bordername.htmlText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[24];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSingleInfoPanel_RoundedLabel7.htmlText = param1;
         },"_CrossContentionSingleInfoPanel_RoundedLabel7.htmlText");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[25];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSingleInfoPanel_RoundedLabel8.htmlText = param1;
         },"_CrossContentionSingleInfoPanel_RoundedLabel8.htmlText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[26];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSingleInfoPanel_RoundedLabel9.htmlText = param1;
         },"_CrossContentionSingleInfoPanel_RoundedLabel9.htmlText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[28];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btnPointsAward.label = param1;
         },"btnPointsAward.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSingleInfoPanel_LinkButton1.label = param1;
         },"_CrossContentionSingleInfoPanel_LinkButton1.label");
         result[11] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get areaname() : RoundedLabel
      {
         return this._1665385320areaname;
      }
      
      [Bindable(event="propertyChange")]
      public function get areaIcon() : Image
      {
         return this._1666485594areaIcon;
      }
      
      public function onGetCrossContentionSingleState(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc10_:int = 0;
         this.visible = true;
         mapData = param1;
         if(param1.lvlType)
         {
            CrossContentionTotalPanel.LEVLE_TYPE = param1.lvlType;
         }
         if(param1.mid)
         {
            this["areaname"].htmlText = Language.CROSS_CONTENTION_PANEL_U[13].toString().replace("{name}",GamePredef.CROSS_CONTENTION_MAP[param1.mid].name);
            areaIcon.source = ResManager.getIconUrl(areaUrl[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[param1.mid]]);
         }
         if(param1.mData.fosid)
         {
            _loc2_ = CrossContentionTotalPanel.getServerName(Number(param1.mData.fosid));
            this["firstoccupy"].htmlText = Language.CROSS_CONTENTION_PANEL_U[14].toString().replace("{name}",Language.CROSS_CONTENTION_PANEL_U[16].toString().replace("{osid}",_loc2_));
            firstoccupy.toolTip = CrossContentionTotalPanel.getUnitServersName(Number(param1.mData.fosid));
         }
         else
         {
            firstoccupy.toolTip = "";
            this["firstoccupy"].htmlText = Language.CROSS_CONTENTION_PANEL_U[14].toString().replace("{name}",Language.CROSS_CONTENTION_PANEL_U[15].toString());
         }
         if(param1.osid)
         {
            _loc2_ = CrossContentionTotalPanel.getServerName(Number(param1.osid));
            this["currentlord"].htmlText = Language.CROSS_CONTENTION_PANEL_U[19].toString().replace("{name}",Language.CROSS_CONTENTION_PANEL_U[16].toString().replace("{osid}",_loc2_));
            currentlord.toolTip = CrossContentionTotalPanel.getUnitServersName(Number(param1.osid));
         }
         else
         {
            currentlord.toolTip = "";
            this["currentlord"].htmlText = Language.CROSS_CONTENTION_PANEL_U[19].toString().replace("{name}",Language.CROSS_CONTENTION_PANEL_U[17].toString());
         }
         var _loc3_:int = -1;
         if(Boolean(param1.boss) && param1.boss.bIndex != null)
         {
            _loc3_ = int(param1.boss.bIndex);
         }
         if(Boolean(_loc3_ != -1) && Boolean(param1.boss) && Boolean(param1.boss.data[_loc3_]) && int(param1.boss.data[_loc3_].state) == 2)
         {
            this["boosstate"].htmlText = Language.CROSS_CONTENTION_PANEL_U[20].toString().replace("{state}",Language.CROSS_CONTENTION_PANEL_U[21].toString()).replace("{color}","#FF0000");
         }
         else
         {
            this["boosstate"].htmlText = Language.CROSS_CONTENTION_PANEL_U[20].toString().replace("{state}",Language.CROSS_CONTENTION_PANEL_U[22].toString()).replace("{color}","#00FF00");
         }
         var _loc4_:String = "";
         _loc4_ = GamePredef.CROSS_CONTENTION_MAP[GamePredef.CROSS_CONTENTION_MAP_LINK[param1.mid][0]].name;
         var _loc5_:int = 1;
         while(_loc5_ < GamePredef.CROSS_CONTENTION_MAP_LINK[param1.mid].length)
         {
            _loc4_ += "," + GamePredef.CROSS_CONTENTION_MAP[GamePredef.CROSS_CONTENTION_MAP_LINK[param1.mid][_loc5_]].name;
            _loc5_++;
         }
         this["bordername"].htmlText = _loc4_;
         var _loc6_:Array = [0,0,0,0,0,0];
         var _loc7_:Array = [0,0,0,0,0,0];
         var _loc8_:Object = GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[param1.mid]];
         var _loc9_:int = 1;
         while(_loc9_ <= 100)
         {
            _loc10_ = int(_loc8_[_loc9_].p);
            if(Boolean(param1.mData[_loc9_]) && int(param1.mData[_loc9_].state1) == 1)
            {
               ++_loc6_[_loc10_];
            }
            else
            {
               ++_loc7_[_loc10_];
            }
            _loc9_++;
         }
         _loc5_ = 1;
         while(_loc5_ <= 5)
         {
            this["occypy" + _loc5_].htmlText = String(_loc6_[_loc5_]);
            this["unoccypy" + _loc5_].htmlText = String(_loc7_[_loc5_]);
            _loc5_++;
         }
      }
      
      private function _CrossContentionSingleInfoPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[12];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[13];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[14];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[19];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[20];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[23];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[23];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[24];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[25];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[26];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[28];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[27];
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
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
      public function get occypy3() : RoundedLabel
      {
         return this._1636875840occypy3;
      }
      
      [Bindable(event="propertyChange")]
      public function get occypy4() : RoundedLabel
      {
         return this._1636875839occypy4;
      }
      
      [Bindable(event="propertyChange")]
      public function get occypy5() : RoundedLabel
      {
         return this._1636875838occypy5;
      }
      
      [Bindable(event="propertyChange")]
      public function get occypy1() : RoundedLabel
      {
         return this._1636875842occypy1;
      }
      
      [Bindable(event="propertyChange")]
      public function get bordername() : RoundedLabel
      {
         return this._1825700023bordername;
      }
      
      [Bindable(event="propertyChange")]
      public function get occypy2() : RoundedLabel
      {
         return this._1636875841occypy2;
      }
      
      override public function initView() : void
      {
         var _loc1_:int = 0;
         if(!inited)
         {
            inited = true;
            _loc1_ = 1;
            while(_loc1_ <= 5)
            {
               this["pointIcon" + _loc1_].source = ResManager.getIconUrl(CrossContentionIcon.iconUrls[_loc1_]);
               _loc1_++;
            }
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
      }
      
      public function enter(param1:Boolean = true) : void
      {
         var _loc2_:* = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE);
         if(_loc2_)
         {
            if(Boolean(mapData) && Boolean(mapData.mid))
            {
               _loc2_.onGetCrossContentionSingleState(mapData);
               if(param1 && _core.player.inGroup)
               {
                  _core.remote.call("crossContentionOpenSinglePanel",null);
               }
            }
            else
            {
               _loc2_.showPanel();
            }
         }
      }
      
      public function set currentlord(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._601956334currentlord;
         if(_loc2_ !== param1)
         {
            this._601956334currentlord = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"currentlord",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
         if(Boolean(param1) && Boolean(_core.player) && _core.player.level < 50)
         {
            return;
         }
         if(param1)
         {
            initView();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get currentlord() : RoundedLabel
      {
         return this._601956334currentlord;
      }
      
      public function set firstoccupy(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._247605121firstoccupy;
         if(_loc2_ !== param1)
         {
            this._247605121firstoccupy = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"firstoccupy",_loc2_,param1));
         }
      }
   }
}

