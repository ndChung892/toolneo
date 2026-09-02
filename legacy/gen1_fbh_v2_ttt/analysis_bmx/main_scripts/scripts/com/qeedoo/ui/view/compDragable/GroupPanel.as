package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.object.Charactor;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.utils.ToolKit;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
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
   import mx.containers.HBox;
   import mx.containers.ViewStack;
   import mx.controls.Alert;
   import mx.controls.DataGrid;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Glow;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class GroupPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _GroupPanel_Canvas3:Canvas;
      
      public var _GroupPanel_Canvas4:Canvas;
      
      public var _GroupPanel_Canvas1:Canvas;
      
      private var _881418178tabBar:HBox;
      
      mx_internal var _bindings:Array = [];
      
      private var _11565827buttonTab:ViewStack;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _vm:ViewManager = ViewManager.getInstance();
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      public var _GroupPanel_BasicGlowButton1:BasicGlowButton;
      
      public var _GroupPanel_BasicGlowButton3:BasicGlowButton;
      
      public var _GroupPanel_BasicGlowButton4:BasicGlowButton;
      
      public var _GroupPanel_BasicGlowButton5:BasicGlowButton;
      
      public var _GroupPanel_BasicGlowButton6:BasicGlowButton;
      
      public var _GroupPanel_BasicGlowButton7:BasicGlowButton;
      
      public var _GroupPanel_BasicGlowButton8:BasicGlowButton;
      
      private var _1483226179groupList:DataGrid;
      
      private var _207684226glowEffect:Glow;
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _1378839318btnAfk:BasicGlowButton;
      
      private var _90794110_core:Core = Core.getInstance();
      
      private var _1138936882groupRequestList:DataGrid;
      
      public var _GroupPanel_DataGridColumn1:DataGridColumn;
      
      public var _GroupPanel_DataGridColumn2:DataGridColumn;
      
      public var _GroupPanel_DataGridColumn3:DataGridColumn;
      
      public var _GroupPanel_DataGridColumn4:DataGridColumn;
      
      public var _GroupPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      public var _GroupPanel_DataGridColumn6:DataGridColumn;
      
      public var _GroupPanel_DataGridColumn5:DataGridColumn;
      
      mx_internal var _watchers:Array = [];
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":310,
               "height":290,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_GroupPanel_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"groupTab",
                  "events":{"mouseMove":"__groupTab_mouseMove"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.top = "60";
                     this.bottom = "50";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "styleName":"RoundedGradientBorder",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GroupPanel_Canvas1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"groupList",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "columns":[_GroupPanel_DataGridColumn1_i(),_GroupPanel_DataGridColumn2_i(),_GroupPanel_DataGridColumn3_i()]
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GroupPanel_Canvas2",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":DataGrid,
                                    "id":"groupRequestList",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "resizableColumns":false,
                                          "draggableColumns":false,
                                          "columns":[_GroupPanel_DataGridColumn4_i(),_GroupPanel_DataGridColumn5_i(),_GroupPanel_DataGridColumn6_i()]
                                       };
                                    }
                                 })]
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":ViewStack,
                  "id":"buttonTab",
                  "events":{"mouseMove":"__buttonTab_mouseMove"},
                  "stylesFactory":function():void
                  {
                     this.left = "15";
                     this.right = "15";
                     this.bottom = "15";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "creationPolicy":"all",
                        "y":240,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GroupPanel_Canvas3",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_GroupPanel_BasicGlowButton1",
                                    "events":{"click":"___GroupPanel_BasicGlowButton1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CrystalBlueButton",
                                          "x":10,
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"btnAfk",
                                    "events":{"click":"__btnAfk_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CrystalBlueButton",
                                          "label":"Tạm rời",
                                          "x":75
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_GroupPanel_BasicGlowButton3",
                                    "events":{"click":"___GroupPanel_BasicGlowButton3_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CrystalBlueButton",
                                          "x":75,
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_GroupPanel_BasicGlowButton4",
                                    "events":{"click":"___GroupPanel_BasicGlowButton4_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CrystalBlueButton",
                                          "x":140,
                                          "width":60
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"_GroupPanel_BasicGlowButton5",
                                    "events":{"click":"___GroupPanel_BasicGlowButton5_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "styleName":"CrystalBlueButton",
                                          "x":205,
                                          "width":60
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"_GroupPanel_Canvas4",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "percentWidth":100,
                                 "percentHeight":100,
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":HBox,
                                    "stylesFactory":function():void
                                    {
                                       this.bottom = "0";
                                       this.horizontalGap = 5;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":10,
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_GroupPanel_BasicGlowButton6",
                                             "events":{"click":"___GroupPanel_BasicGlowButton6_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalBlueButton",
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_GroupPanel_BasicGlowButton7",
                                             "events":{"click":"___GroupPanel_BasicGlowButton7_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalBlueButton",
                                                   "width":60
                                                };
                                             }
                                          }),new UIComponentDescriptor({
                                             "type":BasicGlowButton,
                                             "id":"_GroupPanel_BasicGlowButton8",
                                             "events":{"click":"___GroupPanel_BasicGlowButton8_click"},
                                             "stylesFactory":function():void
                                             {
                                                this.paddingLeft = 0;
                                                this.paddingRight = 0;
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "styleName":"CrystalBlueButton",
                                                   "width":60
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
                  "type":HBox,
                  "id":"tabBar",
                  "stylesFactory":function():void
                  {
                     this.horizontalGap = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":25,
                        "y":40,
                        "styleName":"HTabWrapper",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn0",
                           "events":{"click":"__tabBtn0_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "selected":true,
                                 "width":60
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"tabBtn1",
                           "events":{"click":"__tabBtn1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"HorizontalTab",
                                 "width":60
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":BasicGlowButton,
                  "id":"tabBtn2",
                  "events":{"click":"__tabBtn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"BtnStdRed",
                        "width":60,
                        "x":235,
                        "y":35
                     };
                  }
               })]
            };
         }
      });
      
      private var _506350742groupTab:ViewStack;
      
      public var _GroupPanel_Canvas2:Canvas;
      
      public function GroupPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 310;
         this.height = 290;
         this.styleName = "StandardContent";
         _GroupPanel_Glow1_i();
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         GroupPanel._watcherSetupUtil = param1;
      }
      
      public function set buttonTab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._11565827buttonTab;
         if(_loc2_ !== param1)
         {
            this._11565827buttonTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"buttonTab",_loc2_,param1));
         }
      }
      
      private function leaveGroup() : void
      {
         _vm.hide(ViewManager.PANEL_GROUP);
         _core.remote.call("groupLeave",null);
      }
      
      private function invite() : void
      {
         if(_core.state == GamePredef.ST_BATTLE)
         {
            return;
         }
         _core.view.showSelect();
         _core.view.actionState = GamePredef.ACTION_INVITE;
      }
      
      public function ___GroupPanel_BasicGlowButton3_click(param1:MouseEvent) : void
      {
         kick();
      }
      
      private function _GroupPanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupPanel_DataGridColumn3 = _loc1_;
         _loc1_.dataField = "className";
         BindingManager.executeBindings(this,"_GroupPanel_DataGridColumn3",_GroupPanel_DataGridColumn3);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get buttonTab() : ViewStack
      {
         return this._11565827buttonTab;
      }
      
      public function set tabBtn2(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1554141557tabBtn2;
         if(_loc2_ !== param1)
         {
            this._1554141557tabBtn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBtn2",_loc2_,param1));
         }
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
      
      private function _GroupPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicTitleCanvas1.text = param1;
         },"_GroupPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_Canvas1.label = param1;
         },"_GroupPanel_Canvas1.label");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return _core.player.groupAC;
         },function(param1:Object):void
         {
            groupList.dataProvider = param1;
         },"groupList.dataProvider");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_DataGridColumn1.headerText = param1;
         },"_GroupPanel_DataGridColumn1.headerText");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_DataGridColumn2.headerText = param1;
         },"_GroupPanel_DataGridColumn2.headerText");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_DataGridColumn3.headerText = param1;
         },"_GroupPanel_DataGridColumn3.headerText");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_Canvas2.label = param1;
         },"_GroupPanel_Canvas2.label");
         result[6] = binding;
         binding = new Binding(this,function():Object
         {
            return _core.player.groupRequestAC;
         },function(param1:Object):void
         {
            groupRequestList.dataProvider = param1;
         },"groupRequestList.dataProvider");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_DataGridColumn4.headerText = param1;
         },"_GroupPanel_DataGridColumn4.headerText");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[4];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_DataGridColumn5.headerText = param1;
         },"_GroupPanel_DataGridColumn5.headerText");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_DataGridColumn6.headerText = param1;
         },"_GroupPanel_DataGridColumn6.headerText");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_Canvas3.label = param1;
         },"_GroupPanel_Canvas3.label");
         result[11] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.inGroup;
         },function(param1:Boolean):void
         {
            _GroupPanel_Canvas3.visible = param1;
         },"_GroupPanel_Canvas3.visible");
         result[12] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.isLeader;
         },function(param1:Boolean):void
         {
            _GroupPanel_BasicGlowButton1.visible = param1;
         },"_GroupPanel_BasicGlowButton1.visible");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicGlowButton1.label = param1;
         },"_GroupPanel_BasicGlowButton1.label");
         result[14] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.inGroup;
         },function(param1:Boolean):void
         {
            btnAfk.visible = param1;
         },"btnAfk.visible");
         result[15] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.isLeader;
         },function(param1:Boolean):void
         {
            _GroupPanel_BasicGlowButton3.visible = param1;
         },"_GroupPanel_BasicGlowButton3.visible");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicGlowButton3.label = param1;
         },"_GroupPanel_BasicGlowButton3.label");
         result[17] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.inGroup;
         },function(param1:Boolean):void
         {
            _GroupPanel_BasicGlowButton4.visible = param1;
         },"_GroupPanel_BasicGlowButton4.visible");
         result[18] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[2];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicGlowButton4.label = param1;
         },"_GroupPanel_BasicGlowButton4.label");
         result[19] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.isLeader;
         },function(param1:Boolean):void
         {
            _GroupPanel_BasicGlowButton5.visible = param1;
         },"_GroupPanel_BasicGlowButton5.visible");
         result[20] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicGlowButton5.label = param1;
         },"_GroupPanel_BasicGlowButton5.label");
         result[21] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_S[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_Canvas4.label = param1;
         },"_GroupPanel_Canvas4.label");
         result[22] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.isLeader || !_core.player.inGroup;
         },function(param1:Boolean):void
         {
            _GroupPanel_BasicGlowButton6.visible = param1;
         },"_GroupPanel_BasicGlowButton6.visible");
         result[23] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[5];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicGlowButton6.label = param1;
         },"_GroupPanel_BasicGlowButton6.label");
         result[24] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.isLeader || !_core.player.inGroup;
         },function(param1:Boolean):void
         {
            _GroupPanel_BasicGlowButton7.visible = param1;
         },"_GroupPanel_BasicGlowButton7.visible");
         result[25] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[6];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicGlowButton7.label = param1;
         },"_GroupPanel_BasicGlowButton7.label");
         result[26] = binding;
         binding = new Binding(this,function():Boolean
         {
            return _core.player.isLeader || !_core.player.inGroup;
         },function(param1:Boolean):void
         {
            _GroupPanel_BasicGlowButton8.visible = param1;
         },"_GroupPanel_BasicGlowButton8.visible");
         result[27] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[7];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _GroupPanel_BasicGlowButton8.label = param1;
         },"_GroupPanel_BasicGlowButton8.label");
         result[28] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[29] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[9];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[30] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.GROUPPANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[31] = binding;
         return result;
      }
      
      public function ___GroupPanel_BasicGlowButton7_click(param1:MouseEvent) : void
      {
         rejectRequest();
      }
      
      public function set glowEffect(param1:Glow) : void
      {
         var _loc2_:Object = this._207684226glowEffect;
         if(_loc2_ !== param1)
         {
            this._207684226glowEffect = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"glowEffect",_loc2_,param1));
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
      
      private function set _core(param1:Core) : void
      {
         var _loc2_:Object = this._90794110_core;
         if(_loc2_ !== param1)
         {
            this._90794110_core = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_core",_loc2_,param1));
         }
      }
      
      private function giveLeaderResult(param1:Boolean) : void
      {
         if(!param1)
         {
            _core.sysMidNote(Language.GROUPPANEL_S[2]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBar() : HBox
      {
         return this._881418178tabBar;
      }
      
      private function _GroupPanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupPanel_DataGridColumn6 = _loc1_;
         _loc1_.dataField = "className";
         BindingManager.executeBindings(this,"_GroupPanel_DataGridColumn6",_GroupPanel_DataGridColumn6);
         return _loc1_;
      }
      
      private function _GroupPanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupPanel_DataGridColumn2 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_GroupPanel_DataGridColumn2",_GroupPanel_DataGridColumn2);
         return _loc1_;
      }
      
      public function set groupTab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._506350742groupTab;
         if(_loc2_ !== param1)
         {
            this._506350742groupTab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupTab",_loc2_,param1));
         }
      }
      
      private function kick() : void
      {
         if(!groupList.selectedItem)
         {
            return;
         }
         var _loc1_:Number = Number(groupList.selectedItem.id);
         if(_loc1_ != _core.player.id)
         {
            if(groupList.numChildren < 2)
            {
               _vm.changeVisible(ViewManager.PANEL_GROUP);
            }
            _core.remote.call("groupKick",null,_loc1_);
         }
         else
         {
            _core.sysMidNote(Language.GROUPPANEL_S[0]);
         }
      }
      
      private function clearRequestList() : void
      {
         _core.player.groupRequestAC = new ArrayCollection();
      }
      
      public function ___GroupPanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         leaveGroup();
      }
      
      public function ___GroupPanel_BasicGlowButton8_click(param1:MouseEvent) : void
      {
         clearRequestList();
      }
      
      private function _GroupPanel_Glow1_i() : Glow
      {
         var _loc1_:Glow = new Glow();
         glowEffect = _loc1_;
         _loc1_.repeatCount = 10000;
         _loc1_.alphaFrom = 1;
         _loc1_.alphaTo = 1;
         _loc1_.blurXFrom = 0;
         _loc1_.blurXTo = 10;
         _loc1_.blurYFrom = 0;
         _loc1_.blurYTo = 10;
         _loc1_.color = 16135947;
         return _loc1_;
      }
      
      private function acceptRequest() : void
      {
         var cid:* = undefined;
         var checkEndHandler:* = function(param1:*):*
         {
            if(param1)
            {
               removeGroupRequest(cid);
            }
            else
            {
               _core.sysBlueMsg(Language.GROUPPANEL_S[6]);
            }
         };
         if(groupRequestList.selectedItem)
         {
            cid = groupRequestList.selectedItem.id;
            _core.remote.call("groupAdd",new Responder(checkEndHandler),cid);
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         tabClick(0);
      }
      
      private function _GroupPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.GROUPPANEL_U[4];
         _loc1_ = Language.GROUPPANEL_S[6];
         _loc1_ = _core.player.groupAC;
         _loc1_ = Language.GROUPPANEL_S[3];
         _loc1_ = Language.GROUPPANEL_S[4];
         _loc1_ = Language.GROUPPANEL_S[5];
         _loc1_ = Language.GROUPPANEL_S[7];
         _loc1_ = _core.player.groupRequestAC;
         _loc1_ = Language.GROUPPANEL_S[3];
         _loc1_ = Language.GROUPPANEL_S[4];
         _loc1_ = Language.GROUPPANEL_S[5];
         _loc1_ = Language.GROUPPANEL_S[8];
         _loc1_ = _core.player.inGroup;
         _loc1_ = _core.player.isLeader;
         _loc1_ = Language.GROUPPANEL_U[0];
         _loc1_ = _core.player.inGroup;
         _loc1_ = _core.player.isLeader;
         _loc1_ = Language.GROUPPANEL_U[1];
         _loc1_ = _core.player.inGroup;
         _loc1_ = Language.GROUPPANEL_U[2];
         _loc1_ = _core.player.isLeader;
         _loc1_ = Language.GROUPPANEL_U[3];
         _loc1_ = Language.GROUPPANEL_S[9];
         _loc1_ = _core.player.isLeader || !_core.player.inGroup;
         _loc1_ = Language.GROUPPANEL_U[5];
         _loc1_ = _core.player.isLeader || !_core.player.inGroup;
         _loc1_ = Language.GROUPPANEL_U[6];
         _loc1_ = _core.player.isLeader || !_core.player.inGroup;
         _loc1_ = Language.GROUPPANEL_U[7];
         _loc1_ = Language.GROUPPANEL_U[8];
         _loc1_ = Language.GROUPPANEL_U[9];
         _loc1_ = Language.GROUPPANEL_U[10];
      }
      
      private function _GroupPanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupPanel_DataGridColumn1 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_GroupPanel_DataGridColumn1",_GroupPanel_DataGridColumn1);
         return _loc1_;
      }
      
      public function set groupList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1483226179groupList;
         if(_loc2_ !== param1)
         {
            this._1483226179groupList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupList",_loc2_,param1));
         }
      }
      
      public function set tabBar(param1:HBox) : void
      {
         var _loc2_:Object = this._881418178tabBar;
         if(_loc2_ !== param1)
         {
            this._881418178tabBar = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tabBar",_loc2_,param1));
         }
      }
      
      private function _GroupPanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupPanel_DataGridColumn5 = _loc1_;
         _loc1_.dataField = "level";
         BindingManager.executeBindings(this,"_GroupPanel_DataGridColumn5",_GroupPanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn0() : BasicGlowButton
      {
         return this._1554141559tabBtn0;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn2() : BasicGlowButton
      {
         return this._1554141557tabBtn2;
      }
      
      public function ___GroupPanel_BasicGlowButton5_click(param1:MouseEvent) : void
      {
         invite();
      }
      
      public function __groupTab_mouseMove(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      public function onGroupRequest(param1:Object) : void
      {
         var exist:*;
         var ac:ArrayCollection = null;
         var obj:Object = param1;
         if(!obj)
         {
            return;
         }
         ac = _core.player.groupRequestAC;
         if(null == ac)
         {
            ac = new ArrayCollection();
            _core.player.groupRequestAC = ac;
         }
         exist = function():*
         {
            var _loc2_:int = 0;
            var _loc1_:Array = ac.source;
            if(null != _loc1_)
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.length)
               {
                  if(_loc1_[_loc2_].id == obj.id)
                  {
                     return true;
                  }
                  _loc2_++;
               }
            }
            return false;
         };
         if(!exist())
         {
            ac.addItem(obj);
            _core.sysMsg(Language.GROUPPANEL_S[11].replace("{name}",obj.name));
            _core.remote.groupReqSuccNotice(obj.id);
            _core.view.getUI(ViewManager.MAIN_SYS).setTeamButtonBig();
         }
      }
      
      private function giveGroupLeader() : void
      {
         if(!groupList.selectedItem)
         {
            return;
         }
         if(groupList.selectedItem.id != _core.player.id)
         {
            _core.remote.call("groupGiveLeader",new Responder(giveLeaderResult),groupList.selectedItem.id);
            _core.player.groupRequestAC = new ArrayCollection();
         }
         else
         {
            _core.sysMidNote(Language.GROUPPANEL_S[1]);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      public function set groupRequestList(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1138936882groupRequestList;
         if(_loc2_ !== param1)
         {
            this._1138936882groupRequestList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"groupRequestList",_loc2_,param1));
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:GroupPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _GroupPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_GroupPanelWatcherSetupUtil");
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
      public function get groupTab() : ViewStack
      {
         return this._506350742groupTab;
      }
      
      private function unGroupAfk(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.cid))
         {
            btnAfk.label = Language.GROUPPANEL_U[12];
         }
      }
      
      public function ___GroupPanel_BasicGlowButton1_click(param1:MouseEvent) : void
      {
         giveGroupLeader();
      }
      
      [Bindable(event="propertyChange")]
      public function get glowEffect() : Glow
      {
         return this._207684226glowEffect;
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         tabClick(1);
      }
      
      private function removeGroupRequest(param1:*) : void
      {
         var _loc4_:int = 0;
         var _loc2_:ArrayCollection = _core.player.groupRequestAC;
         var _loc3_:Array = _loc2_.source;
         if(null != _loc3_)
         {
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc3_[_loc4_].id == param1)
               {
                  _loc2_.removeItemAt(_loc4_);
               }
               _loc4_++;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get _core() : Core
      {
         return this._90794110_core;
      }
      
      private function _GroupPanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _GroupPanel_DataGridColumn4 = _loc1_;
         _loc1_.dataField = "name";
         BindingManager.executeBindings(this,"_GroupPanel_DataGridColumn4",_GroupPanel_DataGridColumn4);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get groupRequestList() : DataGrid
      {
         return this._1138936882groupRequestList;
      }
      
      public function playGlowEffect() : void
      {
         if(!glowEffect.isPlaying)
         {
            glowEffect.play([tabBtn2]);
         }
      }
      
      public function __btnAfk_click(param1:MouseEvent) : void
      {
         afk();
      }
      
      public function ___GroupPanel_BasicGlowButton6_click(param1:MouseEvent) : void
      {
         acceptRequest();
      }
      
      [Bindable(event="propertyChange")]
      public function get groupList() : DataGrid
      {
         return this._1483226179groupList;
      }
      
      public function setTab(param1:uint) : void
      {
         tabClick(param1);
      }
      
      public function set btnAfk(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1378839318btnAfk;
         if(_loc2_ !== param1)
         {
            this._1378839318btnAfk = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btnAfk",_loc2_,param1));
         }
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var value:Boolean = param1;
         super.visible = value;
         try
         {
            if(Boolean(this) && Boolean(this.btnAfk))
            {
               if(Boolean(_core) && Boolean(_core.player) && _core.player.groupAfk)
               {
                  btnAfk.label = "Hồi nhóm";
               }
               else
               {
                  btnAfk.label = "Tạm rời";
               }
            }
         }
         catch(e:*)
         {
            trace("btnAfk.label 初始化出错");
         }
      }
      
      private function afk() : void
      {
         var groupAc:ArrayCollection = null;
         var leader:Charactor = null;
         var i:* = undefined;
         var can_back:Boolean = false;
         var dis:Number = NaN;
         var func:Function = null;
         if(_core.player.inGroup && !_core.player.isLeader)
         {
            if(!_core.player.groupAfk)
            {
               _core.remote.call("groupAFK",new Responder(onGroupAfk));
            }
            else
            {
               groupAc = _core.player.groupAC;
               for(i in groupAc)
               {
                  if(Boolean(groupAc[i]) && Boolean(groupAc[i].isLeader))
                  {
                     if(groupAc[i].id)
                     {
                        leader = _core.getCharactor(groupAc[i].id);
                     }
                     else
                     {
                        leader = Charactor(groupAc[i]);
                     }
                  }
               }
               can_back = false;
               if(leader)
               {
                  if(leader.posMapId == _core.player.posMapId)
                  {
                     dis = ToolKit.getDisByXY(_core.player.posX,_core.player.posY,leader.posX,leader.posY);
                     if(dis < GamePredef.AFK_CAN_BACK_DIS)
                     {
                        can_back = true;
                     }
                  }
               }
               if(!can_back)
               {
                  if(Boolean(_core.groupMemberListArr) && Boolean(_core.groupMemberListArr[_core.cid]) && Boolean(_core.groupMemberListArr[_core.cid].groupAfk))
                  {
                     _core.player.groupAfk = _core.groupMemberListArr[_core.cid].groupAfk;
                  }
                  if(!_core.player.groupAfk)
                  {
                     _core.sysMidNote(Language.GROUPPANEL_U[15]);
                     return;
                  }
                  if(Boolean(_core.player.state) && (_core.player.state == GamePredef.ST_BATTLE || _core.player.state == GamePredef.ST_WATCH))
                  {
                     _core.sysMidNote(Language.GROUPPANEL_U[17]);
                     return;
                  }
                  func = function(param1:CloseEvent):void
                  {
                     if(param1.detail == Alert.YES)
                     {
                        _core.remote.call("unGroupAFK",new Responder(unGroupAfk));
                     }
                  };
                  Alert.show(Language.GROUPPANEL_U[13],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  _core.remote.call("unGroupAFK",new Responder(unGroupAfk),true);
               }
            }
         }
      }
      
      private function openGroupPlatform() : void
      {
         if(_core.player.level < 30)
         {
            Alert.show(Language.GROUP_RECRUIT_PANEL_S[11]);
            return;
         }
         var _loc1_:Object = _core.view.getUI(ViewManager.PANEL_GROUP_RECRUIT);
         _loc1_.show();
         if(glowEffect.isPlaying)
         {
            glowEffect.end();
            _loc1_.playGlowEffect();
            tabBtn2.filters = [];
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btnAfk() : BasicGlowButton
      {
         return this._1378839318btnAfk;
      }
      
      private function onGroupAfk(param1:Object) : void
      {
         if(Boolean(param1) && Boolean(param1.cid))
         {
            btnAfk.label = Language.GROUPPANEL_U[11];
         }
      }
      
      private function rejectRequest() : void
      {
         var _loc1_:* = undefined;
         if(groupRequestList.selectedItem)
         {
            _loc1_ = groupRequestList.selectedItem.id;
            _core.remote.groupReqDeny(_loc1_);
            removeGroupRequest(_loc1_);
         }
      }
      
      private function tabClick(param1:uint) : void
      {
         tabBtn0.selected = false;
         tabBtn1.selected = false;
         this["tabBtn" + param1].selected = true;
         groupTab.selectedIndex = param1;
         buttonTab.selectedIndex = param1;
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         openGroupPlatform();
      }
      
      public function __buttonTab_mouseMove(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
   }
}

