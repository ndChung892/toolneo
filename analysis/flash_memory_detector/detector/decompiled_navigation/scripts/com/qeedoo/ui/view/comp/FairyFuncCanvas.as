package com.qeedoo.ui.view.comp
{
   import com.adobe.crypto.MD5;
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.logic.FairyLogic;
   import com.qeedoo.game.predef.GamePredef;
   import com.qeedoo.game.system.Core;
   import com.qeedoo.game.view.ViewManager;
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
   import mx.controls.Label;
   import mx.controls.TextArea;
   import mx.core.UIComponent;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.CloseEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class FairyFuncCanvas extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      public var _FairyFuncCanvas_BasicTitleCanvas1:BasicTitleCanvas;
      
      private var _3034453btn1:DelayButton;
      
      public var _FairyFuncCanvas_Label2:Label;
      
      private var _1349149756curSte:BasicTxtButton;
      
      private var _3034455btn3:DelayButton;
      
      public var _FairyFuncCanvas_Label1:Label;
      
      private var _scrollText:ScrollText;
      
      private var _100893exp:PropertyBar;
      
      private var _1125727414curInte:BasicTxtButton;
      
      private var _293456499growNum:Label;
      
      private var _3466lv:Label;
      
      private var _1847045392nextAgi:BasicTxtButton;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      private var _1847063089nextSte:BasicTxtButton;
      
      private var yStart:Number = 200;
      
      private var _core:Core = Core.getInstance();
      
      private var _1349149760curSta:BasicTxtButton;
      
      private var _1349167453curAgi:BasicTxtButton;
      
      private var _1424077801nextInte:BasicTxtButton;
      
      private var _1125607798curEner:BasicTxtButton;
      
      mx_internal var _watchers:Array = [];
      
      private var yEnd:Number = 185;
      
      private var _numText:TextArea;
      
      private var _3034454btn2:DelayButton;
      
      private var _1423958185nextEner:BasicTxtButton;
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _fairy:Object;
      
      private var _1847063085nextSta:BasicTxtButton;
      
      mx_internal var _bindings:Array = [];
      
      private var _p:DragableCanvas;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":365,
               "height":380,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":BasicTitleCanvas,
                  "id":"_FairyFuncCanvas_BasicTitleCanvas1"
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_FairyFuncCanvas_Label1",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "-73";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":50};
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"_FairyFuncCanvas_Label2",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 14;
                     this.fontWeight = "bold";
                     this.horizontalCenter = "77";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":50};
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":192,
                        "y":85,
                        "styleName":"CanvasBorder",
                        "width":155,
                        "height":165,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"nextSte",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":5,
                                 "width":122,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"nextSta",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":35,
                                 "width":141
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"nextAgi",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":70,
                                 "width":122,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"nextInte",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":105,
                                 "width":122,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"nextEner",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":140,
                                 "width":122,
                                 "text":""
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"lv",
                  "stylesFactory":function():void
                  {
                     this.color = 16777215;
                     this.fontSize = 14;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":10,
                        "y":265,
                        "width":90,
                        "height":25
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":PropertyBar,
                  "id":"exp",
                  "stylesFactory":function():void
                  {
                     this.cornerRadius = 0;
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":108,
                        "y":267,
                        "width":250,
                        "showTip":true,
                        "barCornerRadius":0
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Label,
                  "id":"growNum",
                  "stylesFactory":function():void
                  {
                     this.color = 16756247;
                     this.textAlign = "center";
                     this.horizontalCenter = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {"y":293};
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"btn1",
                  "events":{"click":"__btn1_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":1000,
                        "x":31,
                        "y":315,
                        "styleName":"BtnQuestItem",
                        "width":80,
                        "height":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"btn2",
                  "events":{"click":"__btn2_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":1000,
                        "x":148,
                        "y":315,
                        "styleName":"BtnQuestItem",
                        "width":80,
                        "height":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":DelayButton,
                  "id":"btn3",
                  "events":{"click":"__btn3_click"},
                  "propertiesFactory":function():Object
                  {
                     return {
                        "clickDelay":1000,
                        "x":267,
                        "y":315,
                        "styleName":"BtnQuestItem",
                        "width":80,
                        "height":50
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "propertiesFactory":function():Object
                  {
                     return {
                        "x":31,
                        "y":85,
                        "styleName":"CanvasBorder",
                        "width":153,
                        "height":165,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"curSte",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":5,
                                 "width":122,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"curSta",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":35,
                                 "width":140,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"curAgi",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":70,
                                 "width":122,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"curInte",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":105,
                                 "width":122,
                                 "text":""
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicTxtButton,
                           "id":"curEner",
                           "stylesFactory":function():void
                           {
                              this.color = 16777215;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":10,
                                 "y":140,
                                 "width":122,
                                 "text":""
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      public function FairyFuncCanvas()
      {
         super();
         mx_internal::_document = this;
         this.width = 365;
         this.height = 380;
         this.styleName = "StandardContent";
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         FairyFuncCanvas._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextAgi() : BasicTxtButton
      {
         return this._1847045392nextAgi;
      }
      
      public function set lv(param1:Label) : void
      {
         var _loc2_:Object = this._3466lv;
         if(_loc2_ !== param1)
         {
            this._3466lv = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lv",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get exp() : PropertyBar
      {
         return this._100893exp;
      }
      
      public function set nextAgi(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1847045392nextAgi;
         if(_loc2_ !== param1)
         {
            this._1847045392nextAgi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextAgi",_loc2_,param1));
         }
      }
      
      private function _FairyFuncCanvas_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[32];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[34];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[35];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[39];
         _loc1_ = [GamePredef.FILTER_ROUNDED_TEXT2];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[36];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[50];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[37];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[51];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[38];
         _loc1_ = Language.FAIRY_MANAGER_PANEL_U[52];
      }
      
      [Bindable(event="propertyChange")]
      public function get nextSta() : BasicTxtButton
      {
         return this._1847063085nextSta;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextSte() : BasicTxtButton
      {
         return this._1847063089nextSte;
      }
      
      private function playExpEffect(param1:int, param2:int = 0) : void
      {
         var _loc3_:UIComponent = null;
         if(!_scrollText)
         {
            _scrollText = new ScrollText();
            _scrollText.x = 200;
            _scrollText.y = 240;
            _loc3_ = new UIComponent();
            _loc3_.addChild(_scrollText);
            if(!_numText)
            {
               _numText = new TextArea();
               _numText.editable = false;
               _numText.selectable = false;
               _numText.setStyle("fontSize",18);
               _numText.setStyle("color",65280);
               _numText.setStyle("backgroundAlpha",0);
               _numText.setStyle("fontWeight","bold");
               _numText.setStyle("borderStyle","none");
               _numText.x = 150;
               addChild(_numText);
            }
            this.addChild(_loc3_);
         }
         if(param1 <= 0)
         {
            if(this.hasEventListener(Event.ENTER_FRAME))
            {
               _numText.visible = false;
               this.removeEventListener(Event.ENTER_FRAME,textMove);
            }
         }
         else if(param2 == 0)
         {
            _numText.text = "+" + param1;
            _numText.x = 150;
            _numText.y = yStart;
            _numText.visible = true;
            this.addEventListener(Event.ENTER_FRAME,textMove);
         }
         else
         {
            _scrollText.show("+" + param1);
            if(param2 == 1)
            {
               _numText.text = Language.FAIRY_MANAGER_PANEL_U[56];
            }
            else if(param2 == 2)
            {
               _numText.text = Language.FAIRY_MANAGER_PANEL_U[57];
            }
            _numText.x = 100;
            _numText.y = yStart;
            _numText.visible = true;
            this.addEventListener(Event.ENTER_FRAME,textMove);
         }
      }
      
      public function __btn2_click(param1:MouseEvent) : void
      {
         fairyGrowUp(1);
      }
      
      public function set exp(param1:PropertyBar) : void
      {
         var _loc2_:Object = this._100893exp;
         if(_loc2_ !== param1)
         {
            this._100893exp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"exp",_loc2_,param1));
         }
      }
      
      public function hide() : void
      {
         this.visible = false;
      }
      
      private function fairyGrowUp(param1:int) : void
      {
         var lv:int;
         var gfunc:Function = null;
         var moneyType:String = null;
         var moneyCost:int = 0;
         var func:Function = null;
         var type:int = param1;
         if(!_core.delPass && (type == 1 || type == 2))
         {
            gfunc = function(param1:String):void
            {
               _core.remote.call("unlockMoney",null,MD5.hash(param1));
            };
            _core.view.getUI(ViewManager.PANEL_INPUT).showInput(Language.DELETE_BY_PASS[0],Language.DELETE_BY_PASS[1],gfunc);
            return;
         }
         lv = FairyLogic.gexpToLv(_fairy.gexp);
         if(lv >= GamePredef.FAIRY_GROW_LEVEL)
         {
            _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[41]);
         }
         else
         {
            if(type == 0)
            {
               moneyType = "money";
               moneyCost = 50000;
            }
            else if(type == 1)
            {
               moneyType = "gold";
               moneyCost = 5;
            }
            else if(type == 2)
            {
               moneyType = "gold";
               moneyCost = 5;
            }
            if(_core.player.enoughMoney(moneyType,moneyCost))
            {
               func = function(param1:CloseEvent):void
               {
                  if(!param1 || param1.detail == Alert.YES)
                  {
                     _core.remote.call("fairyGrowUp",new Responder(onFairyGrow),_fairy.id,type);
                  }
               };
               if(type == 2)
               {
                  Alert.show(Language.FAIRY_MANAGER_PANEL_U[78],"",Alert.YES | Alert.NO,null,func);
               }
               else
               {
                  func(null);
               }
            }
            else
            {
               _core.sysMidNote(Language.GAMEPREDEF_S[58]);
            }
         }
      }
      
      public function set curAgi(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1349167453curAgi;
         if(_loc2_ !== param1)
         {
            this._1349167453curAgi = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curAgi",_loc2_,param1));
         }
      }
      
      private function onMove(param1:Event) : void
      {
         this.x = _p.x + _p.width;
         this.y = _p.y;
      }
      
      public function set nextEner(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1423958185nextEner;
         if(_loc2_ !== param1)
         {
            this._1423958185nextEner = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextEner",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn1() : DelayButton
      {
         return this._3034453btn1;
      }
      
      [Bindable(event="propertyChange")]
      public function get btn3() : DelayButton
      {
         return this._3034455btn3;
      }
      
      public function set nextSta(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1847063085nextSta;
         if(_loc2_ !== param1)
         {
            this._1847063085nextSta = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextSta",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get btn2() : DelayButton
      {
         return this._3034454btn2;
      }
      
      public function set nextSte(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1847063089nextSte;
         if(_loc2_ !== param1)
         {
            this._1847063089nextSte = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextSte",_loc2_,param1));
         }
      }
      
      public function set curInte(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1125727414curInte;
         if(_loc2_ !== param1)
         {
            this._1125727414curInte = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curInte",_loc2_,param1));
         }
      }
      
      private function onFairyGrow(param1:Object) : void
      {
         var _loc2_:String = null;
         if(param1.f)
         {
            playExpEffect(param1.exp,param1.cri);
            _fairy.flag["gnum"] = param1.gnum;
            growNum.text = Language.FAIRY_MANAGER_PANEL_U[72].replace("{fairy}",_fairy.name).replace("{num}",param1.gnum);
            if(param1.gnum == 0)
            {
            }
         }
         else
         {
            _loc2_ = param1.code;
            if(_loc2_ == "rmb")
            {
               _core.sysMidNote(Language.GAMEPREDEF_S[58]);
            }
            else if(_loc2_ == "lv")
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[54]);
            }
            else if(_loc2_ == "out")
            {
               _core.sysMidNote(Language.FAIRY_MANAGER_PANEL_U[76]);
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get growNum() : Label
      {
         return this._293456499growNum;
      }
      
      [Bindable(event="propertyChange")]
      public function get curEner() : BasicTxtButton
      {
         return this._1125607798curEner;
      }
      
      public function __btn3_click(param1:MouseEvent) : void
      {
         fairyGrowUp(2);
      }
      
      public function set curSta(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1349149760curSta;
         if(_loc2_ !== param1)
         {
            this._1349149760curSta = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curSta",_loc2_,param1));
         }
      }
      
      public function set curSte(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1349149756curSte;
         if(_loc2_ !== param1)
         {
            this._1349149756curSte = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curSte",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lv() : Label
      {
         return this._3466lv;
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:FairyFuncCanvas = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _FairyFuncCanvas_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_FairyFuncCanvasWatcherSetupUtil");
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
      
      private function textMove(param1:Event) : void
      {
         if(_numText)
         {
            --_numText.y;
            if(_numText.y <= yEnd)
            {
               _numText.visible = false;
               this.removeEventListener(Event.ENTER_FRAME,textMove);
            }
         }
      }
      
      private function _FairyFuncCanvas_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[32];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyFuncCanvas_BasicTitleCanvas1.text = param1;
         },"_FairyFuncCanvas_BasicTitleCanvas1.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[34];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyFuncCanvas_Label1.text = param1;
         },"_FairyFuncCanvas_Label1.text");
         result[1] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _FairyFuncCanvas_Label1.filters = param1;
         },"_FairyFuncCanvas_Label1.filters");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[35];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            _FairyFuncCanvas_Label2.text = param1;
         },"_FairyFuncCanvas_Label2.text");
         result[3] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            _FairyFuncCanvas_Label2.filters = param1;
         },"_FairyFuncCanvas_Label2.filters");
         result[4] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            lv.filters = param1;
         },"lv.filters");
         result[5] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[39];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            exp.propName = param1;
         },"exp.propName");
         result[6] = binding;
         binding = new Binding(this,function():Array
         {
            return [GamePredef.FILTER_ROUNDED_TEXT2];
         },function(param1:Array):void
         {
            growNum.filters = param1;
         },"growNum.filters");
         result[7] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[36];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn1.label = param1;
         },"btn1.label");
         result[8] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[50];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn1.toolTip = param1;
         },"btn1.toolTip");
         result[9] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[37];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn2.label = param1;
         },"btn2.label");
         result[10] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[51];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn2.toolTip = param1;
         },"btn2.toolTip");
         result[11] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[38];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn3.label = param1;
         },"btn3.label");
         result[12] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = Language.FAIRY_MANAGER_PANEL_U[52];
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            btn3.toolTip = param1;
         },"btn3.toolTip");
         result[13] = binding;
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get curAgi() : BasicTxtButton
      {
         return this._1349167453curAgi;
      }
      
      public function set btn2(param1:DelayButton) : void
      {
         var _loc2_:Object = this._3034454btn2;
         if(_loc2_ !== param1)
         {
            this._3034454btn2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn2",_loc2_,param1));
         }
      }
      
      public function set btn3(param1:DelayButton) : void
      {
         var _loc2_:Object = this._3034455btn3;
         if(_loc2_ !== param1)
         {
            this._3034455btn3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn3",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextEner() : BasicTxtButton
      {
         return this._1423958185nextEner;
      }
      
      public function follow(param1:DragableCanvas) : void
      {
         _p = param1;
         this.x = param1.x + param1.width;
         this.y = param1.y;
         if(this.visible)
         {
            param1.addEventListener(DragableCanvas.EVENT_MOVE,onMove);
         }
      }
      
      public function set fairy(param1:Object) : void
      {
         var _loc2_:int = 0;
         _fairy = param1;
         _loc2_ = Math.floor((FairyLogic.gexpToLv(param1.gexp) - 1) / 10);
         var _loc3_:int = FairyLogic.expToLv(_fairy.exp);
         var _loc4_:int = FairyLogic.gexpToLv(_fairy.gexp);
         var _loc5_:Number = Math.round(0.2 * _loc4_ * 10) / 10;
         _loc2_ = Math.floor((_loc4_ > 0 ? _loc4_ - 1 : 0) / 10);
         this.lv.text = Language.FAIRY_MANAGER_PANEL_U[40] + ":" + _loc4_;
         this.lv.setStyle("color",GamePredef.CODE_ITEM_COLOR[_loc2_]);
         if(_loc4_ == 0)
         {
            exp.valueMax = GamePredef.FAIRY_GROW_EXP[_loc4_];
            exp.value = _fairy.gexp;
         }
         else if(_loc4_ >= GamePredef.FAIRY_GROW_LEVEL)
         {
            exp.valueMax = GamePredef.FAIRY_GROW_EXP[GamePredef.FAIRY_GROW_LEVEL - 1];
            exp.value = GamePredef.FAIRY_GROW_EXP[GamePredef.FAIRY_GROW_LEVEL - 1];
         }
         else
         {
            exp.valueMax = GamePredef.FAIRY_GROW_EXP[_loc4_] - GamePredef.FAIRY_GROW_EXP[_loc4_ - 1];
            exp.value = _fairy.gexp - GamePredef.FAIRY_GROW_EXP[_loc4_ - 1];
         }
         curSta.htmlText = Language.FAIRY_MANAGER_PANEL_U[10] + " +<font color=\'#00ff00\'>" + Math.round(_loc5_ * 10) / 10 + "</font>";
         curSte.htmlText = Language.FAIRY_MANAGER_PANEL_U[12] + " +<font color=\'#00ff00\'>" + Math.round(_loc5_ * 10) / 10 + "</font>";
         curAgi.htmlText = Language.FAIRY_MANAGER_PANEL_U[14] + " +<font color=\'#00ff00\'>" + Math.round(_loc5_ * 10) / 10 + "</font>";
         curInte.htmlText = Language.FAIRY_MANAGER_PANEL_U[16] + " +<font color=\'#00ff00\'>" + Math.round(_loc5_ * 10) / 10 + "</font>";
         curEner.htmlText = Language.FAIRY_MANAGER_PANEL_U[18] + " +<font color=\'#00ff00\'>" + Math.round(_loc5_ * 10) / 10 + "</font>";
         nextSta.htmlText = Language.FAIRY_MANAGER_PANEL_U[10] + " +<font color=\'#00ff00\'>" + Math.round((_loc5_ + 0.2) * 10) / 10 + "</font>";
         nextSte.htmlText = Language.FAIRY_MANAGER_PANEL_U[12] + " +<font color=\'#00ff00\'>" + Math.round((_loc5_ + 0.2) * 10) / 10 + "</font>";
         nextAgi.htmlText = Language.FAIRY_MANAGER_PANEL_U[14] + " +<font color=\'#00ff00\'>" + Math.round((_loc5_ + 0.2) * 10) / 10 + "</font>";
         nextInte.htmlText = Language.FAIRY_MANAGER_PANEL_U[16] + " +<font color=\'#00ff00\'>" + Math.round((_loc5_ + 0.2) * 10) / 10 + "</font>";
         nextEner.htmlText = Language.FAIRY_MANAGER_PANEL_U[18] + " +<font color=\'#00ff00\'>" + Math.round((_loc5_ + 0.2) * 10) / 10 + "</font>";
         var _loc6_:String = "20";
         if(_fairy.flag)
         {
            _loc6_ = _fairy.flag["gnum"] || "0";
         }
         growNum.text = Language.FAIRY_MANAGER_PANEL_U[72].replace("{fairy}",_fairy.name).replace("{num}",_loc6_);
         if(!(Boolean(_fairy.flag) && _fairy.flag["gnum"] <= 0))
         {
            btn1.enabled = true;
            btn2.enabled = true;
            btn3.enabled = true;
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curInte() : BasicTxtButton
      {
         return this._1125727414curInte;
      }
      
      [Bindable(event="propertyChange")]
      public function get curSta() : BasicTxtButton
      {
         return this._1349149760curSta;
      }
      
      public function set btn1(param1:DelayButton) : void
      {
         var _loc2_:Object = this._3034453btn1;
         if(_loc2_ !== param1)
         {
            this._3034453btn1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"btn1",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get curSte() : BasicTxtButton
      {
         return this._1349149756curSte;
      }
      
      public function set nextInte(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1424077801nextInte;
         if(_loc2_ !== param1)
         {
            this._1424077801nextInte = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextInte",_loc2_,param1));
         }
      }
      
      public function set growNum(param1:Label) : void
      {
         var _loc2_:Object = this._293456499growNum;
         if(_loc2_ !== param1)
         {
            this._293456499growNum = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"growNum",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nextInte() : BasicTxtButton
      {
         return this._1424077801nextInte;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         if(_p)
         {
            super.visible = param1;
            if(param1)
            {
               follow(_p);
               if(this.parent)
               {
                  this.parent.setChildIndex(this,this.parent.numChildren - 1);
               }
            }
            else
            {
               _p.removeEventListener(DragableCanvas.EVENT_MOVE,onMove);
            }
         }
         else
         {
            super.visible = false;
         }
      }
      
      public function set curEner(param1:BasicTxtButton) : void
      {
         var _loc2_:Object = this._1125607798curEner;
         if(_loc2_ !== param1)
         {
            this._1125607798curEner = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"curEner",_loc2_,param1));
         }
      }
      
      public function show() : void
      {
         this.visible = !this.visible;
      }
      
      public function __btn1_click(param1:MouseEvent) : void
      {
         fairyGrowUp(0);
      }
   }
}

