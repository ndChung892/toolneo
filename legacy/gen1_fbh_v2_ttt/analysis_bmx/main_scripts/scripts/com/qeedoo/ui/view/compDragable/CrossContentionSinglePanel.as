package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.effects.EnterFrameMove;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicGlowButton;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.CrossContentionIcon;
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
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class CrossContentionSinglePanel extends DragableCanvas implements IBindingClient
   {
      
      public static var MAP_ID:int;
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public static var bossData:Object = new Object();
      
      public static var mData:Object = new Object();
      
      public static const MOVE_DELAY:Number = 300;
      
      private var _62409574ContentionSingleState:DataGrid;
      
      private var _3046233cav1:Canvas;
      
      private var timeOutId:uint = 0;
      
      public var moveStep:Number = 20;
      
      private var _1003879380ownLag:Label;
      
      private var bg:Image;
      
      private var _1811209095totaStateList:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var downBtn:Image;
      
      private var _1554141559tabBtn0:BasicGlowButton;
      
      public var _CrossContentionSinglePanel_BasicGlowButton4:BasicGlowButton;
      
      private var _114581tab:ViewStack;
      
      private var _core:Core = Core.getInstance();
      
      private var moveE:EnterFrameMove = new EnterFrameMove();
      
      public var _CrossContentionSinglePanel_DataGridColumn1:DataGridColumn;
      
      public var _CrossContentionSinglePanel_DataGridColumn2:DataGridColumn;
      
      public var _CrossContentionSinglePanel_DataGridColumn3:DataGridColumn;
      
      public var _CrossContentionSinglePanel_DataGridColumn4:DataGridColumn;
      
      public var _CrossContentionSinglePanel_DataGridColumn5:DataGridColumn;
      
      public var _CrossContentionSinglePanel_DataGridColumn6:DataGridColumn;
      
      private var _1554141557tabBtn2:BasicGlowButton;
      
      private var _1025628825singleStateList:ArrayCollection = new ArrayCollection();
      
      private var rightBtn:Image;
      
      private var _1003870966ownTxt:Label;
      
      private var btnCanvas:Canvas;
      
      private var leftBtn:Image;
      
      private var _910732927ContentionServerState:DataGrid;
      
      private var _1024147356anameTxt:Label;
      
      private var _2126222779bossInfo:Label;
      
      public var oldX:Number = 0;
      
      public var oldY:Number = 0;
      
      private var _helpAlert:Alert;
      
      private var _530004280mainContainer:Canvas;
      
      private var icons:Array = [];
      
      private var _1024155770anameLag:Label;
      
      private var _3046235cav3:Canvas;
      
      private var _68590309bossLag:Label;
      
      private var timer:Timer;
      
      private var _68598723bossTxt:Label;
      
      private var _1708013002ContentionMyState:DataGrid;
      
      private var myData:ArrayCollection = new ArrayCollection();
      
      private var _1554141558tabBtn1:BasicGlowButton;
      
      private var _1287834292panelTitle:BasicTitleCanvas;
      
      private var serverData:ArrayCollection = new ArrayCollection();
      
      public var _CrossContentionSinglePanel_LinkButton1:LinkButton;
      
      mx_internal var _watchers:Array = [];
      
      private var btnBG:Image;
      
      private var bossIcons:Array = [];
      
      private var _3046234cav2:Canvas;
      
      private var btnType:int = 0;
      
      private var upBtn:Image;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var container1:Canvas;
      
      mx_internal var _bindings:Array = [];
      
      public var downX:Number = 0;
      
      public var downY:Number = 0;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":955,
               "height":600,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"panelTitle"
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "y":39,
                        "percentWidth":100,
                        "percentHeight":100,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"mainContainer",
                           "stylesFactory":function():void
                           {
                              this.left = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":760,
                                 "height":535,
                                 "styleName":"RoundedGradientBorder",
                                 "horizontalScrollPolicy":"off",
                                 "verticalScrollPolicy":"off"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":HBox,
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":770,
                                 "y":80,
                                 "styleName":"HTabWrapper",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtn0",
                                    "events":{"click":"__tabBtn0_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":55,
                                          "styleName":"HorizontalTab",
                                          "selected":true
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtn1",
                                    "events":{"click":"__tabBtn1_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":55,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":BasicGlowButton,
                                    "id":"tabBtn2",
                                    "events":{"click":"__tabBtn2_click"},
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "width":55,
                                          "styleName":"HorizontalTab"
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"anameLag",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.fontWeight = "bold";
                              this.fontSize = 16;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":770,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"anameTxt",
                           "stylesFactory":function():void
                           {
                              this.color = 16776960;
                              this.fontSize = 16;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":820,
                                 "y":0
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"ownLag",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.fontWeight = "bold";
                              this.fontSize = 16;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":770,
                                 "y":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"ownTxt",
                           "stylesFactory":function():void
                           {
                              this.color = 65535;
                              this.fontSize = 16;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":820,
                                 "y":20
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"bossLag",
                           "stylesFactory":function():void
                           {
                              this.color = 65280;
                              this.fontWeight = "bold";
                              this.fontSize = 16;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":770,
                                 "y":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"bossTxt",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 16;
                              this.color = 65280;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":820,
                                 "y":40
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"_CrossContentionSinglePanel_BasicGlowButton4",
                           "events":{"click":"___CrossContentionSinglePanel_BasicGlowButton4_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "8";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":40,
                                 "styleName":"BtnStdRed"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"bossInfo",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                              this.fontSize = 13;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":770,
                                 "y":62
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_CrossContentionSinglePanel_LinkButton1",
                           "events":{"click":"___CrossContentionSinglePanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                              this.bottom = "5";
                              this.color = 16770560;
                              this.textDecoration = "underline";
                           }
                        }),new UIComponentDescriptor({
                           "type":ViewStack,
                           "id":"tab",
                           "stylesFactory":function():void
                           {
                              this.right = "10";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":100,
                                 "width":175,
                                 "height":435,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"cav1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":530,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"ContentionSingleState",
                                             "events":{
                                                "itemClick":"__ContentionSingleState_itemClick",
                                                "rollOut":"__ContentionSingleState_rollOut",
                                                "itemRollOver":"__ContentionSingleState_itemRollOver"
                                             },
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "10";
                                                this.left = "10";
                                                this.right = "10";
                                                this.top = "10";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "columns":[_CrossContentionSinglePanel_DataGridColumn1_i(),_CrossContentionSinglePanel_DataGridColumn2_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"cav2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":530,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"ContentionServerState",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "50";
                                                this.left = "5";
                                                this.right = "5";
                                                this.top = "10";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "columns":[_CrossContentionSinglePanel_DataGridColumn3_i(),_CrossContentionSinglePanel_DataGridColumn4_i()]
                                                };
                                             }
                                          })]
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":Canvas,
                                    "id":"cav3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "height":530,
                                          "styleName":"RoundedGradientBorder",
                                          "childDescriptors":[new UIComponentDescriptor({
                                             "type":DataGrid,
                                             "id":"ContentionMyState",
                                             "stylesFactory":function():void
                                             {
                                                this.bottom = "50";
                                                this.left = "5";
                                                this.right = "5";
                                                this.top = "10";
                                                this.textAlign = "center";
                                             },
                                             "propertiesFactory":function():Object
                                             {
                                                return {
                                                   "resizableColumns":false,
                                                   "draggableColumns":false,
                                                   "sortableColumns":false,
                                                   "columns":[_CrossContentionSinglePanel_DataGridColumn5_i(),_CrossContentionSinglePanel_DataGridColumn6_i()]
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
               })]
            };
         }
      });
      
      public function CrossContentionSinglePanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 955;
         this.height = 600;
         this.styleName = "StandardContent";
         this.addEventListener("creationComplete",___CrossContentionSinglePanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         CrossContentionSinglePanel._watcherSetupUtil = param1;
      }
      
      private function _CrossContentionSinglePanel_DataGridColumn3_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionSinglePanel_DataGridColumn3 = _loc1_;
         _loc1_.width = 30;
         _loc1_.dataField = "aname";
         BindingManager.executeBindings(this,"_CrossContentionSinglePanel_DataGridColumn3",_CrossContentionSinglePanel_DataGridColumn3);
         return _loc1_;
      }
      
      private function mouseMove(param1:MouseEvent) : void
      {
         container1.x = param1.stageX - downX + oldX;
         container1.y = param1.stageY - downY + oldY;
         if(container1.x + bg.width < mainContainer.width)
         {
            container1.x = mainContainer.width - bg.width;
         }
         if(container1.x > 0)
         {
            container1.x = 0;
         }
         if(container1.y + bg.height < mainContainer.height)
         {
            container1.y = mainContainer.height - bg.height;
         }
         if(container1.y > 0)
         {
            container1.y = 0;
         }
      }
      
      public function set ownTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1003870966ownTxt;
         if(_loc2_ !== param1)
         {
            this._1003870966ownTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ownTxt",_loc2_,param1));
         }
      }
      
      private function mouseUp(param1:MouseEvent) : void
      {
         if(container1.hasEventListener(MouseEvent.MOUSE_UP))
         {
            container1.removeEventListener(MouseEvent.MOUSE_UP,mouseUp);
            container1.removeEventListener(MouseEvent.MOUSE_MOVE,mouseMove);
         }
      }
      
      private function btnMouseUp(param1:MouseEvent) : void
      {
         btnType = 0;
         if(this.stage.hasEventListener(MouseEvent.MOUSE_UP))
         {
            this.stage.removeEventListener(MouseEvent.MOUSE_UP,btnMouseUp);
         }
         if(Boolean(timer) && timer.running)
         {
            timer.stop();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ownLag() : Label
      {
         return this._1003879380ownLag;
      }
      
      [Bindable(event="propertyChange")]
      public function get ContentionMyState() : DataGrid
      {
         return this._1708013002ContentionMyState;
      }
      
      private function inMembers(param1:Object) : Boolean
      {
         if(!param1 || !param1.head)
         {
            return false;
         }
         var _loc2_:Object = param1.head;
         while(_loc2_)
         {
            if(Boolean(_loc2_.obj) && Number(_loc2_.obj) == _core.player.id)
            {
               return true;
            }
            _loc2_ = _loc2_.next;
         }
         return false;
      }
      
      private function _CrossContentionSinglePanel_DataGridColumn2_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionSinglePanel_DataGridColumn2 = _loc1_;
         _loc1_.width = 30;
         _loc1_.dataField = "osid";
         _loc1_.itemRenderer = _CrossContentionSinglePanel_ClassFactory2_c();
         BindingManager.executeBindings(this,"_CrossContentionSinglePanel_DataGridColumn2",_CrossContentionSinglePanel_DataGridColumn2);
         return _loc1_;
      }
      
      private function timerHandler(param1:TimerEvent) : void
      {
         if(btnType == 1)
         {
            toLeft();
         }
         else if(btnType == 2)
         {
            toUp();
         }
         else if(btnType == 3)
         {
            toRight();
         }
         else if(btnType == 4)
         {
            toDown();
         }
         else
         {
            btnType = 0;
            timer.stop();
         }
      }
      
      public function set ownLag(param1:Label) : void
      {
         var _loc2_:Object = this._1003879380ownLag;
         if(_loc2_ !== param1)
         {
            this._1003879380ownLag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ownLag",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get anameTxt() : Label
      {
         return this._1024147356anameTxt;
      }
      
      public function set ContentionMyState(param1:DataGrid) : void
      {
         var _loc2_:Object = this._1708013002ContentionMyState;
         if(_loc2_ !== param1)
         {
            this._1708013002ContentionMyState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ContentionMyState",_loc2_,param1));
         }
      }
      
      private function toRight(param1:MouseEvent = null) : void
      {
         container1.x += moveStep;
         if(container1.x > 0)
         {
            container1.x = 0;
         }
         if(param1)
         {
            btnType = 3;
            btnAutoMove();
         }
      }
      
      public function __tabBtn0_click(param1:MouseEvent) : void
      {
         btnClick(0);
      }
      
      private function toUp(param1:MouseEvent = null) : void
      {
         container1.y -= moveStep;
         if(container1.y + bg.height < mainContainer.height)
         {
            container1.y = mainContainer.height - bg.height;
         }
         if(param1)
         {
            btnType = 2;
            btnAutoMove();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ContentionServerState() : DataGrid
      {
         return this._910732927ContentionServerState;
      }
      
      private function _CrossContentionSinglePanel_DataGridColumn1_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionSinglePanel_DataGridColumn1 = _loc1_;
         _loc1_.width = 50;
         _loc1_.dataField = "aname";
         _loc1_.itemRenderer = _CrossContentionSinglePanel_ClassFactory1_c();
         BindingManager.executeBindings(this,"_CrossContentionSinglePanel_DataGridColumn1",_CrossContentionSinglePanel_DataGridColumn1);
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
      
      private function mapInit() : void
      {
         var _loc2_:CrossContentionIcon = null;
         if(container1)
         {
            return;
         }
         container1 = new Canvas();
         container1.addEventListener(MouseEvent.MOUSE_DOWN,mapClick);
         mainContainer.addChild(container1);
         bg = new Image();
         container1.addChild(bg);
         btnCanvas = new Canvas();
         btnBG = new Image();
         btnBG.addEventListener(MouseEvent.MOUSE_DOWN,iconClick);
         btnBG.source = ResManager.getIconUrl(4130220000324);
         btnCanvas.x = mainContainer.width - 230;
         btnCanvas.y = 10;
         leftBtn = new Image();
         leftBtn.buttonMode = true;
         leftBtn.x = 2;
         leftBtn.y = 26;
         leftBtn.source = ResManager.getIconUrl(4130220000328);
         rightBtn = new Image();
         rightBtn.buttonMode = true;
         rightBtn.x = 46;
         rightBtn.y = 26;
         rightBtn.source = ResManager.getIconUrl(4130220000327);
         upBtn = new Image();
         upBtn.buttonMode = true;
         upBtn.x = 26;
         upBtn.y = 2;
         upBtn.source = ResManager.getIconUrl(4130220000325);
         downBtn = new Image();
         downBtn.buttonMode = true;
         downBtn.x = 26;
         downBtn.y = 44;
         downBtn.source = ResManager.getIconUrl(4130220000326);
         btnCanvas.addChild(btnBG);
         btnCanvas.addChild(leftBtn);
         btnCanvas.addChild(rightBtn);
         btnCanvas.addChild(upBtn);
         btnCanvas.addChild(downBtn);
         mainContainer.addChild(btnCanvas);
         leftBtn.addEventListener(MouseEvent.MOUSE_DOWN,toRight);
         leftBtn.styleName = "CrystalBlueButton";
         rightBtn.addEventListener(MouseEvent.MOUSE_DOWN,toLeft);
         rightBtn.styleName = "CrystalBlueButton";
         upBtn.addEventListener(MouseEvent.MOUSE_DOWN,toDown);
         upBtn.styleName = "CrystalBlueButton";
         downBtn.addEventListener(MouseEvent.MOUSE_DOWN,toUp);
         downBtn.styleName = "CrystalBlueButton";
         var _loc1_:int = 1;
         while(_loc1_ < 101)
         {
            _loc2_ = new CrossContentionIcon();
            _loc2_.x = 15 + 130 * int((_loc1_ - 1) % 10);
            _loc2_.y = 15 + 130 * int((_loc1_ - 1) / 10);
            _loc2_.index = _loc1_;
            icons[_loc1_] = _loc2_;
            _loc2_.buttonMode = true;
            container1.addChild(_loc2_);
            _loc1_++;
         }
      }
      
      private function iconClick(param1:MouseEvent) : void
      {
         if(param1.target.x != 0 || param1.target.y != 0)
         {
            return;
         }
         downX = param1.stageX;
         downY = param1.stageY;
         oldX = btnCanvas.x;
         oldY = btnCanvas.y;
         mainContainer.addEventListener(MouseEvent.MOUSE_UP,iconMouseUp);
         mainContainer.addEventListener(MouseEvent.MOUSE_MOVE,iconMouseMove);
      }
      
      public function __ContentionSingleState_itemRollOver(param1:ListEvent) : void
      {
         onItemRollOver(param1);
      }
      
      private function btnClick(param1:int) : void
      {
         tab.selectedIndex = param1;
         var _loc2_:int = 0;
         while(_loc2_ <= tab.numChildren - 1)
         {
            if(_loc2_ == param1)
            {
               this["tabBtn" + _loc2_].selected = true;
            }
            else
            {
               this["tabBtn" + _loc2_].selected = false;
            }
            _loc2_++;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ContentionSingleState() : DataGrid
      {
         return this._62409574ContentionSingleState;
      }
      
      [Bindable(event="propertyChange")]
      public function get tabBtn1() : BasicGlowButton
      {
         return this._1554141558tabBtn1;
      }
      
      private function btnAutoMove() : void
      {
         if(!timer)
         {
            timer = new Timer(MOVE_DELAY);
            timer.addEventListener(TimerEvent.TIMER,timerHandler);
         }
         this.stage.addEventListener(MouseEvent.MOUSE_UP,btnMouseUp);
         timer.start();
      }
      
      private function onItemRollOver(param1:ListEvent) : void
      {
         var _loc4_:CrossContentionIcon = null;
         var _loc2_:int = int(param1.itemRenderer.data.id);
         var _loc3_:int = 1;
         while(_loc3_ <= 100)
         {
            _loc4_ = icons[_loc3_];
            if(_loc4_.index == _loc2_)
            {
               _loc4_.beSelected();
               if(timeOutId != 0)
               {
                  clearTimeout(timeOutId);
               }
               timeOutId = setTimeout(mapAutoMove,MOVE_DELAY,_loc4_);
            }
            else
            {
               _loc4_.beUnSelected();
            }
            _loc3_++;
         }
      }
      
      public function onGetCrossContentionSingleState(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:Object = null;
         var _loc9_:Object = null;
         var _loc10_:Object = null;
         var _loc11_:Number = NaN;
         var _loc12_:int = 0;
         var _loc13_:Object = null;
         mainContainer.visible = false;
         this.visible = true;
         MAP_ID = param1.mid;
         if(param1.lvlType)
         {
            CrossContentionTotalPanel.LEVLE_TYPE = param1.lvlType;
         }
         singleStateList.removeAll();
         mData = param1;
         bossData = param1.boss;
         anameTxt.text = GamePredef.CROSS_CONTENTION_MAP[MAP_ID].name;
         if(Boolean(param1) && Boolean(param1.osid))
         {
            _loc2_ = CrossContentionTotalPanel.getServerName(Number(param1.osid));
            ownTxt.text = Language.CROSS_CONTENTION_PANEL_U[35].toString().replace("{osid}",_loc2_);
            ownTxt.toolTip = CrossContentionTotalPanel.getUnitServersName(Number(param1.osid));
         }
         else
         {
            ownTxt.toolTip = "";
            ownTxt.text = Language.CROSS_CONTENTION_PANEL_U[34];
         }
         if(Boolean(param1 && param1.boss && param1.boss.bIndex != null && param1.boss.data && param1.boss.data[param1.boss.bIndex]) && Boolean(int(param1.boss.data[param1.boss.bIndex].state) == 2) && Boolean(param1.boss.data[param1.boss.bIndex].osid))
         {
            _loc2_ = CrossContentionTotalPanel.getServerName(Number(param1.boss.data[param1.boss.bIndex].osid));
            bossTxt.htmlText = Language.CROSS_CONTENTION_PANEL_U[81].toString().replace("{osid}",_loc2_);
         }
         else
         {
            bossTxt.text = Language.CROSS_CONTENTION_PANEL_U[22];
         }
         var _loc3_:int = 1;
         while(_loc3_ <= 100)
         {
            _loc9_ = {};
            _loc9_.p = GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[MAP_ID]][_loc3_].p;
            _loc9_.id = _loc3_;
            _loc9_.aname = Language.CROSS_CONTENTION_PANEL_U[67 + _loc9_.p] + "-" + _loc3_;
            if(Boolean(param1) && Boolean(param1["mData"]) && Boolean(param1["mData"][_loc3_]) && Boolean(param1["mData"][_loc3_].osid))
            {
               _loc2_ = CrossContentionTotalPanel.getServerName(Number(param1["mData"][_loc3_].osid));
               _loc9_.osid = Language.CROSS_CONTENTION_PANEL_U[16].toString().replace("{osid}",_loc2_);
            }
            else
            {
               _loc9_.osid = Language.CROSS_CONTENTION_PANEL_U[34];
            }
            singleStateList.addItem(_loc9_);
            _loc3_++;
         }
         serverData.removeAll();
         var _loc4_:Object = {};
         if(Boolean(param1) && Boolean(param1["mData"]))
         {
            for(_loc10_ in param1["mData"])
            {
               if(Number(_loc10_) > 0 && Boolean(param1["mData"][_loc10_].osid))
               {
                  _loc11_ = Number(param1["mData"][_loc10_].osid);
                  if(!_loc4_[_loc11_])
                  {
                     _loc4_[_loc11_] = {"num":0};
                  }
                  ++_loc4_[_loc11_].num;
               }
            }
         }
         for(_loc5_ in _loc4_)
         {
            _loc2_ = CrossContentionTotalPanel.getServerName(Number(_loc5_));
            serverData.addItem({
               "aname":Language.CROSS_CONTENTION_PANEL_U[35].toString().replace("{osid}",_loc2_),
               "num":_loc4_[_loc5_].num
            });
         }
         myData.removeAll();
         _loc6_ = [{
            "pname":Language.CROSS_CONTENTION_PANEL_U[68],
            "num":0
         },{
            "pname":Language.CROSS_CONTENTION_PANEL_U[69],
            "num":0
         },{
            "pname":Language.CROSS_CONTENTION_PANEL_U[70],
            "num":0
         },{
            "pname":Language.CROSS_CONTENTION_PANEL_U[71],
            "num":0
         },{
            "pname":Language.CROSS_CONTENTION_PANEL_U[72],
            "num":0
         }];
         _loc7_ = GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[param1.mid]];
         if(Boolean(param1) && Boolean(param1["mData"]))
         {
            for(_loc10_ in param1["mData"])
            {
               if(Number(_loc10_) > 0 && param1["mData"][_loc10_].osid == CrossContentionTotalPanel._ORIGINAL_SERVER_ID && inMembers(param1["mData"][_loc10_].members))
               {
                  _loc11_ = Number(param1["mData"][_loc10_].osid);
                  _loc12_ = int(_loc7_[_loc10_].p);
                  ++_loc6_[_loc12_ - 1].num;
               }
            }
         }
         var _loc8_:int = 0;
         while(_loc8_ < _loc6_.length)
         {
            _loc13_ = _loc6_[_loc8_];
            myData.addItem({
               "p":_loc8_,
               "pname":_loc13_.pname,
               "num":_loc13_.num
            });
            _loc8_++;
         }
         mapRefresh();
         mainContainer.visible = true;
      }
      
      public function set cav1(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046233cav1;
         if(_loc2_ !== param1)
         {
            this._3046233cav1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav1",_loc2_,param1));
         }
      }
      
      public function onOpenAreaPanel(param1:Object) : void
      {
         var _loc2_:CrossContentionIcon = icons[param1];
         if(_loc2_)
         {
            _loc2_.showAlert(false);
         }
      }
      
      public function set cav3(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046235cav3;
         if(_loc2_ !== param1)
         {
            this._3046235cav3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav3",_loc2_,param1));
         }
      }
      
      private function howToPlay() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         var _loc1_:String = Language.CROSS_CONTENTION_PANEL_U[131].toString();
         _helpAlert = Alert.show(_loc1_,Language.CROSS_CONTENTION_PANEL_U[131].toString(),Alert.YES,null,null);
      }
      
      public function ___CrossContentionSinglePanel_LinkButton1_click(param1:MouseEvent) : void
      {
         howToPlay();
      }
      
      public function set cav2(param1:Canvas) : void
      {
         var _loc2_:Object = this._3046234cav2;
         if(_loc2_ !== param1)
         {
            this._3046234cav2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cav2",_loc2_,param1));
         }
      }
      
      private function findBoss() : void
      {
         var _loc1_:CrossContentionIcon = bossIcons[0];
         if(_loc1_)
         {
            mapAutoMove(_loc1_);
         }
      }
      
      public function set anameTxt(param1:Label) : void
      {
         var _loc2_:Object = this._1024147356anameTxt;
         if(_loc2_ !== param1)
         {
            this._1024147356anameTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"anameTxt",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get panelTitle() : BasicTitleCanvas
      {
         return this._1287834292panelTitle;
      }
      
      private function set singleStateList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1025628825singleStateList;
         if(_loc2_ !== param1)
         {
            this._1025628825singleStateList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"singleStateList",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mainContainer() : Canvas
      {
         return this._530004280mainContainer;
      }
      
      private function _CrossContentionSinglePanel_ClassFactory3_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CrossContentionSinglePanel_inlineComponent3;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         var _loc2_:Object = null;
         super.visible = param1;
         if(Boolean(param1) && Boolean(_core.player) && _core.player.level < 50)
         {
            return;
         }
         if(param1)
         {
            initView();
            _loc2_ = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_SINGLE_INFO);
            if(Boolean(_loc2_) && Boolean(_loc2_.visible))
            {
               _loc2_.visible = false;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bossLag() : Label
      {
         return this._68590309bossLag;
      }
      
      public function __ContentionSingleState_itemClick(param1:ListEvent) : void
      {
         onItemClick(param1);
      }
      
      public function __tabBtn2_click(param1:MouseEvent) : void
      {
         btnClick(2);
      }
      
      public function set ContentionServerState(param1:DataGrid) : void
      {
         var _loc2_:Object = this._910732927ContentionServerState;
         if(_loc2_ !== param1)
         {
            this._910732927ContentionServerState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ContentionServerState",_loc2_,param1));
         }
      }
      
      public function showPanel(param1:int) : void
      {
         _core.remote.call("getCrossContentionSingleState",null,param1);
      }
      
      public function __ContentionSingleState_rollOut(param1:MouseEvent) : void
      {
         onItemRollOut(param1);
      }
      
      private function set totaStateList(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1811209095totaStateList;
         if(_loc2_ !== param1)
         {
            this._1811209095totaStateList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"totaStateList",_loc2_,param1));
         }
      }
      
      private function init() : void
      {
      }
      
      public function set anameLag(param1:Label) : void
      {
         var _loc2_:Object = this._1024155770anameLag;
         if(_loc2_ !== param1)
         {
            this._1024155770anameLag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"anameLag",_loc2_,param1));
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
      
      private function onItemClick(param1:ListEvent) : void
      {
         var _loc4_:CrossContentionIcon = null;
         var _loc5_:Number = NaN;
         var _loc2_:int = int(param1.itemRenderer.data.id);
         var _loc3_:* = _core.view.getUI(ViewManager.PANEL_CROSS_CONTENTION_AREA);
         if(_loc3_)
         {
            _loc3_.areaId = _loc2_;
            _loc3_.mapId = MAP_ID;
            _loc3_.mapData = mData;
            _loc3_.isBoss = false;
            _loc4_ = icons[_loc2_];
            _loc5_ = 0;
            if(_loc4_)
            {
               _loc5_ = _loc4_.iconUrl;
            }
            _loc3_.showPanel(mData,_loc5_);
            _core.remote.call("crossContentionOpenPointPanel",null,_loc2_);
         }
      }
      
      private function _CrossContentionSinglePanel_ClassFactory2_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CrossContentionSinglePanel_inlineComponent2;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get ownTxt() : Label
      {
         return this._1003870966ownTxt;
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
      
      private function toLeft(param1:MouseEvent = null) : void
      {
         container1.x -= moveStep;
         if(container1.x + bg.width < mainContainer.width)
         {
            container1.x = mainContainer.width - bg.width;
         }
         if(param1)
         {
            btnType = 1;
            btnAutoMove();
         }
      }
      
      private function _CrossContentionSinglePanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            panelTitle.text = param1;
         },"panelTitle.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[1];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn0.label = param1;
         },"tabBtn0.label");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[89];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn1.label = param1;
         },"tabBtn1.label");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[3];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            tabBtn2.label = param1;
         },"tabBtn2.label");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[77];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            anameLag.text = param1;
         },"anameLag.text");
         result[4] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[78];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            ownLag.text = param1;
         },"ownLag.text");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[79];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bossLag.text = param1;
         },"bossLag.text");
         result[6] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[157];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_BasicGlowButton4.label = param1;
         },"_CrossContentionSinglePanel_BasicGlowButton4.label");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[80];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            bossInfo.text = param1;
         },"bossInfo.text");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[27];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_LinkButton1.label = param1;
         },"_CrossContentionSinglePanel_LinkButton1.label");
         result[9] = binding;
         binding = new Binding(this,function():Object
         {
            return singleStateList;
         },function(param1:Object):void
         {
            ContentionSingleState.dataProvider = param1;
         },"ContentionSingleState.dataProvider");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[10];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_DataGridColumn1.headerText = param1;
         },"_CrossContentionSinglePanel_DataGridColumn1.headerText");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_DataGridColumn2.headerText = param1;
         },"_CrossContentionSinglePanel_DataGridColumn2.headerText");
         result[12] = binding;
         binding = new Binding(this,function():Object
         {
            return serverData;
         },function(param1:Object):void
         {
            ContentionServerState.dataProvider = param1;
         },"ContentionServerState.dataProvider");
         result[13] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[11];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_DataGridColumn3.headerText = param1;
         },"_CrossContentionSinglePanel_DataGridColumn3.headerText");
         result[14] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[75];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_DataGridColumn4.headerText = param1;
         },"_CrossContentionSinglePanel_DataGridColumn4.headerText");
         result[15] = binding;
         binding = new Binding(this,function():Object
         {
            return myData;
         },function(param1:Object):void
         {
            ContentionMyState.dataProvider = param1;
         },"ContentionMyState.dataProvider");
         result[16] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[76];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_DataGridColumn5.headerText = param1;
         },"_CrossContentionSinglePanel_DataGridColumn5.headerText");
         result[17] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.CROSS_CONTENTION_PANEL_U[67];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _CrossContentionSinglePanel_DataGridColumn6.headerText = param1;
         },"_CrossContentionSinglePanel_DataGridColumn6.headerText");
         result[18] = binding;
         return result;
      }
      
      public function set tab(param1:ViewStack) : void
      {
         var _loc2_:Object = this._114581tab;
         if(_loc2_ !== param1)
         {
            this._114581tab = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tab",_loc2_,param1));
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
      
      public function ___CrossContentionSinglePanel_BasicGlowButton4_click(param1:MouseEvent) : void
      {
         findBoss();
      }
      
      public function set ContentionSingleState(param1:DataGrid) : void
      {
         var _loc2_:Object = this._62409574ContentionSingleState;
         if(_loc2_ !== param1)
         {
            this._62409574ContentionSingleState = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ContentionSingleState",_loc2_,param1));
         }
      }
      
      private function _CrossContentionSinglePanel_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = CrossContentionSinglePanel_inlineComponent1;
         _loc1_.properties = {"outerDocument":this};
         return _loc1_;
      }
      
      private function _CrossContentionSinglePanel_DataGridColumn6_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionSinglePanel_DataGridColumn6 = _loc1_;
         _loc1_.width = 30;
         _loc1_.dataField = "num";
         BindingManager.executeBindings(this,"_CrossContentionSinglePanel_DataGridColumn6",_CrossContentionSinglePanel_DataGridColumn6);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav1() : Canvas
      {
         return this._3046233cav1;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav3() : Canvas
      {
         return this._3046235cav3;
      }
      
      [Bindable(event="propertyChange")]
      public function get cav2() : Canvas
      {
         return this._3046234cav2;
      }
      
      private function iconMouseUp(param1:MouseEvent) : void
      {
         if(mainContainer.hasEventListener(MouseEvent.MOUSE_UP))
         {
            mainContainer.removeEventListener(MouseEvent.MOUSE_UP,iconMouseUp);
            mainContainer.removeEventListener(MouseEvent.MOUSE_MOVE,iconMouseMove);
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
      
      [Bindable(event="propertyChange")]
      private function get singleStateList() : ArrayCollection
      {
         return this._1025628825singleStateList;
      }
      
      private function _CrossContentionSinglePanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[0];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[1];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[89];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[3];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[77];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[78];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[79];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[157];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[80];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[27];
         _loc1_ = singleStateList;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[10];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[11];
         _loc1_ = serverData;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[11];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[75];
         _loc1_ = myData;
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[76];
         _loc1_ = Language.CROSS_CONTENTION_PANEL_U[67];
      }
      
      public function set bossInfo(param1:Label) : void
      {
         var _loc2_:Object = this._2126222779bossInfo;
         if(_loc2_ !== param1)
         {
            this._2126222779bossInfo = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossInfo",_loc2_,param1));
         }
      }
      
      private function _CrossContentionSinglePanel_DataGridColumn5_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionSinglePanel_DataGridColumn5 = _loc1_;
         _loc1_.width = 30;
         _loc1_.dataField = "pname";
         _loc1_.itemRenderer = _CrossContentionSinglePanel_ClassFactory3_c();
         BindingManager.executeBindings(this,"_CrossContentionSinglePanel_DataGridColumn5",_CrossContentionSinglePanel_DataGridColumn5);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      private function get totaStateList() : ArrayCollection
      {
         return this._1811209095totaStateList;
      }
      
      private function mapClick(param1:MouseEvent) : void
      {
         downX = param1.stageX;
         downY = param1.stageY;
         oldX = container1.x;
         oldY = container1.y;
         container1.addEventListener(MouseEvent.MOUSE_UP,mouseUp);
         container1.addEventListener(MouseEvent.MOUSE_MOVE,mouseMove);
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:CrossContentionSinglePanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _CrossContentionSinglePanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_CrossContentionSinglePanelWatcherSetupUtil");
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
      public function get anameLag() : Label
      {
         return this._1024155770anameLag;
      }
      
      private function mapAutoMove(param1:CrossContentionIcon) : void
      {
         if(!param1)
         {
            return;
         }
         if(moveE.active)
         {
            moveE.destroy();
         }
         var _loc2_:Number = mainContainer.width / 2 - param1.x - container1.x;
         var _loc3_:Number = mainContainer.height / 2 - param1.y - container1.y;
         var _loc4_:Number = container1.x + _loc2_;
         var _loc5_:Number = container1.y + _loc3_;
         if(_loc4_ > 0)
         {
            _loc2_ = -container1.x;
         }
         else if(_loc4_ + bg.width < mainContainer.width)
         {
            _loc2_ = mainContainer.width - bg.width - container1.x;
         }
         if(_loc5_ > 0)
         {
            _loc3_ = -container1.y;
         }
         else if(_loc5_ + bg.height < mainContainer.height)
         {
            _loc3_ = mainContainer.height - bg.height - container1.y;
         }
         moveE.target = container1;
         moveE.stepLength = moveStep * 2;
         moveE.xBy = _loc2_;
         moveE.yBy = _loc3_;
         moveE.play(true);
      }
      
      private function iconMouseMove(param1:MouseEvent) : void
      {
         btnCanvas.x = param1.stageX - downX + oldX;
         btnCanvas.y = param1.stageY - downY + oldY;
         if(btnCanvas.x + btnCanvas.width > mainContainer.width)
         {
            btnCanvas.x = mainContainer.width - btnCanvas.width;
         }
         if(btnCanvas.x < 0)
         {
            btnCanvas.x = 0;
         }
         if(btnCanvas.y + btnCanvas.height > mainContainer.height)
         {
            btnCanvas.y = mainContainer.height - btnCanvas.height;
         }
         if(btnCanvas.y < 0)
         {
            btnCanvas.y = 0;
         }
      }
      
      public function set bossTxt(param1:Label) : void
      {
         var _loc2_:Object = this._68598723bossTxt;
         if(_loc2_ !== param1)
         {
            this._68598723bossTxt = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossTxt",_loc2_,param1));
         }
      }
      
      private function onItemRollOut(param1:MouseEvent) : void
      {
         var _loc3_:CrossContentionIcon = null;
         var _loc2_:int = 1;
         while(_loc2_ <= 100)
         {
            _loc3_ = icons[_loc2_];
            _loc3_.beUnSelected();
            _loc2_++;
         }
         if(moveE.active)
         {
            moveE.destroy();
         }
         if(timeOutId != 0)
         {
            clearTimeout(timeOutId);
            timeOutId = 0;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get tab() : ViewStack
      {
         return this._114581tab;
      }
      
      public function set mainContainer(param1:Canvas) : void
      {
         var _loc2_:Object = this._530004280mainContainer;
         if(_loc2_ !== param1)
         {
            this._530004280mainContainer = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mainContainer",_loc2_,param1));
         }
      }
      
      public function __tabBtn1_click(param1:MouseEvent) : void
      {
         btnClick(1);
      }
      
      [Bindable(event="propertyChange")]
      public function get bossInfo() : Label
      {
         return this._2126222779bossInfo;
      }
      
      private function toDown(param1:MouseEvent = null) : void
      {
         container1.y += moveStep;
         if(container1.y > 0)
         {
            container1.y = 0;
         }
         if(param1)
         {
            btnType = 4;
            btnAutoMove();
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bossTxt() : Label
      {
         return this._68598723bossTxt;
      }
      
      private function _CrossContentionSinglePanel_DataGridColumn4_i() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _CrossContentionSinglePanel_DataGridColumn4 = _loc1_;
         _loc1_.width = 30;
         _loc1_.dataField = "num";
         BindingManager.executeBindings(this,"_CrossContentionSinglePanel_DataGridColumn4",_CrossContentionSinglePanel_DataGridColumn4);
         return _loc1_;
      }
      
      public function set bossLag(param1:Label) : void
      {
         var _loc2_:Object = this._68590309bossLag;
         if(_loc2_ !== param1)
         {
            this._68590309bossLag = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bossLag",_loc2_,param1));
         }
      }
      
      private function onGetTotalStateData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         for(_loc2_ in param1)
         {
            _loc3_ = {};
            totaStateList.addItem(_loc3_);
         }
      }
      
      override public function initView() : void
      {
         mapInit();
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
      }
      
      public function mapRefresh() : void
      {
         var _loc3_:CrossContentionIcon = null;
         var _loc1_:Object = GamePredef.CROSS_CONTENTION_P_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[MAP_ID]];
         bg.source = ResManager.getIconUrl(Number(_loc1_.bp));
         var _loc2_:Object = GamePredef.CROSS_CONTENTION_BOSS_DATA[MAP_ID].data;
         var _loc4_:int = 0;
         while(_loc4_ < Math.max(bossIcons.length,bossData.data.length))
         {
            _loc3_ = bossIcons[_loc4_];
            if(!_loc3_)
            {
               _loc3_ = new CrossContentionIcon();
               _loc3_.buttonMode = true;
               _loc3_.isBoss = true;
               bossIcons[_loc4_] = _loc3_;
               container1.addChild(_loc3_);
            }
            if(bossData.data[_loc4_])
            {
               _loc3_.visible = true;
               _loc3_.index = _loc4_;
               _loc3_.x = _loc2_[_loc4_].p[0];
               _loc3_.y = _loc2_[_loc4_].p[1];
            }
            else
            {
               _loc3_.visible = false;
            }
            _loc3_.refersh();
            _loc4_++;
         }
         var _loc5_:Object = GamePredef.CROSS_CONTENTION_REC_TEMP_DATA[GamePredef.CROSS_CONTENTION_MAP_REC_INIT[MAP_ID]];
         _loc4_ = 1;
         while(_loc4_ < 101)
         {
            _loc3_ = icons[_loc4_];
            if(_loc3_)
            {
               _loc3_.refersh();
               if(_loc3_.isBoss)
               {
                  _loc3_.x = GamePredef.CROSS_CONTENTION_BOSS_DATA[MAP_ID].data[0].p[0];
                  _loc3_.y = GamePredef.CROSS_CONTENTION_BOSS_DATA[MAP_ID].data[0].p[1];
               }
               else
               {
                  _loc3_.x = _loc5_[_loc4_].x;
                  _loc3_.y = _loc5_[_loc4_].y;
               }
            }
            _loc4_++;
         }
      }
      
      public function ___CrossContentionSinglePanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         init();
      }
   }
}

