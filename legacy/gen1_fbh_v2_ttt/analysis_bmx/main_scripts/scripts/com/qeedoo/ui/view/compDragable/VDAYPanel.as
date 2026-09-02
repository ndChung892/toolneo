package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.LinkText;
   import com.qeedoo.ui.view.comp.RoundedLabel;
   import com.qeedoo.ui.view.comp.VDAYMoveCanva;
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
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.ViewStack;
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class VDAYPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _lastCheckTime:Number = 0;
      
      public var _VDAYPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3773vs:ViewStack;
      
      private var _977658422ptype4:RoundedLabel;
      
      private var _1146158286otherAC:ArrayCollection = new ArrayCollection();
      
      private var _1042054822moveCav10:VDAYMoveCanva;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _fristFlag:Boolean = true;
      
      private var _763441754rankCavans:Canvas;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      private var _977658423ptype3:RoundedLabel;
      
      private var _108280196rank0:RoundedLabel;
      
      private var _3492908rank:LinkText;
      
      private var _core:Core = Core.getInstance();
      
      private var _104932659moveCav4:VDAYMoveCanva;
      
      public var _VDAYPanel_BasicGlowButton3:BasicGlowButton;
      
      private var _104932654moveCav9:VDAYMoveCanva;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _3365582myAC:ArrayCollection = new ArrayCollection();
      
      private var _830995295mainCav:Canvas;
      
      private var _104932658moveCav5:VDAYMoveCanva;
      
      private var _104932662moveCav1:VDAYMoveCanva;
      
      private var _104932656moveCav7:VDAYMoveCanva;
      
      private var _977658424ptype2:RoundedLabel;
      
      private var _104932661moveCav2:VDAYMoveCanva;
      
      private var _104932655moveCav8:VDAYMoveCanva;
      
      mx_internal var _watchers:Array = [];
      
      private var _104932660moveCav3:VDAYMoveCanva;
      
      private var _3366703mydg:DataGrid;
      
      public var _VDAYPanel_DataGridColumn1:DataGridColumn;
      
      public var _VDAYPanel_DataGridColumn2:DataGridColumn;
      
      public var _VDAYPanel_DataGridColumn3:DataGridColumn;
      
      public var _VDAYPanel_DataGridColumn4:DataGridColumn;
      
      public var _VDAYPanel_DataGridColumn5:DataGridColumn;
      
      public var _VDAYPanel_DataGridColumn6:DataGridColumn;
      
      private var _1146157165otherdg:DataGrid;
      
      private var _104932657moveCav6:VDAYMoveCanva;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _977658425ptype1:RoundedLabel;
      
      private const MIN_CHECK_INTERVAL:Number = 30000;
      
      mx_internal var _bindings:Array = [];
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":700,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_VDAYPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn0",
                  "events":{"click":"__tabBtn0_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "34";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "width":100,
                        "x":14,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn1",
                  "events":{"click":"__tabBtn1_click"},
                  "stylesFactory":function():void
                  {
                     this.top = "34";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "visible":false,
                        "x":111,
                        "selected":true,
                        "styleName":"HorizontalTab",
                        "height":20
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"vs",
                  "stylesFactory":function():void
                  {
                     this.top = "53";
                     this.left = "0";
                     this.right = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"mainCav",
                                    "stylesFactory":function():void
                                    {
                                       this.left = "10";
                                       this.bottom = "10";
                                       this.top = "";
                                       this.right = "10";
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "horizontalScrollPolicy":"off",
                                          "verticalScrollPolicy":"off",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav1",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":-71,
                                                   "y":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav2",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":86,
                                                   "y":98
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav3",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":238,
                                                   "y":10
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav4",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":0,
                                                   "y":247
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav5",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":224,
                                                   "y":247
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav6",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":352,
                                                   "y":138
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav7",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":480,
                                                   "y":75
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav8",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":513,
                                                   "y":255
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav9",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":661,
                                                   "y":21
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":VDAYMoveCanva,
                                             "id":"moveCav10",
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "x":630,
                                                   "y":149
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_VDAYPanel_BasicGlowButton3",
                                             "events":{"click":"___VDAYPanel_BasicGlowButton3_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingTop = 1;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalYellowButton",
                                                   "labelPlacement":"bottom",
                                                   "width":75,
                                                   "height":25,
                                                   "x":312.5,
                                                   "y":365
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
                           "id":"rankCavans",
                           "events":{"show":"__rankCavans_show"},
                           "propertiesFactory":function():Object
                           {
                              return {"childDescriptors":[new UIComponentDescriptor({
                                 "type":Canvas,
                                 "stylesFactory":function():void
                                 {
                                    this.top = "0";
                                    this.left = "10";
                                    this.right = "10";
                                    this.bottom = "10";
                                 },
                                 "propertiesFactory":function():Object
                                 {
                                    return {
                                       "styleName":"RoundedGradientBorder",
                                       "childDescriptors":[new UIComponentDescriptor({
                                          "type":Canvas,
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "styleName":"RoundedGradientBorder",
                                                "label":"otherPPanel",
                                                "width":500,
                                                "height":200,
                                                "x":14,
                                                "y":13,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"otherdg",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "x":90,
                                                         "y":26,
                                                         "selectable":false,
                                                         "columns":[_VDAYPanel_DataGridColumn1_i(),_VDAYPanel_DataGridColumn2_i(),_VDAYPanel_DataGridColumn3_i()]
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
                                                "label":"myPPanel",
                                                "width":500,
                                                "height":156,
                                                "x":15,
                                                "y":221,
                                                "childDescriptors":[new UIComponentDescriptor({
                                                   "type":DataGrid,
                                                   "id":"mydg",
                                                   "propertiesFactory":function():Object
                                                   {
                                                      return {
                                                         "resizableColumns":false,
                                                         "draggableColumns":false,
                                                         "x":-30,
                                                         "y":0,
                                                         "selectable":false,
                                                         "columns":[_VDAYPanel_DataGridColumn4_i(),_VDAYPanel_DataGridColumn5_i(),_VDAYPanel_DataGridColumn6_i()]
                                                      };
                                                   }
                                                })]
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "stylesFactory":function():void
                                          {
                                             this.textAlign = "center";
                                             this.horizontalCenter = "257";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":158,
                                                "text":"我的表白回应情况",
                                                "y":14
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "stylesFactory":function():void
                                          {
                                             this.textAlign = "right";
                                             this.right = "81";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":120,
                                                "text":"我发出的表白:",
                                                "height":18,
                                                "y":42
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "stylesFactory":function():void
                                          {
                                             this.textAlign = "right";
                                             this.right = "81";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":82,
                                                "text":"男男回应:",
                                                "height":18,
                                                "y":68
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "stylesFactory":function():void
                                          {
                                             this.textAlign = "right";
                                             this.right = "81";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":82,
                                                "text":"男女互表:",
                                                "height":18,
                                                "y":91
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "stylesFactory":function():void
                                          {
                                             this.textAlign = "right";
                                             this.right = "81";
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":82,
                                                "text":"女女回应:",
                                                "height":18,
                                                "y":111
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"ptype1",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":41,
                                                "text":"0",
                                                "height":18,
                                                "x":627,
                                                "y":42
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"ptype2",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":41,
                                                "text":"0",
                                                "height":18,
                                                "x":627,
                                                "y":68
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"ptype3",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":41,
                                                "text":"0",
                                                "height":18,
                                                "x":627,
                                                "y":91
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"ptype4",
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":41,
                                                "text":"0",
                                                "height":18,
                                                "x":627,
                                                "y":111
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":LinkText,
                                          "id":"rank",
                                          "stylesFactory":function():void
                                          {
                                             this.textAlign = "left";
                                             this.right = "4";
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":158,
                                                "text":"",
                                                "y":245,
                                                "selectable":false
                                             };
                                          }
                                       }),new UIComponentDescriptor({
                                          "type":RoundedLabel,
                                          "id":"rank0",
                                          "stylesFactory":function():void
                                          {
                                             this.textAlign = "center";
                                             this.right = "5";
                                             this.color = 16777215;
                                          },
                                          "propertiesFactory":function():Object
                                          {
                                             return {
                                                "width":158,
                                                "text":"人气排行",
                                                "y":221
                                             };
                                          }
                                       })]
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
      
      public function VDAYPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 700;
         this.height = 450;
         this.styleName = "StandardContent";
         this.x = 550;
         this.y = 74;
         this.addEventListener("creationComplete",___VDAYPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         VDAYPanel._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ptype3() : RoundedLabel
      {
         return this._977658423ptype3;
      }
      
      public function onGetMyProposals(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Array = null;
         var _loc4_:* = undefined;
         otherAC.removeAll();
         myAC.removeAll();
         if(Boolean(param1) && Boolean(param1.data))
         {
            _loc2_ = param1.data.other;
            if(Boolean(_loc2_) && _loc2_.length > 0)
            {
               for(_loc4_ in _loc2_)
               {
                  if(_loc2_[_loc4_].gender == 1)
                  {
                     _loc2_[_loc4_].genderGWords = "女";
                  }
                  else
                  {
                     _loc2_[_loc4_].genderGWords = "男";
                  }
                  otherAC.addItem(_loc2_[_loc4_]);
               }
            }
            _loc3_ = param1.data.my;
            if(Boolean(_loc3_) && _loc3_.length > 0)
            {
               for(_loc4_ in _loc3_)
               {
                  if(_loc3_[_loc4_].gender == 1)
                  {
                     _loc3_[_loc4_].genderGWords = "女";
                  }
                  else
                  {
                     _loc3_[_loc4_].genderGWords = "男";
                  }
                  myAC.addItem(_loc3_[_loc4_]);
               }
            }
         }
         if(param1.r1)
         {
            ptype1.text = String(param1.r1);
         }
         else
         {
            ptype1.text = "0";
         }
         if(param1.r2)
         {
            ptype2.text = String(param1.r2);
         }
         else
         {
            ptype2.text = "0";
         }
         if(param1.r3)
         {
            ptype3.text = String(param1.r3);
         }
         else
         {
            ptype3.text = "0";
         }
         if(param1.r4)
         {
            ptype4.text = String(param1.r4);
         }
         else
         {
            ptype4.text = "0";
         }
      }
      
      public function set rank0(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._108280196rank0;
         if(_loc2_ !== param1)
         {
            this._108280196rank0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank0",_loc2_,param1));
         }
      }
      
      public function init() : void
      {
         if(visible)
         {
            _fristFlag = false;
            moveAll();
         }
         initMoveCanvas();
      }
      
      public function set tabBtn0(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141559tabBtn0;
         if(_loc2_ !== param1)
         {
            this._1554141559tabBtn0 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn0",_loc2_,param1));
         }
      }
      
      public function set tabBtn1(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141558tabBtn1;
         if(_loc2_ !== param1)
         {
            this._1554141558tabBtn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn1",_loc2_,param1));
         }
      }
      
      private function showLove() : void
      {
         var _loc1_:SendVDAYWishPanel = SendVDAYWishPanel(_core.view.getUI(ViewManager.POP_SEND_VDAY));
         _loc1_.show();
      }
      
      private function moveAll() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 11)
         {
            if(this["moveCav" + _loc1_])
            {
               this["moveCav" + _loc1_].beginMove();
            }
            _loc1_++;
         }
      }
      
      public function set ptype4(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._977658422ptype4;
         if(_loc2_ !== param1)
         {
            this._977658422ptype4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ptype4",_loc2_,param1));
         }
      }
      
      public function set otherdg(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1146157165otherdg;
         if(_loc2_ !== param1)
         {
            this._1146157165otherdg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"otherdg",_loc2_,param1));
         }
      }
      
      private function _VDAYPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_BasicTitleCanvas1.text = param1;
         },"_VDAYPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_BasicGlowButton3.label = param1;
         },"_VDAYPanel_BasicGlowButton3.label");
         result[3] = binding;
         binding = new Binding(this,function():Object
         {
            return otherAC;
         },function(param1:Object):void
         {
            otherdg.dataProvider = param1;
         },"otherdg.dataProvider");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[13];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_DataGridColumn1.headerText = param1;
         },"_VDAYPanel_DataGridColumn1.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_DataGridColumn2.headerText = param1;
         },"_VDAYPanel_DataGridColumn2.headerText");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_DataGridColumn3.headerText = param1;
         },"_VDAYPanel_DataGridColumn3.headerText");
         result[7] = binding;
         binding = new Binding(this,function():Object
         {
            return myAC;
         },function(param1:Object):void
         {
            mydg.dataProvider = param1;
         },"mydg.dataProvider");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[14];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_DataGridColumn4.headerText = param1;
         },"_VDAYPanel_DataGridColumn4.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[15];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_DataGridColumn5.headerText = param1;
         },"_VDAYPanel_DataGridColumn5.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.VDAYPANEL_U[17];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _VDAYPanel_DataGridColumn6.headerText = param1;
         },"_VDAYPanel_DataGridColumn6.headerText");
         result[11] = binding;
         return result;
      }
      
      protected function rankCavans_showHandler() : void
      {
         _core.remote.call("getMyProposals",new Responder(onGetMyProposals),_core.cid);
         _core.remote.call("getProposalsRank",new Responder(onGetRank));
      }
      
      [Bindable(event="propertyChange")]
      public function get mydg() : DataGrid
      {
         return this._3366703mydg;
      }
      
      private function _VDAYPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.VDAYPANEL_U[0];
         _loc1_ = Language.VDAYPANEL_U[9];
         _loc1_ = Language.VDAYPANEL_U[10];
         _loc1_ = Language.VDAYPANEL_U[1];
         _loc1_ = otherAC;
         _loc1_ = Language.VDAYPANEL_U[13];
         _loc1_ = Language.VDAYPANEL_U[15];
         _loc1_ = Language.VDAYPANEL_U[17];
         _loc1_ = myAC;
         _loc1_ = Language.VDAYPANEL_U[14];
         _loc1_ = Language.VDAYPANEL_U[15];
         _loc1_ = Language.VDAYPANEL_U[17];
      }
      
      [Bindable(event="propertyChange")]
      private function get otherAC() : ArrayCollection
      {
         return this._1146158286otherAC;
      }
      
      private function stopAll() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ < 11)
         {
            if(this["moveCav" + _loc1_])
            {
               this["moveCav" + _loc1_].stopMove();
            }
            _loc1_++;
         }
      }
      
      private function _VDAYPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _VDAYPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 100;
         _loc1_.sortable = false;
         BindingManager.executeBindings(this,"_VDAYPanel_DataGridColumn4",_VDAYPanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function tabBtnClick(param1:int) : void
      {
         vs.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ < 2)
         {
            this["tabBtn" + _loc2_].selected = false;
            _loc2_++;
         }
         this["tabBtn" + param1].selected = true;
      }
      
      public function ___VDAYPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
      
      [Bindable(event="propertyChange")]
      public function get rank() : LinkText
      {
         return this._3492908rank;
      }
      
      public function set moveCav10(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._1042054822moveCav10;
         if(_loc2_ !== param1)
         {
            this._1042054822moveCav10 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav10",_loc2_,param1));
         }
      }
      
      public function set rank(param1:LinkText) : void
      {
         var _loc2_:Object = this._3492908rank;
         if(_loc2_ !== param1)
         {
            this._3492908rank = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rank",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankCavans() : Canvas
      {
         return this._763441754rankCavans;
      }
      
      public function set mydg(param1:DataGrid) : void
      {
         var _loc2_:Object = this._3366703mydg;
         if(_loc2_ !== param1)
         {
            this._3366703mydg = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mydg",_loc2_,param1));
         }
      }
      
      private function set otherAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1146158286otherAC;
         if(_loc2_ !== param1)
         {
            this._1146158286otherAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"otherAC",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainCav() : Canvas
      {
         return this._830995295mainCav;
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabBtnClick(0);
      }
      
      private function _VDAYPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _VDAYPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "genderGWords";
         _loc1_.width = 50;
         _loc1_.sortable = false;
         BindingManager.executeBindings(this,"_VDAYPanel_DataGridColumn3",_VDAYPanel_DataGridColumn3);
         return _loc1_;
      }
      
      public function set vs(param1:ViewStack) : void
      {
         var _loc2_:Object = this._3773vs;
         if(_loc2_ !== param1)
         {
            this._3773vs = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vs",_loc2_,param1));
         }
      }
      
      private function fixMoveCanvaPos() : void
      {
         moveCav1.x = -71;
         moveCav2.x = 86;
         moveCav3.x = 238;
         moveCav4.x = 0;
         moveCav5.x = 224;
         moveCav6.x = 352;
         moveCav7.x = 480;
         moveCav8.x = 513;
         moveCav9.x = 661;
         moveCav10.x = 630;
      }
      
      [Bindable(event="propertyChange")]
      public function get rank0() : RoundedLabel
      {
         return this._108280196rank0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      public function set ptype3(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._977658423ptype3;
         if(_loc2_ !== param1)
         {
            this._977658423ptype3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ptype3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get otherdg() : DataGrid
      {
         return this._1146157165otherdg;
      }
      
      public function set ptype1(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._977658425ptype1;
         if(_loc2_ !== param1)
         {
            this._977658425ptype1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ptype1",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:VDAYPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _VDAYPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_VDAYPanelWatcherSetupUtil");
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
      
      public function set moveCav8(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932655moveCav8;
         if(_loc2_ !== param1)
         {
            this._104932655moveCav8 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav8",_loc2_,param1));
         }
      }
      
      public function set moveCav9(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932654moveCav9;
         if(_loc2_ !== param1)
         {
            this._104932654moveCav9 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav9",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav10() : VDAYMoveCanva
      {
         return this._1042054822moveCav10;
      }
      
      public function set moveCav5(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932658moveCav5;
         if(_loc2_ !== param1)
         {
            this._104932658moveCav5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav5",_loc2_,param1));
         }
      }
      
      public function set moveCav1(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932662moveCav1;
         if(_loc2_ !== param1)
         {
            this._104932662moveCav1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav1",_loc2_,param1));
         }
      }
      
      public function set moveCav6(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932657moveCav6;
         if(_loc2_ !== param1)
         {
            this._104932657moveCav6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav6",_loc2_,param1));
         }
      }
      
      public function ___VDAYPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         showLove();
      }
      
      public function onGetQxWishes(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1.length == 0)
         {
            return;
         }
         _core.VDAYWishesArr = [];
         for each(_loc2_ in param1)
         {
            _core.VDAYWishesArr.push(_loc2_);
         }
      }
      
      public function set rankCavans(param1:Canvas) : void
      {
         var _loc2_:Object = this._763441754rankCavans;
         if(_loc2_ !== param1)
         {
            this._763441754rankCavans = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankCavans",_loc2_,param1));
         }
      }
      
      private function _VDAYPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _VDAYPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "wish";
         _loc1_.sortable = false;
         _loc1_.dataTipField = "wish";
         _loc1_.showDataTips = true;
         BindingManager.executeBindings(this,"_VDAYPanel_DataGridColumn2",_VDAYPanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function initMoveCanvas() : *
      {
         var _loc1_:int = 1;
         while(_loc1_ < 11)
         {
            if(this["moveCav" + _loc1_])
            {
               this["moveCav" + _loc1_].setWishWords(Language.SHOWLOVEPANEL_S[_loc1_ + 3]);
            }
            _loc1_++;
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabBtnClick(1);
      }
      
      public function set moveCav4(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932659moveCav4;
         if(_loc2_ !== param1)
         {
            this._104932659moveCav4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav4",_loc2_,param1));
         }
      }
      
      private function _VDAYPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _VDAYPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "genderGWords";
         _loc1_.width = 50;
         _loc1_.sortable = false;
         BindingManager.executeBindings(this,"_VDAYPanel_DataGridColumn6",_VDAYPanel_DataGridColumn6);
         return _loc1_;
      }
      
      public function set moveCav7(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932656moveCav7;
         if(_loc2_ !== param1)
         {
            this._104932656moveCav7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav7",_loc2_,param1));
         }
      }
      
      public function onGetRank(param1:Array) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         if(param1.length < 1)
         {
            rank.text = "";
            return;
         }
         var _loc2_:String = "";
         for(_loc3_ in param1)
         {
            switch(_loc3_)
            {
               case 0:
                  _loc2_ += "花心萝卜: \n";
                  _loc2_ += param1[0].name + ", " + param1[0].gender + ", 次数: " + param1[0].data + "\n";
                  break;
               case 1:
                  _loc2_ += "心心相印: \n";
                  _loc2_ += param1[1].name + ", " + param1[1].gender + ", 次数: " + param1[1].data + "\n";
                  break;
               case 2:
                  _loc2_ += "万人倾心: \n";
                  _loc2_ += param1[2].name + ", " + param1[2].gender + ", 次数: " + param1[2].data + "\n";
            }
         }
         rank.text = _loc2_;
      }
      
      [Bindable(event="propertyChange")]
      public function get vs() : ViewStack
      {
         return this._3773vs;
      }
      
      [Bindable(event="propertyChange")]
      public function get ptype1() : RoundedLabel
      {
         return this._977658425ptype1;
      }
      
      [Bindable(event="propertyChange")]
      public function get ptype2() : RoundedLabel
      {
         return this._977658424ptype2;
      }
      
      public function set ptype2(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._977658424ptype2;
         if(_loc2_ !== param1)
         {
            this._977658424ptype2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ptype2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav1() : VDAYMoveCanva
      {
         return this._104932662moveCav1;
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav4() : VDAYMoveCanva
      {
         return this._104932659moveCav4;
      }
      
      public function set mainCav(param1:Canvas) : void
      {
         var _loc2_:Object = this._830995295mainCav;
         if(_loc2_ !== param1)
         {
            this._830995295mainCav = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainCav",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav7() : VDAYMoveCanva
      {
         return this._104932656moveCav7;
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav8() : VDAYMoveCanva
      {
         return this._104932655moveCav8;
      }
      
      public function set moveCav2(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932661moveCav2;
         if(_loc2_ !== param1)
         {
            this._104932661moveCav2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav2",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav5() : VDAYMoveCanva
      {
         return this._104932658moveCav5;
      }
      
      public function set moveCav3(param1:VDAYMoveCanva) : void
      {
         var _loc2_:Object = this._104932660moveCav3;
         if(_loc2_ !== param1)
         {
            this._104932660moveCav3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"moveCav3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav9() : VDAYMoveCanva
      {
         return this._104932654moveCav9;
      }
      
      public function __rankCavans_show(param1:FlexEvent) : void
      {
         rankCavans_showHandler();
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav2() : VDAYMoveCanva
      {
         return this._104932661moveCav2;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Number = NaN;
         super.visible = param1;
         if(param1)
         {
            fixMoveCanvaPos();
            if(!_fristFlag)
            {
               moveAll();
            }
            if(Boolean(vs) && vs.selectedIndex == 0)
            {
               _loc2_ = new Date().getTime() - _lastCheckTime;
               trace("interval:" + _loc2_);
               if(_loc2_ >= MIN_CHECK_INTERVAL)
               {
                  _lastCheckTime = new Date().getTime();
                  _core.remote.call("getVDAYWishes",new Responder(onGetQxWishes));
               }
            }
         }
         else
         {
            stopAll();
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get myAC() : ArrayCollection
      {
         return this._3365582myAC;
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav6() : VDAYMoveCanva
      {
         return this._104932657moveCav6;
      }
      
      [Bindable(event="propertyChange")]
      public function get moveCav3() : VDAYMoveCanva
      {
         return this._104932660moveCav3;
      }
      
      private function set myAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._3365582myAC;
         if(_loc2_ !== param1)
         {
            this._3365582myAC = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myAC",_loc2_,param1));
         }
      }
      
      private function _VDAYPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _VDAYPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         _loc1_.width = 100;
         _loc1_.sortable = false;
         BindingManager.executeBindings(this,"_VDAYPanel_DataGridColumn1",_VDAYPanel_DataGridColumn1);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ptype4() : RoundedLabel
      {
         return this._977658422ptype4;
      }
      
      private function _VDAYPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _VDAYPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "wish";
         _loc1_.sortable = false;
         _loc1_.dataTipField = "wish";
         _loc1_.showDataTips = true;
         BindingManager.executeBindings(this,"_VDAYPanel_DataGridColumn5",_VDAYPanel_DataGridColumn5);
         return _loc1_;
      }
   }
}

