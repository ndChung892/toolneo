package com.qeedoo.ui.view.compDragable
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.data.GameData;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.utils.TimeUtil;
   import com.qeedoo.game.view.ViewManager;
   import com.qeedoo.ui.resource.ResManager;
   import com.qeedoo.ui.view.comp.BasicTitleCanvas;
   import com.qeedoo.ui.view.comp.DragableCanvas;
   import com.qeedoo.ui.view.comp.ItemSlot;
   import com.qeedoo.ui.view.comp.RebateEverydayOneCanvas;
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
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.LinkButton;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.managers.PopUpManager;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RebateEverydayPanel extends DragableCanvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _100525953item4:ItemSlot;
      
      private var rebateEverydayExp:Number = 0;
      
      private var _helpAlert:Alert;
      
      private var _3034453btn1:Button;
      
      private var rebateEverydayData:Object = {};
      
      private var _100525950item1:ItemSlot;
      
      public var _RebateEverydayPanel_Image1:Image;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var RebateEverydayCanvasObj:Object = {};
      
      private var _1188525589imagetexiao:Image;
      
      private var _100525955item6:ItemSlot;
      
      private var _1606289880endtime:Label;
      
      private var _alert:Alert;
      
      private var _100525952item3:ItemSlot;
      
      private var _core:Core = Core.getInstance();
      
      mx_internal var _watchers:Array = [];
      
      private var _3756vb:VBox;
      
      private var _97884btn:Button;
      
      public var _RebateEverydayPanel_LinkButton1:LinkButton;
      
      private var rebateEverydayConf:Object = {};
      
      private var _100525954item5:ItemSlot;
      
      private var _106845584point:Label;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _100525951item2:ItemSlot;
      
      private var _2128341457starttime:Label;
      
      mx_internal var _bindings:Array = [];
      
      private var _100525956item7:ItemSlot;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":DragableCanvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":670,
               "height":450,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_RebateEverydayPanel_BasicTitleCanvas1",
                  "stylesFactory":function():void
                  {
                     this.fontSize = 14;
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"RoundedGradientBorder",
                        "label":"Hornor",
                        "y":35,
                        "width":650,
                        "height":400,
                        "x":10,
                        "horizontalScrollPolicy":"off",
                        "verticalScrollPolicy":"off",
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Image,
                           "id":"_RebateEverydayPanel_Image1",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":0,
                                 "percentWidth":100,
                                 "percentHeight":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":0,
                                 "y":10,
                                 "width":220,
                                 "height":380,
                                 "horizontalScrollPolicy":"off",
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":VBox,
                                    "id":"vb",
                                    "stylesFactory":function():void
                                    {
                                       this.backgroundAlpha = 0;
                                       this.top = "0";
                                       this.verticalGap = 10;
                                    },
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "percentWidth":100,
                                          "percentHeight":100,
                                          "horizontalScrollPolicy":"off",
                                          "x":0
                                       };
                                    }
                                 })]
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
                                 "styleName":"rebateEverydayLQ",
                                 "x":380,
                                 "y":330,
                                 "width":115,
                                 "height":47,
                                 "visible":false
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Image,
                           "id":"imagetexiao",
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":312,
                                 "y":304,
                                 "width":250,
                                 "height":100
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "id":"btn",
                           "events":{"click":"__btn_click"},
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"rebateEverydayDH",
                                 "x":336,
                                 "y":330,
                                 "width":202,
                                 "height":47
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Canvas,
                           "id":"rightCanvas",
                           "stylesFactory":function():void
                           {
                              this.backgroundAlpha = 1;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"CanvasBorder",
                                 "x":225,
                                 "y":222,
                                 "width":420,
                                 "height":100,
                                 "childDescriptors":[new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item1",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":15,
                                          "y":31,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item2",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":75,
                                          "y":31,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item3",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":135,
                                          "y":31,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item4",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":195,
                                          "y":31,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item5",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":255,
                                          "y":31,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item6",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":315,
                                          "y":31,
                                          "movable":false
                                       };
                                    }
                                 }),new UIComponentDescriptor({
                                    "type":ItemSlot,
                                    "id":"item7",
                                    "propertiesFactory":function():Object
                                    {
                                       return {
                                          "x":375,
                                          "y":31,
                                          "movable":false
                                       };
                                    }
                                 })]
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"point",
                           "stylesFactory":function():void
                           {
                              this.textAlign = "center";
                              this.fontSize = 12;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":336,
                                 "y":380,
                                 "width":202
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":LinkButton,
                           "id":"_RebateEverydayPanel_LinkButton1",
                           "events":{"click":"___RebateEverydayPanel_LinkButton1_click"},
                           "stylesFactory":function():void
                           {
                              this.textAlign = "right";
                              this.color = 16775802;
                              this.textDecoration = "underline";
                              this.fontSize = 12;
                              this.fontWeight = "normal";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "width":75,
                                 "height":20,
                                 "x":560,
                                 "y":10
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"endtime",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "right";
                              this.color = 16775802;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":399,
                                 "y":200,
                                 "width":241
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Label,
                           "id":"starttime",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "right";
                              this.color = 16775802;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":399,
                                 "y":187,
                                 "width":241
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public var _RebateEverydayPanel_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _886301036rightCanvas:Canvas;
      
      public function RebateEverydayPanel()
      {
         super();
         mx_internal::_document = this;
         this.width = 670;
         this.height = 450;
         this.styleName = "StandardContent";
         this.cacheAsBitmap = true;
         this.x = 103;
         this.y = 102;
         this.addEventListener("creationComplete",___RebateEverydayPanel_DragableCanvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RebateEverydayPanel._watcherSetupUtil = param1;
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
      
      public function set item4(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525953item4;
         if(_loc2_ !== param1)
         {
            this._100525953item4 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item4",_loc2_,param1));
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
      
      public function set item5(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525954item5;
         if(_loc2_ !== param1)
         {
            this._100525954item5 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item5",_loc2_,param1));
         }
      }
      
      public function __btn_click(param1:MouseEvent) : void
      {
         clickBtn();
      }
      
      public function set item6(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525955item6;
         if(_loc2_ !== param1)
         {
            this._100525955item6 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item6",_loc2_,param1));
         }
      }
      
      public function showPanel() : *
      {
         initView();
         visible = true;
      }
      
      public function set item7(param1:ItemSlot) : void
      {
         var _loc2_:Object = this._100525956item7;
         if(_loc2_ !== param1)
         {
            this._100525956item7 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"item7",_loc2_,param1));
         }
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         clickBtn1();
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
      
      private function onInitRebateEverydayData(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:* = undefined;
         var _loc6_:Date = null;
         var _loc7_:Number = NaN;
         var _loc8_:String = null;
         var _loc9_:RebateEverydayOneCanvas = null;
         var _loc10_:* = undefined;
         if(param1)
         {
            rebateEverydayConf = param1.conf;
            rebateEverydayData = param1.data ? param1.data : rebateEverydayData;
            rebateEverydayExp = param1.exp;
            starttime.text = Language.REBATE_EVERYDAY_PANEL[15].replace("{time}",TimeUtil.dateTimeToString(new Date(rebateEverydayConf.start)));
            endtime.text = Language.REBATE_EVERYDAY_PANEL[14].replace("{time}",TimeUtil.dateTimeToString(new Date(rebateEverydayConf.end)));
            RebateEverydayCanvasObj = {};
            _loc2_ = rebateEverydayConf.iInfo;
            _loc3_ = 1;
            vb.removeAllChildren();
            _loc4_ = 1;
            while(_loc4_ < 8)
            {
               this["item" + _loc4_].clean();
               _loc4_++;
            }
            for(_loc5_ in _loc2_)
            {
               if(Boolean(_loc2_[_loc5_]) && _loc2_[_loc5_].inc == 1)
               {
                  _loc9_ = new RebateEverydayOneCanvas();
                  _loc10_ = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_[_loc5_].iid];
                  _loc9_.Num = _loc2_[_loc5_].number;
                  _loc9_.ItemData = _loc2_[_loc5_].iid;
                  _loc9_.Lab = _loc10_.name;
                  RebateEverydayCanvasObj[_loc2_[_loc5_].iid] = _loc9_;
                  vb.addChild(_loc9_);
               }
               if(Boolean(_loc2_[_loc5_]) && _loc2_[_loc5_].inc == 2)
               {
                  this["item" + _loc3_].type = GamePredef.TBL_ITEM_TEMPLATE;
                  this["item" + _loc3_].giid = _loc2_[_loc5_].iid;
                  this["item" + _loc3_].slotData = GameData.d[GamePredef.TBL_ITEM_TEMPLATE][_loc2_[_loc5_].iid];
                  _loc3_ += 1;
               }
            }
            btn.visible = true;
            btn1.visible = false;
            btn1.enabled = true;
            imagetexiao.visible = true;
            point.text = Language.REBATE_EVERYDAY_PANEL[10].replace("{num}",rebateEverydayExp);
            _loc6_ = new Date();
            _loc6_.setTime(new Date().getTime() + _core.timeLag + TimeUtil.timeOSOffSet);
            _loc7_ = _loc6_.getTime();
            _loc8_ = TimeUtil.getTimeStr4("day",_loc7_);
            if(Boolean(rebateEverydayData) && Boolean(rebateEverydayData.flag == 1) && rebateEverydayData.day == _loc8_)
            {
               imagetexiao.visible = false;
               btn.visible = false;
               btn1.visible = true;
               btn1.enabled = false;
            }
            if(Boolean(rebateEverydayData) && Boolean(rebateEverydayData.flag == 0) && rebateEverydayData.day == _loc8_)
            {
               btn.visible = false;
               imagetexiao.visible = false;
               btn1.visible = true;
               btn1.enabled = true;
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get endtime() : Label
      {
         return this._1606289880endtime;
      }
      
      public function set point(param1:Label) : void
      {
         var _loc2_:Object = this._106845584point;
         if(_loc2_ !== param1)
         {
            this._106845584point = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"point",_loc2_,param1));
         }
      }
      
      public function ___RebateEverydayPanel_DragableCanvas1_creationComplete(param1:FlexEvent) : void
      {
         initView();
      }
      
      [Bindable(event="propertyChange")]
      public function get starttime() : Label
      {
         return this._2128341457starttime;
      }
      
      public function set rightCanvas(param1:Canvas) : void
      {
         var _loc2_:Object = this._886301036rightCanvas;
         if(_loc2_ !== param1)
         {
            this._886301036rightCanvas = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rightCanvas",_loc2_,param1));
         }
      }
      
      public function set endtime(param1:Label) : void
      {
         var _loc2_:Object = this._1606289880endtime;
         if(_loc2_ !== param1)
         {
            this._1606289880endtime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endtime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : Button
      {
         return this._3034453btn1;
      }
      
      public function set vb(param1:VBox) : void
      {
         var _loc2_:Object = this._3756vb;
         if(_loc2_ !== param1)
         {
            this._3756vb = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vb",_loc2_,param1));
         }
      }
      
      public function set starttime(param1:Label) : void
      {
         var _loc2_:Object = this._2128341457starttime;
         if(_loc2_ !== param1)
         {
            this._2128341457starttime = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"starttime",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn() : Button
      {
         return this._97884btn;
      }
      
      [Bindable(event="propertyChange")]
      public function get item1() : ItemSlot
      {
         return this._100525950item1;
      }
      
      [Bindable(event="propertyChange")]
      public function get item2() : ItemSlot
      {
         return this._100525951item2;
      }
      
      [Bindable(event="propertyChange")]
      public function get item4() : ItemSlot
      {
         return this._100525953item4;
      }
      
      public function changeTTButton() : void
      {
         if(initialized)
         {
            btn.visible = false;
            btn1.visible = true;
            btn1.enabled = true;
            imagetexiao.source = null;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get item6() : ItemSlot
      {
         return this._100525955item6;
      }
      
      [Bindable(event="propertyChange")]
      public function get item7() : ItemSlot
      {
         return this._100525956item7;
      }
      
      [Bindable(event="propertyChange")]
      public function get item3() : ItemSlot
      {
         return this._100525952item3;
      }
      
      [Bindable(event="propertyChange")]
      public function get item5() : ItemSlot
      {
         return this._100525954item5;
      }
      
      private function helpInfo() : void
      {
         if(_helpAlert)
         {
            PopUpManager.removePopUp(_helpAlert);
            _helpAlert = null;
         }
         Language.REBATE_EVERYDAY_PANEL[9] = Language.REBATE_EVERYDAY_PANEL[9].replace("{num}",rebateEverydayConf.goldnum).replace("{point}",rebateEverydayConf.expnum);
         var _loc1_:String = Language.REBATE_EVERYDAY_PANEL[9].toString();
         _helpAlert = Alert.show(_loc1_,Language.REBATE_EVERYDAY_PANEL[8].toString(),Alert.YES,null,null);
      }
      
      [Bindable(event="propertyChange")]
      public function get rightCanvas() : Canvas
      {
         return this._886301036rightCanvas;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RebateEverydayPanel = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RebateEverydayPanel_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_compDragable_RebateEverydayPanelWatcherSetupUtil");
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
      
      public function set btn1(param1:Button) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vb() : VBox
      {
         return this._3756vb;
      }
      
      [Bindable(event="propertyChange")]
      public function get point() : Label
      {
         return this._106845584point;
      }
      
      private function clickBtn() : void
      {
         var _loc1_:* = ViewManager.getInstance().getUI(ViewManager.PANEL_EXCHANGE);
         if(_loc1_)
         {
            _loc1_.show();
         }
      }
      
      public function set btn(param1:Button) : void
      {
         var _loc2_:Object = this._97884btn;
         if(_loc2_ !== param1)
         {
            this._97884btn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn",_loc2_,param1));
         }
      }
      
      public function setflag(param1:Object) : void
      {
         if(!param1)
         {
            return;
         }
         rebateEverydayData = param1.data ? param1.data : rebateEverydayData;
         rebateEverydayExp = param1.exp ? Number(param1.exp) : rebateEverydayExp;
         if(rebateEverydayData.flag == 1)
         {
            point.text = Language.REBATE_EVERYDAY_PANEL[10].replace("{num}",rebateEverydayExp);
            btn1.enabled = false;
         }
      }
      
      override public function initView() : void
      {
         if(!initialized)
         {
            addEventListener(FlexEvent.CREATION_COMPLETE,completeHandler);
            return;
         }
         _core.remote.call("initRebateEverydayPanelData",new Responder(onInitRebateEverydayData));
      }
      
      public function set imagetexiao(param1:Image) : void
      {
         var _loc2_:Object = this._1188525589imagetexiao;
         if(_loc2_ !== param1)
         {
            this._1188525589imagetexiao = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"imagetexiao",_loc2_,param1));
         }
      }
      
      public function ___RebateEverydayPanel_LinkButton1_click(param1:MouseEvent) : void
      {
         helpInfo();
      }
      
      public function changeExpnumber(param1:Number) : void
      {
         if(initialized)
         {
            point.text = Language.REBATE_EVERYDAY_PANEL[10].replace("{num}",param1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get imagetexiao() : Image
      {
         return this._1188525589imagetexiao;
      }
      
      private function _RebateEverydayPanel_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.REBATE_EVERYDAY_PANEL[0];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RebateEverydayPanel_BasicTitleCanvas1.text = param1;
         },"_RebateEverydayPanel_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getIconUrl(4130220000531);
         },function(param1:Object):void
         {
            _RebateEverydayPanel_Image1.source = param1;
         },"_RebateEverydayPanel_Image1.source");
         result[1] = binding;
         binding = new Binding(this,function():Object
         {
            return ResManager.getResUrl(2080130102038);
         },function(param1:Object):void
         {
            imagetexiao.source = param1;
         },"imagetexiao.source");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.REBATE_EVERYDAY_PANEL[8];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _RebateEverydayPanel_LinkButton1.label = param1;
         },"_RebateEverydayPanel_LinkButton1.label");
         result[3] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _RebateEverydayPanel_LinkButton1.setStyle("overSkin",param1);
         },"_RebateEverydayPanel_LinkButton1.overSkin");
         result[4] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _RebateEverydayPanel_LinkButton1.setStyle("upSkin",param1);
         },"_RebateEverydayPanel_LinkButton1.upSkin");
         result[5] = binding;
         binding = new Binding(this,function():Class
         {
            return null;
         },function(param1:Class):void
         {
            _RebateEverydayPanel_LinkButton1.setStyle("downSkin",param1);
         },"_RebateEverydayPanel_LinkButton1.downSkin");
         result[6] = binding;
         return result;
      }
      
      private function _RebateEverydayPanel_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.REBATE_EVERYDAY_PANEL[0];
         _loc1_ = ResManager.getIconUrl(4130220000531);
         _loc1_ = ResManager.getResUrl(2080130102038);
         _loc1_ = Language.REBATE_EVERYDAY_PANEL[8];
         _loc1_ = null;
         _loc1_ = null;
         _loc1_ = null;
      }
      
      private function clickBtn1() : void
      {
         _core.remote.call("getRebateEveryday",new Responder(setflag));
      }
   }
}

