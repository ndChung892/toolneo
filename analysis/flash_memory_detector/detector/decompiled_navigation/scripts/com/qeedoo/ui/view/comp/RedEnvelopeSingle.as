package com.qeedoo.ui.view.comp
{
   import com.qeedoo.game.config.Language;
   import com.qeedoo.game.system.Core;
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
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.List;
   import mx.core.ClassFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.events.FlexEvent;
   import mx.events.PropertyChangeEvent;
   import mx.styles.*;
   
   use namespace mx_internal;
   
   public class RedEnvelopeSingle extends Canvas implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil;
      
      private var _1847077513nextbtn:BasicGlowButton;
      
      private var _2036402605goldText:String;
      
      private var _1221052567infoText2:String;
      
      private var _93797281cList:List;
      
      mx_internal var _watchers:Array = [];
      
      private var _112734re1:Canvas;
      
      private var _1221052568infoText3:String;
      
      public var cid:* = 0;
      
      mx_internal var _bindingsByDestination:Object = {};
      
      mx_internal var _bindingsBeginWithWord:Object = {};
      
      private var _1037073632re3Gold:RoundedLabel;
      
      private var _2039088282re1Title:RoundedLabel;
      
      private var _112736re3:Canvas;
      
      private var _177936123infoText:String;
      
      private var _3212dp:ArrayCollection = new ArrayCollection();
      
      mx_internal var _bindings:Array = [];
      
      private var _2096346584re3Title:RoundedLabel;
      
      private var _1036208557re2Info:RoundedLabel;
      
      private var _documentDescriptor_:UIComponentDescriptor = new UIComponentDescriptor({
         "type":Canvas,
         "propertiesFactory":function():Object
         {
            return {
               "width":410,
               "height":430,
               "childDescriptors":[new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"re1",
                  "stylesFactory":function():void
                  {
                     this.top = "0";
                     this.right = "0";
                     this.left = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"re1",
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"re1Title",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 16;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":76.5,
                                 "y":45,
                                 "width":257
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":BasicDelayButton,
                           "events":{"click":"___RedEnvelopeSingle_BasicDelayButton1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "clickDelay":1500,
                                 "styleName":"rebtnopen",
                                 "x":128,
                                 "y":188,
                                 "width":153,
                                 "height":160
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___RedEnvelopeSingle_Button1_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"rebtnclose",
                                 "x":335,
                                 "y":10,
                                 "width":29,
                                 "height":29
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"re2",
                  "stylesFactory":function():void
                  {
                     this.top = "0";
                     this.right = "0";
                     this.left = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"re2",
                        "visible":false,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":BasicGlowButton,
                           "id":"nextbtn",
                           "events":{"click":"__nextbtn_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"BtnNormalRed",
                                 "x":155,
                                 "y":350,
                                 "width":98,
                                 "height":30,
                                 "label":"确定"
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"re2Info",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 22;
                              this.textAlign = "center";
                              this.horizontalCenter = "-7";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "y":150,
                                 "width":306,
                                 "height":42
                              };
                           }
                        })]
                     };
                  }
               }),new UIComponentDescriptor({
                  "type":Canvas,
                  "id":"re3",
                  "stylesFactory":function():void
                  {
                     this.top = "0";
                     this.right = "0";
                     this.left = "0";
                     this.bottom = "0";
                  },
                  "propertiesFactory":function():Object
                  {
                     return {
                        "styleName":"re3",
                        "visible":true,
                        "childDescriptors":[new UIComponentDescriptor({
                           "type":Button,
                           "events":{"click":"___RedEnvelopeSingle_Button2_click"},
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "styleName":"rebtnclose",
                                 "x":335,
                                 "y":10,
                                 "width":29,
                                 "height":29
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"re3Title",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 16;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":64,
                                 "y":33,
                                 "width":257
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"re3Info",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 12;
                              this.textAlign = "center";
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":41,
                                 "y":120,
                                 "width":300
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":RoundedLabel,
                           "id":"re3Gold",
                           "stylesFactory":function():void
                           {
                              this.fontSize = 22;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "x":183,
                                 "y":74,
                                 "width":168
                              };
                           }
                        }),new UIComponentDescriptor({
                           "type":List,
                           "id":"cList",
                           "events":{"mouseDown":"__cList_mouseDown"},
                           "stylesFactory":function():void
                           {
                              this.borderSides = "0";
                              this.borderStyle = "none";
                              this.backgroundAlpha = 0;
                           },
                           "propertiesFactory":function():Object
                           {
                              return {
                                 "selectable":false,
                                 "horizontalScrollPolicy":"off",
                                 "width":257,
                                 "height":230,
                                 "y":155,
                                 "x":64,
                                 "itemRenderer":_RedEnvelopeSingle_ClassFactory1_c()
                              };
                           }
                        })]
                     };
                  }
               })]
            };
         }
      });
      
      private var _112735re2:Canvas;
      
      private var _1037132078re3Info:RoundedLabel;
      
      public var REData:Object;
      
      private var _core:Core = Core.getInstance();
      
      public function RedEnvelopeSingle()
      {
         super();
         mx_internal::_document = this;
         this.width = 410;
         this.height = 430;
         this.addEventListener("creationComplete",___RedEnvelopeSingle_Canvas1_creationComplete);
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil) : void
      {
         RedEnvelopeSingle._watcherSetupUtil = param1;
      }
      
      [Bindable(event="propertyChange")]
      public function get re3Gold() : RoundedLabel
      {
         return this._1037073632re3Gold;
      }
      
      public function set infoText(param1:String) : void
      {
         var _loc2_:Object = this._177936123infoText;
         if(_loc2_ !== param1)
         {
            this._177936123infoText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText",_loc2_,param1));
         }
      }
      
      public function set goldText(param1:String) : void
      {
         var _loc2_:Object = this._2036402605goldText;
         if(_loc2_ !== param1)
         {
            this._2036402605goldText = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"goldText",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get re1() : Canvas
      {
         return this._112734re1;
      }
      
      [Bindable(event="propertyChange")]
      public function get dp() : ArrayCollection
      {
         return this._3212dp;
      }
      
      public function REChangeState(param1:int) : void
      {
         switch(param1)
         {
            case 1:
               re1.visible = true;
               re2.visible = re3.visible = false;
               break;
            case 2:
               re2.visible = true;
               re1.visible = re3.visible = false;
               break;
            case 3:
               re3.visible = true;
               re1.visible = re2.visible = false;
         }
      }
      
      override public function initialize() : void
      {
         var bindings:Array;
         var watchers:Array;
         var i:uint;
         var target:RedEnvelopeSingle = null;
         var watcherSetupUtilClass:Object = null;
         mx_internal::setDocumentDescriptor(_documentDescriptor_);
         bindings = _RedEnvelopeSingle_bindingsSetup();
         watchers = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_qeedoo_ui_view_comp_RedEnvelopeSingleWatcherSetupUtil");
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
      
      private function mouseUpHandler(param1:MouseEvent) : void
      {
         stopDrag();
         this.removeEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
      }
      
      private function creationCompleteHandler(param1:Event) : void
      {
         addEventListener(MouseEvent.MOUSE_DOWN,clickHandler);
      }
      
      public function onREopenHandler(param1:*) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:* = undefined;
         var _loc8_:* = undefined;
         var _loc9_:* = undefined;
         if(!param1 || !param1.data)
         {
            return;
         }
         var _loc2_:* = param1.code;
         _loc3_ = param1.data;
         REData = _loc3_;
         switch(_loc2_)
         {
            case -1:
               re2.visible = true;
               re1.visible = re3.visible = false;
               infoText = Language.RE_PANEL[2];
               infoText3 = Language.RE_PANEL[2];
               goldText = Language.RE_PANEL[2];
               dp = new ArrayCollection();
               break;
            case 3:
               re1.visible = true;
               re2.visible = re3.visible = false;
               infoText = _loc3_.d;
               break;
            case 0:
               re2.visible = true;
               re1.visible = re3.visible = false;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = 0;
               _loc7_ = new ArrayCollection();
               for(_loc9_ in _loc3_.clist)
               {
                  _loc4_++;
                  if(_loc9_ == _core.cid)
                  {
                     _loc6_ = _loc3_.clist[_loc9_].cash;
                  }
                  _loc5_ += int(_loc3_.clist[_loc9_].cash);
                  _loc7_.addItem(_loc3_.clist[_loc9_]);
               }
               dp = _loc7_;
               _loc8_ = _loc5_ + _loc3_.g;
               _loc5_ = _loc3_.g;
               if(_loc5_ < 0)
               {
                  _loc5_ = 0;
               }
               infoText = _loc3_.d;
               goldText = Language.RE_PANEL[3].replace("{num}",String(_loc6_));
               infoText2 = Language.RE_PANEL[5].replace("{num1}",String(_loc4_ + "/" + _loc3_.c)).replace("{num2}",String(_loc5_ + "/" + _loc8_));
               infoText3 = Language.RE_PANEL[3].replace("{num}",int(_loc6_));
               break;
            case 1:
               re3.visible = true;
               re1.visible = re2.visible = false;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = 0;
               _loc7_ = new ArrayCollection();
               for(_loc9_ in _loc3_.clist)
               {
                  _loc4_++;
                  if(_loc9_ == _core.cid)
                  {
                     _loc6_ = _loc3_.clist[_loc9_].cash;
                  }
                  _loc5_ += int(_loc3_.clist[_loc9_].cash);
                  _loc7_.addItem(_loc3_.clist[_loc9_]);
               }
               _loc8_ = _loc5_ + _loc3_.g;
               _loc5_ = _loc3_.g;
               if(_loc5_ < 0)
               {
                  _loc5_ = 0;
               }
               dp = _loc7_;
               infoText = _loc3_.d;
               goldText = Language.RE_PANEL[7].replace("{num}",String(_loc6_));
               infoText2 = Language.RE_PANEL[5].replace("{num1}",String(_loc4_ + "/" + _loc3_.c)).replace("{num2}",String(_loc5_ + "/" + _loc8_));
               break;
            case 2:
               re2.visible = true;
               re1.visible = re3.visible = false;
               _loc4_ = 0;
               _loc5_ = 0;
               _loc6_ = 0;
               _loc7_ = new ArrayCollection();
               for(_loc9_ in _loc3_.clist)
               {
                  _loc4_++;
                  if(_loc9_ == _core.cid)
                  {
                     _loc6_ = _loc3_.clist[_loc9_].cash;
                  }
                  _loc5_ += int(_loc3_.clist[_loc9_].cash);
                  _loc7_.addItem(_loc3_.clist[_loc9_]);
               }
               dp = _loc7_;
               _loc8_ = _loc5_ + _loc3_.g;
               _loc5_ = _loc3_.g - _loc5_;
               if(_loc5_ < 0)
               {
                  _loc5_ = 0;
               }
               infoText = _loc3_.d;
               goldText = _loc6_ != 0 ? Language.RE_PANEL[7].replace("{num}",String(_loc6_)) : Language.RE_PANEL[4];
               infoText2 = Language.RE_PANEL[5].replace("{num1}",String(_loc4_ + "/" + _loc3_.c)).replace("{num2}",String(_loc5_ + "/" + _loc8_));
               infoText3 = Language.RE_PANEL[4];
         }
      }
      
      private function _RedEnvelopeSingle_bindingsSetup() : Array
      {
         var binding:Binding = null;
         var result:Array = [];
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoText;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            re1Title.text = param1;
         },"re1Title.text");
         result[0] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoText3;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            re2Info.text = param1;
         },"re2Info.text");
         result[1] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoText;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            re3Title.text = param1;
         },"re3Title.text");
         result[2] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = infoText2;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            re3Info.text = param1;
         },"re3Info.text");
         result[3] = binding;
         binding = new Binding(this,function():String
         {
            var _loc1_:* = goldText;
            return _loc1_ == undefined ? null : String(_loc1_);
         },function(param1:String):void
         {
            re3Gold.text = param1;
         },"re3Gold.text");
         result[4] = binding;
         binding = new Binding(this,function():Object
         {
            return dp;
         },function(param1:Object):void
         {
            cList.dataProvider = param1;
         },"cList.dataProvider");
         result[5] = binding;
         return result;
      }
      
      public function ___RedEnvelopeSingle_Button2_click(param1:MouseEvent) : void
      {
         re3close_clickHandler(param1);
      }
      
      public function __nextbtn_click(param1:MouseEvent) : void
      {
         re2Confirm_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get cList() : List
      {
         return this._93797281cList;
      }
      
      private function clickHandler(param1:MouseEvent) : void
      {
         setToFront();
         startDrag();
         this.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandler);
      }
      
      public function ___RedEnvelopeSingle_BasicDelayButton1_click(param1:MouseEvent) : void
      {
         re1open_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText2() : String
      {
         return this._1221052567infoText2;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText3() : String
      {
         return this._1221052568infoText3;
      }
      
      [Bindable(event="propertyChange")]
      public function get re1Title() : RoundedLabel
      {
         return this._2039088282re1Title;
      }
      
      [Bindable(event="propertyChange")]
      public function get nextbtn() : BasicGlowButton
      {
         return this._1847077513nextbtn;
      }
      
      private function setToFront() : void
      {
         if(parent)
         {
            parent.setChildIndex(this,parent.numChildren - 1);
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get re2Info() : RoundedLabel
      {
         return this._1036208557re2Info;
      }
      
      private function _RedEnvelopeSingle_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         _loc1_ = infoText;
         _loc1_ = infoText3;
         _loc1_ = infoText;
         _loc1_ = infoText2;
         _loc1_ = goldText;
         _loc1_ = dp;
      }
      
      public function set re3Title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2096346584re3Title;
         if(_loc2_ !== param1)
         {
            this._2096346584re3Title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re3Title",_loc2_,param1));
         }
      }
      
      public function set nextbtn(param1:BasicGlowButton) : void
      {
         var _loc2_:Object = this._1847077513nextbtn;
         if(_loc2_ !== param1)
         {
            this._1847077513nextbtn = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nextbtn",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get re3Info() : RoundedLabel
      {
         return this._1037132078re3Info;
      }
      
      public function set infoText3(param1:String) : void
      {
         var _loc2_:Object = this._1221052568infoText3;
         if(_loc2_ !== param1)
         {
            this._1221052568infoText3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText3",_loc2_,param1));
         }
      }
      
      public function ___RedEnvelopeSingle_Canvas1_creationComplete(param1:FlexEvent) : void
      {
         creationCompleteHandler(param1);
      }
      
      public function set re1(param1:Canvas) : void
      {
         var _loc2_:Object = this._112734re1;
         if(_loc2_ !== param1)
         {
            this._112734re1 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re1",_loc2_,param1));
         }
      }
      
      public function set infoText2(param1:String) : void
      {
         var _loc2_:Object = this._1221052567infoText2;
         if(_loc2_ !== param1)
         {
            this._1221052567infoText2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"infoText2",_loc2_,param1));
         }
      }
      
      protected function re2Confirm_clickHandler(param1:MouseEvent) : void
      {
         REChangeState(3);
      }
      
      public function set cList(param1:List) : void
      {
         var _loc2_:Object = this._93797281cList;
         if(_loc2_ !== param1)
         {
            this._93797281cList = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cList",_loc2_,param1));
         }
      }
      
      public function set re1Title(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._2039088282re1Title;
         if(_loc2_ !== param1)
         {
            this._2039088282re1Title = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re1Title",_loc2_,param1));
         }
      }
      
      public function set re2(param1:Canvas) : void
      {
         var _loc2_:Object = this._112735re2;
         if(_loc2_ !== param1)
         {
            this._112735re2 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re2",_loc2_,param1));
         }
      }
      
      public function set re3(param1:Canvas) : void
      {
         var _loc2_:Object = this._112736re3;
         if(_loc2_ !== param1)
         {
            this._112736re3 = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re3",_loc2_,param1));
         }
      }
      
      private function _RedEnvelopeSingle_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = RedEnvelopeSingleItemRenderer;
         return _loc1_;
      }
      
      public function set re3Gold(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1037073632re3Gold;
         if(_loc2_ !== param1)
         {
            this._1037073632re3Gold = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re3Gold",_loc2_,param1));
         }
      }
      
      public function set dp(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._3212dp;
         if(_loc2_ !== param1)
         {
            this._3212dp = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dp",_loc2_,param1));
         }
      }
      
      public function ___RedEnvelopeSingle_Button1_click(param1:MouseEvent) : void
      {
         re1close_clickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get re3Title() : RoundedLabel
      {
         return this._2096346584re3Title;
      }
      
      [Bindable(event="propertyChange")]
      public function get re2() : Canvas
      {
         return this._112735re2;
      }
      
      public function set re2Info(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1036208557re2Info;
         if(_loc2_ !== param1)
         {
            this._1036208557re2Info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re2Info",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get goldText() : String
      {
         return this._2036402605goldText;
      }
      
      protected function re1close_clickHandler(param1:MouseEvent) : void
      {
         this.parent.removeChild(this);
      }
      
      protected function re1open_clickHandler(param1:MouseEvent) : void
      {
         if(!REData || REData.v == null || _core.cid != cid)
         {
            Alert.show("该红包不存在或不属于您");
            return;
         }
         _core.remote.call("getRedEnvelope",null,REData.v,REData.type);
      }
      
      protected function re3close_clickHandler(param1:MouseEvent) : void
      {
         this.parent.removeChild(this);
      }
      
      public function __cList_mouseDown(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      public function set re3Info(param1:RoundedLabel) : void
      {
         var _loc2_:Object = this._1037132078re3Info;
         if(_loc2_ !== param1)
         {
            this._1037132078re3Info = param1;
            this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"re3Info",_loc2_,param1));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get re3() : Canvas
      {
         return this._112736re3;
      }
      
      [Bindable(event="propertyChange")]
      public function get infoText() : String
      {
         return this._177936123infoText;
      }
   }
}

